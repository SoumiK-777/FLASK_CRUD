from flask import Flask,render_template, url_for, request, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///data.sqlite'
db = SQLAlchemy(app)

class Users(db.Model):
    id = db.Column(db.Integer,primary_key=True)
    WebID = db.Column('WebID', db.String(100))
    InvoiceNumber = db.Column('InvoiceNumber', db.String(20))
    Institution = db.Column('Institution', db.String(50))
    InvoiceDate = db.Column('InvoiceDate', db.String(50),nullable=False)
    Instructor = db.Column('Instructor', db.String(50))
    AdminKey = db.Column('AdminKey', db.String(20))
    Email = db.Column('Email', db.String(50))
    Usercode = db.Column('Usercode', db.String(20))
    AdminCount = db.Column(db.Integer)
    site_license_checkbox = db.Column('site_license_checkbox', db.String(5))
    site_license_date = db.Column('site_license_date', db.String(50),nullable=False)
    reflection_checkbox = db.Column('reflection_checkbox', db.String(5))
    custom_message_checkbox = db.Column('custom_message_checkbox', db.String(5))
    custom_message = db.Column('custom_message', db.Text)
    show_extra_questions = db.Column('show_extra_questions', db.String(5))
    Q91 = db.Column('Q91', db.String(200))
    Q92 = db.Column('Q92', db.String(200))


    def __repr__(self):
        return f'''<Users (
            id: {self.id}
            WebID: {self.WebID}
            InvoiceNumber: {self.InvoiceNumber}
            Institution: {self.Institution}
            InvoiceDate: {self.InvoiceDate}
            Instructor: {self.Instructor}
            AdminKey: {self.AdminKey}
            Email: {self.Email}
            Usercode: {self.Usercode}
            AdminCount: {self.AdminCount}
            site_license_checkbox: {self.site_license_checkbox}
            site_license_date: {self.site_license_date}
            reflection_checkbox: {self.reflection_checkbox}
            custom_message_checkbox: {self.custom_message_checkbox}
            custom_message: {self.custom_message}
            show_extra_questions: {self.show_extra_questions}
            Q91: {self.Q91}
            Q92: {self.Q92}
        )'''

@app.route('/', methods=['GET','POST'])
def index():
    if request.form:
        per_page=request.args.get('per_page',10)
        Institution=request.form['Institution']
        InvoiceNumber=request.form['InvoiceNumber']
        Instructor=request.form['Instructor']
        AdminKey=request.form['AdminKey']
        if Institution and InvoiceNumber:
            users=Users.query.filter_by(Institution=Institution,InvoiceNumber=InvoiceNumber).paginate(page=1,per_page=per_page,error_out=False)
        elif Institution:
            users=Users.query.filter_by(Institution=Institution).paginate(page=1,per_page=per_page,error_out=False)
        elif InvoiceNumber:
            users=Users.query.filter_by(InvoiceNumber=InvoiceNumber).paginate(page=1,per_page=per_page,error_out=False)
        elif Instructor:
            users=Users.query.filter_by(Instructor=Instructor).paginate(page=1,per_page=per_page,error_out=False)
        elif Instructor and Institution:
            users=Users.query.filter_by(Instructor=Instructor,Institution=Institution).paginate(page=1,per_page=per_page,error_out=False)
        elif AdminKey:
            users=Users.query.filter_by(AdminKey=AdminKey).paginate(page=1,per_page=per_page,error_out=False)
        else:
            return redirect('/')
        return render_template('searchResults.html',users=users)

    return render_template('index.html')


@app.route('/browse', methods=['GET', 'POST'],defaults={'page':1})
@app.route('/browse/<int:page>', methods=['GET', 'POST'])
def browse(page):
    # per_page=request.args.get('per_page',10)
    # users = Users.query.all()
    page_num=request.form.get('page_number',page,type=int)
    users_paginate = Users.query.paginate(page=page_num,per_page=10,error_out=False)
    print("page=",page_num)
    return render_template('browse.html', users=users_paginate)

# @app.route('/searchResults', methods=['GET', 'POST'], defaults={'page':1})
# @app.route('/searchResults/<int:page>', methods=['GET', 'POST'])
# def searchResults(users,page):
#     per_page=10
#     users_paginate = users.paginate(page=page,per_page=per_page,error_out=False)
#     return render_template('searchResults.html', users=users_paginate)


@app.route('/edit/<int:id>', methods=['GET', 'POST'])
def edit(id):
    date=datetime.now().strftime("%Y-%m-%d")
    users = Users.query.all()
    user=""
    for i in range(len(users)):
        if(int(users[i].id)==id):
            user=users[i]
    if request.method=="POST":
        user.InvoiceNumber=request.form['InvoiceNumber']
        user.Institution=request.form['Institution']
        user.InvoiceDate=request.form['InvoiceDate']
        user.Instructor=request.form['Instructor']
        user.AdminKey=request.form['AdminKey']
        user.Email=request.form['Email']
        user.Usercode=request.form['Usercode']
        user.AdminCount=request.form['AdminCount']
        user.site_license_checkbox=request.form.get('site_license_checkbox')
        user.site_license_date=request.form['site_license_date']
        user.reflection_checkbox=request.form.get('reflection_checkbox')
        user.custom_message_checkbox=request.form.get('custom_message_checkbox')
        user.custom_message=request.form['custom_message']
        user.show_extra_questions=request.form.get('show_extra_questions')
        user.Q91=request.form['Q91']
        user.Q92=request.form['Q92']
        if(user.InvoiceDate==""):
            user.InvoiceDate=date
        if(user.site_license_date==""):
            user.site_license_date=date
        if(user.site_license_checkbox=="on"):
            user.site_license_checkbox='1'
        if(user.reflection_checkbox=="on"):
            user.reflection_checkbox='1'
        if(user.custom_message_checkbox=="on"):
            user.custom_message_checkbox='1'
        db.session.commit()
        return redirect(url_for('browse'))
    return render_template('edit.html', user=user)


@app.route('/add', methods=['GET', 'POST'])
def add():
    date=datetime.now().strftime("%Y-%m-%d")
    users=Users.query.all()
    if len(users)>0:
        last_id=int(users[-1].id) #getting the id of last user
    else:
        last_id=0
    if request.form:
        new_user = Users(
        id=last_id+1,
        InvoiceNumber=request.form['InvoiceNumber'],
        Institution=request.form['Institution'],
        InvoiceDate=request.form['InvoiceDate'],
        Instructor=request.form['Instructor'],
        AdminKey=request.form['AdminKey'],
        Email=request.form['Email'],
        Usercode=request.form['Usercode'],
        AdminCount=request.form['AdminCount'],
        site_license_checkbox=request.form.get('site_license_checkbox'),
        site_license_date=request.form['site_license_date'],
        reflection_checkbox=request.form.get('reflection_checkbox'),
        custom_message_checkbox=request.form.get('custom_message_checkbox'),
        custom_message=request.form['custom_message'],
        show_extra_questions=request.form.get('show_extra_questions'),
        Q91=request.form['Q91'],
        Q92=request.form['Q92']
        )
        if(new_user.InvoiceDate==""):
            new_user.InvoiceDate=date
        if(new_user.site_license_date==""):
            new_user.site_license_date=date
        db.session.add(new_user)
        db.session.commit()
        return redirect(url_for('add'))
    return render_template('add.html')

@app.route('/delete/<int:id>')
def delete(id):
    users = Users.query.all()
    user=""
    for i in range(len(users)):
        if(int(users[i].id)==id):
            user=users[i]
    db.session.delete(user)
    db.session.commit()
    return redirect(url_for('browse'))

@app.errorhandler(404)
def not_found(error):
    return render_template('404.html', msg=error), 404

if __name__ == '__main__':
    app.run(debug=True, port=5000, host='127.0.0.1')