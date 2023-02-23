-- SERIES JOINTURES - EXERCICE 1
-- CREATE DATABASE

DROP DATABASE  IF EXISTS bibliotheque;

CREATE DATABASE bibliotheque ;
USE bibliotheque ;

DROP TABLE IF EXISTS auteurs ;
create table auteur (
	idAuteur INT auto_increment primary key,
	prenom VARCHAR(20),
	nom VARCHAR(20),
	datenaiss DATE,
	datedeces DATE,
	bibliographie VARCHAR(50)
);

DROP TABLE IF EXISTS editeurs ;
CREATE TABLE editeurs (
    idEditeur INT AUTO_INCREMENT,
    nom VARCHAR(30),
    adresse VARCHAR(200),
    code VARCHAR(5),
    ville VARCHAR(60),
    pays VARCHAR(30),
    telephone CHAR(14),
    fax CHAR(14),
    PRIMARY KEY (idEditeur)
);


DROP TABLE IF EXISTS emprunteurs ;
create table emprunteurs (
	idEmprunteur INT auto_increment primary key,
	nom VARCHAR(50),
	prenom VARCHAR(50),
	adresse VARCHAR(50),
	code VARCHAR(50),
	ville VARCHAR(50),
	telephone VARCHAR(50),
	sexe VARCHAR(50),
	datenaiss DATE,
	nbretards INT
);


create table livres (
	idLivre INT auto_increment primary key,
	ISBN VARCHAR(50),
	titre VARCHAR(50),
	nbpages INT,
	dateparu DATE,
	prix INT,
	idediteur INT,
	idauteur INT
);

DROP TABLE IF EXISTS emprunts ;
CREATE TABLE emprunts (
    idEmprunt INT AUTO_INCREMENT,
    idLivre INT,
    idEmprunteur INT,
    datePret DATE,
    dateRendu DATE,
    PRIMARY KEY (idEmprunt),
    CONSTRAINT fk_livre FOREIGN KEY (idLivre) REFERENCES livres (idLivre)
);

insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (1, 'Mathe', 'Siddon', '1975-01-22', '2042-01-22', 'Box, The');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (2, 'Aloysius', 'Ockenden', '1959-08-02', '1991-08-02', 'Destiny in Space');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (3, 'Kingston', 'Jeschner', '1943-08-21', '1977-08-21', 'Poseidon Adventure, The');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (4, 'Josias', 'Lum', '1975-06-28', '1999-06-28', 'American Splendor');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (5, 'Dion', 'Leuchars', '1916-06-27', '1999-06-27', 'Used Cars');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (6, 'Joyous', 'Mapplethorpe', '1943-06-24', '1965-06-24', 'Predator 2');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (7, 'Justen', 'Kiffe', '1924-02-15', '2004-02-15', 'Show Boat');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (8, 'Ilysa', 'Nicolson', '1955-03-02', '1977-03-02', 'Necessities of Life, The (Ce qu''il faut pour vivre)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (9, 'Emogene', 'Eakly', '1967-04-17', null, 'Rapid Fire');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (10, 'Berti', 'Sillett', '1949-01-05', null, 'Captives');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (11, 'Pearle', 'Bravington', '1901-10-23', null, 'Grindhouse');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (12, 'Danika', 'Covely', '1963-09-22', '2024-09-22', 'Zero Kelvin (Kjærlighetens kjøtere)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (13, 'Ardith', 'Lear', '1922-05-10', '2006-05-10', 'Running on Empty');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (14, 'Jerald', 'Hallawell', '1977-06-14', null, 'Skins');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (15, 'Hadria', 'Buttwell', '1917-08-21', null, 'Land of the Blind');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (16, 'Vaclav', 'Morillas', '1936-05-19', null, 'Out in the Dark');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (17, 'Heddi', 'Itzkovsky', '1932-10-08', '1980-10-08', 'Sliding Doors');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (18, 'Simona', 'MacKettrick', '1919-09-24', '1952-09-24', 'Evil Toons');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (19, 'Blair', 'Bossingham', '1970-12-02', '2010-12-02', 'Big Boss, The (Fists of Fury) (Tang shan da xiong)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (20, 'Carlynne', 'Ceyssen', '1924-04-19', '1989-04-19', 'Hustler, The');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (21, 'Eula', 'Giacovelli', '1923-02-28', '1977-02-28', 'The Facts of Murder');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (22, 'Brad', 'Tift', '1933-06-14', null, 'Thick-Walled Room, The (Kabe atsuki heya)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (23, 'Barty', 'Nunan', '1909-10-20', '1975-10-20', 'After Life (Wandafuru raifu)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (24, 'Urson', 'Persicke', '1949-09-15', null, 'Little Monsters');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (25, 'Jules', 'Orable', '1958-10-13', '1995-10-13', 'Don''t Blink');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (26, 'Ronnie', 'Trewinnard', '1929-12-21', '1979-12-21', 'Changing Lanes');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (27, 'Verne', 'Axe', '1924-11-16', null, 'Night of the Demons');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (28, 'Addison', 'Farquharson', '1988-11-23', '2039-11-23', 'Highball');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (29, 'Ashely', 'Benzie', '1903-05-30', null, 'Oscar and Lucinda (a.k.a. Oscar & Lucinda)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (30, 'Granger', 'Abramof', '1960-06-13', '1996-06-13', 'Crisis (Kris)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (31, 'Deonne', 'Corkan', '1972-01-21', '2030-01-21', 'Schultze Gets the Blues');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (32, 'Georgeanna', 'Piatkowski', '1983-02-14', '2024-02-14', 'Faster');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (33, 'Clementine', 'Elward', '1924-10-28', null, 'Perfect');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (34, 'Faythe', 'Giles', '1901-09-12', null, 'Death of a Salesman');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (35, 'Naomi', 'Haysman', '1909-12-28', '1979-12-28', 'Missing Star, The (La stella che non c''è)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (36, 'Daryl', 'Margetson', '1976-08-31', '2033-08-31', 'In Your Eyes');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (37, 'Gus', 'Esseby', '1920-06-09', '1968-06-09', 'Everybody''s All-American');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (38, 'Lissie', 'Strowlger', '1920-02-06', '1975-02-06', 'Raspberry Boat Refugee');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (39, 'Arch', 'Bellord', '1928-06-26', '1995-06-26', 'Such Good Friends');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (40, 'Cariotta', 'McGlaughn', '1941-03-28', '1981-03-28', 'Retro Puppet Master (Puppet Master 7)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (41, 'Portie', 'Garling', '1973-07-29', '2039-07-29', 'North Beach');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (42, 'Kori', 'Raitie', '1978-07-19', '2000-07-19', 'Pusher');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (43, 'Mallorie', 'Ramberg', '1911-08-26', '1964-08-26', 'Ninja: Shadow of a Tear');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (44, 'Rockwell', 'Asple', '1981-07-05', '2030-07-05', 'Bugs Bunny / Road Runner Movie, The (a.k.a. The Great American Chase)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (45, 'Cynthia', 'Portingale', '1980-08-25', null, 'From the Life of the Marionettes (Aus dem Leben der Marionetten) ');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (46, 'Holly', 'Christy', '1956-04-21', '2028-04-21', 'Salvador');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (47, 'Persis', 'Sacks', '1964-04-04', '1992-04-04', 'Fool''s Gold');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (48, 'Minda', 'Sherborn', '1975-08-19 ', null, 'Screaming Skull, The');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (49, 'Euphemia', 'McCane', '1912-12-25', '1963-12-25', 'Monster in Paris, A (Un monstre à Paris)');
insert into auteur (idauteur, prenom, nom, datenaiss, datedeces, bibliographie) values (50, 'Electra', 'Baylie', '1941-05-12', null, 'To Tulsa and Back: On Tour with J.J. Cale');


insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (1, '786269275-6', 'Unfinished Business', 122, '1920-11-24 06:59:06', 66, 34, 19);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (2, '567475891-3', 'Motorama', 347, '1979-01-30 06:28:26', 50, 28, 50);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (3, '664504856-4', 'Knuckleball!', 433, '1953-05-11 15:20:26', 42, 50, 37);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (4, '196433744-5', 'Seduced and Abandoned', 231, '1934-07-25 06:53:32', 80, 34, 39);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (5, '526779291-8', 'Two in the Wave', 115, '1945-03-14 20:13:25', 76, 7, 17);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (6, '629709165-X', 'Detective (Détective)', 354, '1933-04-01 10:12:46', 44, 26, 38);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (7, '339583556-1', 'Final Option, The (Who Dares Wins)', 165, '1982-01-13 21:27:21', 65, 9, 23);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (8, '299728705-7', 'War, Inc.', 186, '1945-09-08 15:24:24', 58, 47, 14);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (9, '435383771-0', 'Divorce - Italian Style (Divorzio all''italiana)', 60, '1944-09-27 18:56:39', 41, 19, 46);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (10, '510704696-7', 'Man with a Cloak, The', 264, '1999-12-28 21:43:45', 75, 5, 8);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (11, '049977063-3', 'Last Real Men, The (Die letzten Männer)', 166, '1948-12-13 00:11:58', 72, 48, 25);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (12, '800232851-5', 'Bannen Way, The', 128, '1960-10-16 21:52:34', 64, 33, 1);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (13, '225501012-7', 'Invasion, The', 345, '1997-06-04 01:39:50', 42, 47, 21);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (14, '056785626-7', 'Slackers', 267, '1995-11-01 04:10:05', 67, 21, 34);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (15, '652544334-2', 'Island at the Top of the World, The', 444, '1926-04-21 13:48:00', 72, 34, 28);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (16, '201279462-9', 'I Want You', 416, '1995-05-28 04:46:12', 64, 32, 43);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (17, '146085647-3', 'Jane Eyre', 470, '1999-06-15 15:39:58', 52, 41, 26);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (18, '554560697-1', 'Moneyball', 171, '1988-12-17 02:14:32', 79, 2, 15);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (19, '085316273-5', 'Ce que mes yeux ont vu', 113, '1980-10-05 12:07:34', 71, 10, 19);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (20, '448109836-8', 'Sut (Milk)', 203, '1931-01-14 15:53:49', 48, 20, 43);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (21, '411471218-6', 'Chronicle of My Mother (Waga haha no ki)', 274, '1934-05-29 01:25:16', 75, 49, 29);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (22, '538183245-1', 'Who''s That Girl?', 204, '1933-09-22 16:13:50', 62, 38, 12);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (23, '842275772-9', 'Grapes of Wrath, The', 479, '1998-08-28 07:10:38', 54, 14, 16);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (24, '657926735-6', 'Millennium Mambo (Qian xi man po)', 283, '1981-07-24 19:10:01', 43, 6, 2);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (25, '217942041-2', 'Wild Card', 72, '1971-11-04 00:59:59', 76, 20, 14);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (26, '765312110-1', 'Red Army', 266, '1970-02-14 10:57:06', 60, 24, 26);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (27, '735161762-7', 'Luster', 174, '1961-12-15 20:23:49', 59, 37, 47);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (28, '484908508-3', 'Ben X', 398, '1992-07-11 12:39:50', 54, 44, 32);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (29, '708673409-8', 'Jerry Springer: The Opera', 100, '1987-08-31 18:10:12', 40, 38, 32);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (30, '472303936-8', 'It''s Love I''m After', 498, '1984-02-26 14:38:17', 77, 41, 32);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (31, '047556927-X', 'American Affair, An', 213, '1939-04-09 19:39:41', 65, 41, 25);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (32, '729406824-0', 'Winning Streak', 134, '1942-09-23 04:19:03', 67, 43, 37);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (33, '754188994-6', 'Sound of Music, The', 438, '1982-12-06 01:25:11', 79, 7, 7);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (34, '237262006-1', 'Neighbouring Sounds (O som ao redor)', 197, '1929-06-08 01:48:05', 53, 37, 24);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (35, '206175343-4', 'Pelican, The (Le Pelican)', 465, '1993-02-26 11:50:52', 64, 24, 2);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (36, '198741283-4', 'Dracula''s Daughter', 63, '1923-03-08 08:54:44', 41, 19, 46);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (37, '793726489-6', 'Convict 13', 328, '1947-06-13 10:39:22', 41, 35, 2);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (38, '464695579-2', 'There Was a Crooked Man...', 345, '1999-02-16 17:07:36', 61, 31, 38);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (39, '532823079-5', 'Dolphin Tale', 485, '1937-06-23 06:24:02', 66, 7, 8);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (40, '250236547-3', 'Charge of the Light Brigade, The', 471, '1947-07-02 17:21:00', 48, 44, 26);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (41, '243655858-2', 'Haxan: Witchcraft Through the Ages (a.k.a. The Witches)', 348, '1926-11-19 12:21:29', 49, 4, 10);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (42, '391745708-3', 'Trip to Mars, A', 73, '1998-02-17 13:15:45', 65, 10, 14);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (43, '091827439-7', 'First Family', 95, '1942-09-30 08:14:28', 59, 8, 26);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (44, '239030360-9', 'Perfect Getaway, A', 420, '1992-10-27 08:05:15', 68, 47, 47);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (45, '415907754-4', 'Just Ask My Children', 346, '1988-04-23 01:13:37', 44, 23, 32);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (46, '717010431-8', 'Deadly Companions, The', 370, '1988-07-06 08:15:03', 58, 14, 20);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (47, '933662095-9', 'One Hundred Mornings', 73, '1976-04-06 02:53:37', 40, 17, 37);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (48, '270664765-5', 'Unfaithful Wife, The (Femme infidèle, La)', 367, '1920-05-30 09:49:39', 43, 31, 44);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (49, '373352691-0', 'Dickson Greeting', 398, '1950-11-14 19:31:21', 78, 6, 29);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (50, '217144588-2', 'Vie meilleure, Une (Better Life, A)', 245, '1956-07-30 22:44:53', 54, 31, 27);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (51, '676170185-6', 'Blood Beast Terror, The', 374, '1957-10-22 02:32:27', 47, 9, 7);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (52, '250282048-0', 'Double Team', 95, '1954-02-11 19:54:14', 45, 3, 45);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (53, '567107892-X', 'Incident at Blood Pass (Machibuse) (Ambush)', 316, '1973-12-29 19:31:32', 59, 50, 44);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (54, '426526101-9', 'Trail of the Lonesome Pine, The', 497, '1998-11-01 08:02:50', 76, 14, 37);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (55, '726973994-3', 'Good News', 474, '1971-10-05 23:21:20', 43, 25, 21);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (56, '113234674-6', 'My Perestroika', 198, '1981-10-26 04:01:08', 64, 15, 2);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (57, '460613594-8', 'Have Rocket, Will Travel', 71, '1978-01-07 12:40:42', 44, 36, 26);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (58, '004218579-3', 'Dragon (Wu Xia)', 363, '1988-08-01 13:39:15', 47, 48, 4);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (59, '634906078-4', '200 Motels', 152, '1976-11-01 17:03:41', 76, 29, 31);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (60, '562570968-8', 'Balance, La', 243, '1939-10-07 01:38:01', 61, 41, 4);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (61, '291949799-5', 'Underworld', 149, '1974-08-22 19:09:31', 77, 3, 19);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (62, '729349432-7', 'Katyn', 407, '1994-12-27 23:31:49', 42, 27, 11);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (63, '330726027-8', 'Late August, Early September (Fin août, début septembre)', 362, '1922-07-20 00:16:01', 50, 10, 3);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (64, '708982767-4', 'Child of Rage', 425, '1948-04-17 01:08:32', 66, 15, 29);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (65, '479674195-X', 'Meth', 159, '1985-05-24 13:20:15', 45, 46, 18);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (66, '933765902-6', 'Mom''s Night Out', 324, '1967-03-09 11:27:28', 65, 37, 4);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (67, '434341707-7', 'Circumstance', 157, '1986-10-02 19:15:31', 59, 18, 31);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (68, '684598045-4', 'Leif', 215, '1963-02-15 15:12:41', 43, 7, 2);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (69, '093700061-2', 'Lorenzo''s Oil', 332, '1987-05-04 11:15:16', 49, 39, 4);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (70, '890577904-2', 'Lightning Bug', 139, '1922-01-12 20:08:03', 61, 46, 39);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (71, '704122803-7', 'Lost World, The', 495, '1984-09-12 23:15:56', 76, 3, 9);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (72, '386203816-5', 'Respiro', 359, '1975-04-21 12:51:27', 41, 44, 39);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (73, '048762026-7', 'Mark Twain', 321, '1989-09-27 21:43:32', 41, 5, 22);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (74, '183604334-1', 'Killing of Sister George, The', 284, '1925-01-17 05:14:13', 66, 45, 7);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (75, '848885292-4', 'World Moves On, The', 96, '1929-02-27 12:47:43', 72, 35, 29);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (76, '069200489-0', 'Gagarin: First in Space', 258, '1972-07-03 16:19:36', 43, 38, 3);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (77, '116978039-3', 'Roadie', 499, '1934-07-13 12:44:32', 53, 22, 13);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (78, '060542913-8', 'Ong-Bak: The Thai Warrior (Ong Bak)', 394, '1967-01-18 16:08:57', 48, 12, 44);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (79, '405770568-6', 'Bridge on the River Kwai, The', 122, '1983-07-28 19:10:26', 64, 13, 33);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (80, '933179216-6', 'West of the Divide', 425, '1962-02-17 05:12:19', 46, 23, 36);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (81, '192761837-1', 'Dracula A.D. 1972', 410, '1958-09-05 07:37:37', 64, 45, 31);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (82, '911697310-0', 'Cinderella II: Dreams Come True', 57, '1923-10-30 14:55:08', 46, 41, 20);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (83, '182743833-9', 'Bourne Identity, The', 128, '1986-04-05 20:28:46', 71, 31, 9);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (84, '546912822-9', 'Abendland', 75, '1938-11-05 22:52:46', 71, 25, 19);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (85, '972905578-5', 'Saving Grace', 96, '1965-08-04 09:38:59', 54, 8, 27);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (86, '159758680-3', 'Four Adventures of Reinette and Mirabelle (4 aventures de Reinette et Mirabelle)', 379, '1986-04-18 13:25:57', 62, 39, 2);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (87, '811055069-X', 'Hole, The', 133, '1952-01-07 07:15:02', 59, 15, 32);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (88, '937229728-3', 'One Nine Nine Four', 119, '1998-09-03 06:02:57', 77, 6, 32);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (89, '474816069-1', 'North Shore', 194, '1982-05-07 10:37:36', 57, 18, 24);
insert into livres (idlivre, ISBN, titre, nbpages, dateparu, prix, idediteur, idauteur) values (90, '890308916-2', 'Far Out Man', 394, '1992-05-05 00:00:08', 41, 23, 34);


insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Vials', 'Derrik', '70 Crescent Oaks Plaza', 3561, 'Pavlodar', '0246058212', 'M', '1999-02-01', 1);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Le Sarr', 'Atlanta', '426 Fairview Point', 68036, 'Itupeva', '079726972', 'F', '2018-09-30', 1);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Faraker', 'Alisander', '4 Maple Way', 50825, 'Bitung', '0314951154', 'M', '2005-11-22', 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Broke', 'Peterus', '70266 Bonner Alley', 50456, 'Mahendranagar', '0971298416', 'M', '2018-04-08', 2);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Howson', 'Kasper', '8 Donald Terrace', 43880, 'Beima', '0425317674', 'M', '1994-08-02', 3);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Eke', 'Pate', '69020 Florence Avenue', 98971, 'Oleszyce', null, null, null, 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('McCrainor', 'Valentine', '87873 Warner Hill', 3502, 'Baraya', '0238385617', 'F', '1982-01-05', 5);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Gulliford', 'Simeon', '01 Kipling Point', 1161, 'Chinju', '0480766745', 'M', '2006-09-04', 5);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Becaris', 'Byran', '37 Sherman Lane', 34386, 'Rongai', '01607555', 'M', '2003-04-23', 1);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Thredder', 'Nil', '7 Pearson Park', 94485, 'Svetlanovskiy', '0252331271', 'M', '1975-09-13', 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('MacAscaidh', 'Karrah', '617 Hazelcrest Way', 38514, 'Julita', '015669319', 'F', '1982-11-28', 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Tarbert', 'Cam', '055 Morning Trail', 97154, 'Mirontsi', '0876655267', 'M', '1999-01-20', 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Griffe', 'Nikola', '638 Loftsgordon Trail', 71327, 'Unanu', '0790033247', 'M', '1977-02-14', 4);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('De Clairmont', 'Reynard', '27972 Crest Line Trail', 40954, 'Bendorubuh', '0579977407', 'M', '2002-05-23', 8);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Watchorn', 'Piper', '0 Butterfield Point', 99402, 'Sengkerang Tiga', '0440907956', 'F', '2014-01-05', 8);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Swatridge', 'Sissy', '270 Troy Court', 8397, 'Notre Dame', '0599924523', 'F', '1980-02-17', 10);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Melliard', 'Coletta', '269 Village Pass', 65940, 'Ibaiti', '0539817961', 'F', '1983-02-07', 9);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Bigland', 'Carlo', '600 Lillian Alley', 89791, 'Butubut Norte', '0487214974', 'M', '2009-08-13', 8);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Digweed', 'Pearla', '25787 Sauthoff Crossing', 42477, 'Jiyang', null, null, null, 3);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Tuppeny', 'Tallulah', '43463 Florence Place', 90071, 'Ketovo', '0379378014', 'F', '1979-01-02', 4);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Blinkhorn', 'Dominique', '5 Waywood Point', 52610, 'Yangchun', '0122134291', 'F', '1985-11-07', 3);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Davydoch', 'Tuckie', '8 Hoard Road', 37792, 'Poroçan', '0372088930', 'M', '1994-01-27', 7);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Eltun', 'Amelina', '6 Grasskamp Lane', 4568, 'Rawa Mazowiecka', null, null, null, 0);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Lux', 'Carolina', '64904 Starling Plaza', 87749, 'Kinsale', '03593845', 'F', '1973-11-13', 3);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Arnowitz', 'Gifford', '85 New Castle Park', 10696, 'San Felipe', '0766691524', 'M', '1992-01-07', 3);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Lakey', 'Celestina', '88633 Norway Maple Center', 7105, 'Fenshui', '0655940774', 'F', '1991-02-03', 4);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Lambeth', 'Tiffany', '594 International Parkway', 94496, 'Krebet', '0424664366', 'F', '2004-05-23', 3);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Crowth', 'Lyn', '3 Laurel Crossing', 91838, 'Avelinha', '0821220804', 'F', '2003-08-27', 5);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('O''Kinedy', 'Adrien', '3 Bultman Center', 18641, 'Kompóti', null, null, null, 10);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Bathoe', 'Krissie', '0 Havey Pass', 98793, 'Selajambe Satu', '0560855127', 'F', '2017-08-06', 4);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Maciak', 'Silvano', '7559 Schurz Center', 95865, 'Nangkaruka', '0668160692', 'M', '2008-03-20', 2);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Ramsay', 'Joli', '84 Kedzie Place', 50817, 'Isfahan', '0161097039', 'F', '2006-01-22', 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Vasilchikov', 'Marcela', '0 6th Street', 24928, 'Potoci', '0328302359', 'P', '2002-02-03', 0);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Stockell', 'Chrysa', '4 Butterfield Park', 81139, 'Jarash', '0615274927', 'F', '2010-09-05', 7);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Haborn', 'Clovis', '3 Barby Avenue', 18367, 'Sukadana Selatan', '0976842200', 'F', '1978-05-25', 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Horlick', 'Bendite', '2 Rutledge Way', 47960, 'Hendala', '0248582389', 'F', '1991-03-14', 8);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Biasi', 'Alvan', '75920 Hovde Street', 73103, 'Warungawi', '0838403381', 'M', '2018-10-05', 9);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Swithenby', 'Hannis', '81456 Washington Place', 32083, 'Sanlei', null, null, null, 0);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Wherry', 'Rodge', '25 Erie Road', 91022, 'Bang Ban', '0885695916', 'A', '1986-05-12', 8);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Bensusan', 'Nathanial', '742 Eastlawn Parkway', 81312, 'Rimbo', '0518999866', 'M', '2006-11-14', 2);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Kerwen', 'Georgi', '541 Sutteridge Center', 68201, 'São Marcos da Serra', '0879897140', 'P', '1987-11-08', 7);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Stockman', 'Dunc', '11 Lake View Place', 86884, 'Grojec', null, null, null, 1);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Pepperill', 'Loni', '139 Bartillon Circle', 75800, 'Eusébio', '094698967', 'F', '2008-05-28', 8);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Pollendine', 'Ailee', '3804 Mallard Court', 56612, 'Lorient', '0915240859', 'F', '1995-03-01', 0);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Ropars', 'Janice', '27807 Logan Alley', 43598, 'Pasirbitung', '0787701374', 'F', '2003-11-15', 9);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Pyser', 'Bert', '266 Rutledge Point', 89219, 'Gafanha da Encarnação', '0353527663', 'F', '1985-12-13', 0);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Keelin', 'Marjie', '1651 Dapin Plaza', 55975, 'Lasusua', '0945338624', 'F', '2020-06-06', 0);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Durban', 'Frederica', '0 Dovetail Junction', 81573, 'Acheng', '0767513515', 'F', '1992-09-03', 10);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Odlin', 'Les', '85854 Truax Terrace', 70357, 'Jelisavac', null, null, null, 6);
insert into emprunteurs (nom, prenom, adresse, code, ville, telephone, sexe, datenaiss, nbretards) values ('Lathom', 'Viviene', '41 Drewry Crossing', 50517, 'Saint-Denis', '0444351901', 'F', '1976-02-26', 5);


insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (1, 44, null, '2022-12-28', '2022-12-29');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (2, 11, 22, '2022-06-14', '2022-08-07');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (3, 49, 49, '2022-04-15', '2022-08-16');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (4, 42, 37, '2022-07-30', '2022-08-25');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (5, 33, 12, '2022-09-23', '2022-09-24');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (6, 32, 17, '2022-11-18', '2022-11-23');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (7, 15, 24, '2022-03-08', '2022-07-23');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (8, 9, 17, '2022-03-27', '2022-07-16');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (9, 30, 39, '2022-10-24', '2022-10-29');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (10, 13, 1, '2022-08-22', '2022-11-05');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (11, 32, 40, '2022-04-11', '2022-04-16');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (12, 27, 39, '2022-09-10', '2022-09-15');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (13, 22, 4, '2022-12-14', '2022-12-19');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (14, 38, 22, '2022-01-28', '2022-07-18');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (15, 27, null, '2022-03-01', '2022-10-18');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (16, 23, 30, '2022-10-03', '2022-10-08');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (17, 38, 36, '2022-07-09', '2022-07-14');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (18, 23, 14, '2022-03-26', '2022-10-14');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (19, 20, 15, '2022-05-13', '2022-09-21');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (20, 48, 13, '2022-08-17', '2022-08-22');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (21, 1, 8, '2022-06-12', '2023-01-03');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (22, 49, 26, '2022-07-27', '2022-08-01');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (23, 8, 1, '2022-10-28', '2022-11-02');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (24, 12, 12, '2022-07-01', '2022-11-21');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (25, 1, 41, '2022-06-19', '2022-12-24');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (26, 5, 23, '2022-10-07', '2022-10-12');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (27, 44, 28, '2022-10-06', '2022-12-15');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (28, 3, 31, '2022-05-27', '2022-12-29');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (29, 37, 31, '2022-03-06', '2022-03-14');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (30, 45, 17, '2022-06-02', '2022-06-07');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (31, 43, 1, '2022-03-21', '2022-03-26');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (32, 12, 47, '2022-02-04', '2022-08-08');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (33, 33, 14, '2022-03-18', '2022-05-26');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (34, 19, 33, '2022-01-18', '2022-11-25');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (35, 27, 32, '2022-11-26', '2022-12-01');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (36, 25, 49, '2022-05-08', '2022-05-13');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (37, 47, 19, '2022-08-18', '2022-08-23');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (38, 29, null, '2022-12-25', '2022-12-30');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (39, 29, 27, '2022-03-18', '2022-10-03');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (40, 11, 42, '2022-08-29', '2022-11-02');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (41, 2, 20, '2022-12-22', '2022-12-27');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (42, 10, 1, '2022-02-15', '2022-09-06');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (43, 33, 14, '2022-03-22', '2022-07-04');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (44, 45, 4, '2022-05-25', '2022-12-30');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (45, 34, 5, '2022-06-07', '2022-06-12');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (46, 19, 25, '2022-02-03', '2022-07-14');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (47, 24, 50, '2022-07-16', '2022-07-21');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (48, 45, 41, '2022-04-03', '2022-12-29');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (49, 22, 28, '2022-03-25', '2022-08-18');
insert into emprunts (idemprunt, idlivre, idemprunteur, datepret, daterendu) values (50, 23, 13, '2022-04-20', '2022-05-24');





-- LES REQ

-- 1 En face de chaque titre d'ouvrage, afficher le nom et prénom de son auteur.
SELECT titre, nom, prenom FROM livres inner JOIN auteur USING (idauteur)
ORDER BY titre;

-- 2 Afficher le nom et le prénom des emprunteurs suivis de la date de ses emprunts.
SELECT nom, prenom, datepret FROM emprunteurs inner JOIN emprunts USING(idemprunteur);

-- 3 - Affichez le titre et l'auteur des ouvrages empruntés suivi du nom de leur emprunteur 
SELECT titre, auteur.nom, emprunteurs.nom
FROM livres, auteur, emprunteurs, emprunts
WHERE emprunts.idlivre = livres.idlivre
AND emprunts.idEmprunteur = emprunteurs.idEmprunteur
AND livres.idAuteur = auteur.idAuteur; 

-- Autre version
SELECT titre, auteur.nom, emprunteurs.nom
FROM livres
inner join auteur
-- on livres.idAuteur = auteur.idAuteur
using(idAuteur)
inner join emprunts
-- on emprunts.idlivre = livres.idlivre
using(idlivre)
inner join emprunteurs
-- on emprunts.idEmprunteur = emprunteurs.idEmprunteur
using(idEmprunteur);
 -- using(idAuteur, idLivre, idEmprunteur)
 --
SELECT * FROM auteur au, emprunts
NATURAL JOIN livres li  -- NATURAL JOIN emprunts
NATURAL JOIN emprunteurs us;

 -- 4 A la suite de problèmes de saisie informatique, il existe un certain nombre 
-- d'emprunts sans emprunteurs. Affichez l'identifiant de tous les emprunts suivis du  nom de l'emprunteur 
-- qu'il y en ait un ou non

 SELECT idemprunt, nom
FROM emprunts LEFT  JOIN emprunteurs USING(idemprunteur)
ORDER BY idemprunt ASC;

-- 5 Afficher la liste des emprunts suivi de l'identifiant de l'emprunteur seulement s'il y a un emprunteur, 
-- mais aussi comprenant les emprunteurs n'ayant pas encore effectué  d'emprunts

SELECT emprunts.*, emprunteurs.idemprunteur
FROM emprunts RIGHT  JOIN emprunteurs USING(idemprunteur)
ORDER BY emprunteurs.idemprunteur ;

-- 6 Afficher la liste des emprunts et des emprunteurs que les emprunts n’ont pas  d'emprunteurs ou que les emprunteurs n’ont jamais effectué d'emprunts.

SELECT idemprunt, idemprunteur
FROM emprunts FULL JOIN emprunteurs USING(idemprunteur)
ORDER BY idemprunteur ASC;

-- 6 bis --- KO
/*SELECT idemprunt, emprunteurs.idemprunteur
FROM emprunts FULL  JOIN emprunteurs 
on emprunts.id = emprunteurs.id;
*/
-- 6BIs
SELECT idemprunt, emprunteurs.idemprunteur 
FROM emprunts
       LEFT JOIN emprunteurs ON emprunts.idemprunteur = emprunteurs.idemprunteur
       UNION
       SELECT  idemprunt, emprunteurs.idemprunteur FROM emprunts
       RIGHT JOIN emprunteurs 
       using (idemprunteur)
       -- ON emprunts.idemprunteur = emprunteurs.idemprunteur
       -- where emprunts.idemprunteur is null
       ;
       
     
-- CORRECTION EXO 2 - VOIR FICHIER EMPLOYE.sql
