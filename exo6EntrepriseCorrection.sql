-- SERIES JOINTURES - EXERCICE 1
--- CREATE DATABASE

DROP DATABASE  IF EXISTS employe;
CREATE DATABASE employe ;
USE employe ;

-- Creation table departements

CREATE table departements(
    dno int AUTO_INCREMENT PRIMARY KEY,
    DNOM VARCHAR(30),
    DIR INT,
    Ville VARCHAR(30)
);

DROP table employes;
CREATE table employes(
    ENO int auto_increment PRIMARY KEY,
    ENOM VARCHAR(30),
    PROF VARCHAR(30),
    DATEEMB DATE,
    SAL INT,
    COMM INT,
    DNO INT,
    CONSTRAINT fk_DNO 
    FOREIGN KEY (DNO) REFERENCES departements(dno)
);

CREATE TRIGGER incrementBy10 
BEFORE INSERT ON employes
FOR EACH ROW
	 SET NEW.ENO = ENO * 5;

    	 
INSERT INTO `employes` (`ENO`, `ENOM`, `PROF`, `DATEEMB`, `SAL`, `COMM`, `DNO`) VALUES 
(NULL, 'tet', 'mm', '2023-01-09', '150000', '1000', NULL), (NULL, 'cxc', 'xcxcxcxc', '2023-01-11', '15111515', '1555', NULL);

SELECT * from employes;
-- Modication de l'auto increment step de 10 (+10)
