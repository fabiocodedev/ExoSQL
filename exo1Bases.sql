
-- CREATE DATABASE afpa3 ;
-- USE afpa3 ;
-- CREATE TABLE stagiaire (id INT AUTO_INCREMENT PRIMARY KEY, prenom VARCHAR(30), nom VARCHAR(30)) ;
-- CREATE TABLE centre (id INT AUTO_INCREMENT PRIMARY KEY, nom VARCHAR(30), lieu VARCHAR(30), specialite VARCHAR(30)) ;
-- INSERT INTO stagiaire (prenom, nom) VALUES ("Moussa", "Camara"), ("Jean", "Dupont"), ("Zack", "Henri"), ("Machin", "Bidule") ;
-- INSERT INTO centre (nom, lieu, specialite) VALUES ("Afpa", "Paris", "CDA"), ("Afpa", "Marseille", "Dev Mobile"), ("Afpa", "Lyon", "Marketing") ;
-- UPDATE stagiaire SET prenom = "Kassimir" WHERE id = 3 ;
-- ALTER TABLE stagiaire ADD email VARCHAR(30) ;
-- DELETE FROM stagiaire WHERE prenom = "Machin" AND nom = "Bidule" ;
-- INSERT INTO stagiaire (prenom, nom, email) VALUES ("Vanessa", "Sultan", "vanessa@afpa.fr")  ;

show databases;


-- CREATION DE LA BDD -  EXO1
DROP database exo1;
CREATE database exo1;

use exo1;

show tables;
-- CREATION DE LA table -  Stagiaire
CREATE table stagiaires (
	id int auto_increment primary key,
    nom varchar(100), 
	prenom varchar(100)
);

CREATE table centre (
	id int auto_increment primary key,
    nom varchar(100),
    lieu varchar(100), 
	specialite varchar(100)
);

-- Ajouter les stagiaires: avec nom et prenom
INSERT INTO stagiaires (nom, prenom) VALUES ("Camara","Moussa"), ("Dupont","Jean"),("Bidule","Machin"),("Henri","Zack");

show tables;
select * from stagiaires;

INSERT INTO centre (lieu,nom,specialite) values ("Afpa","Paris","CDA"),("Afpa","Marseille","Dev mobile"),("Afpa","Lyon","Marketing");


-- Modifier: Le nom de Zack par Kassimi
update stagiaires set nom="Kassimi" where nom="henri";


-- Rajouter une colonne email à la table stagiaire
Alter table stagiaires ADD email varchar(100) null;

-- Supprimer: Machin Bidule
delete from stagiaires where nom="Bidule" and prenom="Machin";

-- Rajouter:Vanessa Sultan vanessa@afpa.fr

INSERT INTO stagiaires (nom,prenom,email) values ("Sultan","sfdgdg","vanessa@afpa.fr");


-- LES CLAUSES 
select * from stagiaires group by nom having nom = "Sultan";


-- UNION
SELECT nom,prenom,email FROM stagiaires UNION SELECT nom,lieu,specialite FROM centre;

-- order by
SELECT * FROM stagiaires ORDER BY id desc limit 5;
















