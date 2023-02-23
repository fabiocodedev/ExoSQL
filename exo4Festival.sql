
-- !!!!!!!!!!!!!  Fait sur PHPMyAdmin !!!!!!!!!!!!!!!!!!!!!!!!!!!!



DROP DATABASE festival ;
CREATE DATABASE festival ;
USE festival ;


DROP TABLE IF EXISTS representations ;
CREATE TABLE representations (
    numRep INT(5)ZEROFILL AUTO_INCREMENT ,
    titreRep VARCHAR(40) NOT NULL ,
    lieu VARCHAR(40) NOT NULL,
    PRIMARY KEY (numRep)
) ;

DELETE FROM representations ;
INSERT INTO representations (titreRep, lieu) VALUES
    ("Gala Jungle", "Theatre JCC"),
    ("Annual Wonderland", "Copenhague"),
    ("Boogie Paradise", "Zurich"),
    ("Music Dreamland ", "Theatre JCC"),
    ("Party Playground ", "Vancouver"),
    ("Festival Oasis ", "Theatre JCC"),
    ("Gigscape", "Francfort"),
    ("Festivscape ", "Toronto"),
    ("Danceex", "Amsterdam"),
    ("Venue Beast ", "Osaka"),
    ("Ultrafest  ", "New York"),
    ("FutureSound  ", "Chicago"),
    ("Chorella  ", "San Diego"),
    ("Blastoff  ", "Los Angeles"),
    ("Hometown Sound", "Cincinatti") 
;

DROP TABLE IF EXISTS musiciens ;
CREATE TABLE musiciens (
    numMus INT(5)ZEROFILL AUTO_INCREMENT ,
    nomMus VARCHAR(40) NOT NULL ,
    numRep INT(5)ZEROFILL ,
    PRIMARY KEY (numMus) ,
    CONSTRAINT fk_representationsMus FOREIGN KEY (numRep) REFERENCES representations (numRep)
) ;

DELETE FROM musiciens ;
INSERT INTO musiciens (nomMus, numRep) VALUES
    ("Pascale Wooten", 1),
    ("Elizabeth Prince", 2),
    ("Leo Vaughan", 3),
    ("Fulton Crawford", 4),
    ("Isabella Anderson", 5),
    ("Patrick Giles", 5),
    ("Isadora Randall", 6),
    ("Nita Torres", 7),
    ("Akeem Fleming", 7),
    ("Rosalyn Castillo", 7),
    ("Hunter Hamilton", 8),
    ("Jocelyn Santos", 9),
    ("Chava England", 10),
    ("Derek Whitfield", 11),
    ("Ryan Alford", 12),
    ("Joel Hartman", 13),
    ("Roanna Burns", 14),
    ("Phelan Fernandez", 15),
    ("Hermione Manning", 15),
    ("Fallon Oliver", 15) 
;


DROP TABLE IF EXISTS programmers ;
CREATE TABLE programmers (
    idProg INT AUTO_INCREMENT ,
    dateProg DATE ,
    tarif INT(3),
    numRep INT(5)ZEROFILL ,
    PRIMARY KEY (idProg) ,
    CONSTRAINT fk_representationsProg FOREIGN KEY (numRep) REFERENCES representations (numRep)
) ;

DELETE FROM programmers ;
INSERT INTO programmers (dateProg, numRep, tarif) VALUES
    (20231222, 1, 39), 
    (20220824, 2, 79), 
    (20211031, 2, 79), 
    (20230704, 1, 39),
    (20221213, 1, 39), 
    (20211013, 3, 37), 
    (20230704, 4, 50), 
    (20220108, 5, 30), 
    (20210301, 6, 35), 
    (20230204, 7, 55), 
    (20220707, 8, 46), 
    (20210704, 9, 79), 
    (20230813, 10, 45), 
    (20220411, 11, 31), 
    (20210619, 12, 57), 
    (20231016, 13, 45), 
    (20220415, 14, 25), 
    (20210118, 14, 25), 
    (20230319, 14, 25), 
    (20221129, 15, 58)
;

-- 1.    Donnez la liste des titres des représentations
SELECT titreRep FROM representations ;


-- 2.    Donnez la liste des titres des représentations ayant lieu au Théâtre JCC
SELECT titreRep FROM representations WHERE lieu = "Theatre JCC" ;


-- 3.    Donnez la liste des noms des musiciens et les titres des représentations auxquelles ils participent
SELECT musiciens.nomMus, representations.titreRep FROM musiciens, representations WHERE musiciens.numRep = representations.numRep ;


-- 4.    Donnez la liste des titres des représentations, les lieux et les tarifs du 04/07/2023
SELECT representations.titreRep, representations.lieu, programmers.tarif FROM representations, programmers WHERE dateProg = 20230704 ;


-- 5.    Donnez le nombre de musiciens qui participent à la représentation n°15
SELECT COUNT(numMus) FROM musiciens WHERE numRep = 15 ;


-- 6.    Donnez la liste des représentations (et leurs dates) dont le tarif ne dépasse pas 30
SELECT representations.titreRep, programmers.dateProg FROM representations, programmers WHERE representations.numRep = programmers.numRep AND tarif <= 30 ;

































