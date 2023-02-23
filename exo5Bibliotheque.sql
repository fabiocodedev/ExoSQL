DROP DATABASE bibliotheque ;
CREATE DATABASE bibliotheque ;
USE bibliotheque ;


DROP TABLE IF EXISTS auteurs ;
CREATE TABLE auteurs (
    idauteur INT(30)ZEROFILL AUTO_INCREMENT,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    datenaiss DATE,
    datedeces DATE,
    bibliographie TEXT,
    PRIMARY KEY (idauteur)
);


DROP TABLE IF EXISTS editeurs ;
CREATE TABLE editeurs (
    idediteur INT(30)ZEROFILL AUTO_INCREMENT,
    nom VARCHAR(30),
    adresse VARCHAR(200),
    code VARCHAR(5),
    ville VARCHAR(60),
    pays VARCHAR(30),
    telephone CHAR(14),
    fax CHAR(14),
    PRIMARY KEY (idediteur)
);


DROP TABLE IF EXISTS emprunteurs ;
CREATE TABLE emprunteurs (
    idemprunteur INT(30)ZEROFILL AUTO_INCREMENT,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    adresse VARCHAR(200),
    code VARCHAR(5),
    ville VARCHAR(60),
    telephone CHAR(14),
    sexe CHAR,
    datenaiss DATE,
    nbretards INT,
    PRIMARY KEY (idemprunteur)
);


DROP TABLE IF EXISTS livres ;
CREATE TABLE livres (
    idlivre INT(30)ZEROFILL AUTO_INCREMENT,
    ISBN VARCHAR(13),
    titre VARCHAR(100),
    nbpages INT,
    dateparu DATE,
    prix FLOAT,
    idediteur INT(30)ZEROFILL,
    idauteur INT(30)ZEROFILL,
    theme VARCHAR(30),
    format VARCHAR(3),
    PRIMARY KEY (idLivre),
    CONSTRAINT fk_editeurs FOREIGN KEY (idediteur) REFERENCES editeurs (idediteur) ,
    CONSTRAINT fk_auteurs FOREIGN KEY (idauteur) REFERENCES auteurs (idauteur)
);


DROP TABLE IF EXISTS emprunts ;
CREATE TABLE emprunts (
    idemprunt INT(30)ZEROFILL AUTO_INCREMENT,
    idlivre INT(30)ZEROFILL,
    idemprunteur INT(30)ZEROFILL,
    datepret DATE,
    daterendu DATE,
    PRIMARY KEY (idEmprunt),
    CONSTRAINT fk_livre FOREIGN KEY (idlivre) REFERENCES livres (idlivre) ,
    CONSTRAINT fk_emprunteurs FOREIGN KEY (idemprunteur) REFERENCES emprunteurs (idemprunteur)
); 


-- 1. En face de chaque titre d'ouvrage, afficher le nom et prénom de son auteur.
SELECT titre, auteurs.nom, auteurs.prenom FROM livres INNER JOIN auteurs USING (idauteur) ;

-- 2. Afficher le nom et le prénom des emprunteurs suivis de la date de ses emprunts.
SELECT emprunteurs.nom, emprunteurs.prenom  FROM livres INNER JOIN auteurs USING (idauteur) ;

-- 3. Affichez le titre et l'auteur des ouvrages empruntés suivi du nom de leur emprunteur
SELECT livres.titre, auteurs.nom, emprunteurs.nom FROM livres LEFT JOIN auteurs USING (idauteur) LEFT JOIN emprunts USING (idlivre) LEFT JOIN emprunteurs USING (idemprunteur) ;

-- 4. A la suite de problèmes de saisie informatique, il existe un certain nombre d'emprunts sans emprunteurs. Affichez l'identifiant de tous les emprunts suivis du nom de l'emprunteur qu'il y en ait un ou non
SELECT emprunts.idemprunt, emprunteurs.nom FROM emprunts LEFT JOIN emprunteurs USING (idemprunteur) INNER JOIN livres USING (idlivre) ;

-- 5. Afficher la liste des emprunts suivi de l'identifiant de l'emprunteur seulement s'il y a un emprunteur, mais aussi comprenant les emprunteurs n'ayant pas encore effectué d'emprunts.
SELECT emprunts.idemprunt, emprunteurs.nom, emprunteurs.idemprunteur FROM emprunts RIGHT JOIN emprunteurs USING (idemprunteur) ;

-- 6. Afficher la liste des emprunts et des emprunteurs que les emprunts n’ont pas d'emprunteurs ou que les emprunteurs n’ont jamais effectué d'emprunts.
SELECT emprunts.idemprunt, emprunteurs.nom, emprunteurs.idemprunteur FROM emprunts LEFT JOIN emprunteurs USING (idemprunteur) UNION 
SELECT emprunts.idemprunt, emprunteurs.nom, emprunteurs.idemprunteur FROM emprunts LEFT JOIN emprunteurs USING (idemprunteur) ; 


