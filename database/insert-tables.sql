-- Users
INSERT INTO Users (email, password, name, role, posts, locked, lockedTime, attempts, attemptTime, profilePic) VALUES("admin@u.boisestate.edu", "adminroot", "admin", "Admin", '0', '0', '2017-12-08 10:45:00', '0', '2017-12-08 10:45:00 AM', "https://i.imgur.com/zymgstf.jpg");

-- Topics
INSERT INTO Topics VALUES("Accountancy", "ACCT", "Major");
INSERT INTO Topics VALUES("Anthropology", "ANTH", "Major");
INSERT INTO Topics VALUES("Art", "ART", "Major");
INSERT INTO Topics VALUES("Biological Sciences", "BIOL", "Major");
INSERT INTO Topics VALUES("Chemistry", "CHEM", "Major");
INSERT INTO Topics VALUES("Civil Engineering", "CE", "Major");
INSERT INTO Topics VALUES("Communication", "COMM", "Major");
INSERT INTO Topics VALUES("Community and Environmental Health", "CEH", "Major");
INSERT INTO Topics VALUES("Computer Science", "CS", "Major");
INSERT INTO Topics VALUES("Construction Management", "CMGT", "Major");
INSERT INTO Topics VALUES("Criminal Justice", "CJ", "Major");
INSERT INTO Topics VALUES("Curriculum, Instruction, and Foundational Studies", "EDCIFS", "Major");
INSERT INTO Topics VALUES("Early and Special Education", "EDESP", "Major");
INSERT INTO Topics VALUES("Economics", "ECON", "Major");
INSERT INTO Topics VALUES("Electrical and Computer Engineering", "ECE", "Major");
INSERT INTO Topics VALUES("English", "ENGL", "Major");
INSERT INTO Topics VALUES("Finance", "FINAN", "Major");
INSERT INTO Topics VALUES("Games, Interactive Media, and Mobile", "GIMM", "Major");
INSERT INTO Topics VALUES("Geosciences", "GEOS", "Major");
INSERT INTO Topics VALUES("Global Studies", "GLOBALS", "Major");
INSERT INTO Topics VALUES("History", "HIST", "Major");
INSERT INTO Topics VALUES("Information Technology and Supply Chain Management", "ITM", "Major");
INSERT INTO Topics VALUES("Kinesiology", "KINES", "Major");
INSERT INTO Topics VALUES("Literacy, Language, and Culture", "EDLLC", "Major");
INSERT INTO Topics VALUES("Management", "MGMT", "Major");
INSERT INTO Topics VALUES("Marketing", "MKTG", "Major");
INSERT INTO Topics VALUES("Materials Science and Engineering", "MSE", "Major");
INSERT INTO Topics VALUES("Mathematics", "MATH", "Major");
INSERT INTO Topics VALUES("Mechanical and biomedical Engineering", "ME", "Major");
INSERT INTO Topics VALUES("Music", "MUS", "Major");
INSERT INTO Topics VALUES("Nursing", "NURS", "Major");
INSERT INTO Topics VALUES("Philosophy", "PHIL", "Major");
INSERT INTO Topics VALUES("Physics", "PHYS", "Major");
INSERT INTO Topics VALUES("Political Science", "POLS", "Major");
INSERT INTO Topics VALUES("Psychological Science", "PSYC", "Major");
INSERT INTO Topics VALUES("Radiologic Sciences", "RADSCI", "Major");
INSERT INTO Topics VALUES("Respiratory Care", "RESPCARE", "Major");
INSERT INTO Topics VALUES("Social Work", "SOCWRK", "Major");
INSERT INTO Topics VALUES("Sociology", "SOC", "Major");
INSERT INTO Topics VALUES("Theatre Arts", "THEA", "Major");
INSERT INTO Topics VALUES("Urban Studies and Community Development Program", "URBAN", "Major");
INSERT INTO Topics VALUES("World Languages", "WL", "Major");
INSERT INTO Topics VALUES("Archery", "ARCH", "Activity");
INSERT INTO Topics VALUES("Badminton", "BMT", "Activity");
INSERT INTO Topics VALUES("Ballet", "BLE", "Activity");
INSERT INTO Topics VALUES("Baseball", "BSB", "Activity");
INSERT INTO Topics VALUES("Basketball", "BKB", "Activity");
INSERT INTO Topics VALUES("Bicycling", "BCL", "Activity");
INSERT INTO Topics VALUES("Billiards", "BLDS", "Activity");
INSERT INTO Topics VALUES("Bowling", "BWLG", "Activity");
INSERT INTO Topics VALUES("Calisthenics", "CLS", "Activity");
INSERT INTO Topics VALUES("Capture The Flag", "CTF", "Activity");
INSERT INTO Topics VALUES("Canoeing", "CNG", "Activity");
INSERT INTO Topics VALUES("Cheerleading", "CHE", "Activity");
INSERT INTO Topics VALUES("Cricket", "CRKT", "Activity");
INSERT INTO Topics VALUES("Cross Training", "CT", "Activity");
INSERT INTO Topics VALUES("Dance", "DNC", "Activity");
INSERT INTO Topics VALUES("Disk Golf", "DG", "Activity");
INSERT INTO Topics VALUES("Diving", "DVG", "Activity");
INSERT INTO Topics VALUES("Fishing", "FSH", "Activity");
INSERT INTO Topics VALUES("Football", "FB", "Activity");
INSERT INTO Topics VALUES("Golf", "GLF", "Activity");
INSERT INTO Topics VALUES("Gymnastics", "GYM", "Activity");
INSERT INTO Topics VALUES("Hacky Sack", "HS", "Activity");
INSERT INTO Topics VALUES("Hang Gliding", "HG", "Activity");
INSERT INTO Topics VALUES("Hiking", "HKG", "Activity");
INSERT INTO Topics VALUES("Hockey", "HOK", "Activity");
INSERT INTO Topics VALUES("Hunting", "HNT", "Activity");
INSERT INTO Topics VALUES("Ice Skating", "ICSK", "Activity");
INSERT INTO Topics VALUES("Jump Rope", "JR", "Activity");
INSERT INTO Topics VALUES("Kayaking", "KYK", "Activity");
INSERT INTO Topics VALUES("Kickball", "KB", "Activity");
INSERT INTO Topics VALUES("Lacrosse", "LCRS", "Activity");
INSERT INTO Topics VALUES("Martial Arts", "MA", "Activity");
INSERT INTO Topics VALUES("Paddelboarding", "PDLB", "Activity");
INSERT INTO Topics VALUES("Paintball", "PB", "Activity");
INSERT INTO Topics VALUES("Parkour", "PKR", "Activity");
INSERT INTO Topics VALUES("Pickleball", "PKB", "Activity");
INSERT INTO Topics VALUES("Pilates", "PLT", "Activity");
INSERT INTO Topics VALUES("Ping Pong", "PP", "Activity");
INSERT INTO Topics VALUES("Quidditch", "QDC", "Activity");
INSERT INTO Topics VALUES("Racquetball", "RKB", "Activity");
INSERT INTO Topics VALUES("Rafting", "RFT", "Activity");
INSERT INTO Topics VALUES("Rock Climbing", "RC", "Activity");
INSERT INTO Topics VALUES("Roller Skating", "RS", "Activity");
INSERT INTO Topics VALUES("Rugby", "RGB", "Activity");
INSERT INTO Topics VALUES("Running", "RNG", "Activity");
INSERT INTO Topics VALUES("Skateboarding", "SKTB", "Activity");
INSERT INTO Topics VALUES("Skiing", "SKI", "Activity");
INSERT INTO Topics VALUES("Slacklining", "SLKL", "Activity");
INSERT INTO Topics VALUES("Sledding", "SLD", "Activity");
INSERT INTO Topics VALUES("Snorkeling", "SNKL", "Activity");
INSERT INTO Topics VALUES("Snowboarding", "SNB", "Activity");
INSERT INTO Topics VALUES("Soccer", "SOCC", "Activity");
INSERT INTO Topics VALUES("Softball", "SFTB", "Activity");
INSERT INTO Topics VALUES("Squash", "SQSH", "Activity");
INSERT INTO Topics VALUES("Swimming", "SWM", "Activity");
INSERT INTO Topics VALUES("Tennis", "TEN", "Activity");
INSERT INTO Topics VALUES("Track and Field", "TAF", "Activity");
INSERT INTO Topics VALUES("Ultimate Frisbee", "UF", "Activity");
INSERT INTO Topics VALUES("Volleyball", "VLB", "Activity");
INSERT INTO Topics VALUES("Walking", "WLK", "Activity");
INSERT INTO Topics VALUES("Watervolleyball", "WVB", "Activity");
INSERT INTO Topics VALUES("Weight Lifting", "WTL", "Activity");
INSERT INTO Topics VALUES("Whiffle Ball", "WFB", "Activity");
INSERT INTO Topics VALUES("Wrestling", "WRST", "Activity");
INSERT INTO Topics VALUES("Yoga", "YG", "Activity");

-- AllThreads
INSERT INTO AllThreads (thread, poster, postDate, postContent, postTLDR) VALUES ("Bam Rules", "admin", '2017-12-08 10:30:00 AM', "For now let's keep it simple.
Be respectful, refrain from cussing, if you wouldn't want a teacher to see it, don't put it.", "Be respectful")