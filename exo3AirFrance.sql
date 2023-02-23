


-- !!!!!!!!!!!!!  Fait sur PHPMyAdmin !!!!!!!!!!!!!!!!!!!!!!!!!!!!




DROP DATABASE exo3 ;
CREATE DATABASE exo3 ;
USE exo3 ;

DROP TABLE IF EXISTS avions ;
CREATE TABLE avions (
    numeroAv INT(5)ZEROFILL AUTO_INCREMENT,
    nomAV VARCHAR(30),
    capacite INT ,
    localisation VARCHAR(30) ,
    PRIMARY KEY(numeroAv)
    ) ;

DROP TABLE IF EXISTS pilotes ;
CREATE TABLE pilotes (
    numeroPil INT(5)ZEROFILL AUTO_INCREMENT,
    nomPil VARCHAR(30),
    adresse VARCHAR(50) ,
    salaire INT ,
    PRIMARY KEY(numeroPil)
    ) ;

DROP TABLE IF EXISTS vols ;
CREATE TABLE vols (
    numeroVol VARCHAR(10),
    villeDep VARCHAR(30),
    villeArr VARCHAR(30),
    heureDep TIME ,
    heureArr TIME ,
    numeroAv INT(5)ZEROFILL ,
    numeroPil INT(5)ZEROFILL ,
    PRIMARY KEY(numeroVol) ,
    CONSTRAINT fk_avions FOREIGN KEY (numeroAv) REFERENCES avions (numeroAv) ,
    CONSTRAINT fk_pilotes FOREIGN KEY (numeroPil) REFERENCES pilotes (numeroPil)
    ) ; 


INSERT INTO avions (nomAv, capacite, localisation) VALUES 
    ("Alpha", 300, "Paris"),
    ("Bravo", 400, "Milan"),
    ("Charlie", 350, "Rome")
;

INSERT INTO pilotes (nomPil, adresse, salaire) VALUES 
    ("Moussa", "Paris", 650000),
    ("Afpa", "Marseille", 900000),
    ("Zack", "Cergy", 750901),
    ("Fabio", "Obernai", 350000)
;

INSERT INTO vols (numeroVol, numeroAv, numeroPil, villeDep, villeArr, heureDep, heureArr) VALUES 
    ("AF351", 1, 1, "Paris", "New York", 090000, 170000),
    ("RU154", 2, 2, "Canada", "Londres", 130000, 220000),
    ("LH1792", 3, 3, "Paris", "Tunis", 090000, 170000)
;

-- 1.    Donnez toutes les informations sur les pilotes de la compagnie.
SELECT * FROM pilotes ;


-- 2.    Quels sont les numéros des pilotes en service et les villes de départ de leurs vols ?
SELECT pilotes.numeroPil, vols.villeDep FROM pilotes, vols WHERE pilotes.numeroPil = vols.numeroPil ;


-- 3.    Donnez la liste des avions dont la capacité est supérieure à 350 passagers.
SELECT nomAv FROM avions WHERE capacite >= 350 ;
SELECT nomAv FROM avions HAVING (capacite >= 350) ;


-- 4.    Quels sont les numéros et noms des avions localisés à 'Paris' ?
SELECT numeroAv, nomAV FROM avions WHERE localisation = "Paris" ;


-- 5.    Dans combien de villes distinctes sont localisées des avions ?
SELECT COUNT(localisation) FROM avions ;


-- 6.    Quel est le nom des pilotes domiciliés à Cergy dont le salaire est supérieur à 500 000?
SELECT nomPil FROM pilotes WHERE adresse = "Cergy" AND salaire > 500000 ; 


-- 7.    Quels sont les avions (numéro et nom) localisés à Paris ou dont la capacité est inférieure à 350 passagers ?
SELECT numeroAv, nomAv FROM avions WHERE localisation = "Paris" OR capacite < 350 ;


-- 8.    Liste des vols au départ de Paris allant à 'New york' après 18 heures ?
SELECT numeroVol, villeDep FROM vols WHERE villeArr = "New York" AND heureArr < 180000 ;


-- 9.    Quels sont les numéros des pilotes qui ne sont pas en service ?
SELECT nomPil, numeroPil FROM pilotes WHERE numeroPil NOT IN (SELECT numeroPil FROM vols) ;
SELECT nomPil, numeroPil FROM pilotes WHERE numeroPil != 4 ;


-- 10.    Quels sont les vols (numéro, ville de départ) effectués par les pilotes de numéro 00001 et 00002 ?
SELECT numeroVol, villeDep FROM vols WHERE numeroPil IN (00001, 00002) ;


-- 11.    Quels sont les pilotes dont le nom commence par « Z » ?
SELECT nomPil FROM pilotes WHERE nomPil LIKE "z%" ;


-- 12.    Quels sont les pilotes dont la troisième lettre est un « b » ?
SELECT nomPil FROM pilotes WHERE nomPil LIKE "__b%" ;

























