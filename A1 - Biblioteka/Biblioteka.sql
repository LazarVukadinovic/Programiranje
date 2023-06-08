﻿CREATE TABLE Knjiga 
( 
KnjigaID INT PRIMARY KEY, 
UDK NVarchar(30), 
ISBN NVarchar(50), 
Naziv NVarchar(100) 
) 
CREATE TABLE Autor 
( 
AutorID INT PRIMARY KEY, 
Ime NVarchar(30), 
Prezime NVarchar(50), 
Adresa NVarchar(100) 
) 
CREATE TABLE Citalac 
( 
CitalacID INT PRIMARY KEY, 
Maticni_broj NVarchar(30), 
Ime NVarchar(30), 
Prezime NVarchar(50), 
Mesto NVarchar(100), 
Adresa NVarchar(100), 
Telefon NVarchar(30) 
) 
CREATE TABLE Knjiga_Autor 
( 
KnjigaID INT NOT NULL REFERENCES Knjiga(KnjigaID),
AutorID INT NOT NULL REFERENCES Autor(AutorID),
CONSTRAINT PK_Knjig_Aut PRIMARY KEY (KnjigaID,AutorID)
) 
CREATE TABLE Na_citanju 
( 
KnjigaID INT NOT NULL REFERENCES Knjiga(KnjigaID),
CitalacID INT NOT NULL REFERENCES Citalac(CitalacID),
Datum_uzimanja  DATE NOT NULL, 
Datum_vracanja DATE,
CONSTRAINT PK_Na_citanju PRIMARY KEY (KnjigaID,CitalacID,Datum_uzimanja)
) 
CREATE TABLE Primerak
(
KnjigaID INT NOT NULL REFERENCES Knjiga(KnjigaID),
PrimerakID INT NOT NULL,
CONSTRAINT PK_Primerak PRIMARY KEY (KnjigaID,PrimerakID) 
)
CREATE TABLE Izdavac
(
IzdavacID INT PRIMARY KEY, 
NazivIzdavaca NVarchar(30) NOT NULL,
Adresa NVarchar(30) NOT NULL,
)
CREATE TABLE Knjiga_Izdavac
(
IzdavacID INT NOT NULL REFERENCES Izdavac(IzdavacID),
KnjigaID INT NOT NULL REFERENCES Knjiga(KnjigaID),
Godina INT,
CONSTRAINT PK_Knj_Izd PRIMARY KEY (IzdavacID,KnjigaID)
)

INSERT INTO KNJIGA
VALUES(1, '821.111(73)-31','978-86-521-1857-1','Ubiti pticu rugalicu');
INSERT INTO KNJIGA
VALUES(2 ,'821.111 (73)-31', '978-86-7436-502-1','Lovac na zmajeve');
INSERT INTO KNJIGA
VALUES(3, '821.111 (73)-31','978-86-521-1227-2' ,'A planine odjeknuše');
INSERT INTO KNJIGA
VALUES(4,'821.163.41-31' ,'978-86-521-0163-4','Konstantinovo raskršće');
INSERT INTO KNJIGA
VALUES(5, '821.163.41-31','978-86-521-3806-7', 'Ljudi bez grobova');
INSERT INTO KNJIGA
VALUES(6 , '821.134.3-31','978-86-521-1938-7', 'Zapis o pronicljivosti');
INSERT INTO KNJIGA
VALUES(7 ,'821.163.41-31','978-86-7702-873-2' ,'Mamac');
INSERT INTO KNJIGA
VALUES(8 ,'886.1/.2-31', '86-379-0467-X', 'Gori Morava');
INSERT INTO KNJIGA
VALUES(9, '821.163.41-31', '978-86-521-1749-9', 'Kuća sećanja i zaborava');
INSERT INTO KNJIGA
VALUES(10, '821.163.41(497.6)-31', '978-86-80830-39-1', 'Uhvati zeca');
INSERT INTO KNJIGA
VALUES(11, '821.581-31', '978-86-521-1173-2', 'Promena');
INSERT INTO KNJIGA
VALUES(12, '886.1/.2-84',  '86-81883-14-3', 'Znakovi pored puta' );
INSERT INTO KNJIGA
VALUES(13, '886.1/.2.09-32', '86-83583-09-2', 'Most na Žepi');
INSERT INTO KNJIGA
VALUES(14, '886.1/.2-82', '978-86-521-4206-4', 'Lanjski snegovi');
INSERT INTO KNJIGA
VALUES(15, '886.1/.2-82', '978-86-521-4360-3', 'Zoe');
INSERT INTO KNJIGA
VALUES(16, '886.1/.2-82', '978-86-521-4017-6', 'Una');
INSERT INTO KNJIGA
VALUES(17 , '886.1/.2-82', '978-86-521-3940-8', 'Ada');
INSERT INTO KNJIGA
VALUES(18, '886.1/.2-82', '978-86-521-3649-0', 'Provincijalac');
INSERT INTO KNJIGA
VALUES(19, '886.1/.2-82', '978-86-521-3583-7', 'Foliranti');
INSERT INTO KNJIGA
VALUES(20, '886.1/.2-82','978-86-803-7446-8','Uspomene jednog crtača');
INSERT INTO KNJIGA
VALUES(21, '886.1/.2-82', '978-86-100-0972-9', 'Derviš i smrt');
INSERT INTO KNJIGA
VALUES(22, '886.1/.2-82', '978-86-100-3141-6', 'Most od riječi');
INSERT INTO KNJIGA
VALUES(23, '886.1/.2-82', '978-86-100-2455-5', 'Sjećanja');
INSERT INTO KNJIGA
VALUES(24, '886.1/.2-82', '978-86-757-2156-7', 'Tvrđava');
INSERT INTO KNJIGA
VALUES(25, '886.1/.2-82', '978-86-757-2155-0', 'Ostrvo');
INSERT INTO KNJIGA
VALUES (26, '843.32/.67-82', '978-86-757-0000-0', 'Stranac');
INSERT INTO KNJIGA
VALUES (27, '886.32/.67-54', '978-86-757-0420-7', 'Iščezla Albertina');
INSERT INTO KNJIGA
VALUES (28, '765.22/.11-82', '111-43-757-8760-9', 'Proces');
INSERT INTO KNJIGA
VALUES (29, '886.32/.35-82', '654-86-757-7600-3', 'Mali princ');
INSERT INTO KNJIGA
VALUES (30, '886.32/.67-34', '978-86-757-0000-0', 'Narodna sudbina');
INSERT INTO KNJIGA
VALUES (31, '886.32/.76-82', '957-21-757-0032-0', 'Putovanje kraja noći ');
INSERT INTO KNJIGA
VALUES (32, '87342/.67-82', '978-86-757-0345-1', 'Plodovi gneva');
INSERT INTO KNJIGA
VALUES (33, '111.32/.67-82', '543-98-757-0120-5', 'Za kim zvona zvone');
INSERT INTO KNJIGA
VALUES (34, '822.32/.67-82', '978-86-757-0013-2', 'Pena dana ');
INSERT INTO KNJIGA
VALUES (35, '123.32/.67-11', '543-56-757-9990-0', 'Čekajući Godoa');
INSERT INTO KNJIGA
VALUES (36, '886.32/.45-82', '566-86-757-1490-2', 'Biće i ništavilo');
INSERT INTO KNJIGA
VALUES (37, '877.32/.67-82', '543-86-757-9990-0', 'Zločin i kazna');
INSERT INTO KNJIGA
VALUES (38, '906.32/.27-86', '583-76-757-9340-4', 'Ime ruže');
INSERT INTO KNJIGA
VALUES (39, '886.32/.32-82', '543-86-757-9990-0', 'Reči');
INSERT INTO KNJIGA
VALUES (40, '877.44/.31-82', '543-86-757-6784-3', 'Ćelava pevačica');
INSERT INTO KNJIGA
VALUES (41, '877.32/.67-82', '543-66-757-9990-7', 'Lolita');
INSERT INTO KNJIGA
VALUES (42, '456.32/.67-82', '222-87-757-9243-5', 'Tatarska pustinja');
INSERT INTO KNJIGA
VALUES (43, '877.32/.67-44', '783-36-757-9543-7', 'Kovači lažnog novca');
INSERT INTO KNJIGA
VALUES (44, '876.11/.41-82', '543-86-757-9345-2', 'Lepotica gospodnja');
INSERT INTO KNJIGA
VALUES (45, '254.42/.62-82', '456-11-757-1735-0', 'Buka i bes');
INSERT INTO KNJIGA
VALUES (46, '254.42/.62-72', '262-11-757-7654-3', 'Tereza');
INSERT INTO KNJIGA
VALUES (47, '555.42/.62-66', '262-43-757-1735-5', 'Caca u metrou');
INSERT INTO KNJIGA
VALUES (48, '254.42/.44-82', '262-11-757-5432-7', 'Pomešana osjećanja');
INSERT INTO KNJIGA
VALUES (49, '254.42/.62-82', '543-77-757-1735-0', 'Prohujalo sa vihorom');
INSERT INTO KNJIGA
VALUES (50, '265442/.11-82', '345-80-757-2345-9', 'Ljubitelj lejdi');
INSERT INTO KNJIGA
VALUES (51, '254.42/.62-21', '992-11-757-12345-0', 'Čarobni breg');
INSERT INTO KNJIGA
VALUES (52, '254.42/.77-32', '992-11-757-42345-0', 'Dobar dan, tugo');
INSERT INTO KNJIGA
VALUES (53, '150.42/.06-82', '123-03-757-12345-2','Ćutanje mora');
INSERT INTO KNJIGA
VALUES (54, '105.42/.62-43', '992-06-757-99945-0', 'Život, uputstvo za upotrebu');
INSERT INTO KNJIGA
VALUES (55, '250.42/.62-31', '992-11-757-12345-4', 'Baskervilski pas');
INSERT INTO KNJIGA
VALUES (56, '254.42/.62-82', '654-01-757-95234-0', 'Pod suncem Satane');
INSERT INTO KNJIGA
VALUES (57, '204.42/.62-82', '992-46-757-12345-6', 'Prestonica bola');
INSERT INTO KNJIGA
VALUES (58, '254.42/.22-82', '345-72-757-80045-0', 'Balada o Slanom moru');
INSERT INTO KNJIGA
VALUES (59, '39042/.05-11', '872-11-757-12345-8', ' Obala Sirta');
INSERT INTO KNJIGA
VALUES (60, '303.42/.62-33', '199-54-757-20045-8', 'Sopstvena soba');
INSERT INTO KNJIGA
VALUES (61, '886.32/.67-34', '543-15-757-9270-6', ' Alkoholi');
INSERT INTO KNJIGA
VALUES (62, '326.32/.67-45', '534-86-757-9990-0', 'Dnevnik Ane Frank');
INSERT INTO KNJIGA
VALUES (63, '886.32/.17-67', '543-13-757-9150-8', 'Tužni tropi');
INSERT INTO KNJIGA
VALUES (64, '756.32/.67-32', '531-55-757-9130-9', 'Vrli novi svijet');
INSERT INTO KNJIGA
VALUES (65, '753.32/.67-82', '519-44-757-9990-9', 'Životinjska farma');
insert into knjiga 
values(100, '001', '978-86-521-4017-6', 'Onda');
insert into knjiga 
values(101, '002', '978-86-521-3940-8', 'Foliranti');
insert into knjiga 
values(102, '003', '978-86-521-4360-3', 'Knjiga žalbi');
insert into knjiga 
values(103, '004', '978-86-521-3583-7', 'Skitam i pričam');
insert into knjiga 
values(104, '005', '978-86-521-3649-0', 'Provincijalac');
insert into knjiga 
values(105, '006', '978-86-521-4371-9', 'Hajduk u četiri slike');
insert into knjiga 
values(106, '007', '978-86-521-3863-0', 'Ne brinite za sutra');
insert into knjiga 
values(107, '008', '978-86-521-3561-5', 'Hajduk sa druge strane');
insert into knjiga 
values(108, '009', '978-86-521-3148-8', 'Hajduk iz Beograda');
insert into knjiga 
values(109, '010', '978-86-521-4404-4', 'Rečnik beskrajnog odrastanja');
insert into knjiga 
values(110, '011', '978-86-521-3604-9', 'Okean od papira 1: Knjiga Moći');
insert into knjiga 
values(111, '012', '978-86-521-3672-8', 'Okean od papira 2: Muzej izmišljenih bića');
insert into knjiga 
values(112, '013', '978-86-521-2671-2', 'Azbuka mog života');
insert into knjiga 
values(113, '014', '978-86-521-3600-1', 'Glad');
insert into knjiga 
values(114, '015', '978-86-521-3509-7', 'Dnevnik druge zime');
insert into knjiga 
values(115, '016', '978-86-521-4115-9', 'Fric i Dobrila');
insert into knjiga 
values(116, '017', '978-86-521-3379-6', 'Komo');
insert into knjiga 
values(117, '018', '978-86-521-4405-1', 'Bajka o Bajalicama');
insert into knjiga 
values(118, '019', '978-86-521-4223-1', 'Španska čizma');
insert into knjiga 
values(119, '020', '978-86-521-4312-2', 'Dripačka rapsodija');
insert into knjiga 
values(120, '021', '978-86-521-4322-1', 'Moj put istine');
insert into knjiga 
values(121, '022', '978-86-521-3985-9', 'Sarajka u Beogradu i druge drame');
insert into knjiga 
values(122, '023', '978-86-521-2881-5', 'Bukirano');
insert into knjiga 
values(123, '024', '978-86-521-3427-4', 'Ubisvet');
insert into knjiga 
values(124, '025', '978-86-521-4381-8', 'Mapa oproštaja');



INSERT INTO AUTOR
VALUES(101, 'Harper', 'Li','Monrovil, Alabama, SAD');
INSERT INTO AUTOR
VALUES(102, 'Haled', 'Hoseini', 'SAD');
INSERT INTO AUTOR
VALUES(103, 'Dejan', 'Stojiljković',  'Niš, Srbija');
INSERT INTO AUTOR
VALUES(104, 'Enes', 'Halilović', 'Novi Pazar, Srbija');
INSERT INTO AUTOR
VALUES(105, 'David', 'Albahari', 'Kalgari, Kanada');
INSERT INTO AUTOR
VALUES(106, 'Žoze', 'Saramago', 'Lisabon, Portugal');
INSERT INTO AUTOR
VALUES(107, 'Dragoslav', 'Mihailović', 'Ćuprija, Srbija');
INSERT INTO AUTOR
VALUES(108, 'Filip', 'David', 'Beograd, Srbija');
INSERT INTO AUTOR
VALUES(109, 'Lana', 'Bastasić', 'Zagreb, Hrvatska');
INSERT INTO AUTOR
VALUES(110, 'Mo',  'Jen', 'Kina');
INSERT INTO AUTOR
VALUES(111, 'Ivo', 'Andrić', 'Beograd, Srbija');
INSERT INTO AUTOR
VALUES(112, 'Momo', 'Kapor', 'Beograd, Srbija');
INSERT INTO AUTOR
VALUES(113, 'Meša', 'Selimović', 'Beograd, Srbija');
INSERT INTO AUTOR
VALUES (200, 'Alber','Kami', 'Francuska') ;
INSERT INTO AUTOR
VALUES (201, 'Marsel','Prust', 'Francuska') ;
INSERT INTO AUTOR
VALUES (202, 'Franc','Kafka ', 'Portugal') ;
INSERT INTO AUTOR
VALUES (203, ' Antoan ','de Sent Egziperi ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (204, 'Andre','Malro ', 'Portugal') ;
INSERT INTO AUTOR
VALUES (205, 'Luj-Ferdinand ','Selin  ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (206, 'Džon','Stajnbek ', 'SAD') ;
INSERT INTO AUTOR
VALUES (207, 'Ernest','Hemingvej  ', 'SAD') ;
INSERT INTO AUTOR
VALUES (208, 'Boris','Vilijan ', 'SAD') ;
INSERT INTO AUTOR
VALUES (209, 'Samjuel','Beket  ', 'SAD') ;
INSERT INTO AUTOR
VALUES (210, 'Žan-Pol','Sartr', 'Francuska') ;
INSERT INTO AUTOR
VALUES (211, 'Fjodor','Dostojevski  ', 'Rusija') ;
INSERT INTO AUTOR
VALUES (212, 'Umberto ','Eko ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (213, 'Žak','Prever', 'SAD') ;
INSERT INTO AUTOR
VALUES (214, 'Gijom','Apoliner ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (215, 'Ana','Frank', 'Austrija');
INSERT INTO AUTOR
VALUES (216, 'Klod','Levi-Stros ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (217, 'Oldus','Haksli ', 'Velika Britanija') ;
INSERT INTO AUTOR
VALUES (218, ' Ežen','Jonesko ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (219, 'Vladimir',' Nabokov  ', 'Rusija') ;
INSERT INTO AUTOR
VALUES (220, 'Dino','Bucati ', 'Španija') ;
INSERT INTO AUTOR
VALUES (221, 'Andre','Žid', 'Francuska');
INSERT INTO AUTOR
VALUES (222, 'Alber','Koen', 'Francuska');
INSERT INTO AUTOR
VALUES (223, 'Vilijam','Fokner ', 'SAD') ;
INSERT INTO AUTOR
VALUES (224,'Dekeru Fransoa','Morijak', 'Francuska') ;
INSERT INTO AUTOR
VALUES (225, 'Remond','Keno', 'Francuska') ;
INSERT INTO AUTOR
VALUES (226, 'Štefan','Cvajg ', 'Austrija') ;
INSERT INTO AUTOR
VALUES (227, 'Margaret','Mičel ', 'SAD') ;
INSERT INTO AUTOR
VALUES (228,' Četerli','Lorens ', 'SAD') ;
INSERT INTO AUTOR
VALUES (229, 'Tomas','Man ', 'SAD') ;
INSERT INTO AUTOR
VALUES (230, 'Fransoaz','Sagan ', 'Francuska') ;
INSERT INTO AUTOR
VALUES (231, '','Verkor ', 'SAD') ;
INSERT INTO AUTOR
VALUES (232, 'Žorž','Perek  ', 'Francuska');
INSERT INTO AUTOR
VALUES (233, 'Artur Konan',' Dojl ', 'Francuska');
INSERT INTO AUTOR
VALUES (234, 'Žorž','Bernanos ', 'Francuska');
INSERT INTO AUTOR
VALUES (235, 'Pol',' Elijar ', 'SAD');
INSERT INTO AUTOR
VALUES (236, 'Hugo','Prat ', 'SAD');
INSERT INTO AUTOR
VALUES (237, 'Žilijen','Grak  ', 'SAD');
INSERT INTO AUTOR
VALUES (238, 'Virdžinija','Vulf ', 'SAD');
INSERT INTO AUTOR
VALUES (239, 'Džordž','Orvel', 'London, UK');
insert into autor 
values(1, 'Momo', 'Kapor', 'Sarajevo, BiH');
insert into autor 
values(2, 'Gradimir', 'Stojković', 'Srbija');
insert into autor 
values(3, 'Zoran', 'Penevski', 'Pančevo, Srbija');
insert into autor 
values(4, 'Mirjana', 'Bobić Mojsilović', 'Beograd, Srbija');
insert into autor 
values(5, 'Srđan', 'Valjarević', 'Beograd, Srbija');
insert into autor 
values(6, 'Vojislav', 'Todorović', 'Beograd, Srbija');
insert into autor 
values(7, 'Vladimir', 'Kopicl', 'Srbija');
insert into autor 
values(8, 'Aleksandar', 'Bilanović', 'Zemun, Srbija');
insert into autor 
values(9, 'Isidora', 'Bjelica', 'Beograd, Srbija');
insert into autor 
values(10, 'Nebojša', 'Jojić', 'Beograd, Srbija');
insert into autor 
values(11, 'Siniša', 'Soćanin', 'Sremska Mitrovica, Srbija');


INSERT INTO CITALAC
VALUES(1, 2304979780016, 'Petar','Bogdanović', 'Kraljevo', 'Cara Lazara 25', '064-2566814');
INSERT INTO CITALAC
VALUES(2, 0908988785064, 'Marija','Petrić', 'Kraljevo', 'Kovanlučka 36', '066-7568314');
INSERT INTO CITALAC
VALUES(3, 0703960725086, 'Nevenka','Janićijević', 'Kragujevac', 'Crnotravska 76', '063-256327');
INSERT INTO CITALAC
VALUES(4, 2011986720013, 'Đorđe','Aćimović', 'Kragujevac ', 'Ive Andrića 6', '060-368744');
INSERT INTO CITALAC
VALUES(5, 1107969720054, 'Ivan','Čakanović', 'Kragujevac', 'Dositejeva 25/17', '064-2538954');
INSERT INTO CITALAC
VALUES(6, 0310968788425, 'Nataša','Lazović', 'Čačak', 'Užička 26', '064-1256784');
INSERT INTO CITALAC
VALUES(7, 1901986725033, 'Bojana','Novaković', 'Čačak', 'Laze Kostića 19', '065-235621');
INSERT INTO CITALAC
VALUES(8, 2402962155004, 'Olga','Radičević', 'Čačak', 'Kralja Milutina 26/12', '064-1478621');
INSERT INTO CITALAC
VALUES(9, 1210976786015, 'Bojana','Lazić', 'Kruševac', 'Varvarinska 17', '066-256841');
INSERT INTO CITALAC
VALUES(10, 2103964781029, 'Miloš','Nenadić', 'Kruševac', 'Cara Lazara 26', '064-2568736');
INSERT INTO CITALAC
VALUES(11, 1707968786059, 'Ivanka','Duvančić', 'Kruševac', 'Gavrila Principa 15/3', '063-458329');
INSERT INTO CITALAC
VALUES(12, 1206568871259, 'Branko','Gavrilović', 'Kraljevo', 'Izletnička 17', '062-458126');
INSERT INTO CITALAC
VALUES(13, 1004268783366, 'Jovana','Josifljevic', 'Kruševac', 'Desankina 27', '064-002129');
INSERT INTO CITALAC
VALUES(14, 5432168786059, 'Nemanja','Isailović', 'Beograd', 'Grčića Milenka 11', '065-467989');
INSERT INTO CITALAC
VALUES(15, 2100968442139, 'Nebojša','Karličić', 'Kruševac', 'Zmajevačka 18', '061-110329');
INSERT INTO CITALAC
VALUES(16, 3104477642139, 'Milica','Stepović', 'Niš', 'Livadska 31', '063-002678');
INSERT INTO CITALAC
VALUES(17, 3008277607939, 'Luka','Radulović', 'Kraljevo', 'Voćarska 10', '062-004778');
INSERT INTO CITALAC
VALUES(18, 3046897607939, 'Filip','Starovlah', 'Pančevo', 'Milke Bosnić 34', '061-654123');
INSERT INTO CITALAC
VALUES(19, 5430108781459, 'Petar','Slavković', 'Beograd', 'Starine Novaka 11', '062-236989');
INSERT INTO CITALAC
VALUES(20, 5432168786059, 'Ognjen','Vojinović', 'Novi Sad', 'Karadjordjeva 20', '065-404319');
INSERT INTO CITALAC
VALUES(21, 6804268871259, 'Lazar','Popadić', 'Kraljevo', 'Bunjačka 10', '063-986226');
INSERT INTO CITALAC
VALUES(22, 5289268871259, 'Lazar','Pešič', 'Kraljevo', 'Izletnička 13', '062-032226');
INSERT INTO CITALAC
VALUES(23, 3194477642139, 'Minja','Stanić', 'Kraljevo', 'Cetinjska 31', '063-002678');
INSERT INTO CITALAC
VALUES(24, 7721477609869, 'Sofija','Vojinović', 'Novi Sad', 'Radnička 7', '067-216638');
INSERT INTO CITALAC
VALUES(25, 0943477609869, 'Teodora','Vojinović', 'Niš', 'Lole Ribara 13', '061-126038');
INSERT INTO CITALAC
VALUES(26, 0943475432168, 'David','Bazić', 'Kraljevo', 'Rudnička 26', '062-110448');
INSERT INTO CITALAC
VALUES(27, 3888277432168, 'Ognjen','Trujić', 'Novi Sad', 'Njegoševa 31', '061-276445');
INSERT INTO CITALAC
VALUES(28, 8277168786059, 'Anastasija','Zečević', 'Beograd', 'Pašmanska 42', '062-304196');
INSERT INTO CITALAC
VALUES(29, 1000943032226, 'Anica','Nikolajević', 'Kruševac', 'Boška Toškovića 15', '062-002701');
INSERT INTO CITALAC
VALUES(30, 6878605971259, 'Sandra','Marašević', 'Kraljevo', 'Udarnička 10', '066-949626');
INSERT INTO CITALAC
VALUES(31, 7804477786059, 'Luka','Vujisić', 'Novi Sad', 'Rinbničkih Partizana 26', '061-092419');
INSERT INTO CITALAC
VALUES(32, 0493781459869, 'Miloš','Kapor', 'Niš', 'Lole Ribara 13', '061-126038');
INSERT INTO CITALAC
VALUES(33, 6094477677214, 'Anika','Petrović', 'Niš', 'Prijepoljska 31', '063-267008');
INSERT INTO CITALAC
VALUES(34, 4477609721467, 'Veljko','Vojinović', 'Kraljevo', 'Lazara Lopčića 34', '062-213041');
INSERT INTO CITALAC
VALUES(35, 0124674477609, 'Uroš','Pavlović', 'Kraljevo', 'Stolska 21', '061-041213');  


INSERT INTO Knjiga_autor
VALUES(1, 101);
INSERT INTO Knjiga_autor
VALUES(2, 102);
INSERT INTO Knjiga_autor
VALUES(3, 102);
INSERT INTO Knjiga_autor
VALUES(4, 103);
INSERT INTO Knjiga_autor
VALUES(5, 104);
INSERT INTO Knjiga_autor
VALUES(6, 105);
INSERT INTO Knjiga_autor
VALUES(7, 106);
INSERT INTO Knjiga_autor
VALUES(8, 107);
INSERT INTO Knjiga_autor
VALUES(9, 108);
INSERT INTO Knjiga_autor
VALUES(10, 109);
INSERT INTO Knjiga_autor
VALUES(11, 110);
INSERT INTO Knjiga_autor
VALUES(12, 111);
INSERT INTO Knjiga_autor
VALUES(13, 111);
INSERT INTO Knjiga_autor
VALUES(14, 112);
INSERT INTO Knjiga_autor
VALUES(15, 112);
INSERT INTO Knjiga_autor
VALUES(16, 112);
INSERT INTO Knjiga_autor
VALUES(17, 112);
INSERT INTO Knjiga_autor
VALUES(18, 112);
INSERT INTO Knjiga_autor
VALUES(19, 112);
INSERT INTO Knjiga_autor
VALUES(20, 112);
INSERT INTO Knjiga_autor
VALUES(21, 113);
INSERT INTO Knjiga_autor
VALUES(22, 113);
INSERT INTO Knjiga_autor
VALUES(23, 113);
INSERT INTO Knjiga_autor
VALUES(24, 113);
INSERT INTO Knjiga_autor
VALUES(25, 113);
INSERT INTO Knjiga_autor
VALUES(26, 200);
INSERT INTO Knjiga_autor
VALUES(27, 201);
INSERT INTO Knjiga_autor
VALUES(28, 202);
INSERT INTO Knjiga_autor
VALUES(29, 203);
INSERT INTO Knjiga_autor
VALUES(30, 204);
INSERT INTO Knjiga_autor
VALUES(31, 205);
INSERT INTO Knjiga_autor
VALUES(32, 206);
INSERT INTO Knjiga_autor
VALUES(33, 207);
INSERT INTO Knjiga_autor
VALUES(34, 208);
INSERT INTO Knjiga_autor
VALUES(35, 209);
INSERT INTO Knjiga_autor
VALUES(36, 210);
INSERT INTO Knjiga_autor
VALUES(37, 211);
INSERT INTO Knjiga_autor
VALUES(38, 212);
INSERT INTO Knjiga_autor
VALUES(39, 213);
INSERT INTO Knjiga_autor
VALUES(40, 218);
INSERT INTO Knjiga_autor
VALUES(41, 219);
INSERT INTO Knjiga_autor
VALUES(42, 220);
INSERT INTO Knjiga_autor
VALUES(43, 221);
INSERT INTO Knjiga_autor
VALUES(44, 222);
INSERT INTO Knjiga_autor
VALUES(45, 223);
INSERT INTO Knjiga_autor
VALUES(46, 224);
INSERT INTO Knjiga_autor
VALUES(47, 225);
INSERT INTO Knjiga_autor
VALUES(48, 226);
INSERT INTO Knjiga_autor
VALUES(49, 227);
INSERT INTO Knjiga_autor
VALUES(50, 228);
INSERT INTO Knjiga_autor
VALUES(51, 229);
INSERT INTO Knjiga_autor
VALUES(52, 230);
INSERT INTO Knjiga_autor
VALUES(53, 231);
INSERT INTO Knjiga_autor
VALUES(54, 232);
INSERT INTO Knjiga_autor
VALUES(55, 233);
INSERT INTO Knjiga_autor
VALUES(56, 234);
INSERT INTO Knjiga_autor
VALUES(57, 235);
INSERT INTO Knjiga_autor
VALUES(58, 236);
INSERT INTO Knjiga_autor
VALUES(59, 237);
INSERT INTO Knjiga_autor
VALUES(60, 238);
INSERT INTO Knjiga_autor
VALUES(61, 238);
INSERT INTO Knjiga_autor
VALUES(62, 215);
INSERT INTO Knjiga_autor
VALUES(63, 216);
INSERT INTO Knjiga_autor
VALUES(64, 217);
INSERT INTO Knjiga_autor
VALUES(65, 239);


insert into knjiga_autor
values(100, 1);
insert into knjiga_autor
values(101, 1);
insert into knjiga_autor
values(102, 1);
insert into knjiga_autor
values(103, 1);
insert into knjiga_autor
values(104, 1);
insert into knjiga_autor
values(105, 2);
insert into knjiga_autor
values(106, 2);
insert into knjiga_autor
values(107, 2);
insert into knjiga_autor
values(108, 2);
insert into knjiga_autor
values(109, 3);
insert into knjiga_autor
values(110, 3);
insert into knjiga_autor
values(111, 3);
insert into knjiga_autor
values(112, 4);
insert into knjiga_autor
values(113, 4);
insert into knjiga_autor
values(114, 4);
insert into knjiga_autor
values(115, 5);
insert into knjiga_autor
values(116, 5);
insert into knjiga_autor
values(117, 5);
insert into knjiga_autor
values(118, 6);
insert into knjiga_autor
values(119, 7);
insert into knjiga_autor
values(120, 9);
insert into knjiga_autor
values(121, 9);
insert into knjiga_autor
values(122, 10);
insert into knjiga_autor
values(123, 11);
insert into knjiga_autor
values(124, 11);

INSERT INTO Izdavac
VALUES(111, 'Laguna', 'Resavska 33, Beograd');
INSERT INTO Izdavac
VALUES(121, 'Admiral Books', 'Ivana Ribara 115b, Beograd');
INSERT INTO Izdavac
VALUES(122, 'Alnari', 'Voždovac, Ustanička 125/b, BG');
INSERT INTO Izdavac
VALUES(123, 'Prometej', 'Svetozara Miletića 16, NS');
INSERT INTO Izdavac
VALUES(125, 'Jugovideo', 'Prote Mateje 36, BG');
INSERT INTO Izdavac
VALUES(126, 'Mate', 'Arsenija Čarnojevića 52, KG');
INSERT INTO Izdavac
VALUES(127, 'Merkur sv', 'Cara Lazara 15a, BG');

INSERT INTO Knjiga_izdavac
VALUES(111, 1, 2015);
INSERT INTO Knjiga_izdavac
VALUES(111, 2, 2009);
INSERT INTO Knjiga_izdavac
VALUES(111, 3, 2013);
INSERT INTO Knjiga_izdavac
VALUES(111, 4, 2012);
INSERT INTO Knjiga_izdavac
VALUES(111, 5, 2020);
INSERT INTO Knjiga_izdavac
VALUES(111, 6, 2015);
INSERT INTO Knjiga_izdavac
VALUES(121, 7, 2021);
INSERT INTO Knjiga_izdavac
VALUES(122, 8, 1994);
INSERT INTO Knjiga_izdavac
VALUES(111, 9, 2015);
INSERT INTO Knjiga_izdavac
VALUES(123, 10, 2021);
INSERT INTO Knjiga_izdavac
VALUES(111, 11, 2013);
INSERT INTO Knjiga_izdavac
VALUES(125, 12, 1994);
INSERT INTO Knjiga_izdavac
VALUES(126, 13, 2001);
INSERT INTO Knjiga_izdavac
VALUES(111, 14, 2021);
INSERT INTO Knjiga_izdavac
VALUES(111, 15, 2020);
INSERT INTO Knjiga_izdavac
VALUES(111, 16, 2021);
INSERT INTO Knjiga_izdavac
VALUES(111, 17, 2019);
INSERT INTO Knjiga_izdavac
VALUES(111, 18, 2019);
INSERT INTO Knjiga_izdavac
VALUES(111, 19, 2020);
INSERT INTO Knjiga_izdavac
VALUES(111, 20, 2021);
INSERT INTO Knjiga_izdavac
VALUES(127, 21, 2019);
INSERT INTO Knjiga_izdavac
VALUES(127, 22, 2020);
INSERT INTO Knjiga_izdavac
VALUES(127, 23, 2020);
INSERT INTO Knjiga_izdavac
VALUES(127, 24, 2021);
INSERT INTO Knjiga_izdavac
VALUES(127, 25, 2020);

INSERT INTO PRIMERAK
VALUES(114,1);
INSERT INTO PRIMERAK
VALUES(114,2);
INSERT INTO PRIMERAK
VALUES(114,3);
INSERT INTO PRIMERAK
VALUES(114,4);
INSERT INTO PRIMERAK
VALUES(115,5);
INSERT INTO PRIMERAK
VALUES(115,6);
INSERT INTO PRIMERAK
VALUES(115,7);
INSERT INTO PRIMERAK
VALUES(115,8);
INSERT INTO PRIMERAK
VALUES(115,9);
INSERT INTO PRIMERAK
VALUES(115,10);
INSERT INTO PRIMERAK
VALUES(116,11);
INSERT INTO PRIMERAK
VALUES(116,12);
INSERT INTO PRIMERAK
VALUES(116,13);
INSERT INTO PRIMERAK
VALUES(116,14);
INSERT INTO PRIMERAK
VALUES(117,15);
INSERT INTO PRIMERAK
VALUES(117,16);
INSERT INTO PRIMERAK
VALUES(118,17);
INSERT INTO PRIMERAK
VALUES(118,18);
INSERT INTO PRIMERAK
VALUES(118,19);
INSERT INTO PRIMERAK
VALUES(119,20);
INSERT INTO PRIMERAK
VALUES(119,21);
INSERT INTO PRIMERAK
VALUES(119,22);
INSERT INTO PRIMERAK
VALUES(120,23);
INSERT INTO PRIMERAK
VALUES(120,24);
INSERT INTO PRIMERAK
VALUES(120,25);
INSERT INTO PRIMERAK
VALUES(121,26);
INSERT INTO PRIMERAK
VALUES(121,27);
INSERT INTO PRIMERAK
VALUES(121,28);
INSERT INTO PRIMERAK
VALUES(122,29);
INSERT INTO PRIMERAK
VALUES(122,30);
INSERT INTO PRIMERAK
VALUES(123,31);
INSERT INTO PRIMERAK
VALUES(123,32);
INSERT INTO PRIMERAK
VALUES(124,33);
INSERT INTO PRIMERAK
VALUES(124,34);
INSERT INTO PRIMERAK
VALUES(1,35);
INSERT INTO PRIMERAK
VALUES(1,36);
INSERT INTO PRIMERAK
VALUES(1,37);
INSERT INTO PRIMERAK
VALUES(2,38);
INSERT INTO PRIMERAK
VALUES(2,39);
INSERT INTO PRIMERAK
VALUES(3,40);
INSERT INTO PRIMERAK
VALUES(3,41);
INSERT INTO PRIMERAK
VALUES(4,42);
INSERT INTO PRIMERAK
VALUES(4,43);
INSERT INTO PRIMERAK
VALUES(5,44);
INSERT INTO PRIMERAK
VALUES(5,45);
INSERT INTO PRIMERAK
VALUES(6,46);
INSERT INTO PRIMERAK
VALUES(6,47);
INSERT INTO PRIMERAK
VALUES(7,48);
INSERT INTO PRIMERAK
VALUES(7,49);
INSERT INTO PRIMERAK
VALUES(8,50);
INSERT INTO PRIMERAK
VALUES(8,51);
INSERT INTO PRIMERAK
VALUES(9,52);
INSERT INTO PRIMERAK
VALUES(9,53);
INSERT INTO PRIMERAK
VALUES(10,54);
INSERT INTO PRIMERAK
VALUES(11,55);
INSERT INTO PRIMERAK
VALUES(12,56);
INSERT INTO PRIMERAK
VALUES(13,57);
INSERT INTO PRIMERAK
VALUES(14,58);
INSERT INTO PRIMERAK
VALUES(14,59);
INSERT INTO PRIMERAK
VALUES(15,60);
INSERT INTO PRIMERAK
VALUES(15,61);
INSERT INTO PRIMERAK
VALUES(16,62);
INSERT INTO PRIMERAK
VALUES(16,63);
INSERT INTO PRIMERAK
VALUES(16,64);
INSERT INTO PRIMERAK
VALUES(17,65);
INSERT INTO PRIMERAK
VALUES(17,66);
INSERT INTO PRIMERAK
VALUES(17,67);
INSERT INTO PRIMERAK
VALUES(17,68);
INSERT INTO PRIMERAK
VALUES(18,69);
INSERT INTO PRIMERAK
VALUES(18,70);
INSERT INTO PRIMERAK
VALUES(19,71);
INSERT INTO PRIMERAK
VALUES(19,72);
INSERT INTO PRIMERAK
VALUES(20,73);
INSERT INTO PRIMERAK
VALUES(20,74);
INSERT INTO PRIMERAK
VALUES(21,75);
INSERT INTO PRIMERAK
VALUES(21,76);
INSERT INTO PRIMERAK
VALUES(22,77);
INSERT INTO PRIMERAK
VALUES(22,78);
INSERT INTO PRIMERAK
VALUES(23,79);
INSERT INTO PRIMERAK
VALUES(23,80);
INSERT INTO PRIMERAK
VALUES(23,81);
INSERT INTO PRIMERAK
VALUES(24,82);
INSERT INTO PRIMERAK
VALUES(24,83);
INSERT INTO PRIMERAK
VALUES(25,84);
INSERT INTO PRIMERAK
VALUES(25,85);
INSERT INTO PRIMERAK
VALUES(25,86);
INSERT INTO PRIMERAK
VALUES(26,87);
INSERT INTO PRIMERAK
VALUES(26,88);
INSERT INTO PRIMERAK
VALUES(26,89);
INSERT INTO PRIMERAK
VALUES(27,90);
INSERT INTO PRIMERAK
VALUES(27,91);
INSERT INTO PRIMERAK
VALUES(27,92);
INSERT INTO PRIMERAK
VALUES(28,93);
INSERT INTO PRIMERAK
VALUES(28,94);
INSERT INTO PRIMERAK
VALUES(29,95);
INSERT INTO PRIMERAK
VALUES(29,96);
INSERT INTO PRIMERAK
VALUES(29,97);
INSERT INTO PRIMERAK
VALUES(30,98);
INSERT INTO PRIMERAK
VALUES(30,99);
INSERT INTO PRIMERAK
VALUES(30,100);
INSERT INTO PRIMERAK
VALUES(31,101);
INSERT INTO PRIMERAK
VALUES(31,102);
INSERT INTO PRIMERAK
VALUES(31,103);
INSERT INTO PRIMERAK
VALUES(32,104);
INSERT INTO PRIMERAK
VALUES(32,105);
INSERT INTO PRIMERAK
VALUES(32,106);
INSERT INTO PRIMERAK
VALUES(33,107);
INSERT INTO PRIMERAK
VALUES(33,108);
INSERT INTO PRIMERAK
VALUES(34,109);
INSERT INTO PRIMERAK
VALUES(34,110);
INSERT INTO PRIMERAK
VALUES(34,111);
INSERT INTO PRIMERAK
VALUES(35,112);
INSERT INTO PRIMERAK
VALUES(35,113);
INSERT INTO PRIMERAK
VALUES(35,114);
INSERT INTO PRIMERAK
VALUES(36,115);
INSERT INTO PRIMERAK
VALUES(36,116);
INSERT INTO PRIMERAK
VALUES(36,117);
INSERT INTO PRIMERAK
VALUES(37,118);
INSERT INTO PRIMERAK
VALUES(37,119);
INSERT INTO PRIMERAK
VALUES(38,120);
INSERT INTO PRIMERAK
VALUES(38,121);
INSERT INTO PRIMERAK
VALUES(39,122);
INSERT INTO PRIMERAK
VALUES(40,123);
INSERT INTO PRIMERAK
VALUES(41,124);
INSERT INTO PRIMERAK
VALUES(41,125);
INSERT INTO PRIMERAK
VALUES(42,126);
INSERT INTO PRIMERAK
VALUES(42,127);
INSERT INTO PRIMERAK
VALUES(43,128);
INSERT INTO PRIMERAK
VALUES(43,129);
INSERT INTO PRIMERAK
VALUES(44,130);
INSERT INTO PRIMERAK
VALUES(45,131);
INSERT INTO PRIMERAK
VALUES(46,132);
INSERT INTO PRIMERAK
VALUES(46,133);
INSERT INTO PRIMERAK
VALUES(46,134);
INSERT INTO PRIMERAK
VALUES(47,135);
INSERT INTO PRIMERAK
VALUES(47,136);
INSERT INTO PRIMERAK
VALUES(47,137);
INSERT INTO PRIMERAK
VALUES(48,138);
INSERT INTO PRIMERAK
VALUES(48,139);
INSERT INTO PRIMERAK
VALUES(49,140);
INSERT INTO PRIMERAK
VALUES(49,141);
INSERT INTO PRIMERAK
VALUES(50,142);
INSERT INTO PRIMERAK
VALUES(51,143);
INSERT INTO PRIMERAK
VALUES(52,144);
INSERT INTO PRIMERAK
VALUES(53,145);
INSERT INTO PRIMERAK
VALUES(54,146);
INSERT INTO PRIMERAK
VALUES(55,147);
INSERT INTO PRIMERAK
VALUES(56,148);
INSERT INTO PRIMERAK
VALUES(57,149);
INSERT INTO PRIMERAK
VALUES(58,150);
INSERT INTO PRIMERAK
VALUES(58,151);
INSERT INTO PRIMERAK
VALUES(59,152);
INSERT INTO PRIMERAK
VALUES(59,153);
INSERT INTO PRIMERAK
VALUES(60,154);
INSERT INTO PRIMERAK
VALUES(60,155);
INSERT INTO PRIMERAK
VALUES(61,156);
INSERT INTO PRIMERAK
VALUES(61,157);
INSERT INTO PRIMERAK
VALUES(62,158);
INSERT INTO PRIMERAK
VALUES(62,159);
INSERT INTO PRIMERAK
VALUES(63,160);
INSERT INTO PRIMERAK
VALUES(63,161);
INSERT INTO PRIMERAK
VALUES(64,162);
INSERT INTO PRIMERAK
VALUES(64,163);
INSERT INTO PRIMERAK
VALUES(65,164);
INSERT INTO PRIMERAK
VALUES(65,165);

INSERT INTO NA_CITANJU
VALUES(114,1,convert(date,'2016-12-04'),convert(date,'2016-12-24'));
INSERT INTO NA_CITANJU
VALUES(115,1,convert(date,'2016-12-04'),convert(date,'2016-12-24'));
INSERT INTO NA_CITANJU
VALUES(114,2,convert(date,'2017-01-20'),convert(date,'2017-02-10'));
INSERT INTO NA_CITANJU
VALUES(2,2,convert(date,'2017-01-20'),convert(date,'2017-02-10'));
INSERT INTO NA_CITANJU
VALUES(3,3,convert(date,'2018-02-22'),convert(date,'2018-04-25'));
INSERT INTO NA_CITANJU
VALUES(4,4,convert(date,'2018-03-22'),convert(date,'2018-05-24'));
INSERT INTO NA_CITANJU
VALUES(5,5,convert(date,'2018-09-13'),convert(date,'2018-11-05'));
INSERT INTO NA_CITANJU
VALUES(6,6,convert(date,'2019-04-04'),convert(date,'2019-06-24'));
INSERT INTO NA_CITANJU
VALUES(7,7,convert(date,'2019-07-01'),convert(date,'2019-09-28'));
INSERT INTO NA_CITANJU
VALUES(8,8,convert(date,'2019-10-10'),convert(date,'2019-12-20'));
INSERT INTO NA_CITANJU
VALUES(9,9,convert(date,'2020-02-07'),convert(date,'2020-08-24'));
INSERT INTO NA_CITANJU
VALUES(10,10,convert(date,'2020-03-13'),convert(date,'2020-04-23'));
INSERT INTO NA_CITANJU
VALUES(10,11,convert(date,'2020-07-01'),convert(date,'2020-10-29'));
INSERT INTO NA_CITANJU
VALUES(11,12,convert(date,'2020-08-21'),convert(date,'2020-09-26'));
INSERT INTO NA_CITANJU
VALUES(12,13,convert(date,'2021-03-01'),convert(date,'2021-07-02'));
INSERT INTO NA_CITANJU
VALUES(13,14,convert(date,'2021-04-11'),convert(date,'2021-05-13'));
INSERT INTO NA_CITANJU
VALUES(14,15,convert(date,'2021-04-13'),convert(date,'2021-06-09'));
INSERT INTO NA_CITANJU
VALUES(15,16,convert(date,'2021-05-17'),convert(date,'2021-07-05'));
INSERT INTO NA_CITANJU
VALUES(16,17,convert(date,'2022-01-20'),convert(date,'2022-03-07'));
INSERT INTO NA_CITANJU
VALUES(17,18,convert(date,'2022-02-22'),convert(date,'2022-04-12'));
INSERT INTO NA_CITANJU
VALUES(18,19,convert(date,'2022-03-09'),convert(date,'2022-04-16'));
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2022-03-09'),NULL);
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2020-04-09'),NULL);
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2021-04-09'),NULL);
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2021-09-09'),NULL);
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2021-11-09'),NULL);
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2021-12-09'),NULL);
INSERT INTO NA_CITANJU
VALUES(18,1,convert(date,'2021-02-09'),NULL);
----------------------------------