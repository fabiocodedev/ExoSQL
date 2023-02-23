-- SUPPRESSION / CREATION / UTILIATION DATABASE -----------------------------

DROP DATABASE triggers ;
CREATE DATABASE triggers ;
USE triggers ;

-- TABLE CATEGORIES ---------------------------------------------------------

DROP TABLE IF EXISTS categories ;
CREATE TABLE categories (
    idCat INT AUTO_INCREMENT PRIMARY KEY,
	titreCat VARCHAR(255)
);

insert into categories  (titreCat) values ('Drama');
insert into categories  (titreCat) values ('Drama');
insert into categories  (titreCat) values ('Action|Crime|Drama');
insert into categories  (titreCat) values ('Action|War');
insert into categories  (titreCat) values ('Comedy');
insert into categories  (titreCat) values ('Horror');
insert into categories  (titreCat) values ('Comedy|Drama');
insert into categories  (titreCat) values ('Comedy|Drama');
insert into categories  (titreCat) values ('Drama');
insert into categories  (titreCat) values ('Comedy');
insert into categories  (titreCat) values ('Drama');
insert into categories  (titreCat) values ('Drama');
insert into categories  (titreCat) values ('Drama|Horror|Thriller');
insert into categories  (titreCat) values ('Drama|War');
insert into categories  (titreCat) values ('Horror|Sci-Fi');
insert into categories  (titreCat) values ('Documentary|War');
insert into categories  (titreCat) values ('Crime|Drama|Mystery');
insert into categories  (titreCat) values ('Comedy');
insert into categories  (titreCat) values ('Drama');
insert into categories  (titreCat) values ('Drama');

-- TABLE PRODUITS ---------------------------------------------------------

DROP TABLE IF EXISTS produits ;
CREATE TABLE produits (
    idProd INT AUTO_INCREMENT PRIMARY KEY,
    titreProd VARCHAR(255),
    prix DOUBLE,
    idCat INT,
    CONSTRAINT fk_categories FOREIGN KEY (idCat) REFERENCES categories (idCat)
);

insert into produits (titreProd, prix) values ('What Matters Most', 1.51);
insert into produits (titreProd, prix) values ('Save the Tiger', 1.27);
insert into produits (titreProd, prix) values ('Nightcrawler', 4.82);
insert into produits (titreProd, prix) values ('Long Day Closes, The', 4.42);
insert into produits (titreProd, prix) values ('Caine (Shark!)', 1.13);
insert into produits (titreProd, prix) values ('Detroit 9000', 1.02);
insert into produits (titreProd, prix) values ('Out of It (La carapate)', 1.36);
insert into produits (titreProd, prix) values ('Bride of Frankenstein, The (Bride of Frankenstein)', 2.04);
insert into produits (titreProd, prix) values ('Mammuth', 4.47);
insert into produits (titreProd, prix) values ('Shepherd', 3.59);
insert into produits (titreProd, prix) values ('Little Red Flowers (Kan shang qu hen mei)', 3.12);
insert into produits (titreProd, prix) values ('Times and Winds (Bes vakit)', 4.08);
insert into produits (titreProd, prix) values ('I''m King Kong!: The Exploits of Merian C. Cooper ', 2.46);
insert into produits (titreProd, prix) values ('Happy Together (a.k.a. Buenos Aires Affair) (Chun gwong cha sit)', 4.15);
insert into produits (titreProd, prix) values ('Mr. Nanny', 3.82);


-- TABLE CLIENTS ---------------------------------------------------------

DROP TABLE IF EXISTS clients ;
CREATE TABLE clients (
    idClient INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    ville VARCHAR(255),
    age INT
);


insert into clients (nom, ville, age) values ('Gina', 'Tāngāil', 23);
insert into clients (nom, ville, age) values ('Janeva', 'Kuroishi', 42);
insert into clients (nom, ville, age) values ('Arliene', 'Quảng Ngãi', 58);
insert into clients (nom, ville, age) values ('Arluene', 'Dacun', 42);
insert into clients (nom, ville, age) values ('Emmit', 'Daxi', 42);
insert into clients (nom, ville, age) values ('Bear', 'Kolsh', 42);
insert into clients (nom, ville, age) values ('Katalin', 'Kafr Zībād', 51);
insert into clients (nom, ville, age) values ('Tristam', 'Mitrofanovka', 44);
insert into clients (nom, ville, age) values ('Raye', 'An Naşşārīyah', 40);
insert into clients (nom, ville, age) values ('Daphna', 'Jiannan', 22);
insert into clients (nom, ville, age) values ('Riane', 'Fukiage-fujimi', 35);
insert into clients (nom, ville, age) values ('Bud', 'Masis', 57);
insert into clients (nom, ville, age) values ('Rene', 'Paitan Norte', 56);
insert into clients (nom, ville, age) values ('Smith', 'Mendefera', 35);
insert into clients (nom, ville, age) values ('Ariela', 'Sośnicowice', 20);
insert into clients (nom, ville, age) values ('Kyle', 'Kuzovatovo', 35);
insert into clients (nom, ville, age) values ('Caitlin', 'Tajerouine', 30);
insert into clients (nom, ville, age) values ('Axe', 'Hrazdan', 33);
insert into clients (nom, ville, age) values ('Conni', 'Huashan', 18);
insert into clients (nom, ville, age) values ('Linda', 'Kutloanong', 55);
insert into clients (nom, ville, age) values ('Augusto', 'Dongfanghong', 34);
insert into clients (nom, ville, age) values ('Klemens', 'Montaigu', 27);
insert into clients (nom, ville, age) values ('Janaya', 'Abū Qalqal', 32);
insert into clients (nom, ville, age) values ('Brigid', 'Yabuli', 36);
insert into clients (nom, ville, age) values ('Bee', 'Jinotepe', 23);
insert into clients (nom, ville, age) values ('Clemmy', 'Altay', 28);
insert into clients (nom, ville, age) values ('Myrvyn', 'San Jose', 60);
insert into clients (nom, ville, age) values ('Kellina', 'Magnitogorsk', 40);
insert into clients (nom, ville, age) values ('Monroe', 'Kanzaki', 58);
insert into clients (nom, ville, age) values ('Micheil', 'Längelmäki', 43);



-- TABLE COMMANDES ---------------------------------------------------------

DROP TABLE IF EXISTS commandes ;
CREATE TABLE commandes (
    idCom INT AUTO_INCREMENT PRIMARY KEY,
    idClient INT,
    total DOUBLE,
    datec DATE,
    CONSTRAINT fk_clients FOREIGN KEY (idClient) REFERENCES clients (idClient)
);

insert into commandes (idClient, total, datec) values (27, 35.4, '2022-09-19');
insert into commandes (idClient, total, datec) values (23, 3.23, '2021-06-11');
insert into commandes (idClient, total, datec) values (22, 19.3, '2020-05-12');
insert into commandes (idClient, total, datec) values (19, 12.2, '2021-01-09');
insert into commandes (idClient, total, datec) values (11, 36.97, '2020-10-06');
insert into commandes (idClient, total, datec) values (10, 16.82, '2020-01-17');
insert into commandes (idClient, total, datec) values (17, 39.8, '2022-05-30');
insert into commandes (idClient, total, datec) values (5, 18.0, '2021-03-30');
insert into commandes (idClient, total, datec) values (13, 16.54, '2020-11-22');
insert into commandes (idClient, total, datec) values (28, 25.49, '2022-06-12');
insert into commandes (idClient, total, datec) values (8, 18.59, '2021-08-22');
insert into commandes (idClient, total, datec) values (29, 13.62, '2022-05-15');
insert into commandes (idClient, total, datec) values (16, 13.37, '2020-11-20');
insert into commandes (idClient, total, datec) values (7, 1.83, '2022-05-23');
insert into commandes (idClient, total, datec) values (6, 20.13, '2021-12-15');
insert into commandes (idClient, total, datec) values (1, 1.4, '2021-08-18');
insert into commandes (idClient, total, datec) values (3, 31.29, '2022-08-07');
insert into commandes (idClient, total, datec) values (2, 13.07, '2021-03-28');
insert into commandes (idClient, total, datec) values (14, 7.28, '2020-11-04');
insert into commandes (idClient, total, datec) values (12, 11.49, '2022-08-08');



-- TABLE DETAILS ---------------------------------------------------------

DROP TABLE IF EXISTS details ;
CREATE TABLE details (
    idDetail INT AUTO_INCREMENT PRIMARY KEY,
    idCom INT,
    idProd INT,
    prixU DOUBLE,
    qte INT,
    CONSTRAINT fk_commandes FOREIGN KEY (idCom) REFERENCES commandes (idCom),
    CONSTRAINT fk_produits FOREIGN KEY (idProd) REFERENCES produits (idProd)
);

insert into details (idCom, idProd, prixU, qte) values (16, 14, 1.63, 3);
insert into details (idCom, idProd, prixU, qte) values (7, 4, 4.74, 6);
insert into details (idCom, idProd, prixU, qte) values (3, 6, 1.01, 2);
insert into details (idCom, idProd, prixU, qte) values (17, 3, 1.57, 1);
insert into details (idCom, idProd, prixU, qte) values (17, 11, 4.46, 9);
insert into details (idCom, idProd, prixU, qte) values (17, 12, 4.24, 3);
insert into details (idCom, idProd, prixU, qte) values (6, 7, 1.13, 9);
insert into details (idCom, idProd, prixU, qte) values (18, 8, 4.48, 1);
insert into details (idCom, idProd, prixU, qte) values (8, 13, 4.98, 1);
insert into details (idCom, idProd, prixU, qte) values (5, 7, 4.44, 6);
insert into details (idCom, idProd, prixU, qte) values (5, 5, 4.88, 7);
insert into details (idCom, idProd, prixU, qte) values (18, 8, 1.18, 6);
insert into details (idCom, idProd, prixU, qte) values (18, 7, 4.79, 8);
insert into details (idCom, idProd, prixU, qte) values (6, 15, 4.1, 4);
insert into details (idCom, idProd, prixU, qte) values (20, 9, 2.37, 4);
insert into details (idCom, idProd, prixU, qte) values (9, 13, 2.77, 10);
insert into details (idCom, idProd, prixU, qte) values (18, 14, 3.12, 2);
insert into details (idCom, idProd, prixU, qte) values (18, 7, 1.74, 1);
insert into details (idCom, idProd, prixU, qte) values (15, 2, 4.54, 5);
insert into details (idCom, idProd, prixU, qte) values (11, 1, 3.89, 3);
insert into details (idCom, idProd, prixU, qte) values (2, 2, 2.2, 8);
insert into details (idCom, idProd, prixU, qte) values (7, 9, 3.97, 4);
insert into details (idCom, idProd, prixU, qte) values (20, 7, 3.98, 7);
insert into details (idCom, idProd, prixU, qte) values (8, 11, 4.34, 4);
insert into details (idCom, idProd, prixU, qte) values (1, 4, 2.83, 7);
insert into details (idCom, idProd, prixU, qte) values (18, 10, 3.8, 1);
insert into details (idCom, idProd, prixU, qte) values (9, 4, 3.9, 5);
insert into details (idCom, idProd, prixU, qte) values (1, 8, 1.26, 4);
insert into details (idCom, idProd, prixU, qte) values (19, 1, 2.0, 10);
insert into details (idCom, idProd, prixU, qte) values (11, 5, 1.56, 2);
