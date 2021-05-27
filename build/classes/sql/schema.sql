
DROP TABLE IF EXISTS Pet;
DROP TABLE IF EXISTS Owner;


CREATE TABLE Owner
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ownerName TEXT
);

CREATE TABLE Pet(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    petName TEXT,
    petType TEXT,
    petOwner INTEGER,
    FOREIGN KEY (petOwner) REFERENCES Owner(id)
);
INSERT INTO Owner (ownerName) VALUE ("Andrea");
INSERT INTO Owner (ownerName) VALUE ("Bjorn");
INSERT INTO Owner (ownerName) VALUE ("Cathy");
INSERT INTO Owner (ownerName) VALUE ("Donny");
INSERT INTO Owner (ownerName) VALUE ("Emmie");

INSERT INTO Pet(id,petName,petType) VALUES (1,'U','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (2,'Violet','cat');
INSERT INTO Pet(id,petName,petType) VALUES (3,'Kitty','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (4,'Yogi','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (5,'Rebel','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (6,'Izzy','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (7,'Jude','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (8,'Thunder','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (9,'Harley','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (10,'Mozart','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (11,'Duke','cat');
INSERT INTO Pet(id,petName,petType) VALUES (12,'Cactus','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (13,'Emerald','cat');
INSERT INTO Pet(id,petName,petType) VALUES (14,'Violet','dog');
INSERT INTO Pet(id,petName,petType) VALUES (15,'Thunder','cat');
INSERT INTO Pet(id,petName,petType) VALUES (16,'Ziggy','dog');
INSERT INTO Pet(id,petName,petType) VALUES (17,'Ace','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (18,'Prince','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (19,'Harley','dog');
INSERT INTO Pet(id,petName,petType) VALUES (20,'Jude','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (21,'Thunder','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (22,'Quasimodo','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (23,'Duke','cat');
INSERT INTO Pet(id,petName,petType) VALUES (24,'Izzy','cat');
INSERT INTO Pet(id,petName,petType) VALUES (25,'Flora','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (26,'Woof','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (27,'Napoleon','cat');
INSERT INTO Pet(id,petName,petType) VALUES (28,'Cactus','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (29,'Jude','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (30,'Rebel','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (31,'Emerald','dog');
INSERT INTO Pet(id,petName,petType) VALUES (32,'Jude','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (33,'Izzy','dog');
INSERT INTO Pet(id,petName,petType) VALUES (34,'Kitty','cat');
INSERT INTO Pet(id,petName,petType) VALUES (35,'Thunder','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (36,'Yogi','cat');
INSERT INTO Pet(id,petName,petType) VALUES (37,'Otto','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (38,'Seamus','dog');
INSERT INTO Pet(id,petName,petType) VALUES (39,'Emerald','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (40,'Izzy','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (41,'Leo','dog');
INSERT INTO Pet(id,petName,petType) VALUES (42,'Woof','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (43,'Prince','dog');
INSERT INTO Pet(id,petName,petType) VALUES (44,'Mozart','cat');
INSERT INTO Pet(id,petName,petType) VALUES (45,'Mozart','dog');
INSERT INTO Pet(id,petName,petType) VALUES (46,'Jude','dog');
INSERT INTO Pet(id,petName,petType) VALUES (47,'Rebel','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (48,'Quasimodo','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (49,'Rebel','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (50,'U','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (51,'Harley','dog');
INSERT INTO Pet(id,petName,petType) VALUES (52,'Leo','dog');
INSERT INTO Pet(id,petName,petType) VALUES (53,'Ziggy','dog');
INSERT INTO Pet(id,petName,petType) VALUES (54,'Rebel','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (55,'Quasimodo','cat');
INSERT INTO Pet(id,petName,petType) VALUES (56,'Napoleon','cat');
INSERT INTO Pet(id,petName,petType) VALUES (57,'Ziggy','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (58,'Napoleon','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (59,'Genie','cat');
INSERT INTO Pet(id,petName,petType) VALUES (60,'Flora','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (61,'Boomer','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (62,'Mozart','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (63,'Leo','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (64,'Kitty','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (65,'Harley','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (66,'Xara','cat');
INSERT INTO Pet(id,petName,petType) VALUES (67,'Thunder','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (68,'Thunder','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (69,'U','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (70,'Prince','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (71,'Xara','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (72,'Leo','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (73,'Yogi','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (74,'Violet','dog');
INSERT INTO Pet(id,petName,petType) VALUES (75,'Quasimodo','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (76,'Cactus','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (77,'Harley','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (78,'Emerald','cat');
INSERT INTO Pet(id,petName,petType) VALUES (79,'Mozart','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (80,'Emerald','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (81,'Emerald','dog');
INSERT INTO Pet(id,petName,petType) VALUES (82,'Boomer','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (83,'Kitty','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (84,'Boomer','cat');
INSERT INTO Pet(id,petName,petType) VALUES (85,'Kitty','cat');
INSERT INTO Pet(id,petName,petType) VALUES (86,'Emerald','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (87,'Violet','cat');
INSERT INTO Pet(id,petName,petType) VALUES (88,'Cactus','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (89,'Violet','dog');
INSERT INTO Pet(id,petName,petType) VALUES (90,'Genie','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (91,'Emerald','alligator');
INSERT INTO Pet(id,petName,petType) VALUES (92,'Genie','dog');
INSERT INTO Pet(id,petName,petType) VALUES (93,'Boomer','cat');
INSERT INTO Pet(id,petName,petType) VALUES (94,'Flora','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (95,'Mozart','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (96,'Izzy','hamster');
INSERT INTO Pet(id,petName,petType) VALUES (97,'Yogi','cat');
INSERT INTO Pet(id,petName,petType) VALUES (98,'Ace','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (99,'Napoleon','goldfish');
INSERT INTO Pet(id,petName,petType) VALUES (100,'Jude','cat');
