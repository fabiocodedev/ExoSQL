
DROP database EXO6;
CREATE database EXO6;
USE EXO6;
CREATE TABLE Departements (
DNO int(5) primary key auto_increment,
DNOM varchar (20),
DIR int(5),
VILLE varchar(20)
);
CREATE TABLE EMPLOYES (
ENO int (5) primary key,
ENOM varchar (20),
PROF varchar (20),
DATEEMB date,
SAL int (5),
COMM int(5),
DNO int(5),
foreign key fk_DNO (DNO) references Departements (DNO)
);
INSERT INTO Departements (DNO, DNOM, DIR, VILLE) VALUES 
(1, "Commercial", 30, "New York"),
(2, "Production", 20, "Houston"),
(3, "Développement", 40, "Boston");
INSERT INTO EMPLOYES (ENO, ENOM, PROF, DATEEMB, SAL, COMM, DNO) VALUES
(10, "Joe", "Ingénieur", '93-10-1', 4000, 3000, 3),
(20, "Jack", "Technicien", '88-5-1',3000, 2000, 2),
(30, "Jim", "Vendeur", '80-3-1', 5000, 5000, 1),
(40, "Lucy", "Ingénieur", '80-3-1', 5000, 5000, 3);



-- 1 Faire le produit cartésien en Employés et Départements
SELECT * FROM employes CROSS JOIN departements ;

-- 2 Donnez les noms des employés et les noms de leur département
SELECT enom, ville FROM employes INNER JOIN departements USING (dno) ;

-- 3 Donnez les numéros des employés travaillant à Boston
SELECT eno, enom FROM employes INNER JOIN departements USING (dno) WHERE ville = "Boston" ;

-- 4 Donnez les noms des directeurs de département 1 et 3.
SELECT dir, enom FROM employes INNER JOIN departements USING (dno) WHERE eno = dir AND dno IN (1,3) ;

-- 5 Donnez les noms des employés travaillant dans un département avec au moins un ingénieur
SELECT enom, prof FROM employes INNER JOIN departements USING (dno) WHERE dno = "3" ;

-- 6 Donnez le salaire et le nom des employés gagnant plus qu'un (au moins un) ingénieur
SELECT sal, enom FROM employes WHERE sal >=(SELECT min(sal) FROM employes WHERE prof = "Ingénieur") AND NOT (prof = "Ingénieur"); 

-- 7 Donnez les salaires et le nom des employés gagnant plus que tous les ingénieurs
SELECT sal, enom FROM employes WHERE sal >(SELECT max(sal) FROM employes WHERE prof = "Ingénieur") AND NOT (prof = "Ingénieur"); 

-- 8 Donnez les noms des employés et les noms de leur directeur.
SELECT enom, dnom, dir FROM employes INNER JOIN departements USING (dno) ;

-- 9 Trouvez les noms des employés ayant le même directeur que JIM
SELECT enom FROM employes WHERE enom != "Jim"  AND dno IN (SELECT departements.dno FROM employes, departements WHERE enom = "Jim" AND departements.dno = employes.dno ) ;
SELECT enom FROM employes WHERE enom != "Joe"  AND dno IN (SELECT departements.dno FROM employes, departements WHERE enom = "Joe" AND departements.dno = employes.dno ) ;

-- 10 Donnez le nom et la date d'embauche des employés embauchés avant leur directeur ; donnez également le nom et la date d'embauche dudit directeur
SELECT E1.enom, E1.dateemb, E2.enom, E2.dateemb 
FROM employes AS E1, employes AS E2, departements AS D
 WHERE E2.eno = D.dir 
 AND E1.eno = D.dno 
 AND E1.dateemb < E2.dateemb ;

-- 11 Donnez les départements qui n'ont pas d'employés
select dnom as "Nom département" from departements left join employes on employes.dno=departements.dno where enom IS NULL;
SELECT ville FROM employes INNER JOIN departements


-- 12 Donnez les noms des employés du département commercial embauchés le même jour qu'un employé du département Production


-- 13 Donnez les noms des employés embauchés avant tous les employés du département 1.


-- 14 Donnez les noms des employés ayant le même emploi et le même directeur que JOE.
