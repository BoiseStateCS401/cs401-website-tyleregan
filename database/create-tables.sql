-- Users
Create TABLE users(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(75) NOT NULL,
	name VARCHAR(75) NOT NULL UNIQUE,
	title VARCHAR(50) NOT NULL,
	major VARCHAR(256),
	posts INT NOT NULL
);
INSERT INTO Users (email, password, name, title, posts) VALUES("root@u.boisestate.edu", "rootroot", "root", "Admin", "0");

-- Topics
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
INSERT INTO Topics VALUES("Materials Science and Engineering", "MSE");
INSERT INTO Topics VALUES("Mathematics", "MATH");
INSERT INTO Topics VALUES("Mechanical and biomedical Engineering", "ME");
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

create TABLE AllThreads(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);
-- FIX THIS
INSERT INTO AllThreads (thread, post, poster, postDate, postContent) VALUES ("Rules for Posts", '1', "root",  '2012-06-18 10:34:09', "Content");

create TABLE ACCT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);


create TABLE ANTH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ART(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BIOS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CHEM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE COMM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CEH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CMGT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CJ(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE EDCIFS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE EDESP(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ECON(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ECE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ENGL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE FINAN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GIMM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GEOS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GLOBALS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HIST(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);


create TABLE ITM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE KINES(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE EDLLC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE MGMT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE MKTG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE MATH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ME(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE MSE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

DROP TABLE IF EXISTS MUS;
create TABLE MUS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE NURS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PHIL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PHYS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE POLS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PSYC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RADSCI(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RESPCARE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SOCWRK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SOC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE THEA(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE URBAN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ARCH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BMT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BLE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BSB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BCL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BLDS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BWLG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CLS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CTF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CNG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CHE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CRKT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE DNC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE DG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE DVG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE FSH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE FB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GLF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GYM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HKG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HOK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);


create TABLE HNT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ICSK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE JR(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE KYK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE KB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE LCRS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE MA(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PDLB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PKR(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PLT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PP(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE QDC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RFT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RGB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RNG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SKTB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SKI(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SLKL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SLD(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SNKL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SNB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SOCC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SFTB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SQSH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SWM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE TEN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE TAF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE UF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE VLB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WLK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WVB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WTL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WFB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WRST(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE YG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75),
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);
