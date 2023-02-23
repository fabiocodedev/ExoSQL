DROP DATABASE exo2 ;
CREATE DATABASE exo2 ;
USE exo2 ;


DROP TABLE IF EXISTS etudiants ;
CREATE TABLE etudiants (
    matricule INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    dateDeNaissance DATE NOT NULL,
    niveau VARCHAR(2) NOT NULL,
    PRIMARY KEY (matricule)
    );

DROP TABLE IF EXISTS cours ;
CREATE TABLE cours (
    `code` INT AUTO_INCREMENT NOT NULL,
    nomCour VARCHAR(20) NOT NULL,
    enseignant VARCHAR(20) NOT NULL,
    PRIMARY KEY (`code`)
    );


DROP TABLE IF EXISTS examens ;
CREATE TABLE examens (
    id INT AUTO_INCREMENT NOT NULL,
    notes INT NOT NULL,
    matricule INT NOT NULL,
    `code` INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_matricule FOREIGN KEY (matricule) REFERENCES etudiants (matricule),
    CONSTRAINT fk_code FOREIGN KEY (`code`) REFERENCES cours (`code`)
    );
    
ALTER TABLE examens ADD (matricule INT) ;
ALTER TABLE examens ADD CONSTRAINT fk_matricule FOREIGN KEY (matricule) REFERENCES etudiant (matricule) ;

-- ALTER TABLE examens ADD (`code` INT) ;
-- ALTER TABLE examens ADD CONSTRAINT fk_code FOREIGN KEY (`code`) REFERENCES etudiants (`code`) ;
    
INSERT INTO etudiants (nom, prenom, dateDeNaissance, niveau) VALUES
	("Simpson", "Homer", "1985-11-16", "M9"),
    ("Morane", "Bob", "1983-05-13", "M2"),
    ("Dapy", "Pomme", "1995-12-05", "M1"),
    ("Presley", "Elvis", "1976-06-18", "M2"),
    ("Morgane", "Clara", "1999-01-21", "M3"),
    ("Derive", "Geralt", "1989-09-29", "M3") 
    ;

 INSERT INTO cours (nomCour, enseignant ) VALUES
	("Francais", "M. Bob"),
    ("Anglais", "M. Anto"),
    ("Math", "Mme. Aga"),
    ("Francais2", "M. Bob2"),
    ("Anglais2", "M. Anto2"),
    ("Math2", "Mme. Aga2"),
    ("Francais3", "M. Bob3"),
    ("Anglais3", "M. Anto3"),
    ("Math3", "Mme. Aga3"),
    ("Dessin", "M. Deko")
    ;
    
INSERT INTO examens (matricule, `code`, notes) VALUES
	(1, 8, 2), (1, 10, 39), (1, 9, 14), (1, 8, 20), (2, 10, 35), (2, 1, 6), (2, 3, 22), (2, 5, 5),
    (3, 7, 11), (3, 7, 5), (6, 10, 36), (3, 9, 0), (3, 2, 13), (3, 1, 11), (3, 1, 29), (4, 9, 14),
    (4, 8, 28), (4, 2, 4), (4, 9, 13), (6, 5, 4), (5, 6, 21), (5, 4, 9), (5, 1, 30), (6, 7, 29)
    ;


-- 1 Afficher la liste des étudiants triés par ordre croissant de date de naissance.
SELECT nom, dateDeNaissance FROM etudiants ORDER BY dateDeNaissance ASC ;

-- 2 Afficher tous les étudiants inscrits à M1 et tous les étudiants inscrits à M2.
SELECT nom, niveau FROM etudiants WHERE niveau IN ("M1", "M2") ;

-- 3 Afficher les matricules des étudiants qui ont passé l'examen du cours 2.
SELECT matricule FROM etudiants WHERE matricule IN (SELECT matricule FROM examens WHERE matricule IN (2)) ; 
SELECT matricule FROM etudiants WHERE matricule = 2 ; 

-- 4 Afficher les matricules de tous les étudiants qui ont passé l'examen du cours 001 et de tous les étudiants qui ont passé l'examen du cours 002.
SELECT matricule FROM etudiants WHERE matricule IN (SELECT matricule FROM examens WHERE matricule IN (2 AND 1)) ; 
SELECT matricule FROM etudiants, etudiant WHERE matricule = 1 ;

-- 5 Afficher le matricule, code, note /20 et note /40 de tous les examens classés par ordre croissant de matricule et de code.
SELECT matricule, `code`, notes FROM examens ORDER BY matricule ASC, `code` ASC ;

-- 6 Trouver la moyenne de notes de cours 002.
-- SELECT AVG(notes) FROM examens WHERE `code` IN (SELECT * FROM examens WHERE `code` IN (2)) ;
SELECT AVG(notes) FROM examens WHERE `code` = 2 ;
-- SELECT * FROM examens WHERE `code` IN (2) ;

-- 7 Compter les examens passés par un étudiant (exemple avec matricule '1')
SELECT matricule, COUNT(matricule) FROM examens WHERE matricule = 1 ;

-- 8 Compter le nombre d'étudiants qui ont passé l'examen du cours 002.
SELECT COUNT(matricule) FROM examens WHERE `code` = 2 ;

-- 9 Calculer la moyenne des notes d'un étudiant (exemple avec matricule '4')
SELECT AVG(notes) FROM examens WHERE matricule = 4 ;

-- 10 Compter les examens passés par chaque étudiant.
SELECT matricule, COUNT(notes) FROM examens GROUP BY matricule ;

-- 11 Calculer la moyenne des notes pour chaque étudiant.
SELECT matricule, ROUND(AVG(notes),2) FROM examens GROUP BY matricule ;

-- 12 La même au dessus, mais afficher seulement les étudiants (et leurs moyennes) dont la moyenne est >= 15.
SELECT matricule, AVG(notes) FROM examens GROUP BY matricule HAVING AVG(notes) >= 15 ;

-- 12 Trouver la moyenne de notes de chaque cours.
SELECT `code`, AVG(notes) FROM examens GROUP BY `code` ;



-- tests clause

SELECT nom, AVG(notes) FROM etudiants, examens WHERE etudiant.matricule = examens.matricule  GROUP BY notes ;

SELECT COUNT(matricule) FROM examens AS ex, etudiants AS et WHERE ex.matricule = et.matricule AND et.matricule = 1 ;

USE exo2 ;
SELECT etudiant.nom, examens.matricule, examens.notes FROM etudiant, examens WHERE etudiant.matricule = examens.matricule ORDER BY notes DESC ;















