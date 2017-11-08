-- Users
DROP TABLE IF EXISTS users;
Create TABLE users(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(75) NOT NULL,
	name VARCHAR(75) NOT NULL UNIQUE,
	title VARCHAR(50) NOT NULL,
	major VARCHAR(256),
	posts INT NOT NULL
);
INSERT INTO Users (email, password, name, title, posts) VALUES("root@u.boisestate.edu", "root", "root", "Admin", "0");

-- Topics
DROP TABLE IF EXISTS Topics;
create TABLE Topics(
	name VARCHAR(100) NOT NULL PRIMARY KEY,
	abbr VARCHAR(100) NOT NULL UNIQUE
);
INSERT INTO Topics VALUES("Accountancy", "ACCT");
INSERT INTO Topics VALUES("Anthropology", "ANTH");
INSERT INTO Topics VALUES("Art", "ART");
INSERT INTO Topics VALUES("Biological Sciences", "BIOL");
INSERT INTO Topics VALUES("Chemistry", "CHEM");
INSERT INTO Topics VALUES("Civil Engineering", "CE");
INSERT INTO Topics VALUES("Communication", "COMM");
INSERT INTO Topics VALUES("Community and Environmental Health", "CEH");
INSERT INTO Topics VALUES("Computer Science", "CS");
INSERT INTO Topics VALUES("Construction Management", "CMGT");
INSERT INTO Topics VALUES("Criminal Justice", "CJ");
INSERT INTO Topics VALUES("Curriculum, Instruction, and Foundational Studies", "EDCIFS");
INSERT INTO Topics VALUES("Early and Special Education", "EDESP");
INSERT INTO Topics VALUES("Economics", "ECON");
INSERT INTO Topics VALUES("Electrical and Computer Engineering", "ECE");
INSERT INTO Topics VALUES("English", "ENGL");
INSERT INTO Topics VALUES("Finance", "FINAN");
INSERT INTO Topics VALUES("Games, Interactive Media, and Mobile", "GIMM");
INSERT INTO Topics VALUES("Geosciences", "GEOS");
INSERT INTO Topics VALUES("Global Studies", "GLOBALS");
INSERT INTO Topics VALUES("History", "HIST");
INSERT INTO Topics VALUES("Information Technology and Supply Chain Management", "ITM");
INSERT INTO Topics VALUES("Kinesiology", "KINES");
INSERT INTO Topics VALUES("Literacy, Language, and Culture", "EDLLC");
INSERT INTO Topics VALUES("Management", "MGMT");
INSERT INTO Topics VALUES("Marketing", "MKTG");
INSERT INTO Topics VALUES("Mathematics", "MATH");
INSERT INTO Topics VALUES("Mechanical and biomedical Engineering", "ME");
INSERT INTO Topics VALUES("Materials Science and Engineering", "MSE");
INSERT INTO Topics VALUES("Music", "MUS");
INSERT INTO Topics VALUES("Nursing", "NURS");
INSERT INTO Topics VALUES("Philosophy", "PHIL");
INSERT INTO Topics VALUES("Physics", "PHYS");
INSERT INTO Topics VALUES("Political Science", "POLS");
INSERT INTO Topics VALUES("Psychological Science", "PSYC");
INSERT INTO Topics VALUES("Radiologic Sciences", "RADSCI");
INSERT INTO Topics VALUES("Respiratory Care", "RESPCARE");
INSERT INTO Topics VALUES("Social Work", "SOCWRK");
INSERT INTO Topics VALUES("Sociology", "SOC");
INSERT INTO Topics VALUES("Theatre Arts", "THEA");
INSERT INTO Topics VALUES("Urban Studies and Community Development Program", "URBAN");
INSERT INTO Topics VALUES("World Languages", "WL");
INSERT INTO Topics VALUES("Archery", "ARCH");
INSERT INTO Topics VALUES("Badminton", "BMT");
INSERT INTO Topics VALUES("Ballet", "BLE");
INSERT INTO Topics VALUES("Baseball", "BSB");
INSERT INTO Topics VALUES("Basketball", "BKB");
INSERT INTO Topics VALUES("Bicycling", "BCL");
INSERT INTO Topics VALUES("Billiards", "BLDS");
INSERT INTO Topics VALUES("Bowling", "BWLG");
INSERT INTO Topics VALUES("Calisthenics", "CLS");
INSERT INTO Topics VALUES("Capture The Flag", "CTF");
INSERT INTO Topics VALUES("Canoeing", "CNG");
INSERT INTO Topics VALUES("Cheerleading", "CHE");
INSERT INTO Topics VALUES("Cricket", "CRKT");
INSERT INTO Topics VALUES("Cross Training", "CT");
INSERT INTO Topics VALUES("Dance", "DNC");
INSERT INTO Topics VALUES("Disk Golf", "DG");
INSERT INTO Topics VALUES("Diving", "DVG");
INSERT INTO Topics VALUES("Fishing", "FSH");
INSERT INTO Topics VALUES("Football", "FB");
INSERT INTO Topics VALUES("Golf", "GLF");
INSERT INTO Topics VALUES("Gymnastics", "GYM");
INSERT INTO Topics VALUES("Hacky Sack", "HS");
INSERT INTO Topics VALUES("Hang Gliding", "HG");
INSERT INTO Topics VALUES("Hiking", "HKG");
INSERT INTO Topics VALUES("Hockey", "HOK");
INSERT INTO Topics VALUES("Hunting", "HNT");
INSERT INTO Topics VALUES("Ice Skating", "ICSK");
INSERT INTO Topics VALUES("Jump Rope", "JR");
INSERT INTO Topics VALUES("Kayaking", "KYK");
INSERT INTO Topics VALUES("Kickball", "KB");
INSERT INTO Topics VALUES("Lacrosse", "LCRS");
INSERT INTO Topics VALUES("Martial Arts", "MA");
INSERT INTO Topics VALUES("Paddelboarding", "PDLB");
INSERT INTO Topics VALUES("Paintball", "PB");
INSERT INTO Topics VALUES("Parkour", "PKR");
INSERT INTO Topics VALUES("Pickleball", "PKB");
INSERT INTO Topics VALUES("Pilates", "PLT");
INSERT INTO Topics VALUES("Ping Pong", "PP");
INSERT INTO Topics VALUES("Quidditch", "QDC");
INSERT INTO Topics VALUES("Racquetball", "RKB");
INSERT INTO Topics VALUES("Rafting", "RFT");
INSERT INTO Topics VALUES("Rock Climbing", "RC");
INSERT INTO Topics VALUES("Roller Skating", "RS");
INSERT INTO Topics VALUES("Rugby", "RGB");
INSERT INTO Topics VALUES("Running", "RNG");
INSERT INTO Topics VALUES("Skateboarding", "SKTB");
INSERT INTO Topics VALUES("Skiing", "SKI");
INSERT INTO Topics VALUES("Slacklining", "SLKL");
INSERT INTO Topics VALUES("Sledding", "SLD");
INSERT INTO Topics VALUES("Snorkeling", "SNKL");
INSERT INTO Topics VALUES("Snowboarding", "SNB");
INSERT INTO Topics VALUES("Soccer", "SOCC");
INSERT INTO Topics VALUES("Softball", "SFTB");
INSERT INTO Topics VALUES("Squash", "SQSH");
INSERT INTO Topics VALUES("Swimming", "SWM");
INSERT INTO Topics VALUES("Tennis", "TEN");
INSERT INTO Topics VALUES("Track and Field", "TAF");
INSERT INTO Topics VALUES("Ultimate Frisbee", "UF");
INSERT INTO Topics VALUES("Volleyball", "VLB");
INSERT INTO Topics VALUES("Walking", "WLK");
INSERT INTO Topics VALUES("Watervolleyball", "WVB");
INSERT INTO Topics VALUES("Weight Lifting", "WTL");
INSERT INTO Topics VALUES("Whiffle Ball", "WFB");
INSERT INTO Topics VALUES("Wrestling", "WRST");
INSERT INTO Topics VALUES("Yoga", "YG");

-- Tables for topics
DROP TABLE IF EXISTS ACCT;
create TABLE ACCT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ANTH;
create TABLE ANTH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ART;
create TABLE ART(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BIOS;
create TABLE BIOS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CHEM;
create TABLE CHEM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CE;
create TABLE CE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS COMM;
create TABLE COMM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CEH;
create TABLE CEH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CS;
create TABLE CS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CMGT;
create TABLE CMGT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CJ;
create TABLE CJ(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS EDCIFS;
create TABLE EDCIFS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS EDESP;
create TABLE EDESP(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ECON;
create TABLE ECON(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ECE;
create TABLE ECE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ENGL;
create TABLE ENGL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS FINAN;
create TABLE FINAN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS GIMM;
create TABLE GIMM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS GEOS;
create TABLE GEOS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS GLOBALS;
create TABLE GLOBALS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS HIST;
create TABLE HIST(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ITM;
create TABLE ITM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS KINES;
create TABLE KINES(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS EDLLC;
create TABLE EDLLC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MGMT;
create TABLE MGMT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MKTG;
create TABLE MKTG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MATH;
create TABLE MATH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ME;
create TABLE ME(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MSE;
create TABLE MSE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MUS;
create TABLE MUS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS NURS;
create TABLE NURS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PHIL;
create TABLE PHIL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PHYS;
create TABLE PHYS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS POLS;
create TABLE POLS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PSYC;
create TABLE PSYC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RADSCI;
create TABLE RADSCI(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RESPCARE;
create TABLE RESPCARE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SOCWRK;
create TABLE SOCWRK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SOC;
create TABLE SOC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS THEA;
create TABLE THEA(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS URBAN;
create TABLE URBAN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS WL;
create TABLE WL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ARCH;
create TABLE ARCH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BMT;
create TABLE BMT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BLE;
create TABLE BLE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BSB;
create TABLE BSB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BKB;
create TABLE BKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BCL;
create TABLE BCL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BLDS;
create TABLE BLDS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS BWLG;
create TABLE BWLG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CLS;
create TABLE CLS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CTF;
create TABLE CTF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CNG;
create TABLE CNG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CHE;
create TABLE CHE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CRKT;
create TABLE CRKT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS CT;
create TABLE CT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS DNC;
create TABLE DNC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS DG;
create TABLE DG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS DVG;
create TABLE DVG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS FSH;
create TABLE FSH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS FB;
create TABLE FB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS GLF;
create TABLE GLF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS GYM;
create TABLE GYM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS HS;
create TABLE HS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS HG;
create TABLE HG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS HKG;
create TABLE HKG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS HOK;
create TABLE HOK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS HNT;
create TABLE HNT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS ICSK;
create TABLE ICSK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS JR;
create TABLE JR(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS KYK;
create TABLE KYK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS KB;
create TABLE KB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS LCRS;
create TABLE LCRS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MA;
create TABLE MA(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PDLB;
create TABLE PDLB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PB;
create TABLE PB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PKR;
create TABLE PKR(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PKB;
create TABLE PKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PLT;
create TABLE PLT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS PP;
create TABLE PP(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS QDC;
create TABLE QDC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RKB;
create TABLE RKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RFT;
create TABLE RFT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RC;
create TABLE RC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RS;
create TABLE RS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RGB;
create TABLE RGB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS RNG;
create TABLE RNG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SKTB;
create TABLE SKTB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SKI;
create TABLE SKI(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SLKL;
create TABLE SLKL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SLD;
create TABLE SLD(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SNKL;
create TABLE SNKL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SNB;
create TABLE SNB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SOCC;
create TABLE SOCC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SFTB;
create TABLE SFTB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SQSH;
create TABLE SQSH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS SWM;
create TABLE SWM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS TEN;
create TABLE TEN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS TAF;
create TABLE TAF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS UF;
create TABLE UF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS VLB;
create TABLE VLB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS WLK;
create TABLE WLK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS WVB;
create TABLE WVB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS WTL;
create TABLE WTL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS WFB;
create TABLE WFB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS WRST;
create TABLE WRST(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS YG;
create TABLE YG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATE NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);