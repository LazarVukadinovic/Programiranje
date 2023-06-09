CREATE TABLE Dodatni_obilazak
(
    	ObilazakID INT PRIMARY KEY,
 	naziv VARCHAR(30) NOT NULL,
    	cena REAL NOT NULL
);
CREATE TABLE Turisticka_destinacija
(
   	DestinacijaID INT PRIMARY KEY,
 	NazivMesta VARCHAR(30) NOT NULL,
   	Drzava VARCHAR(30) NOT NULL,
    	CenaVize REAL 
    
);
CREATE TABLE Hotel
(
   	 HotelID INT PRIMARY KEY,
 	Naziv VARCHAR(50) NOT NULL,
   	Adresa VARCHAR(50) NOT NULL,
   	 Telefon VARCHAR(30) NOT NULL,
   	 Grad VARCHAR(30) NOT NULL,
   	 Drzava VARCHAR(30) NOT NULL,
    	Kategorija VARCHAR(30) NOT NULL
   	 
);
CREATE TABLE Klijent
(
   	 KlijentID INT PRIMARY KEY,
 	Ime VARCHAR(30) NOT NULL,
  	 Prezime VARCHAR(30) NOT NULL,
   	 Adresa VARCHAR(30) NOT NULL,
   	 Grad VARCHAR(30) NOT NULL,
   	 BrojTelefona VARCHAR(30)  NOT NULL
    	
);
CREATE TABLE Turisticki_aranzman
(
    UgovorID INT PRIMARY KEY,
    KlijentID INT NOT NULL REFERENCES Klijent(KlijentID),
 	HotelID INT NOT NULL REFERENCES Hotel(HotelID),
    DestinacijaID INT NOT NULL REFERENCES Turisticka_destinacija(DestinacijaID),
   	DatumPolaska DATE NOT NULL,
    DatumPovratka DATE NOT NULL,
    UkupnaCenaAranzmana REAL NOT NULL,
    TipPutovanja VARCHAR(30) NOT NULL,
    ObilazakID INT REFERENCES Dodatni_obilazak(ObilazakID)
);


CREATE TABLE Uplata(
	UgovorID INT REFERENCES Turisticki_aranzman(UgovorID),
	Rata INT NOT NULL,
	Iznos REAL NOT NULL,
	DatumUplate DATE NOT NULL,
	PRIMARY KEY(UgovorID, Rata)
);


INSERT INTO Dodatni_obilazak
VALUES (1,'Kapela Bišopa','50');


INSERT INTO Dodatni_obilazak
VALUES (2,'Voznja camcima kroz kanal','50');

INSERT INTO Dodatni_obilazak
VALUES (3,'Stonehenge','100');

INSERT INTO Dodatni_obilazak
VALUES (4,'Poseta Osaki','130');

INSERT INTO Dodatni_obilazak
VALUES (5,'Voznja brodom','10');

INSERT INTO Dodatni_obilazak
VALUES (6,'Obilazak nacionalnog muzeja','30');

INSERT INTO Dodatni_obilazak
VALUES (7,'Poseta Minhenu','160');






INSERT INTO Turisticka_destinacija
VALUES (1,'Madrid','Španija',null);

INSERT INTO Turisticka_destinacija
VALUES (2,'Venecija','Italija',null);

INSERT INTO Turisticka_destinacija
VALUES (3,'London','Velika Britanija', 140);

INSERT INTO Turisticka_destinacija
VALUES (4,'Tokyo','Japan', null);

INSERT INTO Turisticka_destinacija
VALUES (5,'Krf','Grčka', null);

INSERT INTO Turisticka_destinacija
VALUES (6,'New York','USA', 165);

INSERT INTO Turisticka_destinacija
VALUES (7,'Frankfurt','Nemačka', null);

INSERT INTO Turisticka_destinacija
VALUES (8,'Berlin','Nemačka', null);

INSERT INTO Turisticka_destinacija
VALUES (9,'Stokholm','Švedska', null);

INSERT INTO Turisticka_destinacija
VALUES (10,'Oslo','Norveška', null);

INSERT INTO Turisticka_destinacija
VALUES (11,'Kambera','Australija', 40);

INSERT INTO Turisticka_destinacija
VALUES (12,'Istanbul','Turska', null);

INSERT INTO Turisticka_destinacija
VALUES (13,'Pariz','Francuska', null);

INSERT INTO Turisticka_destinacija
VALUES (14,'Lyon','Francuska', null);

INSERT INTO Turisticka_destinacija
VALUES (15,'Tirana','Albanija', null);

INSERT INTO Turisticka_destinacija
VALUES (16,'Zagreb','Hrvatska', null);


INSERT INTO Turisticka_destinacija
VALUES (17,'Moskva','Rusija', null);

INSERT INTO Turisticka_destinacija
VALUES (18,'Sarajevo','Bosna i Hercegovina', null);

INSERT INTO Turisticka_destinacija
VALUES (19,'Dubai','UAE', null);

INSERT INTO Turisticka_destinacija
VALUES (20,'Atina','Grcka', null);



INSERT INTO Hotel
VALUES (1,'Axel Hotel Madrid','Atocha, 49, Madrid center, 28012 Madrid, Spain','+34 910 88 33 80','Madrid','Španija','hotel' );

INSERT INTO Hotel
VALUES (2,'Albergo al TiepoloSe deschide în fereastră nouă','Castello 4510 Campo SS. Venezia','+39 041 272 3311','Venecija','Italija','hotel' );

INSERT INTO Hotel
VALUES (3,'Earls Court East Serviced Apartments','40 Penywern Rd, London SW5 9SX','+44 20 7229 1011','London','Velika Britanija','apartman' );

INSERT INTO Hotel
VALUES (4,'APA Hotel Higashi Kabukicho Tower','TokyoShinjuku-ku Kabukicho 2-19-14','+81 3 5155 3252','Tokyo','Japan','hotel' );

INSERT INTO Hotel
VALUES (5,'Riviera Barbati Houses','Barbati Riviera Barbati 49100 Barbati','+30 2661 700770','Krf','Grčka','apartaman' );

INSERT INTO Hotel
VALUES (6,'Hotel Edison Times Square','228 W 47th St, New York, NY 10036','+1 212 840 5000','New York','USA','hotel' );

INSERT INTO Hotel
VALUES (7,'Metropolitan Hotel by Flemings','Muenchener Str. 15 · 60329 Frankfurt','+49 69 2691503400','Frankfurt','Nemačka','hotel' );

INSERT INTO Hotel
VALUES (8,'Hotel Gunia','Eisenacher Strasse 10 · 10777 Berlin',' +49 30-218-5940','Berlin','Nemačka','hotel' );

INSERT INTO Hotel
VALUES (9,'Skanstulls Boutique Hostel','135 Ringvaegen, 116 61, Stockholm',' +46 8 643 02 04','Stokholm','Švedska','hostel' );

INSERT INTO Hotel
VALUES (10,'BJØRVIKA APARTMENTS','Schweigaards Gate 15B, 0191 Oslo',' +47 486 05 333','Oslo','Norveška','apartman' );

INSERT INTO Hotel
VALUES (11,'Kambera House','22 Flegg Crescent Gordon ACT 2906, Australia','+02 61128002','Kambera','Australija','hotel' );

INSERT INTO Hotel
VALUES (12,'La Maison Story Hotel',' Aksakal Sokağı, Fatih, 34122 Istanbul','+509 281 31067','Istanbul','Turska','hotel' );

INSERT INTO Hotel
VALUES (13,'Austins Saint Lazare Hotel','26 Rue d Amsterdam, 75009 Paris','+33 1 48 74 48 71','Pariz','Francuska','hotel' );

INSERT INTO Hotel
VALUES (14,'Aparthotel Adagio Lyon Patio Confluence','50 Cours Charlemagne, 69002 Lyon','+04 37 23 16 04','Lyon','Francuska','apartman' );

INSERT INTO Hotel
VALUES (15,'Zeus Tirana Suite Deluxe','Rruga Papa Kristo Negovani, 1001 Tirana, Albania','+355 69 570 0007','Tirana','Albanija','hotel' );

INSERT INTO Hotel
VALUES (16,'Love Croatia Hostel-Mir Guesthouse Zagreb','Mesnichka Ulica 5 10000 Zagreb','+385 95 444 4012','Zagreb','Hrvatska','hostel' );


INSERT INTO Hotel
VALUES (17,'Hotel Metropol Moscow ','Teatralny Dr, 2, Hotel Metropol, Москва, 109012','+7 495 266 01 70','Moskva','Rusija','hotel' );

INSERT INTO Hotel
VALUES (18,'Novotel Sarajevo','Filipa Lastrića, Sarajevo, BiH, 71000','033 705-000','Sarajevo','Bosna i Hercegovina','hotel' );

INSERT INTO Hotel
VALUES (19,'Five Jumeirah Village','Jumeirah Village Circle, Dubai, UAE','+971 4 455 9999','Dubai','UAE','hotel' );

INSERT INTO Hotel
VALUES (20,'Palazzo del Senatore','Athens International Airport, Athens,190 19,Greece','+30 21 0354 4000','Atina','Grcka','hotel' );



INSERT INTO Klijent
VALUES (1,'Pera','Pupavac','Vojvode Stepe 66','Kraljevo','0602807419');

INSERT INTO Klijent
VALUES (2,'Anja','Djukic','Cara Dusana 67','Kraljevo','0605682802');

INSERT INTO Klijent
VALUES (3,'Mina','Djukic','Cara Dusana 67','Kraljevo','0654052541');

INSERT INTO Klijent
VALUES (4,'Nada','Popic','Cara Lazara 60','Kraljevo','0605682801');

INSERT INTO Klijent
VALUES (5,'Mika','Lazic','Cara Lazara 55','Nis', '0605682711');

INSERT INTO Klijent
VALUES (6,'Jovan','Petrovic','Dositejeva 4bb', 'Novi Sad', '0654452541');

INSERT INTO Klijent
VALUES (7,'Mara','Savic','Vojvode Stepe 16','Beograd','0602801409');

INSERT INTO Klijent
VALUES (8,'Ana','Jovcic','Heroja Maričića 23a','Beograd','0603682701');

INSERT INTO Klijent
VALUES (9,'Vojin','Maric','Vojvode Stepe 22','Beograd','0605803411');

INSERT INTO Klijent
VALUES (10,'Anka','Dupic','Cara Dusana 12','Beograd','0635382801');

INSERT INTO Klijent
VALUES (11,'Marija','Vojic','Cara  Lazara 68','Beograd','0624152521');

INSERT INTO Klijent
VALUES (12,'Nadja','Matic','Cara Lazara 11','Novi Sad','0622682302');

INSERT INTO Klijent
VALUES (13,'Olja','Lajlic','Cara Lazara 52','Novi Sad', '0631682711');

INSERT INTO Klijent
VALUES (14,'Jovan','Jovic','Dositejeva 45', 'Novi Sad', '0632452541');

INSERT INTO Klijent
VALUES (15,'Magdalena','Savic','Dositejeva 10','Beograd','0612801400');

INSERT INTO Klijent
VALUES (16,'Petar','Todic','Heroja Maričića 23a','Beograd','0602682700');

INSERT INTO Klijent
VALUES (17,'Vojislav','Marovic','Jug Bogdanova 22','Beograd','0633803311');

INSERT INTO Klijent
VALUES (18,'Olja','Veljic','Cara Dusana 10','Novi Sad','0633382800');

INSERT INTO Klijent
VALUES (19,'Marija','Maric','Jug Bogdanova 68','Smederevo','0604152401');

INSERT INTO Klijent
VALUES (20,'Mitar','Mitrovic','Cara Lazara 10','Smederevo','0602682102');

INSERT INTO Klijent
VALUES (21,'Olivera','Krasavac','Cara Dusana 77','Novi Sad', '0601682781');

INSERT INTO Klijent
VALUES (22,'Jovanka','Peklavac','Jug Bogdanova 33', 'Nis', '0602452541');

INSERT INTO Klijent
VALUES (23,'Valentina','Savic','Dositejeva 3','Beograd','0601801230');

INSERT INTO Klijent
VALUES (24,'Mitar','Vojic','Heroja Maričića 22a','Nis','0612682700');

INSERT INTO Klijent
VALUES (25,'Mitar','Marovic','Jug Bogdanova 22','Beograd','0623803310');

INSERT INTO Klijent
VALUES (26,'Marko','Vesic','Cara Lazara 7','Sombor','0602282800');

INSERT INTO Klijent
VALUES (27,'Marta','Bekic','Cara Lazara 8','Smederevo','0604152000');

INSERT INTO Klijent
VALUES (28,'Jovanka','Matic','Cara Dusana 10','Backa Palanka','0602682111');

INSERT INTO Klijent
VALUES (29,'Uros','Pakic','Jug Bogdanova 1','Sabac', '0601642741');

INSERT INTO Klijent
VALUES (30,'Marta','Jovanovic','Jug Bogdanova 13', 'Nis', '0602422541');

INSERT INTO Klijent
VALUES (31,'Ivana','Savic','Vladicin Han 3','Beograd','0602821220');

INSERT INTO Klijent
VALUES (32,'Miroslav','Vakovic','Heroja Maričića 11','Novi Sad','0612682720');

INSERT INTO Klijent
VALUES (33,'Ana','Micic','Jug Bogdanova 2','Nis','0633303431');

INSERT INTO Klijent
VALUES (34,'Relja','Oljic','Cara Dusana 7','Valjevo','0633382830');

INSERT INTO Klijent
VALUES (35,'Vesna','Kalenic','Jug Bogdanova 28','Prokuplje','0604122401');

INSERT INTO Klijent
VALUES (36,'Mina','Slavkovic','Cara Lazara 10','Subotica','0632682102');

INSERT INTO Klijent
VALUES (37,'Tara','Tadic','Cara Dusana 10','Kragujevac', '0601682751');

INSERT INTO Klijent
VALUES (38,'Zara','Zdravkovic','Jug Bogdanova 33', 'Kragujevac', '0602452531');

INSERT INTO Klijent
VALUES (39,'Pepa','Matovic','Dositejeva 13','Kragujevac','0601824355');

INSERT INTO Klijent
VALUES (40,'Vesna','Lalic','Heroja Maričića 15a','Kragujevac','0612446551');

INSERT INTO Klijent
VALUES (41,'Nada','Emanic','Jug Bogdanova 20','Nis','0633802211');

INSERT INTO Klijent
VALUES (42,'Vidra','Veljic','Knez Mihajlova 10','Nis','0631382330');

INSERT INTO Klijent
VALUES (43,'Tara','Makic','Knez Mihajlova 68','Smederevo','0601182400');

INSERT INTO Klijent
VALUES (44,'Stefan','Djordjevic','Cara Lazara 10','Novi Sad','0602667811');

INSERT INTO Klijent
VALUES (45,'Iva','Kotunic','Cara Dusana 77','Nis', '0601633478');


INSERT INTO Klijent
VALUES (46,'Janko','Jankovic','Heroja Maričića 12a','Kragujevac','0605667765');

INSERT INTO Klijent
VALUES (47,'Nadja','Simic','Jug Bogdanova 20','Nis','0623802210');

INSERT INTO Klijent
VALUES (48,'Mata','Veselinovic','Knez Mihajlova 19','Nis','0632182330');

INSERT INTO Klijent
VALUES (49,'Tara','Veselinovic','Balkanska 12','Beograd','0600182400');

INSERT INTO Klijent
VALUES (50,'Olja','Djordjevic','Balkanska 88','Beograd','0602667001');

INSERT INTO Klijent
VALUES (51,'Ivana','Kotunic','Balkanska 8','Beograd', '0601600478');






INSERT INTO Klijent
VALUES (52,'Ana','Mitic','Svetozara Markovića 2','Beograd','0600771709');

INSERT INTO Klijent
VALUES (53,'Dusan','Mitic','Svetozara Markovića 33','Beograd','0623808006');

INSERT INTO Klijent
VALUES (54,'Relja','Popovic','Svetozara Markovića 7','Beograd','0640080330');

INSERT INTO Klijent
VALUES (55,'Sara','Djokic','Svetozara Markovića 66','Beograd','0610083303');

INSERT INTO Klijent
VALUES (56,'Andrea','Lesevic','Svetozara Markovića 8','Beograd','0602466617');

INSERT INTO Klijent
VALUES (57,'Ognjen','Kostic','Svetozara Markovića 4','Beograd', '0606672230');




INSERT INTO Klijent
VALUES (58,'Anastasija','Ivic','Svetozara Radića 2','Beograd','0600551700');

INSERT INTO Klijent
VALUES (59,'Dusanka','Vojinovic','Svetozara Radića 5','Beograd','0625805005');

INSERT INTO Klijent
VALUES (60,'Anka','Pavlovic','Svetozara Radića 44','Beograd','0610510200');

INSERT INTO Klijent
VALUES (61,'Sanja','Djokic','Svetozara Radića 4','Beograd','0600585503');

INSERT INTO Klijent
VALUES (62,'Andrijana','Savic','Svetozara Miletića  4','Beograd','0609467710');

INSERT INTO Klijent
VALUES (63,'Marta','Babic','Svetozara Miletića 44','Beograd', '0606522130');

INSERT INTO Klijent
VALUES (64,'Andrijana','Veskovic','Svetozara Miletića 2','Beograd','0602071700');

INSERT INTO Klijent
VALUES (65,'Olga','Rataulovic','Svetozara Miletića  3','Beograd','0625604060');

INSERT INTO Klijent
VALUES (66,'Sonja','Jovanovic','Svetozara Miletića 5','Beograd','0640540440');

INSERT INTO Klijent
VALUES (67,'Milka','Matic','Hajdk Veljkova 66','Kraljevo','0610043403');

INSERT INTO Klijent
VALUES (68,'Una','Matovic','Hajduk Veljkova 8','Kragujevac','0604466817');

INSERT INTO Klijent
VALUES (69,'Petar','Markovic','Svetozara Miletića 5','Novi Sad', '0606671120');

INSERT INTO Klijent
VALUES (70,'Ognjen','Kostic','Svetozara Markovića 4','Beograd', '0606571130');


-----



INSERT INTO  Turisticki_aranzman
VALUES (1,1,1,1,convert(date,'2024/10/5'),convert(date,'2024/10/7'),2004, 	'nocenje',1);

INSERT INTO  Turisticki_aranzman
VALUES (2,2,1,1,convert(date,'2023/1/8'),convert(date,'2023/1/16'),2004, 'nocenje 	sa doruckom',1);


INSERT INTO  Turisticki_aranzman
VALUES (3,3,1,1,convert(date,'2023/10/1'),convert(date,'2023/10/9'),1984, 'nocenje 	sa doruckom',null);




INSERT INTO  Turisticki_aranzman
VALUES (4,4,2,2,convert(date,'2023/8/1'),convert(date,'2023/8/18'),1570, 'all 	inclusive',2);

INSERT INTO  Turisticki_aranzman
VALUES 	(5,5,2,2,convert(date,'2023/8/1'),convert(date,'2023/8/18'),1570,'nocenje',2);

INSERT INTO  Turisticki_aranzman
VALUES (6,6,2,2,convert(date,'2023/8/1'),convert(date,'2023/8/18'),2520, 	'nocenje',null);



INSERT INTO  Turisticki_aranzman
VALUES (7,5,2,2,convert(date,'2023/5/4'),convert(date,'2023/5/7'),270, 	'nocenje',null);

INSERT INTO  Turisticki_aranzman
VALUES (8,6,2,2,convert(date,'2023/7/14'),convert(date,'2023/7/18'),220, 	'nocenje',null);

INSERT INTO  Turisticki_aranzman
VALUES (9,9,2,2,convert(date,'2023/8/22'),convert(date,'2023/8/27'),320, 	'nocenje',2);


INSERT INTO  Turisticki_aranzman
VALUES (10,7,3,3,convert(date,'2024/5/25'),convert(date,'2024/6/1'),3870, 	'nocenje',3);

INSERT INTO Turisticki_aranzman
VALUES (11,8,4,4,convert(date,'2024/10/22'),convert(date,'2024/10/26'),3220, 		'nocenje',4);

INSERT INTO Turisticki_aranzman
VALUES (12,10,5,5,convert(date,'2024/10/10'),convert(date,'2024/10/11'),220, 		'jednodnevni',null);

INSERT INTO Turisticki_aranzman
VALUES (13,10,8,8,convert(date,'2024/10/1'),convert(date,'2024/10/11'),4220, 		'nocenje sa doruckom',null);



INSERT INTO  Turisticki_aranzman
VALUES (14,13,3,3,convert(date,'2023/12/20'),convert(date,'2023/12/29'),3870, 	'nocenje',3);

INSERT INTO Turisticki_aranzman
VALUES (15,12,4,4,convert(date,'2024/4/12'),convert(date,'2024/4/19'),3020, 'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (16,11,5,5,convert(date,'2024/12/10'),convert(date,'2024/12/11'),220, 'jednodnevni',null);


INSERT INTO  Turisticki_aranzman
VALUES (17,15,6,6,convert(date,'2023/6/10'),convert(date,'2023/6/19'),2870, 	'nocenje',6);

INSERT INTO Turisticki_aranzman
VALUES (18,14,7,7,convert(date,'2024/6/12'),convert(date,'2024/6/19'),2220, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (19,16,8,8,convert(date,'2024/10/9'),convert(date,'2024/10/18'),3220, 	'nocenje',null);


INSERT INTO  Turisticki_aranzman
VALUES (20,17,6,6,convert(date,'2024/3/11'),convert(date,'2024/3/23'),3870, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (21,18,7,7,convert(date,'2025/6/10'),convert(date,'2025/6/19'),2500, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (22,19,8,8,convert(date,'2023/10/19'),convert(date,'2023/10/28'),4220, 	'	nocenje',null);



INSERT INTO  Turisticki_aranzman
VALUES (23,20,9,9,convert(date,'2023/3/10'),convert(date,'2023/3/23'),1850, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (24,21,10,10,convert(date,'2023/6/10'),convert(date,'2023/6/18'),2880, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (25,22,11,11,convert(date,'2023/6/19'),convert(date,'2023/6/28'),4220, 	'nocenje',null);

INSERT INTO  Turisticki_aranzman
VALUES (26,23,12,12,convert(date,'2024/3/11'),convert(date,'2024/3/23'),3870, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (27,24,13,13,convert(date,'2025/6/10'),convert(date,'2025/6/19'),2500, 	'nocenje',null);



INSERT INTO Turisticki_aranzman
VALUES (28,25,14,14,convert(date,'2023/10/10'),convert(date,'2023/10/20'),4220, 	'all inclusive',null);

INSERT INTO  Turisticki_aranzman
VALUES (29,26,15,15,convert(date,'2024/3/11'),convert(date,'2024/3/23'),3770, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (30,27,16,16,convert(date,'2023/6/10'),convert(date,'2023/6/19'),3780, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (31,28,15,15,convert(date,'2024/1/19'),convert(date,'2024/1/28'),6700, 'all 	inclusive',null);



INSERT INTO Turisticki_aranzman
VALUES (32,29,14,14,convert(date,'2024/1/19'),convert(date,'2024/1/28'),4200, 	'nocenje sa doruckom',null);

INSERT INTO  Turisticki_aranzman
VALUES (33,30,13,13,convert(date,'2024/3/11'),convert(date,'2024/3/23'),7870, '	nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (34,31,12,12,convert(date,'2023/5/1'),convert(date,'2023/5/19'),6500, 	'nocenje sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (35,32,11,11,convert(date,'2024/1/10'),convert(date,'2024/1/18'),5620, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (36,33,8,8,convert(date,'2024/1/6'),convert(date,'2024/1/11'),2000, 'nocenje 	sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (37,34,9,9,convert(date,'2024/10/1'),convert(date,'2024/10/11'),3000, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (38,35,14,14,convert(date,'2024/10/10'),convert(date,'2024/10/18'),4698, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (39,36,15,15,convert(date,'2024/6/6'),convert(date,'2024/6/11'),3600, 	'nocenje sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (40,37,16,16,convert(date,'2024/4/1'),convert(date,'2024/4/11'),3019, 	'nocenje sa doruckom',null);



INSERT INTO Turisticki_aranzman
VALUES (41,38,15,15,convert(date,'2024/10/10'),convert(date,'2024/10/18'),5000, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (42,39,15,15,convert(date,'2024/6/6'),convert(date,'2024/6/11'),2400, 	'nocenje sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (43,40,11,11,convert(date,'2024/4/1'),convert(date,'2024/4/11'),2029, 	'nocenje sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (44,41,11,11,convert(date,'2024/10/10'),convert(date,'2024/10/18'),5698, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (45,42,13,13,convert(date,'2024/6/6'),convert(date,'2024/6/13'),3080, 	'nocenje sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (46,43,4,4,convert(date,'2024/4/1'),convert(date,'2024/5/17'),4099, 'nocenje 	sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (47,44,1,1,convert(date,'2024/7/10'),convert(date,'2024/7/18'),1608, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (48,45,7,7,convert(date,'2024/6/1'),convert(date,'2024/6/10'),2480, 'nocenje 	sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (49,46,5,5,convert(date,'2024/7/10'),convert(date,'2024/7/18'),1608, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (50,47,10,10,convert(date,'2018/6/1'),convert(date,'2018/6/10'),2080, 		'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (51,48,13,13,convert(date,'2020/6/6'),convert(date,'2020/6/10'),2080, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (52,49,14,14,convert(date,'2019/4/1'),convert(date,'2019/5/17'),4099, 		'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (53,50,5,5,convert(date,'2000/5/10'),convert(date,'2000/5/17'),1208, 	'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (54,51,10,10,convert(date,'2018/2/1'),convert(date,'2018/2/10'),2080, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (55,52,1,1,convert(date,'2020/4/6'),convert(date,'2020/4/14'),2080, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (56,53,4,4,convert(date,'2019/4/1'),convert(date,'2019/4/10'),4099, 'nocenje 	sa doruckom',null);




INSERT INTO Turisticki_aranzman
VALUES (57,54,10,10,convert(date,'2017/2/1'),convert(date,'2017/2/10'),1050, 	'nocenje',null);


INSERT INTO Turisticki_aranzman
VALUES (58,55,11,11,convert(date,'2022/4/6'),convert(date,'2022/4/14'),2000, 	'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (59,56,14,14,convert(date,'2023/4/1'),convert(date,'2023/4/10'),3000, 	'nocenje sa doruckom',null);






INSERT INTO Turisticki_aranzman
VALUES (60,55,10,10,convert(date,'2023/5/29'),convert(date,'2023/6/3'),2000, 		'nocenje',null);


INSERT INTO Turisticki_aranzman
VALUES (61,56,12,12,convert(date,'2023/5/16'),convert(date,'2023/5/19'),2060, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (62,57,15,15,convert(date,'2023/5/10'),convert(date,'2023/5/19'),2059, 		'nocenje sa doruckom',null);


INSERT INTO Turisticki_aranzman
VALUES (63,58,17,17,convert(date,'2023/5/28'),convert(date,'2023/6/4'),2000, 		'nocenje',null);


INSERT INTO Turisticki_aranzman
VALUES (64,59,20,20,convert(date,'2023/5/6'),convert(date,'2013/5/14'),2060, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (65,60,19,19,convert(date,'2023/6/10'),convert(date,'2023/6/19'),2059, 		'nocenje sa doruckom',null);




INSERT INTO Turisticki_aranzman
VALUES (66,61,18,18,convert(date,'2023/6/1'),convert(date,'2023/6/10'),2000, 		'nocenje',null);


INSERT INTO Turisticki_aranzman
VALUES (67,62,19,19,convert(date,'2023/5/24'),convert(date,'2023/5/29'),2060, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (68,63,18,18,convert(date,'2023/5/18'),convert(date,'2023/5/24'),2059, 		'nocenje sa doruckom',null);

INSERT INTO Turisticki_aranzman
VALUES (69,62,18,18,convert(date,'2023/5/19'),convert(date,'2023/5/29'),2060, 		'nocenje',null);

INSERT INTO Turisticki_aranzman
VALUES (70,63,17,17,convert(date,'2023/5/20'),convert(date,'2023/6/1'),2059, 		'nocenje sa doruckom',null);

---
INSERT INTO Uplata
VALUES (1,1,1004,convert(date,'2023/4/1'));

INSERT INTO Uplata
VALUES (1,2,500,convert(date,'2023/4/10'));



INSERT INTO Uplata
VALUES (2,1,1004,convert(date,'2022/12/1'));

INSERT INTO Uplata
VALUES (2,2,500,convert(date,'2023/1/1'));

INSERT INTO Uplata
VALUES (2,3,500,'2023/1/10');


INSERT INTO Uplata
VALUES (3,1,1084,convert(date,'2022/12/1'));


INSERT INTO Uplata
VALUES (4,1,184,convert(date,'2022/12/10'));

INSERT INTO Uplata
VALUES (4,2,104,convert(date,'2023/12/1'));

INSERT INTO Uplata
VALUES (4,3,504,convert(date,'2023/1/12'));



INSERT INTO Uplata
VALUES (5,1,204,convert(date,'2022/11/10'));

INSERT INTO Uplata
VALUES (5,2,104,convert(date,'2023/3/5'));

INSERT INTO Uplata
VALUES (5,3,504,convert(date,'2023/4/7'));



INSERT INTO Uplata
VALUES (6,1,2000,convert(date,'2022/10/9'));

INSERT INTO Uplata
VALUES (6,2,502,convert(date,'2023/4/5'));


INSERT INTO Uplata
VALUES (7,1,270,convert(date,'2023/3/10'));

INSERT INTO Uplata
VALUES (8,1,220,convert(date,'2023/2/10'));


INSERT INTO Uplata
VALUES (9,1,100,convert(date,'2023/2/5'));



INSERT INTO Uplata
VALUES (10,1,1000,convert(date,'2023/2/10'));

INSERT INTO Uplata
VALUES (10,2,1000,convert(date,'2023/3/10'));

INSERT INTO Uplata
VALUES (11,1,1000,convert(date,'2023/4/1'));

INSERT INTO Uplata
VALUES (11,2,1000,convert(date,'2023/4/4'));


INSERT INTO Uplata
VALUES (13,1,1000,convert(date,'2023/1/4'));

INSERT INTO Uplata
VALUES (13,2,600,convert(date,'2023/3/1'));

INSERT INTO Uplata
VALUES (13,3,600,convert(date,'2023/4/7'));


INSERT INTO Uplata
VALUES (14,1,1500,convert(date,'2023/1/4'));


INSERT INTO Uplata
VALUES (15,1,1000,convert(date,'2023/2/14'));


INSERT INTO Uplata
VALUES (16,1,100,convert(date,'2023/1/4'));



INSERT INTO Uplata
VALUES (17,1,690,convert(date,'2023/8/4'));


INSERT INTO Uplata
VALUES (18,1,1180,convert(date,'2023/1/4'));



INSERT INTO Uplata
VALUES (20,1,780,convert(date,'2023/1/4'));

INSERT INTO Uplata
VALUES (20,2,1000,convert(date,'2023/3/24'));

INSERT INTO Uplata
VALUES (20,3,100,convert(date,'2023/4/8'));


INSERT INTO Uplata
VALUES (21,1,780,convert(date,'2023/1/4'));

INSERT INTO Uplata
VALUES (22,1,1000,convert(date,'2023/3/24'));

INSERT INTO Uplata
VALUES (23,1,200,convert(date,'2023/4/8'));



INSERT INTO Uplata
VALUES (24,1,780,convert(date,'2022/10/4'));

INSERT INTO Uplata
VALUES (25,1,1000,convert(date,'2023/3/27'));

INSERT INTO Uplata
VALUES (26,1,200,convert(date,'2023/4/2'));


INSERT INTO Uplata
VALUES (27,1,780,convert(date,'2023/2/13'));

INSERT INTO Uplata
VALUES (28,2,700,convert(date,'2023/2/17'));

INSERT INTO Uplata
VALUES (29,3,890,convert(date,'2023/4/3'));



INSERT INTO Uplata
VALUES (30,1,780,convert(date,'2023/1/4'));

INSERT INTO Uplata
VALUES (31,1,1200,convert(date,'2023/3/2'));

INSERT INTO Uplata
VALUES (32,1,1100,convert(date,'2023/4/1'));



INSERT INTO Uplata
VALUES (33,1,1780,convert(date,'2023/1/1'));

INSERT INTO Uplata
VALUES (34,1,2000,convert(date,'2023/3/20'));

INSERT INTO Uplata
VALUES (35,1,1100,convert(date,'2023/4/7'));




INSERT INTO Uplata
VALUES (36,1,1080,convert(date,'2022/1/11'));

INSERT INTO Uplata
VALUES (37,1,1000,convert(date,'2022/3/21'));

INSERT INTO Uplata
VALUES (38,1,1000,convert(date,'2022/4/17'));





INSERT INTO Uplata
VALUES (39,1,80,convert(date,'2023/1/14'));

INSERT INTO Uplata
VALUES (39,2,200,convert(date,'2023/3/22'));

INSERT INTO Uplata
VALUES (39,3,100,convert(date,'2023/4/1'));



INSERT INTO Uplata
VALUES (40,1,900,convert(date,'2022/11/10'));

INSERT INTO Uplata
VALUES (41,1,900,convert(date,'2023/2/22'));

INSERT INTO Uplata
VALUES (42,1,900,convert(date,'2023/2/1'));



INSERT INTO Uplata
VALUES (43,1,600,convert(date,'2022/11/19'));

INSERT INTO Uplata
VALUES (44,1,700,convert(date,'2021/8/22'));

INSERT INTO Uplata
VALUES (45,1,600,convert(date,'2022/12/1'));



INSERT INTO Uplata
VALUES (46,1,600,convert(date,'2022/12/19'));

INSERT INTO Uplata
VALUES (47,1,760,convert(date,'2021/8/24'));

INSERT INTO Uplata
VALUES (48,1,60,convert(date,'2022/12/13'));




INSERT INTO Uplata
VALUES (49,1,600,convert(date,'2022/12/19'));

INSERT INTO Uplata
VALUES (50,1,760,convert(date,'2022/11/24'));

INSERT INTO Uplata
VALUES (51,1,160,convert(date,'2022/12/23'));




INSERT INTO Uplata
VALUES (52,1,990,convert(date,'2023/1/19'));

INSERT INTO Uplata
VALUES (53,1,770,convert(date,'2023/1/24'));

INSERT INTO Uplata
VALUES (54,1,160,convert(date,'2022/10/13'));



INSERT INTO Uplata
VALUES (55,1,600,convert(date,'2022/10/19'));

INSERT INTO Uplata
VALUES (56,1,760,convert(date,'2021/11/24'));

INSERT INTO Uplata
VALUES (56,2,40,convert(date,'2022/11/24'));


INSERT INTO Uplata
VALUES (57,1,160,convert(date,'2022/2/23'));

INSERT INTO Uplata
VALUES (57,2,160,convert(date,'2022/3/23'));

INSERT INTO Uplata
VALUES (57,3,60,convert(date,'2022/4/23'));



INSERT INTO Uplata
VALUES (58,1,690,convert(date,'2023/1/10'));

INSERT INTO Uplata
VALUES (59,1,120,convert(date,'2023/1/29'));

INSERT INTO Uplata
VALUES (60,1,660,convert(date,'2023/4/10'));




INSERT INTO Uplata
VALUES (61,1,290,convert(date,'2023/4/10'));

INSERT INTO Uplata
VALUES (62,1,800,convert(date,'2023/3/29'));

INSERT INTO Uplata
VALUES (63,1,360,convert(date,'2023/4/10'));



INSERT INTO Uplata
VALUES (64,1,690,convert(date,'2023/2/20'));

INSERT INTO Uplata
VALUES (65,1,120,convert(date,'2023/2/21'));
INSERT INTO Uplata
VALUES (65,2,260,convert(date,'2023/4/10'));

INSERT INTO Uplata
VALUES (66,1,260,convert(date,'2023/4/10'));
INSERT INTO Uplata
VALUES (66,2,260,convert(date,'2023/5/10'));


INSERT INTO Uplata
VALUES (67,1,630,convert(date,'2023/2/20'));

INSERT INTO Uplata
VALUES (68,1,130,convert(date,'2023/2/21'));

INSERT INTO Uplata
VALUES (68,2,600,convert(date,'2023/3/21'));

INSERT INTO Uplata
VALUES (69,1,130,convert(date,'2023/4/10'));

INSERT INTO Uplata
VALUES (69,2,130,convert(date,'2023/5/10'));

INSERT INTO Uplata
VALUES (69,3,130,convert(date,'2023/5/11'));


INSERT INTO Uplata
VALUES (70,1,620,convert(date,'2023/4/10'));

INSERT INTO Uplata
VALUES (70,2,100,convert(date,'2023/5/8'));

Create table Tip_Sobe
(
	tip_sobeID INT Primary key,
	naziv Varchar(40) NOT NULL
)

Create table Smestaj
(
	HotelID int not null REFERENCES Hotel(HotelID),
	BrojSobe INT not null,
 	spratnost Varchar(40) NOT NULL,
	brojKreveta INT not null,
	tip_sobeID int not null REFERENCES Tip_Sobe(tip_sobeID),
	opis Varchar(40),
	PRIMARY KEY(HotelID, BrojSobe)
   	
)

Create table Nacin_placanja
(
 nacinID int Primary key,
 naziv Varchar(40) not null
)

ALTER TABLE Uplata
ADD nacinID  int FOREIGN KEY (nacinID) REFERENCES Nacin_placanja(nacinID);


