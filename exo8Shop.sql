
DROP DATABASE shop ;
CREATE DATABASE shop ;
USE shop ;




-- PRIVILEGE UTILISATEURS -----------------------------------------------



SELECT current_user() FROM mysql.user;
SELECT * FROM mysql.user;
CREATE USER "test"@"127.0.0.1" IDENTIFIED BY "1234" ;
DROP USER "test"@"127.0.0.1" ;
CREATE USER "fabio"@"127.0.0.1" IDENTIFIED BY "admin" ;
SELECT PASSWORD ("azerty") ; -- Hasher le mdp pour le apres un "BY"
DROP USER "fabio"@"127.0.0.1" ;


GRANT ALL ON shop.categories TO "fabio"@"127.0.0.1"; -- AJOUTER DES DROITS A FABIO
GRANT ALL ON *.* TO "fabio"@"127.0.0.1";
GRANT SELECT,INSERT,UPDATE ON shop.* TO "fabio"@"127.0.0.1";

SHOW GRANTS FOR "fabio"@"127.0.0.1" ; -- VOIR LES PRIVILEGES DE "fabio"

FLUSH PRIVILEGES ; -- MAJ DES PRIVILEGES 

REVOKE ALL PRIVILEGES ON shop.clients FROM "fabio"@"127.0.0.1" ; -- RETIRER DES DROITS

select * from mysql.user;
use shop;
show tables;
REVOKE SELECT ON shop.clients FROM 'fabio'@'127.0.0.1'; -- RETIRER DES DROITS


REVOKE ALL PRIVILEGES, GRANT OPTION ON shop.clients FROM "fabio"@"127.0.0.1" ; -- RETIRER DES DROITS








-- DUMP EN SHELL --------------------------

-- cd mysql\bin
-- mysqldump -u root -p shop > C:\Users\Fabio\OneDrive\Bureau\dump.sql








-- TABLE CATEGORIES ---------------------------------------------------------


CREATE OR REPLACE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
	titre VARCHAR(255)
);

insert into categories  (titre) values ('Drama');
insert into categories  (titre) values ('Drama');
insert into categories  (titre) values ('Action|Crime|Drama');
insert into categories  (titre) values ('Action|War');
insert into categories  (titre) values ('Comedy');
insert into categories  (titre) values ('Horror');
insert into categories  (titre) values ('Comedy|Drama');
insert into categories  (titre) values ('Comedy|Drama');
insert into categories  (titre) values ('Drama');
insert into categories  (titre) values ('Comedy');
insert into categories  (titre) values ('Drama');
insert into categories  (titre) values ('Drama');
insert into categories  (titre) values ('Drama|Horror|Thriller');
insert into categories  (titre) values ('Drama|War');
insert into categories  (titre) values ('Horror|Sci-Fi');
insert into categories  (titre) values ('Documentary|War');
insert into categories  (titre) values ('Crime|Drama|Mystery');
insert into categories  (titre) values ('Comedy');
insert into categories  (titre) values ('Drama');
insert into categories  (titre) values ('Drama');

-- TABLE PRODUITS ---------------------------------------------------------


CREATE OR REPLACE TABLE produits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255),
    prix DOUBLE,
    id_categorie INT,
    CONSTRAINT fk_categories FOREIGN KEY (id_categorie) REFERENCES categories (id)
);

insert into produits (titre, prix, id_categorie) values ('What Matters Most', 1.51, 5);
insert into produits (titre, prix, id_categorie) values ('Save the Tiger', 1.27, 8);
insert into produits (titre, prix, id_categorie) values ('Nightcrawler', 4.82, 2);
insert into produits (titre, prix, id_categorie) values ('Long Day Closes, The', 4.42, 4);
insert into produits (titre, prix, id_categorie) values ('Caine (Shark!)', 1.13, 9);
insert into produits (titre, prix, id_categorie) values ('Detroit 9000', 1.02, 7);
insert into produits (titre, prix, id_categorie) values ('Out of It (La carapate)', 1.36, 1);
insert into produits (titre, prix, id_categorie) values ('Bride of Frankenstein, The (Bride of Frankenstein)', 2.04, 13);
insert into produits (titre, prix, id_categorie) values ('Mammuth', 4.47, 12);
insert into produits (titre, prix, id_categorie) values ('Shepherd', 3.59, 14);
insert into produits (titre, prix, id_categorie) values ('Little Red Flowers (Kan shang qu hen mei)', 3.12, 11);
insert into produits (titre, prix, id_categorie) values ('Times and Winds (Bes vakit)', 4.08, 3);
insert into produits (titre, prix, id_categorie) values ('I''m King Kong!: The Exploits of Merian C. Cooper ', 2.46, 10);
insert into produits (titre, prix, id_categorie) values ('Mr. Nanny', 3.82, 6);


-- TABLE CLIENTS ---------------------------------------------------------


CREATE OR REPLACE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    ville VARCHAR(255),
    age INT
);


insert into clients (nom, ville, age) values ('Gina', 'T??ng??il', 23);
insert into clients (nom, ville, age) values ('Janeva', 'Kuroishi', 42);
insert into clients (nom, ville, age) values ('Arliene', 'Qu???ng Ng??i', 58);
insert into clients (nom, ville, age) values ('Arluene', 'Dacun', 42);
insert into clients (nom, ville, age) values ('Emmit', 'Daxi', 42);
insert into clients (nom, ville, age) values ('Bear', 'Kolsh', 42);
insert into clients (nom, ville, age) values ('Katalin', 'Kafr Z??b??d', 51);
insert into clients (nom, ville, age) values ('Tristam', 'Mitrofanovka', 44);
insert into clients (nom, ville, age) values ('Raye', 'An Na??????r??yah', 40);
insert into clients (nom, ville, age) values ('Daphna', 'Jiannan', 22);
insert into clients (nom, ville, age) values ('Riane', 'Fukiage-fujimi', 35);
insert into clients (nom, ville, age) values ('Bud', 'Masis', 57);
insert into clients (nom, ville, age) values ('Rene', 'Paitan Norte', 56);
insert into clients (nom, ville, age) values ('Smith', 'Mendefera', 35);
insert into clients (nom, ville, age) values ('Ariela', 'So??nicowice', 20);
insert into clients (nom, ville, age) values ('Kyle', 'Kuzovatovo', 35);
insert into clients (nom, ville, age) values ('Caitlin', 'Tajerouine', 30);
insert into clients (nom, ville, age) values ('Axe', 'Hrazdan', 33);
insert into clients (nom, ville, age) values ('Conni', 'Huashan', 18);
insert into clients (nom, ville, age) values ('Linda', 'Kutloanong', 55);
insert into clients (nom, ville, age) values ('Augusto', 'Dongfanghong', 34);
insert into clients (nom, ville, age) values ('Klemens', 'Montaigu', 27);
insert into clients (nom, ville, age) values ('Janaya', 'Ab?? Qalqal', 32);
insert into clients (nom, ville, age) values ('Brigid', 'Yabuli', 36);
insert into clients (nom, ville, age) values ('Bee', 'Jinotepe', 23);
insert into clients (nom, ville, age) values ('Clemmy', 'Altay', 28);
insert into clients (nom, ville, age) values ('Myrvyn', 'San Jose', 60);
insert into clients (nom, ville, age) values ('Kellina', 'Magnitogorsk', 40);
insert into clients (nom, ville, age) values ('Monroe', 'Kanzaki', 58);
insert into clients (nom, ville, age) values ('Micheil', 'L??ngelm??ki', 43);



-- TABLE COMMANDES ---------------------------------------------------------


CREATE OR REPLACE TABLE commandes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_produit INT,
    id_client INT,
    prix_u DOUBLE,
    qte INT,
    CONSTRAINT fk_produits FOREIGN KEY (id_produit) REFERENCES produits (id),
    CONSTRAINT fk_clients FOREIGN KEY (id_client) REFERENCES clients (id)
);

insert into commandes (id_produit, id_client, prix_u, qte) values (9, 9, 1.31, 8);
insert into commandes (id_produit, id_client, prix_u, qte) values (9, 8, 4.86, 4);
insert into commandes (id_produit, id_client, prix_u, qte) values (4, 3, 3.95, 3);
insert into commandes (id_produit, id_client, prix_u, qte) values (13, 5, 2.08, 10);
insert into commandes (id_produit, id_client, prix_u, qte) values (6, 2, 3.57, 1);
insert into commandes (id_produit, id_client, prix_u, qte) values (14, 5, 3.43, 4);
insert into commandes (id_produit, id_client, prix_u, qte) values (1, 13, 1.77, 4);
insert into commandes (id_produit, id_client, prix_u, qte) values (14, 20, 3.0, 6);
insert into commandes (id_produit, id_client, prix_u, qte) values (1, 10, 4.14, 10);




-- 1- Cr??er une proc??dure qui affiche la liste des produits
DELIMITER //
CREATE OR REPLACE PROCEDURE afficheListeProd()
	BEGIN
    SELECT * FROM produits;
END //
DELIMITER ;
CALL afficheListeProd() ;


-- 2- Cr??er une proc??dure qui affiche le titre, le prix et le titre de la cat??gorie pour chaque produit

DELIMITER //
CREATE OR REPLACE PROCEDURE afficheTrucsProd()
	BEGIN
    SELECT p.titre, p.prix, c.titre FROM produits AS p INNER JOIN categories AS c ON p.id_categorie = c.id;
END //
DELIMITER ;
CALL afficheListeProd() ;

-- 3- Cr??er une proc??dure qui affiche les clients qui ont pass?? 3 commandes ou plus

DELIMITER //
CREATE OR REPLACE PROCEDURE afficheClient3Com()
	BEGIN
    SELECT clients.nom, COUNT(clients.id) FROM clients INNER JOIN commandes ON clients.id = commandes.id_client GROUP BY clients.id HAVING COUNT(id_client) = 2 ;
END //
DELIMITER ;
CALL afficheClient3Com() ;

-- 4- Cr??er une proc??dure qui affiche les produits qui ont jamais ??t?? command??s

DELIMITER //
CREATE OR REPLACE PROCEDURE afficheProd0Com()
	BEGIN
    SELECT produits.titre, commandes.id_produit FROM produits LEFT JOIN commandes ON produits.id = commandes.id_produit WHERE id_produit IS NULL ;
END //
DELIMITER ;
CALL afficheProd0Com() ;


-- 5- Cr??er une proc??dure qui affiche les clients qui ont jamais command??s


DELIMITER //
CREATE OR REPLACE PROCEDURE afficheClient0Com()
	BEGIN
    SELECT clients.id, clients.nom, commandes.id_client FROM clients LEFT JOIN commandes ON clients.id = commandes.id_client WHERE id_client IS NULL ;
END //
DELIMITER ;
CALL afficheClient0Com() ;


-- 6- Cr??er une proc??dure qui affiche les titres des cat??gories command??s par le client id : 1
DELIMITER //
CREATE OR REPLACE PROCEDURE afficheTitreClient1()
	BEGIN
 SELECT clients.nom, categories.titre FROM categories 
	 INNER JOIN produits ON categories.id = produits.id_categorie 
	 INNER JOIN commandes ON produits.id = commandes.id_produit 
	 INNER JOIN clients ON commandes.id_client = clients.id
	 WHERE clients.id = 5;
END //
DELIMITER ;
CALL afficheTitreClient1() ;


-- 7- Cr??er une proc??dure qui affiche la somme des quantit??s command??s pour le produit id 1

DELIMITER //
CREATE OR REPLACE PROCEDURE afficheTitreClient1()
	BEGIN
    
    
 SELECT
 
 
 
END //
DELIMITER ;
CALL afficheTitreClient1() ;



-- 8- Cr??er une proc??dure qui prend en param??tres d???id d???un client et qui affiche ses commandes

-- 9- Cr??er une proc??dure qui prend en param??tres une chaine de caract??res et qui affiche les produits dont le titre contiens cette chaine (requ??te de recherche)

-- 10- Cr??er une proc??dure qui prend en param??tres l???id d???une cat??gorie et qui affiche les produits de cette cat??gorie

-- 11- Cr??er une proc??dure d???inscription qui prend en param??tre les informations d???un client et l???insert dans la base de donn??es

-- 12- Cr??er une proc??dure qui prend en param??tres le nom d???une ville et qui affiche les titres des cat??gories des produits command??s par les clients de cette ville NB : il ne faut pas afficher des doublons

-- 13- Cr??er une proc??dure qui affiche le nombre de commandes dans une variable sortante

-- 14- Cr??er une proc??dure qui affiche dans des variable sortantes le prix du produit le moins ch??re

-- 15- Cr??er une proc??dure qui prend en param??tres l???id d???un client et qui affiche dans une variable sortante son CA (chiffre d???affaire total)