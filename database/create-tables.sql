--Drop TABLE
DROP TABLE IF EXISTS test;

Create TABLE test(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO test (email) VALUES ('root@u.boisestate.edu');

--Keep commented.
Create TABLE Users(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(75) NOT NULL,
	name VARCHAR(75) NOT NULL UNIQUE,
	title VARCHAR(50) NOT NULL,
	major VARCHAR(256),
	posts INT NOT NULL
);

INSERT INTO Users (email, password, name, title, posts) VALUES("root@u.boisestate.edu", "root", "root", "Admin", "0");

create TABLE Topics(
	name VARCHAR(256) NOT NULL PRIMARY KEY,
	acro VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Topics VALUES("Accountancy", "ACCT");
INSERT INTO Topics VALUES("Anthropolgy", "ANTH");
INSERT INTO Topics VALUES("Art", "ART");
INSERT INTO Topics VALUES("Biological Sciences", "BIOL");
INSERT INTO Topics VALUES("Chemistry", "CHEM");
INSERT INTO Topics VALUES("Civil Engineering", "CE");
INSERT INTO Topics VALUES("Communication", "COMM");
INSERT INTO Topics VALUES("Community and Environmental Health", "CEH");
INSERT INTO Topics VALUES("Computer Science", "CS");
INSERT INTO Topics VALUES("Construction Management", "CMGT");
INSERT INTO Topics VALUES("Criminal Justice", "CJ");
INSERT INTO Topics VALUES("Curriculum, Instruction, and Foundational Studies", "ED-CIFS");
INSERT INTO Topics VALUES("Early and Special Education", "ED-ESP");
INSERT INTO Topics VALUES("Economics", "ECON");
INSERT INTO Topics VALUES("Electrical and Computer Engineering", "ECE");
INSERT INTO Topics VALUES("English", "ENGL");
INSERT INTO Topics VALUES("Finance", "FINAN");
INSERT INTO Topics VALUES("Games, Interactive Media, and Mobile", "GIMM");
INSERT INTO Topics VALUES("Geosciences", "GEOS");
INSERT INTO Topics VALUES("Global Studies", "GLOBAL");
INSERT INTO Topics VALUES("History", "HIST");
INSERT INTO Topics VALUES("Information Technology and Supply Chain Management", "ITM");
INSERT INTO Topics VALUES("Kinesiology", "KINES");
INSERT INTO Topics VALUES("Literacy, Language, and Culture", "ED-LLC");
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
/* Do I need activity abbrevations?
INSERT INTO Topics VALUES("Archery", "ARCH");
INSERT INTO Topics VALUES("Badminton", "BMT");
INSERT INTO Topics VALUES("Ballet", "BLE");
INSERT INTO Topics VALUES("Baseball", "BSB");
INSERT INTO Topics VALUES("Basketball", "BKB");
INSERT INTO Topics VALUES("Bicycling", "BCL");
INSERT INTO Topics VALUES("Billiards", "BLDS");
INSERT INTO Topics VALUES("Bowling", "BLG");
INSERT INTO Topics VALUES("Calisthenics", "CLS");
INSERT INTO Topics VALUES("Capture The Flag", "CTF");
INSERT INTO Topics VALUES("Canoeing", "CNG");
INSERT INTO Topics VALUES("Cheerleading", "CLD");
INSERT INTO Topics VALUES("Cricket", "CKT");
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
INSERT INTO Topics VALUES("Ice Skating", "IS");
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
INSERT INTO Topics VALUES("Soccer", "SOC");
INSERT INTO Topics VALUES("Softball", "SFTB");
INSERT INTO Topics VALUES("Squash", "SQSH");
INSERT INTO Topics VALUES("Swimming", "SWM");
INSERT INTO Topics VALUES("Tennis", "TEN");
INSERT INTO Topics VALUES("Track and Field", "T&F");
INSERT INTO Topics VALUES("Ultimate Frisbee", "UF");
INSERT INTO Topics VALUES("Volleyball", "VLB");
INSERT INTO Topics VALUES("Walking", "WLK");
INSERT INTO Topics VALUES("Watervolleyball", "WVB");
INSERT INTO Topics VALUES("Weight Lifting", "WL");
INSERT INTO Topics VALUES("Whiffle Ball", "WFB");
INSERT INTO Topics VALUES("Wrestling", "WRST");
INSERT INTO Topics VALUES("Yoga", "YG");
*/

create TABLE Computer Science(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(100) NOT NULL,
	post INT NOT NULL,
	poster VARCHAR(75) FOREIGN KEY,
	postDate DATE NOT NULL,
	postContent VARCHAR(256) NOT NULL
);



















