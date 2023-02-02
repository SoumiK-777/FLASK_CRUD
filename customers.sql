BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER NOT NULL,
	"WebID"	VARCHAR(100),
	"InvoiceNumber"	VARCHAR(20),
	"Institution"	VARCHAR(50),
	"InvoiceDate"	DATETIME,
	"Instructor"	VARCHAR(50),
	"AdminKey"	VARCHAR(20),
	"Email"	VARCHAR(50),
	"Usercode"	VARCHAR(20),
	"AdminCount"	INTEGER,
	"site_license_checkbox"	VARCHAR(5),
	"site_license_date"	DATETIME,
	"reflection_checkbox"	VARCHAR(5),
	"custom_message_checkbox"	VARCHAR(5),
	"custom_message"	TEXT,
	"show_extra_questions"	VARCHAR(5),
	"Q91"	VARCHAR(200),
	"Q92"	VARCHAR(200),
	PRIMARY KEY("id")
);
INSERT INTO "users" VALUES (318,'AXUVJB2HTB4D2H841BRO','44010','Agnes Scott College','2019-07-18 11:44:46.525907','Teri Dactyl','rdkw','contact@agnesscott.edu','gyfb','25','yes','2023-05-16 11:44:46.525907','Yes','Yes','This is a custom message.','Yes','What is your favorite color?','What is your favorite movie?');
INSERT INTO "users" VALUES (321,'2XA56Q7MT6HCQJCYQ7NB','55010','Albany Technical College','2019-09-24 11:44:46.525907','Peg Legge','pwkq','contact@albanytech.edu','ipsq','5','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (603,'KUJ8T8021Z3FQJVOZO3W','44307','Armstrong Atlantic State University','2022-02-14 11:44:46.525907','Allie Grater','psh','contact@armstrong.edu','pcyx','305','yes','2023-09-12 11:44:46.525907','','Yes','This is another custom message.','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (604,'UARQ7VQ61FCP6D5ZJF2S','44308','Atlanta Technical College','2021-10-15 11:44:46.525907','Liz Erd','bxz','contact@atlantatech.edu','nnch','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (605,'X5A8BZGA5YBX6IUJGG11','44309','Atlanta Metropolitan State College','2021-11-16 11:44:46.525907','Constance Noring','gyp','contact@atlm.edu','xkgh','5','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (606,'3AUROJZGQ0S8F5MTDXT0','44310','Berry College','2021-11-16 11:44:46.525907','Lois Di Nominator','syws','contact@berry.edu','zyep','5','','','','','','No','','');
INSERT INTO "users" VALUES (607,'QS1OO718XR1ZPOCO0TMK','44311','Carver College','2021-11-17 11:44:46.525907','Minnie Van Ryder','wzg','contact@carver.edu','pcyx','5','','','Yes','','','No','','');
INSERT INTO "users" VALUES (608,'OMIE2JWJ8GQDUI4CNFN1','44312','Child Care Education Institute 11:44:46.525907','2021-11-17','Ray Sin','ksa','contact@cceionline.edu','yegw','5','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (610,'R44N127X8ORTDQ4FORIC','44314','Central Georgia Technical College','2022-01-31 11:44:46.525907','Isabelle Ringing','kmc','contact@centralgatech.edu','xnch','25','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (611,'OC4XUMUUMGKO2F2XJ8KQ','44315','Clayton State University','2022-02-25 11:44:46.525907','Eileen Sideways','kuy','contact@clayton.edu','yegw','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (612,'IINTCVAP7GS5IEWPHKXM','44316','Columbus State University','2022-03-31 11:44:46.525907','Rita Book','dym','contact@columbusstate.edu','pyxc','1','','','','','','No','','');
INSERT INTO "users" VALUES (613,'2KWAE1T74Y35ZDF0SS5M','44317','Columbus Technical College','2022-05-18 11:44:46.525907','Paige Turner','zyy','contact@columbustech.edu','ygka','301','yes','2023-07-06 11:44:46.525907','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (614,'5EZ7MJ348YTU26YRBVYQ','44318','Covenant College','2022-04-25 11:44:46.525907','Rhoda Report','wxp','contact@covenant.edu','xghk','3','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (622,'3EM4511PSKO4X54W23KC','44326','Dalton State','2022-06-06 11:44:46.525907','Augusta Wind','kygz','contact@daltonstate.edu','yxwm','300','yes','2023-01-06 11:44:46.525907','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (615,'KHMYJICWVDZ4YMBD7ONA','44319','Darton State College','2022-07-08 11:44:46.525907','Chris Anthemum','csg','contact@darton.edu','wcxf','21','','','Yes','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (616,'NY1NXTVUIQIPOWDNBBKY','44320','East Georgia State College','2022-05-13 11:44:46.525907','Anne Teak','xnet','contact@ega.edu','xghk','120','','','','Yes','This is another custom message.','No','','');
INSERT INTO "users" VALUES (617,'6F18R5NQR0ZS3ADOPOO2','44321','Emory University','2022-08-17 11:44:46.525907','Anita Bath','acxr','contact@emory.edu','argw','1','','','','','','No','','');
INSERT INTO "users" VALUES (618,'3RAAVR6PU663XIHIUMGB','44322','Georgia Institute of Technology','2022-05-24 11:44:46.525907','Harriet Upp','bhu','contact@gatech.edu','gxpw','20','','','','','','No','','');
INSERT INTO "users" VALUES (619,'C1RXOPKE7NOM77AW1MWC','44323','Georgia College','2022-06-01 11:44:46.525907','Anita Letterback','csy','contact@gcsu.edu','ygka','2','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (620,'PGG1T4RS8QOCM0VCFXU7','44324','Georgia Southern University','2022-06-02 11:44:46.525907','Hope Furaletter','wyz','contact@georgiasouthern.edu','xchn','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (621,'RED8UIQC7WIQ00C7NUIO','44325','Georgia Gwinnett College','2022-07-06 11:44:46.525907','Bea Mine','cgp','contact@ggc.edu','yxda','1','','','Yes','','','No','','');
INSERT INTO "users" VALUES (623,'OM4V7VTWD1BZZA3GR0AE','44327','Georgia Perimeter College','2022-12-14 11:44:46.525907','Bess Twishes','hgy','contact@gpc.edu','xghp','18','','','','','','No','','');
INSERT INTO "users" VALUES (624,'GZVC35BI6FE0N4IMNF2O','44328','Augusta University','2022-07-28 11:44:46.525907','Audie Yose','cgsw','contact@augusta.edu','wcxf','10','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (625,'67P2FVEQBQYCKP0IJWCW','55322','Georgia State University','2022-08-02 11:44:46.525907','Dee End','pyz','contact@gsu.edu','ypwe','200','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (626,'RS04SMYCJFTW4O4SMEWF','44329','Georgia South Western State University','2022-08-02 11:44:46.525907','Amanda Hug','gzy','contact@gsw.edu','wxda','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (627,'5CU5TAND6QZHNTKGRNRV','44330','Interactive College of Technology','2022-09-01 11:44:46.525907','Ben Dover','yng','contact@ict.edu','nmyw','301','yes','2023-05-20 11:44:46.525907','Yes','Yes','This is another custom message.','No','','');
INSERT INTO "users" VALUES (628,'8ERDEZZ0XTHDBCEW36B5','44331','Kennesaw State University','2022-08-12 11:44:46.525907','Eileen Dover','wznd','contact@kennesaw.edu','xchn','240','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (629,'J2GWKUFGGIAEQPNDCBKK','44332','Lanier Technical College','2022-08-15 11:44:46.525907','Willie Makit','zmc','contact@laniertech.edu','wcxf','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (630,'T3MCEGN5B6H6U5OTCG6O','44333','Life University','2022-10-04 11:44:46.525907','Willie Findit','emy','contact@life.edu','ygwe','2','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (633,'78UZ2M5EJ848MZDQK1TU','44336','Mercer University','2022-10-12 11:44:46.525907','Skye Blue','wxs','contact@mercer.edu','xchn','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (631,'YIUSDHVRFXXWZ06W2MCB','44334','Middle Georgia State College','2022-10-14 11:44:46.525907','Staum Clowd','kpr','contact@mga.edu','dexc','37','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (632,'Z7CY7FUZCC4TZX4IESRJ','44335','Morehouse College','2022-11-10 11:44:46.525907','Addie Minstra','azk','contact@morehouse.edu','zepy','1','','','Yes','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (634,'O5DSNH823TX5RQE6BWNZ','44337','Morehouse School of Medicine','2022-11-10 11:44:46.525907','Anne Ortha','cxnk','contact@msm.edu','wcyf','1','','','Yes','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (635,'BGCBP1P4FCZ8R5E77RSH','44338','North Georgia Technical College','2022-11-16 11:44:46.525907','Dave Allippa','dzey','contact@northgatech.edu','xphk','1','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (636,'NHCA2H7TKYX0ZF1OMA0U','44339','Oglethorpe University','2022-11-16 11:44:46.525907','Ginger Plant','gbc','contact@oglethorpe.edu','zgpy','1','','','','','','No','','');
INSERT INTO "users" VALUES (638,'ZTSYC4DYFEXNENRB1CRW','44341','Okefenokee Technical College','2022-12-06 11:44:46.525907','Del Phineum','cpx','contact@okefenokeetech.edu','neph','3','','','','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (637,'QMX6ACAQTCUB3CJK2GHZ','44340','Paine College','2022-12-09 11:44:46.525907','Rose Bush','wbwa','contact@paine.edu','zbuy','5','','','Yes','','','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
INSERT INTO "users" VALUES (639,'U8SDMYBCSK4UCAW11WJD','44342','Pfeiffer University','2022-12-13 11:44:46.525907','Perry Scope','gusa','contact@pfeiffer.edu','kxym','1','','','','Yes','This is another custom message.','No','','');
INSERT INTO "users" VALUES (640,'CX5I4PZXEYQNJ5UARBHA','44343','Piedmont College ','2022-12-20 11:44:46.525907','Pat Thettick','amhc','contact@piedmont.edu','cphn','1','','','Yes','Yes','This is another custom message.','Yes','This is a placeholder for item 91.','This is a placeholder for item 92.');
COMMIT;