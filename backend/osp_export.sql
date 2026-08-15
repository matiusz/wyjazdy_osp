CREATE TABLE [Akcje]
(
   [Id] INT NOT NULL IDENTITY (25,1),
   [Numer zdarzenia] INT DEFAULT ((0)),
   [Data zdarzenia] DATETIME,
   [Dysponował] NVARCHAR(255),
   [Adres] NVARCHAR(255),
   [Rodzaj] NVARCHAR(255),
   [Lokalizacja] NVARCHAR(50),
   [Czas wyjazdu] DATETIME,
   [Czas powrotu] DATETIME,
   [Dowódca] NVARCHAR(255),
   [Informacje] NTEXT,
   [Numer] NVARCHAR(100),
   [Ekwiwalent] FLOAT,
   [IdJednostki] INT,
   [Czas alarmowania] NVARCHAR(50),
   [Norma] NVARCHAR(100),
   [IdNormy] INT,
   [Zdjecie] IMAGE
);

CREATE TABLE [AkcjeDodatkowe]
(
   [Id] INT NOT NULL IDENTITY (1,1),
   [IdAkcji] INT NOT NULL,
   [Nazwa] NVARCHAR(255),
   [Wartość] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [AkcjeInne]
(
   [Id] INT NOT NULL IDENTITY (5,1),
   [IdAkcji] INT,
   [Marka] NVARCHAR(255),
   [Rodzaj] NVARCHAR(255),
   [Czas pracy] FLOAT,
   [IdJednostki] INT
);

CREATE TABLE [AkcjeOsoby]
(
   [Id] INT NOT NULL IDENTITY (320,1),
   [IdAkcji] INT DEFAULT ((0)),
   [IdOsoby] INT DEFAULT ((0)),
   [Start] DATETIME,
   [Koniec] DATETIME,
   [Czas] FLOAT DEFAULT ((0)),
   [IdJednostki] INT,
   [IdSamochodu] INT
);

CREATE TABLE [AkcjeSamochody]
(
   [Id] INT NOT NULL IDENTITY (161,1),
   [IdAkcji] INT DEFAULT ((0)),
   [IdSamochodu] INT DEFAULT ((0)),
   [Początkowy stan licznika] FLOAT DEFAULT ((0)),
   [Końcowy stan licznika] FLOAT DEFAULT ((0)),
   [Przejechany dystans] FLOAT DEFAULT ((0)),
   [Czas pracy autopompy] FLOAT DEFAULT ((0)),
   [Czas pracy na postoju] FLOAT DEFAULT ((0)),
   [Czas pracy ogrzewania] FLOAT DEFAULT ((0)),
   [Rozruch] BIT,
   [IdJednostki] INT,
   [Start] DATETIME,
   [Koniec] DATETIME,
   [Czas pracy wyciągarki] FLOAT,
   [Kierowca] NVARCHAR(255)
);

CREATE TABLE [AkcjeSprzet]
(
   [Id] INT NOT NULL IDENTITY (81,1),
   [IdAkcji] INT DEFAULT ((0)),
   [IdSprzetu] INT DEFAULT ((0)),
   [Czas pracy] FLOAT DEFAULT ((0)),
   [Rozruch] BIT,
   [IdJednostki] INT
);

CREATE TABLE [AkcjeUczestnicy]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [IdAkcji] INT,
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [AkcjeWieszowa]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [IdAkcji] INT,
   [Miejscowość] NVARCHAR(255),
   [Wielkość zdarzenia] NVARCHAR(255),
   [Obiekt] NVARCHAR(255),
   [Właściciel] NVARCHAR(255),
   [Czas dojazdu] DATETIME,
   [Zagrożenia] NVARCHAR(255),
   [Rozpoznanie] NVARCHAR(255),
   [Działania] NVARCHAR(255),
   [Zniszczenia] NVARCHAR(255),
   [Straty] NVARCHAR(255),
   [Zużyte] NVARCHAR(255),
   [Ewakuowano] NVARCHAR(255),
   [Wypadki] NVARCHAR(255),
   [Utrudnienia] NVARCHAR(255),
   [Postanowienia] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Jednostki]
(
   [Id] INT NOT NULL IDENTITY (3,1),
   [Skrót] NVARCHAR(100),
   [Nazwa] NTEXT,
   [Miejscowość] NVARCHAR(100),
   [Miejsce sprzedaży] NVARCHAR(50),
   [Hasło] INT,
   [Hasło administratora] INT
);

CREATE TABLE [Kasa]
(
   [Id] INT NOT NULL IDENTITY (61,1),
   [IdDokumentu] NVARCHAR(50),
   [Typ dokumentu] NVARCHAR(50),
   [Referencja] NVARCHAR(100),
   [ReferencjaId] INT,
   [Tytuł] NVARCHAR(255),
   [Uwagi] NVARCHAR(255),
   [Sprzedawca] NVARCHAR(255),
   [Miejsce wystawienia] NVARCHAR(50),
   [Kontrahent] NVARCHAR(255),
   [Wartość] MONEY,
   [Data wystawienia] DATETIME,
   [Numer konta] NVARCHAR(100),
   [Użytkownik] NVARCHAR(50),
   [Typ numeracji] NVARCHAR(20),
   [IdJednostki] INT,
   [Grupa] NVARCHAR(255)
);

CREATE TABLE [Ksiega]
(
   [Id] INT NOT NULL IDENTITY (20,1),
   [Lp] INT DEFAULT ((0)),
   [Data wprowadzenia] DATETIME,
   [Data wykreślenia] NVARCHAR(50),
   [Powód wykreślenia] NVARCHAR(255),
   [Rodzaj] NVARCHAR(255),
   [Marka] NVARCHAR(255),
   [Typ] NVARCHAR(255),
   [Data zakupu] DATETIME,
   [Kwota zakupu] FLOAT DEFAULT ((0)),
   [Dane sprzedawcy] NVARCHAR(255),
   [Ilość] FLOAT,
   [Właściciel] NVARCHAR(100),
   [Typ środka] NVARCHAR(100),
   [Numer faktury] NVARCHAR(100),
   [Informacje] NVARCHAR(255),
   [Numer inwentarzowy] NVARCHAR(50),
   [Miejsce użytkowania] NVARCHAR(100),
   [IdJednostki] INT,
   [Numer CNBOP] NVARCHAR(50),
   [Termin przydatności] DATETIME,
   [Zdjecie] IMAGE,
   [Data produkcji] DATETIME
);

CREATE TABLE [Magazyn]
(
   [Id] INT NOT NULL IDENTITY (14,1),
   [Data] DATETIME,
   [Źródło] NVARCHAR(10),
   [Cel] NVARCHAR(10),
   [IdŹródła] INT,
   [IdCelu] INT,
   [NazwaŹródła] NVARCHAR(150),
   [NazwaCelu] NVARCHAR(150),
   [IdProduktu] INT,
   [NazwaProduktu] NVARCHAR(150),
   [Ilość] FLOAT,
   [Uwagi] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Normy]
(
   [Id] INT NOT NULL IDENTITY (1,1),
   [Nazwa] NVARCHAR(100),
   [IdNormy] INT,
   [IdSamochodu] INT,
   [IdSprzetu] INT,
   [Norma na 100 km] FLOAT,
   [Norma na 1 h na postoju] FLOAT,
   [Norma na 1 h na ogrzewania postojowego] FLOAT,
   [Norma na 1 h pracy autopompy] FLOAT,
   [Norma na 1 h pracy] FLOAT,
   [Norma oleju na 1 h pracy] FLOAT,
   [Norma na rozruch samochod] FLOAT,
   [Norma na rozruch sprzet] FLOAT,
   [Norma na 1 h pracy wyciągarki] FLOAT,
   [IdJednostki] INT
);

CREATE TABLE [Odznaczenia]
(
   [Id] INT NOT NULL IDENTITY (26,1),
   [IdOsoby] INT,
   [Nazwa] NVARCHAR(255),
   [Informacje] NVARCHAR(255),
   [IdJednostki] INT,
   [Data] DATETIME
);

CREATE TABLE [Osoby]
(
   [Id] INT NOT NULL IDENTITY (29,1),
   [Imię] NVARCHAR(255),
   [Drugie imię] NVARCHAR(255),
   [Nazwisko] NVARCHAR(255),
   [Imię ojca] NVARCHAR(255),
   [Ulica] NVARCHAR(255),
   [Numer domu] NVARCHAR(50),
   [Numer lokalu] NVARCHAR(50),
   [Miejscowość] NVARCHAR(255),
   [Kod] NVARCHAR(50),
   [Poczta] NVARCHAR(50),
   [Gmina] NVARCHAR(255),
   [Data urodzenia] DATETIME,
   [Pesel] NVARCHAR(50),
   [Nip] NVARCHAR(50),
   [Nr dowodu] NVARCHAR(50),
   [Płeć] NVARCHAR(50),
   [Funkcja] NVARCHAR(255),
   [Data rozpoczęcia] DATETIME,
   [Data zakończenia] DATETIME,
   [Prawo jazdy] NVARCHAR(50),
   [Telefon stacjonarny] NVARCHAR(50),
   [Telefon komórkowy] NVARCHAR(50),
   [Email] NVARCHAR(50),
   [Badania lekarskie] DATETIME,
   [Badania psychologiczne] DATETIME,
   [Uprawnienia na samochód] DATETIME,
   [Kwalifikacje] NTEXT,
   [Informacje] NTEXT,
   [Grupa] NVARCHAR(100),
   [Nadgrupa] NVARCHAR(100),
   [Miejsce urodzenia] NVARCHAR(100),
   [Konto] NVARCHAR(255),
   [Numer prawo jazdy] NVARCHAR(255),
   [Data prawo jazdy] NVARCHAR(255),
   [Ważność prawo jazdy] NVARCHAR(255),
   [Miejsce pracy] NVARCHAR(100),
   [IdJednostki] INT,
   [Numer zaświadczenia] NVARCHAR(30),
   [Szkolenie BHP] DATETIME,
   [Pomoc] NVARCHAR(50),
   [Pomoc termin] DATETIME,
   [Zdjecie] IMAGE,
   [Numer ewidencyjny] NVARCHAR(30),
   [Wykształcenie] NVARCHAR(30),
   [Numer legitymacji] NVARCHAR(30),
   [Przebieg służby] NTEXT,
   [Uczestniczy w akcjach] BIT,
   [Komora] DATETIME
);

CREATE TABLE [OsobyWyposazenie]
(
   [Id] INT NOT NULL IDENTITY (139,1),
   [IdOsoby] INT,
   [Rodzaj] NVARCHAR(255),
   [Marka] NVARCHAR(255),
   [Typ] NVARCHAR(255),
   [Informacje] NVARCHAR(255),
   [Ilość] FLOAT,
   [IdJednostki] INT
);

CREATE TABLE [Parametry]
(
   [Id] INT NOT NULL IDENTITY (109,1),
   [Nazwa] NVARCHAR(50),
   [Wartość] NTEXT,
   [IdJednostki] INT
);

CREATE TABLE [Przypomnienia]
(
   [Id] INT NOT NULL IDENTITY (122,1),
   [Treść] NVARCHAR(255),
   [Data] DATETIME,
   [IdOsoby] INT,
   [IdSamochodu] INT,
   [IdSprzetu] INT,
   [Odznaczone] BIT DEFAULT ((0)),
   [IdJednostki] INT,
   [IdKsiega] INT
);

CREATE TABLE [Samochody]
(
   [Id] INT NOT NULL IDENTITY (11,1),
   [Numer rejestracyjny] NVARCHAR(50),
   [Producent] NVARCHAR(255),
   [Marka] NVARCHAR(255),
   [Numer VIN] NVARCHAR(255),
   [Rok produkcji] NVARCHAR(50),
   [Typ] NVARCHAR(255),
   [Numer operacyjny] NVARCHAR(255),
   [Termin przeglądu] DATETIME,
   [Termin ubezpieczenia] DATETIME,
   [Rodzaj paliwa] NVARCHAR(50),
   [Norma na 100 km] FLOAT DEFAULT ((0)),
   [Norma na 1 h na postoju] FLOAT DEFAULT ((0)),
   [Norma na 1 h na ogrzewania postojowego] FLOAT DEFAULT ((0)),
   [Norma na 1 h pracy autopompy] FLOAT DEFAULT ((0)),
   [Sprzęt na pojeździe] NTEXT,
   [Informacje] NTEXT,
   [Numer polisy] NVARCHAR(100),
   [Norma na rozruch] FLOAT,
   [IdJednostki] INT,
   [Pojemność paliwa] NVARCHAR(10),
   [Pojemność wody] NVARCHAR(10),
   [Numer CNBOP] NVARCHAR(50),
   [Termin przydatności] DATETIME,
   [Pojemność piany] NVARCHAR(10),
   [Norma na 1 h pracy wyciągarki] FLOAT,
   [Zdjecie] IMAGE
);

CREATE TABLE [SamochodySprzet]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [IdSprzetu] INT,
   [IdSamochodu] INT,
   [IdJednostki] INT
);

CREATE TABLE [Skladki]
(
   [Id] INT NOT NULL IDENTITY (38,1),
   [IdOsoby] INT,
   [Rodzaj] NVARCHAR(20),
   [Tytuł] NVARCHAR(255),
   [Kwota] FLOAT,
   [Informacje] NVARCHAR(255),
   [Data] DATETIME,
   [IdJednostki] INT
);

CREATE TABLE [Sprzet]
(
   [Id] INT NOT NULL IDENTITY (9,1),
   [Rodzaj] NVARCHAR(255),
   [Producent] NVARCHAR(255),
   [Marka] NVARCHAR(255),
   [Rodzaj paliwa] NVARCHAR(50),
   [Norma na 1 h pracy] FLOAT DEFAULT ((0)),
   [Norma oleju na 1 h pracy] FLOAT DEFAULT ((0)),
   [Termin przeglądu] DATETIME,
   [Informacje] NTEXT,
   [Rok produkcji] DATETIME,
   [Norma na rozruch] FLOAT,
   [IdJednostki] INT,
   [Numer CNBOP] NVARCHAR(50),
   [Zdjecie] IMAGE,
   [Numer fabryczny] NVARCHAR(50),
   [Numer seryjny] NVARCHAR(50),
   [Numer silnika] NVARCHAR(50)
);

CREATE TABLE [Stany]
(
   [Id] INT NOT NULL IDENTITY (313,1),
   [MagazynTyp] NVARCHAR(10),
   [IdMagazynu] INT,
   [IdProduktu] INT,
   [Ilość] FLOAT,
   [IdJednostki] INT
);

CREATE TABLE [Szkolenia]
(
   [Id] INT NOT NULL IDENTITY (148,1),
   [IdOsoby] INT,
   [Nazwa] NVARCHAR(255),
   [Data] DATETIME,
   [Informacje] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [TakcjeDodatkowe]
(
   [Id] INT NOT NULL IDENTITY (1,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tankowania]
(
   [Id] INT NOT NULL IDENTITY (45,1),
   [Typ] NVARCHAR(50),
   [IdSamochodu] INT DEFAULT ((0)),
   [IdSprzetu] INT DEFAULT ((0)),
   [Data] DATETIME,
   [Numer faktury] NVARCHAR(50),
   [Sprzedawca] NVARCHAR(255),
   [Nabywca] NVARCHAR(255),
   [Rodzaj paliwa] NVARCHAR(50),
   [Ilość] FLOAT DEFAULT ((0)),
   [Wartość] FLOAT DEFAULT ((0)),
   [Informacje] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [TdokumentyKasa]
(
   [Id] INT NOT NULL IDENTITY (9,1),
   [Informacja] NVARCHAR(255),
   [Nazwa] NVARCHAR(50),
   [Indeks] INT,
   [Indeks_startowy] INT,
   [Symbol] NVARCHAR(50),
   [Schemat] NVARCHAR(255),
   [Typ numeracji] NVARCHAR(20),
   [IdJednostki] INT
);

CREATE TABLE [TgrupyCzlonkow]
(
   [Id] INT NOT NULL IDENTITY (17,1),
   [Nazwa] NVARCHAR(255),
   [Nadgrupa] INT,
   [IdJednostki] INT
);

CREATE TABLE [Tinterwencje]
(
   [Id] INT NOT NULL IDENTITY (16,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [TkasaGrupy]
(
   [Id] INT NOT NULL IDENTITY (3,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tkonta]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tkontrahenci]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [Kod] NVARCHAR(255),
   [Szczegóły] NTEXT,
   [IdJednostki] INT
);

CREATE TABLE [Tlokalizacje]
(
   [Id] INT NOT NULL IDENTITY (4,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tmagazyny]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tnormy]
(
   [Id] INT NOT NULL IDENTITY (1,1),
   [Nazwa] NVARCHAR(100),
   [Data_Od] DATETIME,
   [Data_Do] DATETIME,
   [IdJednostki] INT
);

CREATE TABLE [Todznaczenia]
(
   [Id] INT NOT NULL IDENTITY (1,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tsprzedawca]
(
   [Id] INT NOT NULL IDENTITY (3,1),
   [Nazwa] NTEXT,
   [Miejsce sprzedaży] NVARCHAR(50),
   [Jednostka] NVARCHAR(100),
   [Miejscowość] NVARCHAR(100),
   [IdJednostki] INT
);

CREATE TABLE [Tsrodki]
(
   [Id] INT NOT NULL IDENTITY (3,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tszkolenia]
(
   [Id] INT NOT NULL IDENTITY (19,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Tuzytkownicy]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Twlasciciele]
(
   [Id] INT NOT NULL IDENTITY (3,1),
   [Nazwa] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Ubezpieczenia]
(
   [Id] INT NOT NULL IDENTITY (10,1),
   [IdOsoby] INT,
   [Numer] NVARCHAR(255),
   [Ubezpieczyciel] NVARCHAR(255),
   [Data_od] DATETIME,
   [Data_do] DATETIME,
   [Informacje] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Uzupelnienia]
(
   [Id] INT NOT NULL IDENTITY (2,1),
   [Typ] NVARCHAR(255),
   [Wartość] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Uzytkownicy]
(
   [Id] INT NOT NULL IDENTITY (3,1),
   [Nazwa] NVARCHAR(255),
   [Prawa] NTEXT,
   [Hasło] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Zarzad]
(
   [Id] INT NOT NULL IDENTITY (4,1),
   [Data_od] DATETIME,
   [Data_do] DATETIME,
   [Prezes] NVARCHAR(255),
   [Wiceprezes] NVARCHAR(255),
   [Naczelnik] NVARCHAR(255),
   [Zastępca naczelnika] NVARCHAR(255),
   [Sekretarz] NVARCHAR(255),
   [Skarbnik] NVARCHAR(255),
   [Gospodarz] NVARCHAR(255),
   [Kronikarz] NVARCHAR(255),
   [Członek] NVARCHAR(255),
   [Przewodniczący] NVARCHAR(255),
   [Wiceprzewodniczący] NVARCHAR(255),
   [Sekretarz komisji] NVARCHAR(255),
   [Informacje] NTEXT,
   [Do teraz] BIT DEFAULT ((0)),
   [Członek 2] NVARCHAR(255),
   [Członek 3] NVARCHAR(255),
   [IdJednostki] INT
);

CREATE TABLE [Zawody]
(
   [Id] INT NOT NULL IDENTITY (7,1),
   [Data] DATETIME,
   [Szczebel] NVARCHAR(50),
   [Grupa] NVARCHAR(255),
   [Miejsce] NVARCHAR(50),
   [Mężczyźni] FLOAT,
   [Kobiety] FLOAT,
   [Chłopcy] FLOAT,
   [Dziewczęta] FLOAT,
   [Informacje] NVARCHAR(255),
   [IdJednostki] INT
);

SET IDENTITY_INSERT [Akcje] ON;

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (13, 1, '2015.07.08 00:00:00.000', '', 'Kropkowice', 'Wypadek drogowy', 'Teren powiatu', '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 'Jan Kałużny', '', '201000000001', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (14, 2, '2010.12.02 00:00:00.000', '', 'Jan Kudłacz
ul. Kwiatowa 5/4
56-658 Kropkowice', 'Pożar', 'Teren powiatu', '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 'Dominik Bąkowski', '', '201000000004', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (15, 3, '2014.11.16 00:00:00.000', '', 'droga krajowa nr 8
Sztabin', 'Pożar', 'Poza powiatem', '2014.11.16 11:45:00.000', '2014.11.16 14:15:00.000', 'Andrzej Palczewski', '', '201000000003', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (23, 11, '2026.08.15 00:00:00.000', '', 'grabie', 'Pożar', 'Teren gminy', '2026.08.15 16:26:00.000', '2026.08.15 16:26:00.000', 'grzetorz wysocki', '', '', 0, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (17, 5, '2014.12.09 00:00:00.000', '', 'ul. Targowa
32-065 Krzeszowice', 'Akcja powodziowa', 'Teren gminy', '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 'Rafał Glinka', '', '201000000005', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (18, 6, '2012.01.10 00:00:00.000', '', 'Zgierz', 'Pożar', 'Teren gminy', '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', '', '', '2012000001', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (24, 12, '2026.08.15 00:00:00.000', 'skkp', 'grabie 132', 'Pożar', 'Teren powiatu', '2026.08.15 16:47:00.000', '2026.08.21 16:47:00.000', 'wysocki', 'pozar łąki', '012?2020', 0, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (20, 8, '2015.02.20 00:00:00.000', '', 'Boloniec', 'Wichura', 'Teren gminy', '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', '', '', '2012000003', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (21, 9, '2015.01.23 00:00:00.000', '', 'Pyrzyce', 'Pożar', 'Teren powiatu', '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', '', '', '2012000004', 15, 1, '', '', -1, NULL);

INSERT INTO [Akcje] ([Id], [Numer zdarzenia], [Data zdarzenia], [Dysponował], [Adres], [Rodzaj], [Lokalizacja], [Czas wyjazdu], [Czas powrotu], [Dowódca], [Informacje], [Numer], [Ekwiwalent], [IdJednostki], [Czas alarmowania], [Norma], [IdNormy], [Zdjecie]) VALUES (22, 10, '2012.02.01 00:00:00.000', '', 'Nowa Ruda', 'Wypadek drogowy', 'Teren gminy', '2012.02.01 12:00:00.000', '2012.02.01 16:30:00.000', '', '', '2012000005', 15, 1, '', '', -1, NULL);

SET IDENTITY_INSERT [Akcje] OFF;

SET IDENTITY_INSERT [AkcjeDodatkowe] ON;

SET IDENTITY_INSERT [AkcjeDodatkowe] OFF;

SET IDENTITY_INSERT [AkcjeInne] ON;

INSERT INTO [AkcjeInne] ([Id], [IdAkcji], [Marka], [Rodzaj], [Czas pracy], [IdJednostki]) VALUES (4, 15, 'Maska do aparatu powietrznego', 'Ultra Elite', 0, 1);

SET IDENTITY_INSERT [AkcjeInne] OFF;

SET IDENTITY_INSERT [AkcjeOsoby] ON;

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (303, 13, 11, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 148, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (304, 13, 7, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 148, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (305, 13, 8, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 148, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (306, 13, 10, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 148, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (307, 13, 9, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 148, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (295, 21, 7, '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', 255, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (296, 21, 13, '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', 255, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (297, 21, 8, '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', 255, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (291, 17, 11, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (292, 17, 7, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (293, 17, 8, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (311, 14, 11, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 197, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (312, 14, 13, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 197, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (313, 14, 10, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 197, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (314, 14, 12, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 197, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (315, 14, 7, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 197, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (287, 15, 9, '2014.11.16 11:45:00.000', '2014.11.16 14:15:00.000', 150, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (288, 15, 10, '2014.11.16 11:45:00.000', '2014.11.16 14:15:00.000', 150, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (289, 15, 13, '2014.11.16 11:45:00.000', '2014.11.16 14:15:00.000', 150, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (290, 15, 20, '2014.11.16 11:45:00.000', '2014.11.16 14:15:00.000', 150, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (294, 17, 9, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (278, 18, 11, '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', 280, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (279, 18, 13, '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', 280, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (280, 18, 8, '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', 280, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (281, 18, 10, '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', 280, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (282, 18, 16, '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', 280, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (283, 22, 15, '2012.02.01 12:00:00.000', '2012.02.01 16:30:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (284, 22, 9, '2012.02.01 12:00:00.000', '2012.02.01 16:30:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (285, 22, 16, '2012.02.01 12:00:00.000', '2012.02.01 16:30:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (286, 22, 10, '2012.02.01 12:00:00.000', '2012.02.01 16:30:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (298, 20, 11, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (299, 20, 7, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (300, 20, 8, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (301, 20, 19, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (302, 20, 16, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 270, 1, -1);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (308, 23, 22, '2026.08.15 16:26:00.000', '2026.08.15 16:26:00.000', 0, 1, 10);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (309, 23, 12, '2026.08.15 16:26:00.000', '2026.08.15 16:26:00.000', 0, 1, 10);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (310, 23, 10, '2026.08.15 16:26:00.000', '2026.08.15 16:26:00.000', 0, 1, 10);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (316, 24, 19, '2026.08.15 16:47:00.000', '2026.08.21 16:47:00.000', 8640, 1, 10);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (317, 24, 12, '2026.08.15 16:47:00.000', '2026.08.21 16:47:00.000', 8640, 1, 10);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (318, 24, 17, '2026.08.15 16:47:00.000', '2026.08.21 16:47:00.000', 8640, 1, 10);

INSERT INTO [AkcjeOsoby] ([Id], [IdAkcji], [IdOsoby], [Start], [Koniec], [Czas], [IdJednostki], [IdSamochodu]) VALUES (319, 24, 16, '2026.08.15 16:47:00.000', '2026.08.21 16:47:00.000', 8640, 1, 10);

SET IDENTITY_INSERT [AkcjeOsoby] OFF;

SET IDENTITY_INSERT [AkcjeSamochody] ON;

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (154, 13, 9, 65895, 65990, 95, 45, 30, 0, 'False', 1, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (155, 13, 7, 125095, 125095, 0, 0, 0, 0, 'False', 1, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (158, 14, 7, 55986, 56125, 139, 80, 60, 0, 'False', 1, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (159, 14, 9, 85600, 85789, 189, 50, 30, 0, 'False', 1, '2010.12.02 05:23:00.000', '2010.12.02 08:40:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (145, 15, 8, 45896, 46256, 360, 10, 10, 0, 'False', 1, '2014.11.16 11:45:00.000', '2014.11.16 14:15:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (146, 17, 7, 125000, 125095, 95, 43, 25, 0, 'False', 1, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (147, 17, 10, 55689, 55765, 76, 0, 0, 0, 'False', 1, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (143, 18, 7, 16000, 16300, 300, 30, 0, 0, 'False', 1, '2012.01.10 20:00:00.000', '2012.01.11 00:40:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (149, 21, 10, 17200, 17600, 400, 0, 0, 0, 'False', 1, '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (144, 22, 8, 15400, 15485, 85, 0, 30, 0, 'False', 1, '2012.02.01 12:00:00.000', '2012.02.01 16:30:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (152, 20, 7, 16000, 16200, 200, 0, 0, 0, 'False', 1, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (153, 20, 10, 16000, 16200, 200, 0, 0, 0, 'False', 1, '2015.02.20 05:30:00.000', '2015.02.20 10:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (156, 13, 8, 46256, 46256, 0, 0, 0, 0, 'False', 1, '2015.07.08 16:17:00.000', '2015.07.08 18:45:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (150, 21, 7, 125095, 125095, 0, 0, 0, 0, 'False', 1, '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (151, 21, 10, 55765, 55765, 0, 0, 0, 0, 'False', 1, '2015.01.23 07:45:00.000', '2015.01.23 12:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (148, 17, 10, 55765, 55765, 0, 0, 0, 0, 'False', 1, '2014.12.09 00:00:00.000', '2014.12.09 00:00:00.000', 0, '');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (157, 23, 10, 55765, 55774, 9, 0, 0, 0, 'False', 1, '2026.08.15 16:26:00.000', '2026.08.15 16:26:00.000', 0, 'radodla zobro');

INSERT INTO [AkcjeSamochody] ([Id], [IdAkcji], [IdSamochodu], [Początkowy stan licznika], [Końcowy stan licznika], [Przejechany dystans], [Czas pracy autopompy], [Czas pracy na postoju], [Czas pracy ogrzewania], [Rozruch], [IdJednostki], [Start], [Koniec], [Czas pracy wyciągarki], [Kierowca]) VALUES (160, 24, 10, 55774, 55781, 7, 0, 0, 0, 'False', 1, '2026.08.15 16:47:00.000', '2026.08.21 16:47:00.000', 0, 'ziobr rda');

SET IDENTITY_INSERT [AkcjeSamochody] OFF;

SET IDENTITY_INSERT [AkcjeSprzet] ON;

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (69, 18, 6, 120, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (76, 21, 6, 120, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (71, 22, 7, 55, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (78, 20, 7, 180, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (73, 15, 7, 60, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (74, 15, 8, 20, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (77, 21, 7, 40, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (75, 17, 7, 45, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (70, 18, 5, 25, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (72, 22, 5, 30, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (79, 13, 6, 25, 'False', 1);

INSERT INTO [AkcjeSprzet] ([Id], [IdAkcji], [IdSprzetu], [Czas pracy], [Rozruch], [IdJednostki]) VALUES (80, 13, 8, 35, 'False', 1);

SET IDENTITY_INSERT [AkcjeSprzet] OFF;

SET IDENTITY_INSERT [AkcjeUczestnicy] ON;

SET IDENTITY_INSERT [AkcjeUczestnicy] OFF;

SET IDENTITY_INSERT [AkcjeWieszowa] ON;

SET IDENTITY_INSERT [AkcjeWieszowa] OFF;

SET IDENTITY_INSERT [Jednostki] ON;

INSERT INTO [Jednostki] ([Id], [Skrót], [Nazwa], [Miejscowość], [Miejsce sprzedaży], [Hasło], [Hasło administratora]) VALUES (1, 'OSP Nowa Góra', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Nowa Góra', 757602046, 757602046);

SET IDENTITY_INSERT [Jednostki] OFF;

SET IDENTITY_INSERT [Kasa] ON;

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (36, 'KP/2010/20', 'KP - wpłata do kasy', 'money', 26, 'Wpłata za : Składka za rok 2012', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Jarosław Zubilewicz
Targowa
32-065 Krzeszowice', 40, '2012.02.22 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (37, 'KP/2011/21', 'KP - wpłata do kasy', 'money', 27, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Jarosław Zubilewicz
Targowa
32-065 Krzeszowice', 50, '2015.01.17 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (38, 'KP/2012/22', 'KP - wpłata do kasy', 'money', 28, 'Wpłata za : Składka za rok 2012', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Jarosław Zubilewicz
Targowa
32-065 Krzeszowice', 50, '2012.01.30 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (39, 'KP/2012/23', 'KP - wpłata do kasy', 'money', 29, 'Wpłata za : pogrzeb strażaka', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Jarosław Zubilewicz
Targowa
32-065 Krzeszowice', 50, '2015.02.09 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (40, 'KP/2012/24', 'KP - wpłata do kasy', 'money', 30, 'Wpłata za : Składka za rok 2012', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Albert Dorynek

 Krapkowice', 10, '2014.01.23 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (41, 'KP/2009/25', 'KP - wpłata do kasy', 'money', 31, 'Wpłata za : Składka za rok 2013', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Marta Kozłowska

 Rybkowo', 10, '2013.07.28 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (42, 'KP/2010/26', 'KP - wpłata do kasy', 'money', 32, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Marta Kozłowska

 Rybkowo', 10, '2015.02.01 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (43, 'KP/2011/27', 'KP - wpłata do kasy', 'money', 33, 'Wpłata za : Składka za rok 2011', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Marta Kozłowska

 Rybkowo', 10, '2011.02.09 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (44, 'KP/2012/28', 'KP - wpłata do kasy', 'money', 34, 'Wpłata za : Składka za rok 2012', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Marta Kozłowska

 Rybkowo', 20, '2012.01.30 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (45, 'KP/2010/29', 'KP - wpłata do kasy', 'money', 35, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Angelika Sławkowska

 Krapkowice', 10, '2015.07.12 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (46, 'KP/2011/30', 'KP - wpłata do kasy', 'money', 36, 'Wpłata za : Składka za rok 2011', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Angelika Sławkowska

 Krapkowice', 10, '2011.02.01 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (47, 'KP/2012/31', 'KP - wpłata do kasy', 'money', 37, 'Wpłata za : Składka za rok 2012', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Angelika Sławkowska

 Krapkowice', 10, '2012.02.09 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (48, 'KW/2012/12', 'KW - wypłata z kasy', '', -1, 'tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 150, '2012.01.03 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (49, 'KW/2012/13', 'KW - wypłata z kasy', '', -1, 'taknowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 55, '2012.02.09 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (50, 'KW/2012/14', 'KW - wypłata z kasy', '', -1, 'tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 280, '2012.01.16 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (51, 'KW/2012/15', 'KW - wypłata z kasy', '', -1, 'tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 58, '2012.01.11 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (52, 'KW/2012/16', 'KW - wypłata z kasy', '', -1, 'tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 145, '2012.01.24 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (54, 'KW/2012/18', 'KW - wypłata z kasy', 'fillup', 38, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 85, '2012.02.01 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (55, 'KW/2012/19', 'KW - wypłata z kasy', 'fillup', 33, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 55, '2015.01.09 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (6, 'KW/2010/1', 'KW - wypłata z kasy', 'fillup', 26, 'Wypłata na tankowanie, nr faktury : FV/2010/03/15/78', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 475, '2015.03.15 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (7, 'KW/2010/2', 'KW - wypłata z kasy', 'fillup', 27, 'Wypłata na tankowanie, nr faktury : 2010/04/14/FV-89', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 436, '2014.04.14 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (8, 'KW/2010/3', 'KW - wypłata z kasy', 'fillup', 28, 'Wypłata na tankowanie, nr faktury : 2010/05/11/FV-95', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 105, '2015.05.11 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (9, 'KW/2010/4', 'KW - wypłata z kasy', 'fillup', 23, 'Wypłata na tankowanie, nr faktury : 2010/07/13/FV-123', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 360, '2015.07.13 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (10, 'KW/2010/5', 'KW - wypłata z kasy', 'fillup', 29, 'Wypłata na tankowanie, nr faktury : FV/2010-08-09/65', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 458, '2014.08.09 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (11, 'KW/2010/6', 'KW - wypłata z kasy', 'fillup', 24, 'Wypłata na tankowanie, nr faktury : 2010/08/25/FV-658', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 280, '2011.08.25 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (17, 'KP/2009/1', 'KP - wpłata do kasy', '', -1, 'Wpłata początkowa, ustalenie stanu kasy', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 9000, '2009.12.27 00:00:00.000', '', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (18, 'KP/2011/2', 'KP - wpłata do kasy', 'money', 11, 'Wpłata za : Pogrzeb strażaka', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Rafał Piątkowski
Polna
32-065 Krzeszowice', 10, '2011.02.01 00:00:00.000', '', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (19, 'KP/2011/3', 'KP - wpłata do kasy', 'money', 4, 'Wpłata za : Pogrzeb strażaka', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Piotr Calik
Słoneczna 4
32-065  Krzeszowice', 10, '2015.02.01 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (20, 'KP/2011/4', 'KP - wpłata do kasy', 'money', 12, 'Wpłata za : Składka za rok 2011', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Rafał Piątkowski
Polna
32-065 Krzeszowice', 50, '2011.03.11 00:00:00.000', '', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (21, 'KP/2011/5', 'KP - wpłata do kasy', 'money', 3, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Jakub Głowacz
3 Maja
00-001 Kropkowice', 50, '2015.03.11 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (12, 'KW/2010/7', 'KW - wypłata z kasy', 'fillup', 30, 'Wypłata na tankowanie, nr faktury : 2010/09/08/FV-45', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 515, '2014.09.08 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (13, 'KW/2010/8', 'KW - wypłata z kasy', 'fillup', 21, 'Wypłata na tankowanie, nr faktury : FV/2010-10-04/55', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 350, '2013.10.04 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (14, 'KW/2010/9', 'KW - wypłata z kasy', 'fillup', 25, 'Wypłata na tankowanie, nr faktury : FV/2010-10-19/59', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 45, '2014.10.19 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (15, 'KW/2010/10', 'KW - wypłata z kasy', 'fillup', 31, 'Wypłata na tankowanie, nr faktury : Fv/2010-11-22/245', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 85, '2013.11.22 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (16, 'KW/2010/11', 'KW - wypłata z kasy', 'fillup', 22, 'Wypłata na tankowanie, nr faktury : FV/2010-12-06/87', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 415, '2014.12.06 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (22, 'KP/2011/6', 'KP - wpłata do kasy', 'money', 2, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Miłosz Piętak
Łąkowa 
32-065 Krzeszowice', 50, '2015.03.11 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (23, 'KP/2012/7', 'KP - wpłata do kasy', 'money', 13, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Agnieszka  Walczak

 ', 50, '2015.01.10 00:00:00.000', '', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (24, 'KP/2012/8', 'KP - wpłata do kasy', 'money', 14, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Rafał Zarychta
Polna
 Szczecinek', 50, '2015.01.03 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (25, 'KP/2012/9', 'KP - wpłata do kasy', 'money', 15, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Renata Mazur

 ', 50, '2015.01.02 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (26, 'KP/2011/10', 'KP - wpłata do kasy', 'money', 16, 'Wpłata za : Składka za rok 2011', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Ryszard Skorupa

 Kropkowice', 40, '2011.01.03 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (27, 'KP/2012/11', 'KP - wpłata do kasy', 'money', 17, 'Wpłata za : Składka za rok 2014', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Ryszard Skorupa

 Kropkowice', 50, '2014.01.02 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (28, 'KP/2012/12', 'KP - wpłata do kasy', 'money', 18, 'Wpłata za : Składka za rok 2014', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Barbara Żakowska

 ', 50, '2014.01.02 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (29, 'KP/2012/13', 'KP - wpłata do kasy', 'money', 19, 'Wpłata za : Składka za rok 2014', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Jakub Głowacz
3 Maja
00-001 Kropkowice', 50, '2014.01.30 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (30, 'KP/2012/14', 'KP - wpłata do kasy', 'money', 20, 'Wpłata za : Składka za rok 2014', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Paweł Kos
Długa
32-065 Krzeszowice', 50, '2014.01.30 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (31, 'KP/2011/15', 'KP - wpłata do kasy', 'money', 21, 'Wpłata za : pogrzeb strażaka', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Paweł Kos
Długa
32-065 Krzeszowice', 100, '2015.07.04 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (32, 'KP/2011/16', 'KP - wpłata do kasy', 'money', 22, 'Wpłata za : Składka za rok 2011', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Paweł Kos
Długa
32-065 Krzeszowice', 50, '2011.01.17 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (33, 'KP/2012/17', 'KP - wpłata do kasy', 'money', 23, 'Wpłata za : Składka za rok 2012', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Rafał Piątkowski
Polna
32-065 Krzeszowice', 50, '2012.01.24 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, NULL);

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (34, 'KP/2012/18', 'KP - wpłata do kasy', 'money', 24, 'Wpłata za : Składka za rok 2013', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Dominik  Świątkowski
Liliowa
32-065 Krzeszowice', 50, '2013.01.30 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (35, 'KP/2011/19', 'KP - wpłata do kasy', 'money', 25, 'Wpłata za : Składka za rok 2015', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'Dominik  Świątkowski
Liliowa
32-065 Krzeszowice', 50, '2015.01.24 00:00:00.000', '0000 0000 00000 5555 55555', '', '', 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (56, 'KW/2011/20', 'KW - wypłata z kasy', 'fillup', 32, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 150, '2011.01.03 00:00:00.000', '0000 0000 00000 5555 55555', '', NULL, 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (57, 'KW/2015/21', 'KW - wypłata z kasy', 'fillup', 37, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 290, '2015.01.30 00:00:00.000', '0000 0000 00000 5555 55555', '', NULL, 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (58, 'KW/2013/22', 'KW - wypłata z kasy', 'fillup', 36, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 145, '2013.01.24 00:00:00.000', '0000 0000 00000 5555 55555', '', NULL, 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (59, 'KW/2014/23', 'KW - wypłata z kasy', 'fillup', 34, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 280, '2014.01.16 00:00:00.000', '0000 0000 00000 5555 55555', '', NULL, 1, '');

INSERT INTO [Kasa] ([Id], [IdDokumentu], [Typ dokumentu], [Referencja], [ReferencjaId], [Tytuł], [Uwagi], [Sprzedawca], [Miejsce wystawienia], [Kontrahent], [Wartość], [Data wystawienia], [Numer konta], [Użytkownik], [Typ numeracji], [IdJednostki], [Grupa]) VALUES (60, 'KW/2015/24', 'KW - wypłata z kasy', 'fillup', 39, 'Wypłata na tankowanie', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', '', 210, '2015.02.03 00:00:00.000', '0000 0000 00000 5555 55555', '', NULL, 1, '');

SET IDENTITY_INSERT [Kasa] OFF;

SET IDENTITY_INSERT [Ksiega] ON;

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (7, 1, '2013.03.01 00:00:00.000', '', '', 'Urządzenie ratownicze', ' Holmatro', '', '2013.02.25 00:00:00.000', 43000, '', 1, 'OSP', 'Środki trwałe', '', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (8, 2, '2013.09.20 00:00:00.000', '', '', 'Radiotelefon', '', 'GM 360', '2013.09.20 00:00:00.000', 1700, '', 1, 'OSP', 'Środki trwałe', '', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (9, 3, '2014.03.15 00:00:00.000', '2020-10-11', 'Uszkodzona', 'Maska nadciśnieniowa', 'Hernan', '', '2014.03.15 00:00:00.000', 150, '', 1, 'OSP', 'Środki trwałe', '', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (10, 4, '2014.05.11 00:00:00.000', '', '', 'Pilarka', 'Sthil', '', '2014.05.11 00:00:00.000', 450, '', 1, 'OSP', 'Środki trwałe', '', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (11, 5, '2015.08.01 00:00:00.000', '', '', 'Zestaw ratowniczy', '', 'PSP-R1', '2015.08.01 00:00:00.000', 650, '', 1, 'OSP', 'Środki trwałe', '', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (12, 6, '2011.08.01 00:00:00.000', '', '', 'Maska do aparatu powietrznego', 'Ultra Elite', '', '2011.07.04 00:00:00.000', 400, '', 5, 'OSP', 'Środki trwałe', 'FV/2011/7/25', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (13, 7, '2015.01.10 00:00:00.000', '', '', 'Pas bojowy', '', 'PS-88', '2015.12.15 00:00:00.000', 85, '', 20, 'OSP', 'Środki trwałe', 'FV/2011/1/10', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (14, 8, '2012.11.09 00:00:00.000', '', '', 'Pochewka na koszulę', '', '', '2012.10.28 00:00:00.000', 16, '', 20, 'OSP', 'Środki trwałe', 'FV/2010/10/89', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (15, 9, '2013.03.01 00:00:00.000', '', '', 'Topór strażacki', '', 'lekki', '2013.02.21 00:00:00.000', 80, '', 10, 'OSP', 'Środki trwałe', 'FV/2011/2/56', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (16, 10, '2013.09.05 00:00:00.000', '', '', 'Środki pianotwórcze', 'Roteor', '3 %', '2013.09.01 00:00:00.000', 7, '', 50, 'OSP', 'Środki nietrwałe', 'FV/2011/9/15', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (17, 11, '2014.06.06 00:00:00.000', '', '', 'Podpinka linkowa', '', '', '2014.06.01 00:00:00.000', 25, '', 20, 'OSP', 'Środki trwałe', 'FV/2011/5/1', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (18, 12, '2014.02.15 00:00:00.000', '', '', 'Zatrzaśniki', '', 'AZ 011', '2014.02.10 00:00:00.000', 13, '', 20, 'OSP', 'Środki trwałe', 'FV/2011/2/21', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

INSERT INTO [Ksiega] ([Id], [Lp], [Data wprowadzenia], [Data wykreślenia], [Powód wykreślenia], [Rodzaj], [Marka], [Typ], [Data zakupu], [Kwota zakupu], [Dane sprzedawcy], [Ilość], [Właściciel], [Typ środka], [Numer faktury], [Informacje], [Numer inwentarzowy], [Miejsce użytkowania], [IdJednostki], [Numer CNBOP], [Termin przydatności], [Zdjecie], [Data produkcji]) VALUES (19, 13, '2014.05.24 00:00:00.000', '', '', 'Sygnalizator bezruchu', 'Dräger Bodyguard', '1000', '2014.05.19 00:00:00.000', 450, '', 2, 'OSP', 'Środki trwałe', 'FV/2011/5/26', '', '', '', 1, '', '2500.01.01 00:00:00.000', NULL, '2500.01.01 00:00:00.000');

SET IDENTITY_INSERT [Ksiega] OFF;

SET IDENTITY_INSERT [Magazyn] ON;

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (1, '2015.03.01 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 7, 'Urządzenie ratownicze  Holmatro ', 1, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (2, '2015.09.20 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 8, 'Radiotelefon GM 360', 1, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (3, '2014.03.15 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 9, 'Maska nadciśnieniowa Hernan ', 1, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (4, '2015.05.11 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 10, 'Pilarka Sthil ', 1, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (5, '2013.08.01 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 11, 'Zestaw ratowniczy PSP-R1', 1, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (6, '2014.08.01 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 12, 'Maska do aparatu powietrznego Ultra Elite ', 5, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (7, '2013.01.10 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 13, 'Pas bojowy PS-88', 20, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (8, '2015.11.09 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 14, 'Pochewka na koszulę ', 20, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (9, '2011.03.01 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 15, 'Topór strażacki lekki', 10, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (10, '2015.09.05 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 16, 'Środki pianotwórcze Roteor 3 %', 50, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (11, '2013.06.06 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 17, 'Podpinka linkowa ', 20, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (12, '2011.02.15 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 18, 'Zatrzaśniki AZ 011', 20, '', 1);

INSERT INTO [Magazyn] ([Id], [Data], [Źródło], [Cel], [IdŹródła], [IdCelu], [NazwaŹródła], [NazwaCelu], [IdProduktu], [NazwaProduktu], [Ilość], [Uwagi], [IdJednostki]) VALUES (13, '2014.05.24 00:00:00.000', 'ZAKUP', 'MAGAZYN', -1, 1, 'Zakup', 'Magazyn : Główny', 19, 'Sygnalizator bezruchu Dräger Bodyguard 1000', 2, '', 1);

SET IDENTITY_INSERT [Magazyn] OFF;

SET IDENTITY_INSERT [Normy] ON;

SET IDENTITY_INSERT [Normy] OFF;

SET IDENTITY_INSERT [Odznaczenia] ON;

INSERT INTO [Odznaczenia] ([Id], [IdOsoby], [Nazwa], [Informacje], [IdJednostki], [Data]) VALUES (23, 14, 'Medal Honorowego Członka', '', 1, '2500.01.01 00:00:00.000');

INSERT INTO [Odznaczenia] ([Id], [IdOsoby], [Nazwa], [Informacje], [IdJednostki], [Data]) VALUES (22, 21, 'Medal Honorowy', '', 1, '2500.01.01 00:00:00.000');

INSERT INTO [Odznaczenia] ([Id], [IdOsoby], [Nazwa], [Informacje], [IdJednostki], [Data]) VALUES (24, 12, 'Odznaczenie 1', 'ifo cfsdf', 1, '2500.01.01 00:00:00.000');

INSERT INTO [Odznaczenia] ([Id], [IdOsoby], [Nazwa], [Informacje], [IdJednostki], [Data]) VALUES (25, 12, 'Odznaczenie 2', 'info2', 1, '2500.01.01 00:00:00.000');

SET IDENTITY_INSERT [Odznaczenia] OFF;

SET IDENTITY_INSERT [Osoby] ON;

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (7, 'Jakub', '', 'Głowacz', 'Bogusław', '3 Maja', '', '', 'Kropkowice', '00-001', '', 'Kropkowice', '1980.06.11 00:00:00.000', '80061189569', '568-122-14-55', 'OOO 23453', 'Mężczyzna', 'strażak', '2010.02.01 00:00:00.000', '2500.01.01 00:00:00.000', '', '12 854 587 89', '', '', '2018.02.01 00:00:00.000', '2018.02.01 00:00:00.000', '2025.12.01 00:00:00.000', '', '', 'Mężczyźni', 'Zwyczajni', '', '', '', '2012-2-4', '2025-2-4', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (8, 'Paweł', '', 'Kos', '', 'Długa', '', '', 'Krzeszowice', '32-065', '', 'Krzeszowice', '1978.02.14 00:00:00.000', '780214985632', '000-000-00-01', 'PPP 222 33', 'Mężczyzna', 'strażak', '2010.08.16 00:00:00.000', '2500.01.01 00:00:00.000', '', '45-569-58-98', '', '', '2017.07.18 00:00:00.000', '2017.07.18 00:00:00.000', '2020.04.14 00:00:00.000', '', '', 'Mężczyźni', 'Zwyczajni', '', '', '', '2012-1-26', '2020-1-26', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (9, 'Jarosław', '', 'Zubilewicz', '', 'Targowa', '', '', 'Krzeszowice', '32-065', '', 'Krzeszowice', '2010.12.09 00:00:00.000', '', '', '', 'Mężczyzna', 'strażak', '2010.02.01 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2017.02.01 00:00:00.000', '2017.02.01 00:00:00.000', '2025.10.31 00:00:00.000', '', '', 'Mężczyźni', 'Zwyczajni', '', '', '', '2012-2-4', '2025-2-4', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (10, 'Dominik ', '', 'Świątkowski', '', 'Liliowa', '', '', 'Krzeszowice', '32-065', '', 'Krzeszowice', '2010.12.09 00:00:00.000', '', '', '', 'Mężczyzna', 'starszy strażak', '2009.09.01 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2017.09.01 00:00:00.000', '2017.09.01 00:00:00.000', '2025.09.01 00:00:00.000', '', '', 'Mężczyźni', 'Zwyczajni', '', '', '', '2012-2-4', '2025-2-4', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (11, 'Piotr', '', 'Calik', '', 'Słoneczna 4', '', '', 'Krzeszowice', '32-065 ', '', 'Krzeszowice', '1970.08.10 00:00:00.000', '70081063985', '123-654-78-09', '', 'Mężczyzna', 'starszy strażak', '2008.01.21 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2016.01.21 00:00:00.000', '2016.01.21 00:00:00.000', '2020.01.21 00:00:00.000', '', '', '', 'Wspierający', '', '', '', '2012-1-26', '2020-1-26', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (12, 'Miłosz', '', 'Piętak', '', 'Łąkowa ', '', '', 'Krzeszowice', '32-065', '', ' Krzeszowice', '1985.07.15 00:00:00.000', '85071569858', '222-111-36-52', '', 'Mężczyzna', 'Strażak', '2005.07.15 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2018.05.25 00:00:00.000', '2018.05.25 00:00:00.000', '2030.05.25 00:00:00.000', '', '', '', 'Wspierający', '', '435435435 43 543 54535', 'ABJHasasdas d', '2012-1-26', '2030-1-26', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (13, 'Rafał', '', 'Piątkowski', '', 'Polna', '', '', 'Krzeszowice', '32-065', '', 'Krzeszowice', '2010.10.01 00:00:00.000', '', '', '', 'Mężczyzna', 'starszy strażak', '2009.01.19 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2016.12.09 00:00:00.000', '2016.12.09 00:00:00.000', '2020.12.09 00:00:00.000', '', '', 'Mężczyźni', 'Zwyczajni', '', '', '', '2012-1-26', '2020-1-26', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (14, 'Piotr', '', 'Nowak', 'Zbigniew', 'Górska', '', '', 'Kropkowice', '555-489', '', 'Kropkowice', '1969.06.11 00:00:00.000', '', '', '', 'Mężczyzna', '', '1989.01.18 00:00:00.000', '2019.01.01 00:00:00.000', '', '11 222 33 33', '', '', '2017.07.02 00:00:00.000', '2017.07.02 00:00:00.000', '2030.05.07 00:00:00.000', '', '', '', 'Honorowi', 'Kraków', '0000 0000 0000 5555 9999 11111', '', '2012-2-6', '2030-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (15, 'Barbara', '', 'Żakowska', '', '', '', '', '', '', '', '', '1983.04.19 00:00:00.000', '', '', '', 'Mężczyzna', 'strażak', '2011.11.14 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2017.10.31 00:00:00.000', '2017.10.31 00:00:00.000', '2020.02.06 00:00:00.000', '', '', 'Kobiety', 'Zwyczajni', '', '', '', '2012-2-6', '2020-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (16, 'Agnieszka ', '', 'Walczak', '', '', '', '', '', '', '', '', '1985.07.16 00:00:00.000', '', '', '', 'Kobieta', 'starszy strażak', '2003.05.01 00:00:00.000', '2500.01.01 00:00:00.000', 'B;', '', '', '', '2020.05.28 00:00:00.000', '2020.05.28 00:00:00.000', '2025.02.06 00:00:00.000', '', '', 'Kobiety', 'Zwyczajni', 'Trzebnica', '', 'ASDE 000000', '2012-2-6', '2025-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (17, 'Patrycja ', '', 'Sokowicz', '', '', '', '', '', '', '', '', '2012.02.06 00:00:00.000', '', '', '', 'Mężczyzna', '', '2012.02.06 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2017.02.06 00:00:00.000', '2017.02.06 00:00:00.000', '2025.02.06 00:00:00.000', '', '', 'Kobiety', 'Zwyczajni', '', '', '', '2012-2-6', '2025-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (18, 'Rafał', '', 'Zarychta', '', 'Polna', '', '', 'Szczecinek', '', '', '', '1995.02.01 00:00:00.000', '', '', '', 'Mężczyzna', 'MDP', '2010.11.15 00:00:00.000', '2500.01.01 00:00:00.000', 'B;', '', '', '', '2018.04.30 00:00:00.000', '2018.04.30 00:00:00.000', '2025.02.06 00:00:00.000', '', '', 'Chłopcy', 'MDP', '', '', '', '2012-2-6', '2025-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (19, 'Renata', 'Bernadetta', 'Mazur', 'Jan', '', '', '', '', '', '', '', '1989.05.09 00:00:00.000', '89050900000', '', '', 'Kobieta', 'strażak', '2009.06.10 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2019.02.16 00:00:00.000', '2019.02.16 00:00:00.000', '2020.02.16 00:00:00.000', '', '', 'Kobiety', 'Zwyczajni', 'Rzeszów', '', '', '2012-2-6', '2020-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (20, 'Ryszard', '', 'Skorupa', '', '', '', '', 'Kropkowice', '', '', '', '1948.11.09 00:00:00.000', '', '', '', 'Mężczyzna', '', '1970.02.23 00:00:00.000', '2500.01.01 00:00:00.000', 'B;', '', '', '', '2018.03.30 00:00:00.000', '2018.03.30 00:00:00.000', '2020.02.06 00:00:00.000', '', '', 'Mężczyźni', 'Zwyczajni', 'Kropkowice', '', '', '2012-2-6', '2020-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (21, 'Edmund', '', 'Chochlewicz', '', '', '', '', '', '', '', '', '1960.06.22 00:00:00.000', '', '', '', 'Mężczyzna', '', '1985.05.01 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2016.03.30 00:00:00.000', '2016.03.30 00:00:00.000', '2017.02.06 00:00:00.000', '', '', '', 'Honorowi', '', '', '', '2000-2-6', '2017-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (22, 'Albert', '', 'Dorynek', '', '', '', '', 'Krapkowice', '', '', '', '1996.12.16 00:00:00.000', '', '', '', 'Mężczyzna', 'MDP', '2011.02.14 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2017.02.06 00:00:00.000', '2017.02.06 00:00:00.000', '2025.02.06 00:00:00.000', '', '', 'Chłopcy', 'MDP', '', '', '', '2012-2-6', '2025-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (27, 'Angelika', '', 'Sławkowska', '', '', '', '', 'Krapkowice', '', '', '', '1995.03.20 00:00:00.000', '', '', '', 'Kobieta', 'MDP', '2010.06.21 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2018.02.06 00:00:00.000', '2018.02.06 00:00:00.000', '2025.02.06 00:00:00.000', '', '', 'Dziewczęta', 'MDP', 'Zgierz', '', '', '2012-2-6', '2020-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

INSERT INTO [Osoby] ([Id], [Imię], [Drugie imię], [Nazwisko], [Imię ojca], [Ulica], [Numer domu], [Numer lokalu], [Miejscowość], [Kod], [Poczta], [Gmina], [Data urodzenia], [Pesel], [Nip], [Nr dowodu], [Płeć], [Funkcja], [Data rozpoczęcia], [Data zakończenia], [Prawo jazdy], [Telefon stacjonarny], [Telefon komórkowy], [Email], [Badania lekarskie], [Badania psychologiczne], [Uprawnienia na samochód], [Kwalifikacje], [Informacje], [Grupa], [Nadgrupa], [Miejsce urodzenia], [Konto], [Numer prawo jazdy], [Data prawo jazdy], [Ważność prawo jazdy], [Miejsce pracy], [IdJednostki], [Numer zaświadczenia], [Szkolenie BHP], [Pomoc], [Pomoc termin], [Zdjecie], [Numer ewidencyjny], [Wykształcenie], [Numer legitymacji], [Przebieg służby], [Uczestniczy w akcjach], [Komora]) VALUES (28, 'Marta', '', 'Kozłowska', '', '', '', '', 'Rybkowo', '', '', '', '1994.10.16 00:00:00.000', '', '', '', 'Kobieta', 'MDP', '2009.07.01 00:00:00.000', '2500.01.01 00:00:00.000', '', '', '', '', '2017.02.06 00:00:00.000', '2017.02.06 00:00:00.000', '2020.02.06 00:00:00.000', '', '', 'Dziewczęta', 'MDP', 'Rybkowo', '', '', '2012-2-6', '2020-2-6', '', 1, '', '2500.01.01 00:00:00.000', '', '2500.01.01 00:00:00.000', NULL, '', '', '', '', 'True', '2500.01.01 00:00:00.000');

SET IDENTITY_INSERT [Osoby] OFF;

SET IDENTITY_INSERT [OsobyWyposazenie] ON;

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (79, 19, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (80, 19, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (81, 19, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (85, 15, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (86, 15, 'Topór strażacki', '', 'lekki', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (88, 7, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (89, 7, 'Topór strażacki', '', 'lekki', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (90, 8, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (91, 8, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (92, 8, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (93, 13, 'Radiotelefon', '', 'GM 360', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (94, 10, 'Zestaw ratowniczy', '', 'PSP-R1', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (95, 10, 'Podpinka linkowa', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (96, 10, 'Maska do aparatu powietrznego', 'Ultra Elite', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (97, 9, 'Podpinka linkowa', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (98, 9, 'Topór strażacki', '', 'lekki', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (99, 9, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (111, 11, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (112, 11, 'Topór strażacki', '', 'lekki', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (113, 11, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (117, 14, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (118, 14, 'Podpinka linkowa', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (119, 14, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (120, 21, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (121, 21, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (122, 22, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (123, 22, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (124, 18, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (125, 18, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (126, 18, 'Topór strażacki', '', 'lekki', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (127, 28, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (128, 28, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (129, 28, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (130, 27, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (131, 27, 'Podpinka linkowa', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (132, 27, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (133, 20, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (134, 20, 'Podpinka linkowa', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (135, 16, 'Pas bojowy', '', 'PS-88', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (136, 16, 'Pochewka na koszulę', '', '', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (137, 16, 'Zatrzaśniki', '', 'AZ 011', '', 1, 1);

INSERT INTO [OsobyWyposazenie] ([Id], [IdOsoby], [Rodzaj], [Marka], [Typ], [Informacje], [Ilość], [IdJednostki]) VALUES (138, 12, 'Pilarka', 'Sthil', '', '', 1, 1);

SET IDENTITY_INSERT [OsobyWyposazenie] OFF;

SET IDENTITY_INSERT [Parametry] ON;

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (1, 'databaseVersion', '4.0.3.7', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (2, 'demoDone', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (3, 'UseLogin', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (6, 'ekwEkwiwalentColumnShow', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (7, 'ekwEkwiwalentColumnMinutes', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (8, 'ekwEkwiwalentColumnHours', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (9, 'ekwPersonColumn1', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (10, 'ekwPersonColumn2', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (11, 'ekwPersonColumn3', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (12, 'ekwPersonColumn4', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (13, 'ekwTimeColumn1', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (14, 'ekwTimeColumn2', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (15, 'ekwText1', '.............', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (16, 'ekwText2', '.............', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (17, 'ekwText3', '.............', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (18, 'ekwText4', '.............', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (19, 'ekwEkwiwalentRateColumnShow', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (20, 'Prezes', 'Prezes', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (21, 'Wiceprezes', 'Wiceprezes', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (22, 'Naczelnik', 'Naczelnik', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (23, 'Zastępca naczelnika', 'Zastępca naczelnika', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (24, 'Sekretarz', 'Sekretarz', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (25, 'Skarbnik', 'Skarbnik', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (26, 'Gospodarz', 'Gospodarz', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (27, 'Kronikarz', 'Kronikarz', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (28, 'Członek', 'Członek', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (29, 'Członek 2', 'Członek', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (30, 'Członek 3', 'Członek', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (31, 'Przewodniczący', 'Przewodniczący', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (32, 'Wiceprzewodniczący', 'Wiceprzewodniczący', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (33, 'Sekretarz komisji', 'Sekretarz komisji', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (34, 'ekwPersonColumn5', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (35, 'ekwSingleText1', '     ....................................................
    Pieczęć Ochotniczej Straży Pożarnej', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (36, 'ekwSingleText2', '............. dnia .................', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (37, 'ekwSingleText3', 'WNIOSEK', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (38, 'ekwSingleText4', 'o wypłatę ekwiwalentu za udział w działaniu ratowniczym lub szkoleniu pożarniczym organizowanym przez Państwową Straż Pożarną', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (39, 'ekwSingleText5', '1. Ochotnicza Straż Pożarna w ............. na podstawie art. 28 ust. 1-3, 5 ustawy z dnia 24 sierpnia 1991 r. o ochronie przeciwpożarowej (tekst jednolity: Dz. U. z 2002 r. Nr 147, poz. 1229 ze zm.) przedstawia listę członków, którzy wzięli udział w:
a.	działaniu ratowniczym [Akcja_Daty] o numerze ewidencyjnym zdarzenia :  [Akcja_NrZdarzenia]
b.	szkoleniu pożarniczym organizowanym przez Państwową Straż Pożarną/Gminę [Akcja_Daty]
według załączonego zaświadczenia.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (40, 'ekwSingleText6', '3. Wypłata ekwiwalentu zgodnie z porozumieniem z dnia ............. nastąpi w .............', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (41, 'ekwSingleText7', 'Zarząd Ochotniczej Straży Pożarnej w ............. zaświadcza prawdziwość danych zawartych w punktach 1-2 niniejszego wniosku.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (42, 'ekwSingleText8', '                                                                                        …………………………………………….
                                                                                        Podpis Przezesa lub Naczelnika OSP', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (43, 'ekwSingleColumn1Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (44, 'ekwSingleColumn2Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (45, 'ekwSingleColumn3Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (46, 'ekwSingleColumn4Show', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (47, 'ekwSingleColumn5Show', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (48, 'ekwSingleColumn6Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (49, 'ekwSingleColumn1Label', 'Lp', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (50, 'ekwSingleColumn2Label', 'Dane osoby', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (51, 'ekwSingleColumn3Label', 'Czas udziału w działaniu ratowniczym lub szkoleniu', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (52, 'ekwSingleColumn4Label', 'Stawka ekw.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (53, 'ekwSingleColumn5Label', 'Kwota ekw.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (54, 'ekwSingleColumn6Label', 'Podpis biorącego udział w działaniu ratowniczym lub szkoleniu', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (55, 'ekwSingleTableShowSum', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (56, 'ekwSingleTableReplaceSignature', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (57, 'ekwPersonColumn6', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (58, 'ekwPersonColumn7', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (59, 'ekwMultiText1', '     ....................................................
    Pieczęć Ochotniczej Straży Pożarnej', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (60, 'ekwMultiText2', '............. dnia .................', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (61, 'ekwMultiText3', 'WNIOSEK', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (62, 'ekwMultiText4', 'o wypłatę ekwiwalentu za udział w działaniu ratowniczym lub szkoleniu pożarniczym organizowanym przez Państwową Straż Pożarną', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (63, 'ekwMultiText5', '1. Ochotnicza Straż Pożarna w ............. na podstawie art. 28 ust. 1-3, 5 ustawy z dnia 24 sierpnia 1991 r. o ochronie przeciwpożarowej (tekst jednolity: Dz. U. z 2002 r. Nr 147, poz. 1229 ze zm.) przedstawia listę członków, którzy wzięli udział w wyjazdach w okresie [Akcje_Daty]
2. N/w członkowie OSP biorący udział w działaniu ratowniczym/szkoleniu zwracają się o wypłatę ekwiwalentu zgodnie z zapisami art. 28 ust. 1-5 ustawy z dnia 24 sierpnia 1991 r. o ochronie przeciwpożarowej:', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (64, 'ekwMultiText6', 'Zarząd Ochotniczej Straży Pożarnej w ............. zaświadcza prawdziwość danych zawartych w punktach 1-2 niniejszego wniosku.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (65, 'ekwMultiText7', '                                                                                        …………………………………………….
                                                                                        Podpis Przezesa lub Naczelnika OSP', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (66, 'ekwMultiColumn1Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (67, 'ekwMultiColumn2Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (68, 'ekwMultiColumn3Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (69, 'ekwMultiColumn4Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (70, 'ekwMultiColumn5Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (71, 'ekwMultiColumn6Show', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (72, 'ekwMultiColumn7Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (73, 'ekwMultiColumn1Label', 'Dane strażaka
Adres zdarzenia', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (74, 'ekwMultiColumn2Label', 'Wyjazd', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (75, 'ekwMultiColumn3Label', 'Przyjazd', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (76, 'ekwMultiColumn4Label', 'Czas akcji', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (77, 'ekwMultiColumn5Label', 'Data', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (78, 'ekwMultiColumn6Label', 'Kwota ekw.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (79, 'ekwMultiColumn7Label', 'Uwagi', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (80, 'ekwMultiTableShowSum', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (81, 'ekwMultiColumn7Enterol', 'Puste', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (82, 'ekwDefault', '0', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (83, 'ekwMultiColumn8Show', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (84, 'ekwMultiColumn8Label', 'Staw. ekw.', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (85, 'ekwTimeColumn3', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (86, 'ekwTimeColumn4', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (87, 'ekwMultiTimeColumn1', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (88, 'ekwMultiTimeColumn2', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (89, 'ekwMultiTableAdresFirstLine', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (90, 'ekwMultiTableAdresRodzaj', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (91, 'ekwMultiTableAdresLokalizacja', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (92, 'ekwMultiTableAdresNumer', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (93, 'ekwMultiTableAdresNo', 'Nie', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (94, 'ekwMulti2Column1Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (95, 'ekwMulti2Column2Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (96, 'ekwMulti2Column3Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (97, 'ekwMulti2Column4Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (98, 'ekwMulti2Column5Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (99, 'ekwMulti2Column6Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (100, 'ekwMulti2Column7Show', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (101, 'ekwMulti2Column1Label', 'Imię i nazwisko', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (102, 'ekwMulti2Column2Label', 'Czas udziału', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (103, 'ekwMulti2Column3Label', 'Liczba akcji', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (104, 'ekwMulti2Column4Label', 'Stawka', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (105, 'ekwMulti2Column5Label', 'Ekwiwalent', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (106, 'ekwMulti2Column6Label', 'Podpis', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (107, 'ekwMulti2TableShowSum', 'Tak', 1);

INSERT INTO [Parametry] ([Id], [Nazwa], [Wartość], [IdJednostki]) VALUES (108, 'ekwMulti2AccountShow', 'Nie', 1);

SET IDENTITY_INSERT [Parametry] OFF;

SET IDENTITY_INSERT [Przypomnienia] ON;

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (36, 'Badania psychologiczne, Dominik  Świątkowski', '2011.09.01 00:00:00.000', 10, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (37, 'Uprawnienia na samochód, Dominik  Świątkowski', '2011.09.01 00:00:00.000', 10, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (38, 'Badania psychologiczne, Piotr Calik', '2011.01.21 00:00:00.000', 11, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (39, 'Uprawnienia na samochód, Piotr Calik', '2011.01.21 00:00:00.000', 11, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (40, 'Badania psychologiczne, Miłosz Piętak', '2011.05.25 00:00:00.000', 12, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (41, 'Uprawnienia na samochód, Miłosz Piętak', '2011.05.25 00:00:00.000', 12, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (42, 'Badania psychologiczne, Rafał Piątkowski', '2010.12.09 00:00:00.000', 13, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (43, 'Uprawnienia na samochód, Rafał Piątkowski', '2010.12.09 00:00:00.000', 13, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (44, 'Badania lekarskie, Piotr Nowak', '2012.07.02 00:00:00.000', 14, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (45, 'Badania psychologiczne, Piotr Nowak', '2012.07.02 00:00:00.000', 14, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (46, 'Uprawnienia na samochód, Piotr Nowak', '2012.05.07 00:00:00.000', 14, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (47, 'Badania lekarskie, Barbara Żakowska', '2013.10.31 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (48, 'Badania psychologiczne, Barbara Żakowska', '2012.10.31 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (49, 'Badania lekarskie, Agnieszka  Walczak', '2012.05.28 00:00:00.000', 16, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (50, 'Badania psychologiczne, Agnieszka  Walczak', '2012.05.28 00:00:00.000', 16, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (51, 'Badania psychologiczne, Patrycja  Sokowicz', '2012.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (52, 'Uprawnienia na samochód, Patrycja  Sokowicz', '2012.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (53, 'Badania lekarskie, Rafał Zarychta', '2012.04.30 00:00:00.000', 18, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (54, 'Badania psychologiczne, Rafał Zarychta', '2012.04.30 00:00:00.000', 18, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (55, 'Badania psychologiczne, Renata Mazur', '2012.02.16 00:00:00.000', 19, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (56, 'Badania lekarskie, Ryszard Skorupa', '2012.03.30 00:00:00.000', 20, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (57, 'Badania psychologiczne, Ryszard Skorupa', '2012.03.30 00:00:00.000', 20, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (58, 'Badania lekarskie, Edmund Chochlewicz', '2012.03.30 00:00:00.000', 21, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (59, 'Badania psychologiczne, Edmund Chochlewicz', '2012.03.30 00:00:00.000', 21, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (60, 'Badania psychologiczne, Albert Dorynek', '2012.02.06 00:00:00.000', 22, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (61, 'Uprawnienia na samochód, Albert Dorynek', '2012.02.06 00:00:00.000', 22, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (62, 'Badania psychologiczne, Angelika Sławkowska', '2012.02.06 00:00:00.000', 27, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (63, 'Uprawnienia na samochód, Angelika Sławkowska', '2012.02.06 00:00:00.000', 27, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (64, 'Badania psychologiczne, Marta Kozłowska', '2012.02.06 00:00:00.000', 28, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (65, 'Uprawnienia na samochód, Marta Kozłowska', '2012.02.06 00:00:00.000', 28, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (66, 'Ubezpieczenie samochodu, KWS 78596, Renault, Midlum ', '2011.08.19 00:00:00.000', -1, 7, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (67, 'Ubezpieczenie samochodu, WWW 458965, Iveco, Turbo-Daily ', '2011.08.22 00:00:00.000', -1, 8, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (68, 'Ubezpieczenie samochodu, MMM 55458, Renault , Kerax', '2011.10.24 00:00:00.000', -1, 9, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (69, 'Ubezpieczenie samochodu, FFF 34775, Volvo, FL-6.220', '2011.09.19 00:00:00.000', -1, 10, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (70, 'Badania lekarskie, Piotr Calik', '2016.01.21 00:00:00.000', 11, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (71, 'Badania psychologiczne, Piotr Calik', '2016.01.21 00:00:00.000', 11, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (72, 'Badania lekarskie, Edmund Chochlewicz', '2016.03.30 00:00:00.000', 21, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (73, 'Badania psychologiczne, Edmund Chochlewicz', '2016.03.30 00:00:00.000', 21, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (1, 'Badania lekarskie, Jakub Głowacz', '2011.02.01 00:00:00.000', 7, -1, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (2, 'Badania lekarskie, Paweł Kos', '2011.07.18 00:00:00.000', 8, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (3, 'Badania lekarskie, Jarosław Zubilewicz', '2011.02.01 00:00:00.000', 9, -1, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (4, 'Badania lekarskie, Dominik  Świątkowski', '2011.09.01 00:00:00.000', 10, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (5, 'Badania lekarskie, Piotr Calik', '2011.01.21 00:00:00.000', 11, -1, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (6, 'Badania lekarskie, Miłosz Piętak', '2011.05.25 00:00:00.000', 12, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (7, 'Badania lekarskie, Rafał Piątkowski', '2010.12.09 00:00:00.000', 13, -1, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (8, 'Przegląd sprzętu, Poduszkowiec, HT-P , Anaconda', '2011.06.18 00:00:00.000', -1, -1, 5, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (9, 'Przegląd sprzętu, Agregat oddymiający z napędem wodnym, Hernan, PS-34', '2011.10.01 00:00:00.000', -1, -1, 6, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (10, 'Przegląd sprzętu, Agregat prądotwórczy , Hernan, EC 2200', '2011.09.30 00:00:00.000', -1, -1, 7, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (11, 'Przegląd sprzętu, Pompa szlamowa, Honda, WT 20X', '2011.10.01 00:00:00.000', -1, -1, 8, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (12, 'Przegląd samochodu, KWS 78596, Renault, Midlum ', '2011.03.20 00:00:00.000', -1, 7, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (13, 'Przegląd samochodu, WWW 458965, Iveco, Turbo-Daily ', '2011.05.08 00:00:00.000', -1, 8, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (14, 'Przegląd samochodu, MMM 55458, Renault , Kerax', '2011.06.26 00:00:00.000', -1, 9, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (15, 'Przegląd samochodu, FFF 34775, Volvo, FL-6.220', '2011.08.15 00:00:00.000', -1, 10, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (16, 'Badania lekarskie, Barbara Żakowska', '2012.02.06 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (17, 'Uprawnienia na samochód, Agnieszka  Walczak', '2012.02.06 00:00:00.000', 16, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (18, 'Badania lekarskie, Patraycja  Sokowicz', '2012.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (19, 'Uprawnienia na samochód, Rafał Zarychta', '2012.02.06 00:00:00.000', 18, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (20, 'Uprawnienia na samochód, Renata Mazur', '2012.02.06 00:00:00.000', 19, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (21, 'Uprawnienia na samochód, Ryszard Skorupa', '2012.02.06 00:00:00.000', 20, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (22, 'Uprawnienia na samochód, Edmund Chochlewicz', '2012.02.06 00:00:00.000', 21, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (23, 'Badania lekarskie, Albert Dorynek', '2012.02.06 00:00:00.000', 22, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (24, 'Badania lekarskie, Angelika Sławkowska', '2012.02.06 00:00:00.000', 27, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (25, 'Badania lekarskie, Marta Kozłowska', '2012.02.06 00:00:00.000', 28, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (26, 'Uprawnienia na samochód, Renata Mazur', '2012.02.16 00:00:00.000', 19, -1, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (27, 'Badania lekarskie, Renata Mazur', '2012.02.16 00:00:00.000', 19, -1, -1, 'True', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (28, 'Uprawnienia na samochód, Barbara Żakowska', '2012.02.06 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (29, 'Badania lekarskie, Patrycja  Sokowicz', '2012.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (30, 'Badania psychologiczne, Jakub Głowacz', '2011.02.01 00:00:00.000', 7, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (31, 'Uprawnienia na samochód, Jakub Głowacz', '2011.12.01 00:00:00.000', 7, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (32, 'Badania psychologiczne, Paweł Kos', '2011.07.18 00:00:00.000', 8, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (33, 'Uprawnienia na samochód, Paweł Kos', '2012.04.14 00:00:00.000', 8, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (34, 'Badania psychologiczne, Jarosław Zubilewicz', '2011.02.01 00:00:00.000', 9, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (35, 'Uprawnienia na samochód, Jarosław Zubilewicz', '2011.10.31 00:00:00.000', 9, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (74, 'Badania lekarskie, Paweł Kos', '2017.07.18 00:00:00.000', 8, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (75, 'Badania psychologiczne, Paweł Kos', '2017.07.18 00:00:00.000', 8, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (76, 'Badania lekarskie, Jarosław Zubilewicz', '2017.02.01 00:00:00.000', 9, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (77, 'Badania psychologiczne, Jarosław Zubilewicz', '2017.02.01 00:00:00.000', 9, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (78, 'Badania lekarskie, Dominik  Świątkowski', '2017.09.01 00:00:00.000', 10, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (79, 'Badania psychologiczne, Dominik  Świątkowski', '2017.09.01 00:00:00.000', 10, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (80, 'Badania lekarskie, Rafał Piątkowski', '2016.12.09 00:00:00.000', 13, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (81, 'Badania psychologiczne, Rafał Piątkowski', '2016.12.09 00:00:00.000', 13, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (82, 'Badania lekarskie, Piotr Nowak', '2017.07.02 00:00:00.000', 14, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (83, 'Badania psychologiczne, Piotr Nowak', '2017.07.02 00:00:00.000', 14, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (84, 'Badania lekarskie, Patrycja  Sokowicz', '2017.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (85, 'Badania psychologiczne, Patrycja  Sokowicz', '2017.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (86, 'Uprawnienia na samochód, Edmund Chochlewicz', '2017.02.06 00:00:00.000', 21, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (87, 'Badania lekarskie, Albert Dorynek', '2017.02.06 00:00:00.000', 22, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (88, 'Badania psychologiczne, Albert Dorynek', '2017.02.06 00:00:00.000', 22, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (89, 'Badania lekarskie, Marta Kozłowska', '2017.02.06 00:00:00.000', 28, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (90, 'Badania psychologiczne, Marta Kozłowska', '2017.02.06 00:00:00.000', 28, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (91, 'Badania lekarskie, Jakub Głowacz', '2018.02.01 00:00:00.000', 7, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (92, 'Badania psychologiczne, Jakub Głowacz', '2018.02.01 00:00:00.000', 7, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (93, 'Uprawnienia na samochód, Piotr Calik', '2020.01.21 00:00:00.000', 11, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (94, 'Badania lekarskie, Miłosz Piętak', '2018.05.25 00:00:00.000', 12, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (95, 'Badania psychologiczne, Miłosz Piętak', '2018.05.25 00:00:00.000', 12, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (96, 'Badania lekarskie, Barbara Żakowska', '2017.10.31 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (97, 'Badania psychologiczne, Barbara Żakowska', '2017.10.31 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (98, 'Uprawnienia na samochód, Barbara Żakowska', '2020.02.06 00:00:00.000', 15, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (99, 'Badania lekarskie, Rafał Zarychta', '2018.04.30 00:00:00.000', 18, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (100, 'Badania psychologiczne, Rafał Zarychta', '2018.04.30 00:00:00.000', 18, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (101, 'Badania lekarskie, Renata Mazur', '2019.02.16 00:00:00.000', 19, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (102, 'Badania psychologiczne, Renata Mazur', '2019.02.16 00:00:00.000', 19, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (103, 'Uprawnienia na samochód, Renata Mazur', '2020.02.16 00:00:00.000', 19, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (104, 'Badania lekarskie, Ryszard Skorupa', '2018.03.30 00:00:00.000', 20, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (105, 'Badania psychologiczne, Ryszard Skorupa', '2018.03.30 00:00:00.000', 20, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (106, 'Uprawnienia na samochód, Ryszard Skorupa', '2020.02.06 00:00:00.000', 20, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (107, 'Badania lekarskie, Angelika Sławkowska', '2018.02.06 00:00:00.000', 27, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (108, 'Badania psychologiczne, Angelika Sławkowska', '2018.02.06 00:00:00.000', 27, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (109, 'Uprawnienia na samochód, Marta Kozłowska', '2020.02.06 00:00:00.000', 28, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (110, 'Uprawnienia na samochód, Paweł Kos', '2020.04.14 00:00:00.000', 8, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (111, 'Uprawnienia na samochód, Rafał Piątkowski', '2020.12.09 00:00:00.000', 13, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (112, 'Badania lekarskie, Agnieszka  Walczak', '2020.05.28 00:00:00.000', 16, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (113, 'Badania psychologiczne, Agnieszka  Walczak', '2020.05.28 00:00:00.000', 16, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (114, 'Uprawnienia na samochód, Agnieszka  Walczak', '2025.02.06 00:00:00.000', 16, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (115, 'Uprawnienia na samochód, Patrycja  Sokowicz', '2025.02.06 00:00:00.000', 17, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (116, 'Uprawnienia na samochód, Rafał Zarychta', '2025.02.06 00:00:00.000', 18, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (117, 'Uprawnienia na samochód, Albert Dorynek', '2025.02.06 00:00:00.000', 22, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (118, 'Uprawnienia na samochód, Angelika Sławkowska', '2025.02.06 00:00:00.000', 27, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (119, 'Uprawnienia na samochód, Jakub Głowacz', '2025.12.01 00:00:00.000', 7, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (120, 'Uprawnienia na samochód, Jarosław Zubilewicz', '2025.10.31 00:00:00.000', 9, -1, -1, 'False', 1, -1);

INSERT INTO [Przypomnienia] ([Id], [Treść], [Data], [IdOsoby], [IdSamochodu], [IdSprzetu], [Odznaczone], [IdJednostki], [IdKsiega]) VALUES (121, 'Uprawnienia na samochód, Dominik  Świątkowski', '2025.09.01 00:00:00.000', 10, -1, -1, 'False', 1, -1);

SET IDENTITY_INSERT [Przypomnienia] OFF;

SET IDENTITY_INSERT [Samochody] ON;

INSERT INTO [Samochody] ([Id], [Numer rejestracyjny], [Producent], [Marka], [Numer VIN], [Rok produkcji], [Typ], [Numer operacyjny], [Termin przeglądu], [Termin ubezpieczenia], [Rodzaj paliwa], [Norma na 100 km], [Norma na 1 h na postoju], [Norma na 1 h na ogrzewania postojowego], [Norma na 1 h pracy autopompy], [Sprzęt na pojeździe], [Informacje], [Numer polisy], [Norma na rozruch], [IdJednostki], [Pojemność paliwa], [Pojemność wody], [Numer CNBOP], [Termin przydatności], [Pojemność piany], [Norma na 1 h pracy wyciągarki], [Zdjecie]) VALUES (7, 'KWS 78596', 'Renault', 'Midlum ', 'ZZZZ58645454545415475', '2001-1-15', ' 4x4', '', '2011.03.20 00:00:00.000', '2011.08.19 00:00:00.000', 'ON', 20, 3, 5, 10, '', '', '', 0, 1, '', '', '', '2500.01.01 00:00:00.000', '', 0, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC000110800B6011503012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280101A5A6FF17F9F7A7500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145150DC4F0DB5BCB3CAEA9146A5E466E8A00C927F0A009A8AC3B7F16689790BBDADEF9FB31F2C30BBB723230A06E3F80A8AC7C46B752DC7DAAD9F4F8637DB1BDE308DA4F7DA70403D47F9140D45BD91BC3FD67E1FE15CD789BC65A7F858225DA3C8EEA3647191BDBAE700F18181924F71D6ACDCF8AB45B665DF7A8C4FFCF352FDBD87B0AF3CF8837DE1AD7238AE9D3509EE206DA3ECCA3714246E0B93D7032320F231DE946A52524A4CD7EAB88945B8C1FDC6D5BFC5CD32793E7B2B98A2FE26DBBF8E7D0E7AFB56E5B7C44F0D5C85C6A1145BFF00E7B7EEBF3DFB7D87E22BC2751F0E25CA6FD2B50BD8E1654665BC8F9FC86D2B8271EFF9567AF87A5B68DFFE26CDF32EDF963236F20E7058FA513C4E153B5DA37A794E3E69350BFF005EA7D4B06A76773B4C3731BEEEEAD91F98E3B1AB61D5BEEB0AF9BBC3B77FD87768FE6C9B36956F2728589C739041F6EBDCD75969E3BFB2ECF3A59A745C7CAAA37B615864EE239E47F17AD4BAB4AF68CAE379663230E69D369F6DFF0023D9E8AF14BCF8B73C370AF6367265722686E3236FB8DAEDF963DEACDA7C70B64D9F6EB165DDFF003CE456E98C91BB664722B5506D5D1C127CAECCF62A2B1BC3DE20B5F11E9C9A8589DD6EEBF2B7BE48208EC4153DCD6CD48C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2B0F54F17787B46774D4356B58A58D4B345BB7C8A07525572DFA5006E515C737C49F0FF00CDE53DC4BB6411FCB1E392338F988EDCFD2A8EA9F1274F8EDAEA2B486E96EF698E276F2F6F9983E8C4F1839E3F84FA526ECAECAA717526A11DDE875975AEE9564CC9717D0ABAFDE5DD923EA064D635CF8FB47807EEFCE9BFDD5C7FE8441FD2BC6AE756D927EF5D55FEF7CCDCB7BE39FE559F2F88A14FF96ADFF015C7F323F9571FB7AB2F8227D0FF0065E0A8FF001EA6BDAF63D72EBE253018B7D3D57FDA9189FD38FE75857FE3CD56F20962768562914AB46B182181E0839078C7BD70BA7EA316A7E6EC76F971F2F07AF1D85569F5D892474486497E6DBBB803FC7F4AC9CB112972A3B21472BA54D5576B3DAF767416B7BFD9F03DBE9E8B6D137DE8E15D8AC40C0240EBC7154AE752B8877FCEAA9FDE69303F0EF5889AF5C3DDC5125BAAA34815BA93CFA1E3F95325D413EDCFFDA7A7B7FA966B78D6E141639032480703F239C7BE08E1A729DAA30AB9A61E9D17530F1BDB4DACBE7A1B96DE6EA168F71F6E8D53FBBB589FCCF15CCDEEBE6C3523134A65883E1B7379657BF057AF1EA05436DE2AB2B2B17B47F3B7FDD6FDDD168F15CA3DC3C4BFBC90B6E6501B1C0EFCF635DAB0B492B58F0279C631BBF3DBD0ECB4BB8B7B9D2B507B79595FECA648FF008C654839049EE33F90F5AE3EE6E353FF009FEFF6BEE8FF000ADFD166448FCAFE0DC63F97FDA19FE75CCEA8CF0ECFF672BF91C56787A70BCA2D6CCE9CCB115B969568CDAE65D1DB5D2E22EA1AB27FCB58DBFDE8FF00C29C359BE4FBF142DFEEB14FE759A2E5E9E2F767DFDD5BBA149FD93861996321B547F7DFF32FC9AB3BFF00A43D8C9BDA4D8CD1E0EEC64FE631C55986E2D3C8F35D37452C9B595A3CED3EB8C1C1E39FCEB9B8AF627D4B7FF07FBBDFA7E75AA9A9F93BF64AABFEF723F2FF00EBD11A7151B22278DAB3A8AA4ACDAF25AFA9E9FE12F1FDCF876DEDEC85BC33E9BBB88D5763A02727691C13C93C8E49EA2BDBEC2FEDF53B186F6D1C4904CBB95ABE3A5D4AF6EA4F2BED70CA8DFC31C7B8FE5CF35ECFF077C4B3DB69B75A6CD15D5DC4184B6FE5AEF65CFDE182738E8703DE942128FDAB9589C4D2AD671A7CAFCB6FB8F6AA2B32C758B7BFB86B754B982755DFE5DC5BBC64AE719524618038CE09C64671919D3AB39428A28A0028A28A0028A28A0028A2B2F55D5E3D2A02CD0C933796F2ED8F1C2AE3712491C65946064F3C03401A958D71E27D1EDB72FDBA391D7F821CC87F25CD452F8BB42863DD2EA31AFB156CFE58AF39B8F1269F0C8FE56E6F98EDDAB8E3F4A875611F899D54B0589ABF041B3BD7F18237FC7BE9F337FB53308C1FE67F4AA52F887559B76C96DE04DDFF002CD779C7D4F1FA579ECFE2F7FF009656EABFEF7FF5AB366F115F4DFF002DB6FF00BBFE3D6B096369476D4F4296438A9FC565FD791E8B72EF73BFED77D34A9FED4C427D36AF15CDCF3DBDAF9AF6F76D13AB7CB1C3330DDD3D1B007535C74B797137CEF2B37FBCD4EB23FE9D16F7DA9BBE6FA7F9FC6B1FAFB6ED1563B970F421172A936EDD123AA3E27BAB6FF55AC5FAFF00B3E77983FF001E07B571BFD9BA679EF2BF9D3BB36E6F324E18E739E39CE40EFD87A53B64B349F22336EFEEA9AB91E81AB3FCFF00619153FBD27C83F36C564F1388A9F0AFB91D8B2DCB70FF00C46BE6FF004FF80539E6B7B5B47FB3DBC713AA955655F9D7710090C79C9F5CD64E9B23FDBA2DFB59369DBEA9D723F1E0F1E9ED5A9ABD83D95A7CF716F2BB7CBB6198395C11D76F4AC7B01FE97FF01A8E7A91BF3EE74C68E1AB723A36E54EFA7757135E83FD3D1DDDBE68C7CBD3D79359CB0A27CFE52FF3AD0D42477F12595BBA2B44D0A6EDCD83F749ED5CF49A85DA48E9B23F958AFDEF7FA57AF41A54E3E87C4E61778BA9FE27F99DAE8B3DA79EFF0022ABB425BFDD2A471F8F34D02D3CF962DF0AA6E7F999BEE9CE7919F7AE6F41D4E57D5624789556552BBB77B1ED8F6A7EA9A87D9B52BAF93726E493E5EB865E78FA8A8524ABB5E46F520E597C65DA4D7DEAE6C2C56FF6BD3F6793BFCCF9955B278079AA3AC0D9AB452BFCBFB92AACDFC5CAF4FD6A6B109FDA5692EFFE176FFC748A4F105B4BFD9BA7DC7FCB2598C6CCCA4F272719F5C544A5FED29791D14695F299CBFBCBF43674DD37449B467BDB8D3E396E17EEB48C7E5FA60D7312DDC5E7CBF3C717CDF2AEEC71C7AD6869F7FB34DF2B7D6668B1C3378E6D22B88965B766F9A365C86255B190783CE0FE15D4DD8F1AD7D0D6D12EA27FB47952ACAD1B249F2B67B9FF000A8B5DB497CCBB74899A28A4DCCDB785DDD327B735D6F88C456BF658628A38919645DB1A803F87D2A95B147FED08A5FB973A7191BEAA39FF00D0B3F8572425CB8892EE8F6EBC39F2BA53FE56D7DF7FF8079C915AC341D42183ED77D63E55971B9A6603AF4C0CE4F38E82A918BF789FEEFEB5D3C7ACA6A7A35A689711379B1326D93CC186DB90A0E7A7071D7B575B3C4B90F853C3FA55EEBA90DDAC6E88AEDB5588DD8E3712318EBFE715E8717867C3F06C74D26C37AB7FCB450E7EB939C5709E1F8DED7C516888FF002333AFDEFBC0A9FEA2BAE835D96EAC52FA2D13559ED598AAC96F0893A3104ED0DBB820F6A968ABA369A28A19365BA46A9FF4CD703F4AA1E1F91342F125C5C27DCFB425CFFDB36187FD779FC6AF5674B3C5FDAD6FF3B7DD30C9B54E3270402DD338078F7A4296C71B63AAF88F49F8996B69A86AD7B3DD5A6AB15B34924CC77C4D2A83D7AAB2907E8D5F5457CF1A978BFC3FA678DB4D9B56F0CACF75A7AC6B25EF99F7C01F2395C60B22A9C13CE57B718FA1E81AD428A28A06145145001451450015E31F14AF350B8F12C3696C9335BDB5B8DDB5491B98927A77C6DAF67AF23F1141FDA1E2AD53FD4EC59115BCC8CBEE2114742DB7F87FBB59D4A7ED172DCECC1625E1AA7B6514DA5D7CCF36916ED2444746DEDFC3D4FE2074AD8934BBEB9911E2B499916345DDE5E0310A013938EF5D54561B3FE5EE654FEEC3B611FF008E283FAD55FB0DBBEBBE53C4B3A2DBF99FBECC9CEE23396CD73BC1413B5F467A9FEB0569ABA82BA5E76DD74FF82738BA4BF99B25BBB289FF00BBE7077FFBE5726ADC3A1C4FFC77B3FF00D71B5207FDF4E56BB08D121F922455FF007571FCA9F5A47074574B9C5533CC6CF695BD17FC3B395FECAB78678A2FECC919E5CEDFB45D0038C672114FAFAD6BC3A2BA7DC4D3A0FF0076DCC87F376233F8517C7FE273A6FF00DB4FE6B5ADBEB5A74E09BB2472E23115E718F3CDBBAEEFBB2AAE9EFF0071F50BD6FF006636108FC902D28D174FFBEF68B2BFF7A6CC87F36CD5BF329BBAB6388E33E204690C1649122AFDFF00955703F87D3E95C6E9ABBE77FF0076BAEF8827FE3CBF1AE4B4CFF5EFFEED78D8AFE24BFAE88FBBC9FF00DD697A3FCD92EA165FF13DD3EE11FE468C2FE2030AE7EFECB65FDC26FF00F96CFF00C3EE7DEBB3251E3D8E9B93F22A7D41ED5C8EA334B0DDBFDA2DF6BB36EFBDC37B8E0576616BA9C547AA3C0CE32F9D0AAEB2D6327F73EDFE447636DB352B47DFFF008EFB114EF1046AFA8E1F6AA49005DCDEAAFEDED508BB7F91D36ABAFDD65CE57F3AA97B70F34FFBD7DDFDDDDCEDC804F5AD9D37ED54FC8E28E262B092A0D6AE57BFCAC59D052DD3554F29197F76FB999B86E4631E9C62BB278A29AD1ED25DDE5336EFF74FAE3BF415E78ADBE44FE2F987F3AF4226B87197854534CFA1C85C6BE1A74271BA4FEFBFFC31CD5FE896965F3BEE5DDF75964386FA7F856768B3269FACDA5C5C6EDF15C249BBFBCAA4138F7C66BACBFD9F64977A2B27F75BD7B1AE4A6D22579FFD1E55F9BFBDFE35D14313CF1F7B43CDCCB29742A5A8BBA7D3AA3BCD575B8B5692244B79A0DAA7E69940DC0E082307FD9EB5596DEEEF2089EC9D62BA8243E5B6E00303DBD3D7AF04562E8BA34B653FDA2E25DCFB76AAAFF0E71CE7F0ADFB597C9937EFDBF37F5AE4AD5ED579E07B580CBDCB02F0F888DAEDBF3E8516BED7619DBEDDE1FD3EE5BFD9C02D8F5C641EFCE2A27D593F8FC1F07F799A19941EB8ECB9CFD715B3A9DE7EF12EED2E1A2B856F95A1628573C1C10723D3E86B364D5F50791DDEEE6676FBDB9B3DB1D0F1D2BA69E320D7BFA3F2FF00873CCAFC3F24FF0073B79BB7E48A27C41636522DC368B756D2AFDD6693781C638C91EBEF5D7F847E23786749D27EC4FF006C89164765DD097DBBB048C8CF7CD72A6677FBF559ADEDDE4DFF00678F7FFBA07F2A6B1AAFAA33A9C3B26BDD9AF99B2DE2E820BEB87D3EF6C7ECEF21DABB7CBE327692AD8C1C1193DF8F415AF0F89B49BAB1D92DEDADB5D7DA03796D200186412C0E78CFCC3071D7F3E29AC6D3CBF9EDE36FF7B3FA73C75A436365B363DA43FF007CD57D6E9D8C7FB0B129DB997DEFFC8D6F89314537D8B53B778E5492178D9A360DD01C723FDE35F52E9EDBF4DB57FEF428DFF8E8AF922D6DACAD67DEF631CF16E0CD1C99DAF839C360E71F422BEAAF0E6A2358F0E69FA86C8E333DBAB3471FDD438C151EC0E47E15A53AD1A8EC8E4C4E5F570B14E76B3EC6BD14515A9C6145145001451450015E49349BFC47AD3FFD3DB2FE448FE95EB75E4F1CF0BEB9ABFCFF00F2FB2AB7CBDC48C38A5F691AC7F872F90E06B3633FF1544BFF005E89FF00A1B5691359B17FC8C971FF005EA9FF00A135396EBD49A7F0CFD3F546AE6941A6E6941AB3032EF7FE460D3FFEB9C9FCD6B604758D79FF0023069FFF005CE4FE6B5B03FDCACE1BB3A2B7C30F4FD58FD94B84A6FF00DF3532CFF737FF00915A1CE703F10FFD6597E35C8E9C7F7EFF00EEFF005AEEFC717289269FBDD7F8F77CB5C743736FE45C45E6FAEDF97EF0CF43EB5E4578A7565AFF005647DBE595251C253695F47F9B2D8351DC5B43729B254564FF003D3D2AA584BE4C6F13BEE4F30B2B37A13D07B7F8D68E6B9AA2F673B45EDD4F4F0F51E22829548DAFBA7FF04A0BA3D8A7FCBBAB7FBCC4FF0033532DB5BA7DC8A3F97FD91E82AC8350B37FAD7FF6BFA0A994E4F76690A14A0FDD8A5F2108FDDFC955E1BB59A76B7FBB2AA8936FB1247F4A4FB4BBFC896F37FDF27FA0A87C9B8F33CDF29976AEDFF564718C77E7DEB7A34D72CB9D3BF438B17889FB6A7EC26B96EF995D6DA7FC124D40FF00A27FC08567DB0DF7716CFEF0FD39AD032BBC7F26D57FBCBBBA37B55F8658A1FB89F3EE1F975229426A30699A62284EA578C96DFF00048AABC8DFD6B5A4B989E397E7FE2DCBF2FD3AFB551BF952693E47FF00C778E83A56363BE126E4AE8A0E7F775066A67354E699E1D9F27C8DFE4D6B4E0E6EC8E5C6E2214173CF6FBC973499A93C895E34789E39772FF75C15F6395FD4645647F6A3FCDBF4FBAFFBF7FE7D6B6785ABD8F33FB5F08FEDFE0FFC8D47574FBE8CBB9448BBBF881E847B5328BBD6E2BAB54695DA5BB560BF779DA01CF039E817B763EB55ECAE3FB424D96E8CCFFED3041D09E598803807BF6A72C3CAFEEAD08A399D271FDEC927AFE7A7E04F9AF5AF8137D713FF00C249652CE5E082789E15DD909B83EEC7A6768AF29B4BDF264F29D1BF7BFC3DF38C8C57ACFC0F91279BC412A7DC6923FF00D0A419FA1DA6B5C3C1C65EF238735C442AD15ECDDD7FC31EC745145771F3A145145001451450015E336BFF00216D77FEC2771FFA35ABD9ABC66D7FE425AD7FD84EE7FF0046B54FDA46D1FE0CBD57EA5DACE8593FE12878BFE5ACB6E8AABB4FAB1EBD0700F5AD015CE6A5A7DEEADE2BB5D3EC9FF7B228556EC8392CC7D80193EB814AB4F9127E66983A0EBCA504D2D2F77D934CE96EE54B281E5991B62E176AAE4B12400001D4E48A91CF931EF7FF00BE78CFF3ACFD43C41F0CFC353B695A85CC97B750FEEEE197CD939EE0E0EDCE7A81D2AE588F05FC40D2E74F0BCA906A16CBBBCB21A36FF8129EAA7A6467048FA16E724AE918C29D2735172B2EF6FF008260C7A9C5A87892D36248A9146FF3363E6C9F6EFF002F23A8C8AE92B8BD196587C40914A8CB2AEF5656EAA4704576553427ED22E5E67466343EAF5152BDEC96A3E973FEF5328ADCF3CE2FE207FCB97E35C759AA3DDA23D761E3FF00F972FF00817F4AE3EC6F534FD4A2BB7B48EE5236F9A193EEBF1D0F06BC7C427ED256FEB447DC6592E5C1D376EFF9B3424B68BCBF9292DA5FF964F58B7BE3189EFAE1D2D3C8DD21DB1AF44E4FCA3D874AA67C4CF37CE96527FBD50B0D55EE8DFF00B5F051FB5F833AECD3FC8BAB5D3BFB5DEDDBEC4D73E44722F25E5DA4ED551C9C056E7A572F61A9EB1A9DF456563A55C5CDC4BF76285724FBF1D00CF24F03BD6DF887C777FA1E87178474DB88D2587735FCEAAAE527624B471B671F283B4B0EAC0EDC0E4EF430B28CD39A38331CE28D4C3B8507ABD36E9D4A87C6765FEA992457DDF7B70E9E98F5CFBD6FE937B69AB47B2275DFFC3F5F43F5F5AF1B662EDB99BE6ABFA56AB73A55E24B0BFCABF797B63B8AF4B98F92B1E957B65B2477D9B7FBDFE35573FC0F5D34F3DBEADA35AEB117CDE62FEF3F2EA7EA3AFB8AE03C42350B693ED16F36EB75FBCBDD3DFDC57157C273BE689F4597679EC29FB3AC9BB6DFE47411A23FCEF70B17FC049FE5EB545E4FBEEFB57E6FE82B98B46D5B509112DDE467660ABB71F31392001D49C0278F435BD1F83F5E78F7DC4BE53FF75A12E31D392071DBF3AC9609F73ADF11415DA8B7EB6FD0748D50999FCBD8E9BA2FEEB74AAD77E16D6ECBFD56E9FF00DA8D48FD1B1541F4DF11A06478EF3FDDF2EB58E0EDD4E5AB9EFB4FB04B3D8DA4CFBD1DA27FF69723F31CD43FD91FDCFB137FDB471FCDB8AA52A6AD0FFC7C43344BFF004D23C7EA453ADFED0F77124AF22A6EF9B6E3A679C735BA8CD753CBA95F0D377F676F476FF35F816D34EBDFEE46BFEEDD11FD6AFC1613240E8F7D1C5F30F9BED45CAF5E801CF7F4A2E1521B149ADE5DB70AC7CE8F73671D4104F181D0F7F6AA690F88E67FF8F1BB646FBACD6EDB79E99246314DAA9DD7DC4C27845AB8BFBD7E891AD672DBE9E9BDDDAF2E3F859B202FE7CD7B37C0C833A1EAF7BB15564BB112EDE98540703DB2E6BCF742D2FC1935DE9B6FAC5DF8862BB9D53ED1F2C02DA27C90CAD200485C8CE7A804670738FA1BC3FA6695A4E8F15AE8890A597DE5F25B78627927764E49F5CD4429352E69335C4E321528AA34E3648D6A28A2B73CE0A28A2800A28A2800AF17D2A4FB6DDEB0F1249FF1FF00348DB971C348D8F63F81AF68AF35D77E1741325E5EE91797316A12C86511C8CA2224B648E1411C138E7D33532BA7748DA9F2B8B849DB6FEBF13312E2278E574DDB2290C6CDB4F51D474E7F0ACBBFD762D13C2BE22F1458BEEBBDB1E9B6ADB7051DB96233EC55BF0F7AE4AED6F74FBEB8B7B8DD15C44DB645DA0720007A719F7EF56BC583CBF82312EE55F3F5BFE51B7FF135847111AB3E4B6A8F42B65D530943DB3926A565A79EBFA1E3B0DBDC5E4FB22469656E7FFAE49FEB5D8785ADF58F0A6BF65AED94B048F6CFBA4B78A43BE58FA3AE0800E46471DF1DEA1D16C25874E8B65BC8D2CFF37CB1E4F3D00F6C7F3ADA8E2BEB69D22B8B791777CCACD1E437E5C1FCEBA4F24F53F16FD96CBC63697B6F6924B15EDBF9FE6C2A4962C30063851BB19F5EB57DE2D9FC71B7FBAC0D73DE3889E7F0C7842E3C96F37EC015BE5E4615383E9CF6AE13CD97FE7AC9FF007D1AE3962A3464E163DEC3E4F571D4635B9D6D6EBD343D463BC47BE96D1124DF12866938D9CE085CE793839C54F2BF931FDC66FF00AE7CD79409E5FBFBDB7FFBD4F1772FF7DA97F6847F94D7FD59ABFF003F17DCCD2F176AD16A7F65F2A29976AEEFDE2E372B12030EB90769E7E95816EFBEDEF618749FB75D4B1FEEF6B7FA95046F603B9E579FFEBD3EEE5DF1FF009EB57BC2FA8E93A7C9A97F6B4B0C493DAF96BE642D2071925970A091C73EF59D1A8AA56E6B6FFE47562E84F0981F657D57557EF7392B9D2B49B6D72EE1D435092058D437FAB12167382C0856E002703939C67D869477DE1144D9F6B9367FB361FE26A8E97E13B9D5A05BA86DDA78598AAC8D2051B4138E0B03E9D7FF00AF5B03C117DF22795FEEAAB47FE35E9256563E4A4EEEECF461A958F813E08DC6B7A4EE8AF7593B6DE468C249B9F214F19FBAA19C7BFD6BE7DB0D3E5D427D89F2A2FDE66EC3FA9F6AF57F8BA6EED7C2BE0BF0FB249BEDAC8C9346AB9F9F0A8338E3230FD3D6B92B0B09ACED12248A4DFF007999633F313FE71F852024B2D1F4FB58FF00E3DE391FF89A6C3FE8781F95684D6D6F791EC96DEDE545FF00A663E5FA15C1CFE34B63A0EADA9C1F68B7B758ADFF00E7A5C36C1F5C91FCF19ED45FE8DAC685B25B8897CA6FBB3C6DBE36F6CFF91E878A62353C369F62D2750D33F78D12FEF21F31403CF24601EC727FE042ABC36377A848E96F16EFE2FBCA38E9DC8A8ECF53B4B5FF004E97E58B6ED9195492B9C0C607D7D2B2E5BB8B53755D33538FCDFE18DB82FDF00377A680E8748B0B4F0B6B36AFA9BC366B3E76B48C8550807D33B4152C327D481E95E969E2BF0E7F66EF9B5EB49772956936A81F81C60F7FCEBCBBC0B13DD7892CAC756B7F3525BC8D59668C61867A608E467F9D7D2EBA5E9E9F72C6D57FDD857FC2A5AD6E34F4B1E51ACF8CBC1D7B696F17F6DDACBE5481997E41D883CF7EBFA555D1AFBC2BA97C41B0B7B2B8B3D420BB675682544233E531C84E46728BCFBD7AFA2DBF992A2DA2A796DB77796003C03C7AF5A432227DC8A3FF00BE68B8AC665E785BC2FF006474B8D1F4E8A293F77F2C2A879E300A8041FA57CFBE2C1E11D0F5578B44B592578AEA6B791248510C524640F95B009524B60FFB2735F42EA33078ED5E5B46B9DB711796AAA5B63160039C740B9C93D8673C57CEBF15BC2B77A1EBB2EA7F34B16A17B3C91FCBF777056C704E7E6661DBEEFA1A067217976F737FBE1B08F6ED0B1F9D8F94FAF5E39CE3E82BA0D0EF2C92EE54D426B55FDCCBF336332FEE9F1C8193C90393D001DAB8595AE10FCED22BFDEF9B23D7B1A832FF007D9B77FC0A803D874CD5F4860C54DAC90C6D1ABCAACE51067A15909C0C1E0F4C8ED8AF5AF879AB69FA9497A9A4CA27B348E3FDF470EC5DF960474C13803BF6AF33F867E17B6B6821B892DA39AEA78E3BBB5B99179B79102B803073CB13D072A083EFEB926B93CD68B7083CA97EEB2B75461C32E7D8E79E87AF434AC549C5A56475D4514532428A28A0028A28A008279E1B584CB71347144A465A46000C9C0E4FB90298F7D6A91976BA85517E62DE60E9D7351EA9609AAE9575A7BCB24715CC4D0BB478DE15860E3208CE09EA0D553A0AFF0016A377F945FF00C4500797F8EB42D1AFDEEB52D17C4165FDA53CAB2490DC5CAF94C318382A320F43C93D08EFC79478BB5FD43FB02D7C2F72FA74A914FF006B692D642FB243BD7696E9D1B38EDC1CF381F48B7C39F0E3FF00AD8277FF00B6CCBFCB15E4DF183E1E5AE9B3E90FE17D06F24967695AE9ADD66B9276ECDB9196C756F4CF350A9422F992D4E89E2ABD4A6A9CE4DC574323C2B14A9A6DEDC449BBC8D91C3FEC927071F80A46B97FB0DEEF4937AC9E7C7B5BEE15650C067D8F3EBC7A5747F0E2DD2E74DD6B4F95196E15924DACB83C121860F390768C7A9ACFF17F87EDF4C8DF504BE6DF2ABC6B6DE4F0A5B193BB77719C0C763CD6873197E29F88CF269DA6E992E98ACB6D09559566FBC381C8C707E5F5AE3FFE128D888DF67565FE2DB20CAFE04526A889730FCFB55973E5C8BEBFDD3C77FC7F90AB9E0CF86BAEF8BE07D434FB7825B2B69C4722CD3187CDC60B2AB007B719ED9AC27429CDDE48EEA198E2A843929CECBE452FF84BA2FF009F46DBFEF0FE54EFF84B6DFF00E7D24FFBE857A2FF00C33B6A57568F73FDA7676370CC76596D799517B032E4127D70B8ACC4FD9D3C5A5BE6D4B445FF00B6D293FF00A2EA7EA947B1D2B3CC72FB7F82FF00239BB3D453553B2DE2654553248D232808ABC1249E9D47B9C80013C5646ADA84063F212659187F147BB1C8E47CCA2BD5E3FD9CEFE1B49593C551ADC490956896CCED7EFB7717E99039C7E15E19736F2DADDCD6B2AED9E2731C8A581C107046470791551C3D38BBA4655B35C4D68B8D4774FC91D1236A0DA76952C56E2096CA57487319DD26F3B8B3703006401DBE9DE1BCB0BBD62FE59A565F3570B26D50A38E0705BDB1C7A55DB5F1AC36D1A24BA15ACEEABB5A4690E5BDFA6055A83C7DA64726E7F0A5B32FF16DB8299FC42D6D657B9E75DDADD0D5F17CF70977E13B5D8BFB8F0ED9F981BF84E58E78EFFE34FD23FE267A95ADA3A3379BFBB65DDC3000939FC01FCEB2B5BB0B8D3F5DFF004B89A2B8B9B7867F2594831078C1119079F901DBCFF77A0E83A2F0194FF84AECB7FF0014857F165603F5228037EF2E34C852DE5BEB7F35D643F618248F7A2C6AD82DB71B773633BB9232A31FDED2D25B4FD66D25B4FB3EDB79F7ACD1AC7845CE30D91950DC860C0827918F97E4E6FC696DFD993C4E9E63795098DB6AE7853C74F50D9E7039EBE8DF010BBFB25D5EDC79912DCB2476FF00ED952C1880402065D5738EC79E45324E565B57B5BBBDD32E3FE5933C6DF552466A11E07BBBF811F4EB4B95FEF79D828DD81461907907A9E38FC7435B9D2EBC51A85C27DC699FF438CFE95817FA85C432225BDF4DB1BE55F266D9B18F054EDEBD075E99A451D5E990EADE1CD5B4FB8BDB8F31EC6E239A48A687633056C81BB773B94641C7719AEEFF00E1A034E9AE16DEDF4CBA6776F2D772AE324E3A9615E4373E0FF155CF865BC4B169F70BA43C26492469114ED07962B90CC09E41C738CD71F1C8F1BA3236D75F99595B047E3401F40DCFC7A8B7BAF9522EDFFA63FD7359EFF1DBFEBA7FDFB02BC2F753D9767CCDF37F76803DAE4F8ECE9B3FD1E6FF0080EDE98FFEBD53BDF8CD16AD6AF6973A7C8CB2655649367EEB7646E031D466BC7497A1BEFD007AEEA17FE0474865B74D3FCDF2D3CE5FB3AFCC48CEEC918CFA8CE41EB59A75DF0AD97FA45BC36BE6C4CADFB9B65CB739C0E99E9EA3B579A815F62FC2BB37B5F865A079CF1492B5AEFDD1C617E5625957A0E402013DC82727AD02B1C7683A6F8AB5592D2E2D2C24B4D3EE5437DAEE362158D86721164627231819E78CE2BAFD2BC1B326A37AFA95EDC5C44B246D1EDF9239708324A924FA2FDEE8A3DEBB8A281851451400514514005359B68A7518A00CFB9D5ADEDBEFD635CF8CED20FEED7412D95A4DFEB6DE36FF00794566DC784F42B9FF005BA6C5FF0001C8FE468039C9FE21429F7196B2AE7E24A7FCF5AE8AEBE19785AE47365327FD73B993FF008AAC5BBF823E17B91F25C6AB07FD73B807FF004253401E553EBEFA7F8AEE356D3E5DBE7B191B6AF1F37DE047420F3547C47E24B8D6644795D5BF85563E1573F53DF8E49ED5E972FECF7A4FDFB7F106AA8DFF004D3CB7FE4A2B32E7F6799DA3D96FE2BF97FE9A58E4FD321FFA53B8AC788DE5E6F91F63B6CFBBE8580EC7FCFF00F5B5B46F19CDA1E94969692CCBF3176DAC4727BFE40577F71FB37EB7FF002EFE20B197FEBA46E9FCB359737ECF1E318FEE5C6912FF00BB70E3F9A0A4339E7F8A1E204FF55A9DF27FBB70DFE34D1F173C6A9FEAB5EBA5FF007983FF00E840D685C7C0BF1F43F734C867FF00AE7751FF00ECCC2B326F847E3B83EFF872E3FED9C88FFF00A0B1A00B907C6CF1F43C1D6D64FF00AE96B11FE4B5C7EB7AB5C6B9ACDD6A779E5FDA2E1B7C9E5C610336002703A138C9F726B467F01F8B6DB897C33AB8F75B2908FCC0C566CFA16AD6DFF1F1A55F41FF005D2DDD7F98A00A02B4B46BCB1B2D66D2EB52B237D650482492D164D9E6E3F84B60E0138CF1C8E38ED9CD9FBBF77FD9A65007A278CBC63178D7C41FDB1158B59A35BA42D1B481F952DC8200E30C07E149A55F3C33C5708FB7E60CADFDD61C8AE016695536ABB05AD2D2B52FB33F952FDC6FE266FBB401EFB75A969FE29B147796182F78F3A09B80E4775F994FAE0A9C81C10405232357D722B281E1B7955AE39F2E387FD5C4480376727903819C75E9D4D79E45AB6C8FF8593FA53AE351DFF72AAE21D3CA8F772BEC58BCD63F2AF45C9CE00F4AC1D466FB53EF446FB47DD658F277E3A1F5F4E7DFE953DEDEA6CF2BE56DDF2B2B2FDDFCFF00CF4AC596E1BEE2BFFB2DF9FF00FAEA467D5F77E0BBB7F833FF0008A68F39FB5496C91AB5F36319915DC315DD8C02C001903815E463F673F187FD04343FFBFD2FFF001AAF2B82FEF6DBFE3DEEEE20FF00AE7232FF00235AB6FE30F145B61A1F11EAE9FDD55BD93F96EA00E87C5DF08FC47E0BD25753BE7B3B9B7F3046DF63691CC7904866CA280BC6339EA40EF5C1AC98EBF35758BF133C6BE43C2DE22BA962752ACB36D903023041C83DAB92F2DFFB9400E32FF75156A31528B699FEEC4DFF007CD59874DBA79177DB48CBFC5B783F9E0E3F2A00D9F027846EFC65E26B5D32DFCC48B76EB8B858B7AC2A01393DB9C6067B9AFB3E0822B682282189628A250A88AA005006000070001D857CFDE0AF88D69E13D37EC3A7F81DE046C34D22DF6F925603196257AFB0C0193802BBFB1F8BB6B75FEB742D462FF7591BFA8A00F49A2B9DB2F18E9D7DF762BB8BFEBA463FA135B515D4537DC6FD2802C5145140051451400514514005145140051451400514514005145140051451400514514010CB6B6F37FADB78E5FF007941FE759B73E16F0FDE7FC7CE83A64FFF005D2D236FE62B628A00E527F86BE099FEFF0085F4C1FF005CEDC27F2C565DC7C18F00DCF5D0553FEB95CCA9FA06C577F4500798CDF01FC12FFEAE1D420FFAE776DDBA75CD674FFB3E7879F7793AC6AF1FCDBBE6689B1F4F901AF5FA2803C2EE3F66DB193FD4F896ED7FEBA5B2BFF26159D2FECD575FF2CBC530B7FBD6457F939AFA168A00F9D7FE19CF534FF98B5949FF007DAFFECA6A45F803A827DF7B497FDD90FF00502BE86A2803C0A2F823769F7ED23FF80C8BFE35A10FC2274FBD69FCABDB68A00F2383E15A27FCBBD69C1F0CA18FF856BD268A00E220F879689F7F6D68C1E0BD3E1FFF0066BA6A28032E0D06D20FBAB57E38523FBB52D14005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401FFFD9);

INSERT INTO [Samochody] ([Id], [Numer rejestracyjny], [Producent], [Marka], [Numer VIN], [Rok produkcji], [Typ], [Numer operacyjny], [Termin przeglądu], [Termin ubezpieczenia], [Rodzaj paliwa], [Norma na 100 km], [Norma na 1 h na postoju], [Norma na 1 h na ogrzewania postojowego], [Norma na 1 h pracy autopompy], [Sprzęt na pojeździe], [Informacje], [Numer polisy], [Norma na rozruch], [IdJednostki], [Pojemność paliwa], [Pojemność wody], [Numer CNBOP], [Termin przydatności], [Pojemność piany], [Norma na 1 h pracy wyciągarki], [Zdjecie]) VALUES (8, 'WWW 458965', 'Iveco', 'Turbo-Daily ', 'ZZZ56642658522655125', '2009-6-15', '65C15D', '', '2011.05.08 00:00:00.000', '2011.08.22 00:00:00.000', 'PB 95', 20, 3, 5, 8, '', '', '', 0, 1, NULL, NULL, NULL, '2500.01.01 00:00:00.000', NULL, 0, NULL);

INSERT INTO [Samochody] ([Id], [Numer rejestracyjny], [Producent], [Marka], [Numer VIN], [Rok produkcji], [Typ], [Numer operacyjny], [Termin przeglądu], [Termin ubezpieczenia], [Rodzaj paliwa], [Norma na 100 km], [Norma na 1 h na postoju], [Norma na 1 h na ogrzewania postojowego], [Norma na 1 h pracy autopompy], [Sprzęt na pojeździe], [Informacje], [Numer polisy], [Norma na rozruch], [IdJednostki], [Pojemność paliwa], [Pojemność wody], [Numer CNBOP], [Termin przydatności], [Pojemność piany], [Norma na 1 h pracy wyciągarki], [Zdjecie]) VALUES (9, 'MMM 55458', 'Renault ', 'Kerax', 'RRR 554581588755', '2010-3-1', '6X6', '', '2011.06.26 00:00:00.000', '2011.10.24 00:00:00.000', 'ON', 14, 2, 4, 9, '', '', '', 0, 1, NULL, NULL, NULL, '2500.01.01 00:00:00.000', NULL, 0, NULL);

INSERT INTO [Samochody] ([Id], [Numer rejestracyjny], [Producent], [Marka], [Numer VIN], [Rok produkcji], [Typ], [Numer operacyjny], [Termin przeglądu], [Termin ubezpieczenia], [Rodzaj paliwa], [Norma na 100 km], [Norma na 1 h na postoju], [Norma na 1 h na ogrzewania postojowego], [Norma na 1 h pracy autopompy], [Sprzęt na pojeździe], [Informacje], [Numer polisy], [Norma na rozruch], [IdJednostki], [Pojemność paliwa], [Pojemność wody], [Numer CNBOP], [Termin przydatności], [Pojemność piany], [Norma na 1 h pracy wyciągarki], [Zdjecie]) VALUES (10, 'FFF 34775', 'Volvo', 'FL-6.220', 'SSS544565525255', '2004-6-16', '4x4', '', '2011.08.15 00:00:00.000', '2011.09.19 00:00:00.000', 'ON', 16, 4, 6, 11, '', '', '', 0, 1, '', '', '', '2500.01.01 00:00:00.000', '', 0, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC000110800E1012C03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F6BD374DB06D2ED09B2B624C284FEE97FBA3DAAD7F66587FCF8DB7FDFA5FF0A34CFF0090559FFD704FFD0455AA00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABFD9961FF003E36DFF7E97FC28FECCB0FF9F1B6FF00BF4BFE156A8A00ABA67FC82ACFFEB827FE822AD555D33FE41567FF005C13FF0041156A800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2802AE99FF20AB3FF00AE09FF00A08AB55574CFF90559FF00D704FF00D0455AA0028A28A0028A28A0082E6F2DACD03DCDC450A93806470A09FC6989A958C9F72F2DDBE928AF1EBDBD9F5EF165CDDDD1262832B1464F08338007EA7EB52CE1624CA446473C05519AF52396FB9CD2958F9BC4710C69E27D8538737CCF6359A27FBB221FA303409A22702443FF000215F3C7897589534B68840B6F210CCC572ADB5474FCEB8589F50B78E3DB772093626483FC6C7FA0AE1AD4E34DDAF73DCC3569568734A363EC4CE4647228AF99743D6B5CB76694EA7782D55B6AC6B2952E7B9CF5C5777A078D6F23BB62A92CAEE304DC5CC8EB81EC5B029AC3C9A4D7509E26106D3E87AFD15E7D77F1224D3EDC4D3D84520276811C9824D4717C4EB99DBF75A048CBD789B9C7FDF355F54AD6BDB4256328B76B9E8B4565E83AF59F8874F17769BD483B648A41868DBD0FF8D6A573B4E2ECCE94EFAA0A28A290C28A2B07C43E206D164B744852432862771230063FC68037A8AF2CD675CBCD5AE9268EE5ED76285DB131C1E739EB5ADA56BF796B6AB189526573B94C9924022803BDA2B946F155CC69B9A0808C67192335424F88719B34B944B786261F7A6909C7E5401DD515E5737C4396E5CA5BDDCB2B765B4B7CFEA6AB699E20D59F509E3169AADBA055DAD3E76B31273CF40297347B9A7B2A96BD8F5DA2B91D37C471D9F98754D4D246206D8D118EDFAB10335A09E2FD2E47554691B27190A31FCE999B5637A8A6096365DC1D48F50698D776C9F7AE225FAB81401351480860082083D08A5A0028A28A0028A28A0028A28A00ABA67FC82ACFFEB827FE822AD555D33FE41567FF005C13FF0041156A800A2B1F5BF12E9FA12A8B9726561958D79247AFB573927C4AB2CE12061EE466A5CE31DD9D54B0588AB1E6841B477759DAE5B6A379A54B0E957AB67784A94999770183C823DC57207E22DB31E24EDFC4368FF3F8D2278DEDEE41126A6B167B460823F122A7DAC7A1AFF66E256F1389F11F84BC59E18B46D486A09751B3E24F210B104F72B8E99EF5C841E36D6EDA70CB358CC57AAC8841FD0D7A56B465D5A50B0EB2F35AB7DE437AF1B0FC8E0D72973E09D3A594F96EEA73F7F7071F9E3FAD6CF1D5D2B295D194787B093973D48A52FF000FFC33395F10788751F1112F2D85BC7279262DD0C84E413EF597F6C11C8CD716D3286903038CED0171DBF1FCEBABBAF023448D25BB9902824E2127FF0041AC13A64ABC449727DD4301FAD72D4C5372BCF73D1A5912E4B5092B2F55FE64FA7F89AC934F860B8DC8E99CFCA4E727DABA1D0F5BF0F4EEF1DC6AD15B330C0DD95CFE2457212585DC6B93385F670ADFCAA85CAEA0630A3CB0B9E582E0FEB5D51CC23A5D1C35B87310AF657F4699E9B7EDA51BAB6822D4A0B988B03BD6418E4F4FD2BA33ACE976883CAD52D20DA7A89074F4AF1AB4582D2D4DCC8269EE7CD511E02AEDE3E6C8EE2B6745BBB5D4752822D4C4D69048C54346BBB6FA13FF00EAAF4238E84A9AF2F3FF00807912C8F10A4D72B7F2FF00827A568FE2AB5D275A992C6E2068648800CE4ED91CB76E993D7F0AE8DFC65AA6F1B56CB6FE20FF003AE75748D06375974DD4C5B953B944E16600F6FBC01AA425D5F4FBA32AEA1A6EA3173FBB4956327D386007EB5E5D5C473CEF6B1EC51CB79696B2BB5D2CFF00E18EB4F8BB54719430FD5222D54A7F17F8821258EF68F1FC166D9AE1750F893AAD96604D3A481C740EF81F8638355B46F889A9DD5C88B53B9112609F314923E98CD42AA9BB5D152CBAB4573723B1D3DEFC52B8B5244F2DFC6475FF0046DBFCC572DA9F8ECEAB74B39B8BE970BB4131E3033D38E2BAA6D62CEFAD86DBCBB28C3878613FCCD4297491F4BED55C760608F8FCC54CAB74BAFEBE66B4B2DA8F5941AF5FF8639587C4723B7CAD707D8C5FFD6ADC8F576F26D5C35D348B190C1223C1FCAB4DB510F1EC64D46453D7844CFE4698977E5FDCB2BD3FEFCEB49555D5952CB6BBF861F8A2A36A37172BB4DB5FB26392D1903F95456A862C797A2DF4A474DEC187E44D5FB89BED69B26D28C8BD70F73FE0288A4921188F4D451FED5CB9FE943AB1EE11CB313FCABEF5FE655B993711F69D05033700CD2C6A4FEB9A9EDBED683FD1F4CB6887FD7D0FE952BBDCCF853A6D9B93D03067A6A8BE8E32F1DAD9C480E09109EBE9D6A5D5A7735581C4A5CB74BCB99FF991CFA95C24A619DAC63723243C8CDFD2A588DDBA6E8E7D380FF6118D38BEACC76992051CF5854018EBD69AAFAA3292B7A80024615106703271C73C52FAC4113FD9951EF38FE3FE43A2BA910B25CC9721836018ADB0A7F3CD5CF30AC7BA186E2E187F09611E7F31541BFB53CA321BF976819E180E300F61EF4C96D6F4CAB17DBAE647652D80EC3A0CE07AFE147D6A25472A4DEB517DCCEAEDBC6BABC491DB8F0F4F1A2285041571C7BEE156E4F14EACF16638D627F49621FD1AB884D25E432896E2E37A638CB3755CF3CF02B3BC88FB827EA49A958ABEC75C728A356EA324ADD93FD6477ADE28D641C49736E07A8655C7E757ACFC6F15BC5B2F658656CFDF132835E6461887F02FE546C4ECA3F2AAFACCBB1A2E1EA5D66FEEFF00873D4DFE22694BD369FF00B69FE028B7F88BA4492959DFCA4C70CA19B9F4E95E5781E94D3F4A9FACCBB1B4787B0DD652FC3FC8F75D235CB0D721925B098C8B1B6D6054A907E86B46BCC7E1ADD6CD5EEADB3812C2180F52A7FC0D7A7574D39F3C6E7CE66385585C43A51DBA1574CFF90559FF00D704FF00D0454D34A9042F34AC1638D4B331EC00C9A874CFF90559FF00D704FF00D045735F13B533A5F80B51653892E00B653FEF9C1FD3357276573968D3752A460BAB3CF2D7FB5BC737B2EAB882386E6774803B10762E0027B01C81F5AB5378075F58FCC5B64957A8F2E4073F9E2BB5F00698B67A6C0C1957CAB7118880C637317C9FAE47E55D9D60E8296AF73D38E7188A4F969DB956CADD0F01B9F0DEAD6C33369B7483D4C2C47E60565496FB1B6B615BD1B83FAD7D275C47C419F62D9C231F36E6618EBD00A97855D19D94F886AFDA8267909B690F2037E14FF32FA36DCB3CC0FA926BA75B1B36501E0419EB8E2A78B44B397215E78FDD25353F5692D99D2B88694BE381CCC7AC6A918C34CD22FA331FE94C3E2045668EEA381091D4C4189FCF35D74BE1D458494BE725549C491ABFF4AF2EBF469F5568DF6BBA862DE58DA09E7181DBB565523382D4ECC262B0B8C938C636B2B9D140B757000B5822890F3C262ADAF862E2EB9B868CE7FBD8E2AB7872CAEEE67B889A4748A2FB892DB6E2074259B1EB5D0A787F5396312C507991B747589307F36AAF672B5D99FF0068D1E7718492B7F5B9422F04C007CD24556D3C2166A305E2FC00A59745D56052CDA7DD300324A4119FFD9AB3E2BBB5BCD0A5D46CAE19FCA7F2D95E055DA78CE78F4A5ECD2E857D6A751FBB52FE86AAF8574D41CBA7E629FF00F08FE98BFC6B9FF7855578A3573882F080783FBA19A6388D573F65BB63E8248B355ECFC8C7EB71BEB54ADE26D234F8F42B99564466400AAEE073C81C7E75E6EB6F181B9675C8E761073FCB15E82925AEBF6BA958D9ACF1DF5BA80D0DC6D18CFD07F9C8AF3DBD81AD6FDA07E1955770CF7201AE7AAACCF4B0B522E3BDDDCF53F08927C356ADE5EEE5C7FE3C6B740FFA6605739E16B2D465D16DA1B78669B0BBF110C81B8E79ADF5F0E6BB31E34F9C7FBF205AD609F2AD0E4C44E9C6A4B9A696A3D947F754530E07741F8D584F06EBD2758634FF007E6A997C03AB3FDE9ED53EACC6AF925D8E6FAD61A3BD4466F989FF003D131F5A8CCD1FFCF45FC2B9CF119D4349BFB8B188DB96B7984724A47CBC80DC0FC6AD69F069335924DA978B52D656CE618ADD095FC6928C9BB246B52B51A71526F47B595CD75BC8627C9756182304673C546D796C6028CF8604918407AE38CE78AADFF144C5FEB7C57A8CD8EBE5AAAFF24A864D43E1EC479BCD6A7FFB792B9FCB14DD193D5FE68E678AA12775193F97F99665F10E9B6F32069C870C4B292320900607F3A7477D70CAC2DEC2F65491B273031DC08C7381EF59B16ADF0E45FC4E748BC95B701E64F3BB85F73C9E95DB9F891E1B8536433BB20E8B15A4A40FA714470F17F135F79856C472D952A327EBFF0000E6AE65BDB3B2CDD59490C257CBF36552BDF2393DF8C567C9E20B6DEAE5EDD5D57693E6E770C63A67F955ED7FE29892430DA7871350B44C3092ED360DD8E7E520F4F5AE69BE2DEAAAFB6C7C3BA3427A6043923F9527469A7F1236A556B38DE54357E76DCD15D7149FDD4A8D8DBF754B7DDE9D29D07DA2E8E21B5B86F7103E3F9563DDFC5BF1ADA32ACB6F6568586540B5C67F3356F43F89DE2AD5AFD21B9BF411B6EC848957B52E4A6BED7E074D2AD8973E585249F9BFF8074D1F843C41300574F7008C82CCA3FAD598FC03AFBF58624FF7A515EA719530C7B9E42768FE54EC27F7653F9D6EB0D1EE7952E20C4EC925F27FE67992FC3AD61BEF4D6ABFF0327FA54CBF0DAEFF00E5AEA36EBF4526BD18A2FF00CF163F534D29E900155F578193CF718F6697C91C2780B4916FE20D41DA5DCD680C436F46C9233FF8EFEB5E8D5C5F82C83AE6BB850BFBD1C0E83E67AED2AE924A3A1CF99D59D4C4734DEB65F922AE99FF00209B3FFAE09FFA08AF31F8D97C45BE85A62E4B4F76242A3BE0851FAB1AF4ED33FE41367FF5C13FF4115E25F16EE5EEFE23E936518C98123007A167C93F95155DA2460237AAE5D937F81EA3E15575B8D455B9D8CAB91D38CD74D4C8A348D0045551FEC8C0ACDD675FB1D1625372E4C8DF7624E58FBFB0AD0E2356BCDFC7F307D6A18BFE79C23F526B547C408DC620D32573DB32003F95723AEDFDC6A9AAB5ECB6C62042A85073803DE81A1887918AB36ED87700E2A847281F5A9A39713641E1BAE68037202A9148EE415542C49ED819AF19D35FEDBABCED8E66F9573DB73003F4AF48D7B525B4F0BEA2E927CED179631EADC7F5AF2CD3E592DE39678B89148D87D08C9FF0AE3C43BCE313E9727872612B56F97DCBFE09EFF15C81E1B322ED0E6000903F03581E1CD52EA49C5A647D99412171EFEB4585E3CBE16877821DA052C0F183D6A8785B3F6A91C768FF00AD761F3573B43700A38CF6AF1FD078F0A6B6A3FE7B96FCF757A849384491BB60D79478765DFE18D58E31B9F23DF86AE7AFB23D9C995EACBD17E68EA67B9E783555AF307AD66CF767CC61EF559EE73DEB75B1E554D26C3C31311E36D7CA9397443FFA0560F8A23862F15DF2411345187E11970471CF1EE726B5BC1E1E7F1D6A6B1E37B04033D33F2550F1AACE3C677DF696469490494040C6063AFB57978897EF797D7F43EB32A7EEC3D3F53DBFE167FC8024EBF762E9FEED777C7FB55C1FC2B38D0A5E71C45D7FDDAEF73FEDFE95E851FE1A3E7B34FF007CA9EA181FDD269368FEE7E74EE3D4D21C7FB46B53CF3C57C45A4C1ACF8BF5BB1B9964B58DAE558BC31F98788D7B71D6B0F57F0A691A1E9B3CF03C9752AA92A6F3CB8C29EDC16E7F235D82CAB0FC44D65CCCB6EA253979D4301FBB5F538FC7354F586F0D788EFA6B4D4354BF69AD7FD62C76BE52A6781C91DF3818EBDAB9A34949B6D753DDC4632B5054E3095972AFEB6381F0F3C57F6B71BB4E824B9B789A72CAC11594119180A483CFAD62F8935AD5746BA16674DB584BA891268D9984A87A119AF4BD374AF0CD8D8EBF6DA6DB6AF06A11D9B231D406DC2E41381F973E958FE20B3B6BBF0069D797B0EF961BAF2E33C676B20247D322AE3462B747156CC6BC9E936BEF4797FF00C25BAC6DDA1A21CE795C9FE75D5F87B58BAF145ADCE9D3456F1DD22F9A8D047B1E451D541F5ACEDBA728F96CF23DCFD2B7FC10D1B78CB4C586D829F33E623D30735A7B35D8E7FADD6EB37F7B37FC11E12D1F59B1BAB8D4ED5EE195D553748C30083E879ED5D645E05F05DB48D35CE9D6D0C6899CBBB819F5CE73C53BC2CAAD06A3F61B8F2116E3686540D91F3600FD2B5A6D16E757592DE6D46768CC6771545079AE570A6ABD9CB5B6C3788AB257E67F79C84A9E029E4367045A74F7441455C33B671EA7A5797E833F93AA44540270DF8706BD547C3ED1B4895F5289EF5EE22569143CA30CC077E2BCABC3B006D5212FF364127F235C8BD9FD96DEBD4FA0C91D59B9EB7DBF53E9EB0D699C4515C347182A0065EC71DEB60B7ACFF90AE5478A3C3B1DAAC71BC0AFB00CF960E0E2A845F10ACE02F6BE4C970D160095178604647E35EAF3C56ECF0960313276507F71DB974FF9ECC7E829A4A1EF21FCEB887F88D1AB0FF409963EEC70315526F8B1A5C648560D8F434BDAC3B9AACAB16DD943F2357C0C41D635CC6EC09401BBA8F99ABB8AF3CF8677ABA8DCEAF78872B2B860718CFCCD5E874A93BC49CCE0E189717BA4BF2455D33FE41367FF005C13FF004115E35E2BDE3C7CFA9C51C6F3DBDC6D52E32005C0E9DFBF15ECBA67FC826CFF00EB827FE822BC63579D4EAB2DCBB8C79F239E318F9CF7FC2B3C43692B1D592C14AA4EEB4B5BFAFB8D3B5F10833B8B9558D89C332C925BF3F4CE07D29B3C2257F3B7ACD939DDE6AB93F9D73D1DF5B5C246A97301267DCF1AC87A71DBA11C51244A904B8453202A0B050D8E39E73C73DC66B058B9AD248E89655425AC5B5F89B6F2CF02FCD13283DF6D41F69DED9396C738CD5606486E0ADBDC4F1A004FEEE463C06DBDEA39EE2E64859A4BA91F6C9B40DABC9C0CE4F5EFEF551C6C1EE8E6FEC9BBF767F7A2D33176C85C7D2A510B9C1519CF4C566186EE190A35D3C58DC774838C2F53D3A54D15EDCC5218DEEA0CA9E7746467F2AD6389A72D8979455FB124FEFF00F233BC5F7062D04447832CCA00F61927FA573DA1E996FA9DB5C5BDCEE119476F94E0F00607EB5378BEFDEEAEADA138DB147BB8E9963FE005374191E25C2B151246FC8507BAFF0085734A6A55B9BA1F4147093A596BA5F69A7F89DE5A660D2D604F95238D5541E7000A75B5DE97A2B8496E824F3283E5F2C7F21CD737A16BB7DAA5ECF6532468213B1982E335A063B78AF679E1521E5725A4FE23DB8F4AEC9554A3747CEE1B2D752B3A737B6F6FC8D8D435906D654B7B5BA96428428F2B68CFD5B15C5E95A65CE95E1DB982E76F98C3900E7D7FC6B7495EBB41FAD417A7FD0E4C0C74FE62B9A751CF73DFC260A9E1DDE1BBEE67369B7AF233110A824E09947F2A068F727ACF6E3F163FD2B6B756858698F76A6795C4168BF7A56EFEC3D4D295770576CCA797E123EFCA3F8B307C35A15AE99AC4F797574D21B93F3F9685428EC0773D05729E2DFB37FC25977F652FE5647DFCE738E7AF35EBF1078AEE24D3AC4058E3660D3B6D2F9206E3DFB579378D8DC378C6E8DCA469261788D8918C71D6B83DAFB4A97F2EFF00A1D18371F6AA305656DAFE7D8F6CF8579FEC39BA748BFF0041AEFBE6F615C07C2CC7F61CF904FF00AAFF00D06BBEC0FEE57B347F868F99CD7FDF2A7AFE82F3FDE1484FABD2F3FDD028F9BD856A79E78BEAF6736A3E3AD423B746B868F508E668C0E5D502923D3F3A875FD6A0F0FEAD149A8444A4122CAB3B464973B98EC1C9200CF04F7F40456A34F6F0FC41D6A5BCB81146B2B7CEAD8C9D8B803AF3ED599ADEB1E1BB82A90E8C9AC4F93B229DE5CE7BF18AC695F57E67A9983BBA49F48A29E95ADDB7883FB53ECD1CAB0A5818C34800671BC1CE0138FBC78C9E2B6B55F036B3E27D1749834FBCB3B4D3A35DEC65059D9BA670076E78CD33C1B7B63A8CDAA69FFF0008DDAE951F93FBC6B50DE6FDE19539AECA382C6289628AD3529234185059F1FA56D7679B24AFA1E6E7E09EA31C523DD789205445CFEE6DF24F1EE45665BE9371E04794CB2ACF7B3A18D6E33911A9E0ED18EA457AACD656F3383FD8F71F29C82F39519F704F35C678B7C2FA9EB5762617363691039C4D78ABCF1CE3E831427626D72D780F7C3A2DD086DBED1899460C8131C1EE6B63508755BEB596DED2D23B791D0FCC2E88C76EA2A8F85ECA3F0FE872ADCEA76971E6CFF7AD5FCD0085E848EFCD58D4BC4973616534BA68692529DED99BA74FE758FBFED764977EA5DB4390B5F02EB5A6DEB6A57BAB432C712BBB461DD8FDD3C0CF15C4F8657FE26D07D0E7F2AEBECB59F1A6A572FF00DA1692C7A7ED937FFA3855DBB4F535C6688EE97D1B22EE210FF2AE2AAE775CED3F43EA787AD6A8EDDBF53DBEEB5BD23C3F3C56F7F6E1A5B99FCB84470A923D73EC322B66143F68BB8D95311C985C281C578CDD41AA78AF597B95BB2CB6916F0B310A401807A0C64915E8BE1AF10B4DA15B2CCB2CD26F640EC46E2A0E067D702BB613BCAD6D0F2B17858D2A2A4A77927692D7AEC2F89005B490FA035E184E6563FED1AF69F10DF25C5A4A13A0DCB9CFA578A8E5CFD6B9719D0F678717C7F23DC7E0BFFC83AF3E8BFCDABD4EBCB3E0C7FC83AF3E8BFCDABD4EBAB0FF00C2478B9E7FBFD4F97E48A9A69C691687FE9827FE822BC3BC4609B056264F995880EB81CB93C1EE2BDBEC4E344B63E96CBFFA08AF11F12C52FF0061DB308A600AE72CC0A11D495F4F7159E21FBF05E64E5D2718546B7B7E8CE1D950B7CC013EE7FC6A45670008E49171D36B118FC8D210DFDD603F1A44FBDFA76AEA6933CD8CE707A3B128D4EFAD980176D9EC580271F95588F5CBE09B5A3B79806DFB8AE181EFCF3D7159B3EE69D7190141E724649FFF0055281BB04F3F91ACDD1A6F7474C71D888ED2FD4DB8FC493AB0CDAB64861B91C646E393C1C5695A5F437EC9788D1A4736640CFF0074753CD72334A6DED2697A7971B3771D05747E141E4787ADDCCBE51168A0130EF072338F6AE3C4D28528F344F632EC654ADCFCFD17E6CE6F5C7326AB2927A607E95A9A2AC260883B3236C62081918DD58FAA1DDA94C7FDAAD6D2788E2FFAE27FF4335CF0F899F53523FBB48DE862B356CF9EE09E0B2C4327F1EB5602D97FCFC5D1FF00808AA087152835B5CE3F67E65C02CBB1BA23DC8A8AFE3416A5A212F96C57FD6303FC43A62A356C62A408DA7C305D6C5694108A18E54658738F5E3F5A6DE8DA44C972B5637F4FD238FB4DE28083908CDB547BB9FE839AB375AE5A5BB0310177320C2311B628FF00DD5FEBFAD73B737B7376F99E467C7407803E83A541935CBEC1CDF3547F231FAB39BE6AAFE48E8EC2ECEA32DC5CDEEA2D6CD855011C26E1CD79778BFC9FF84B6EBC8B96B94C0FDE33EE39C7233ED5E9DA2911D8B13A64972CCE48902AE00F4C9AF31F18485FC5F725AD8DB1C28F2CE3D3AF1EB58C55AB34B6F97FC38B0F6588696DF2FF00873DCBE167FC80A724E0663E47FB82BBDE3D58D707F0B323C3F3F207CE9D7FDC15DE7FC0C57B947F868F97CD3FDF2A7A871E86908FF668C8FEF1A0E3FDAAD4E03C5EFF004C3AB78FB50B70C21F2F5159CE39E11549FCEAE6904EAFE3AD4E69E7C7F675C9D8CAB8DCB9181589E28D565D0FC4DAEDE5B46ECE2EB685EFCA2FAF6AE1F4EF136AF6897D3C30B99EE58B3396E01FEBD6B96152316EFDCFA0C5612B578D3705A28A3D23C017724FE28D7F75C6F6FDE379AFDC96EA7153EA1E26D5EEBC4365A4D8B456D2B4AB1CCCCBE67CC4E0E01EA3A9AE33E1D5FDE69F77A9CE6383325BEC0B35C98BA9E483824918EDDF150DEC97579A9D8DD6C922BE85949BC81D8F20F0CCA405247B75AD3DBC52BDCE48E555DCF9794F5AD7AE9AD563B3B7BEB48DAF37AA5DDC058FC9640338005703E378A27D23FB4A5D674CBAB8575416F6991BB279C727357AFF00C47A84A8B15C6A105D338E4FF652F3EBF7DB03F2AE23C496F77A8BC4D34998C1C22AC29181EC020A99E2228DA86495EA5AEAC77BF0D6E5C7876E9ADA09666372370880C8F93BE48AE8753D4EE2DAC6E24B8D32E0FCA0826551D327D6BCF74649747D39AD23F3E22CDB9C437AE818E3193819FC3354AF15751DD1C8A509E332DCCB21FD4E2B0BC3DA7B5D6E6FFD8956FCAF6FEBCC9E1F887F6C965B08EC24449D1E3666941C7CA79C015CE787DB3A8478FEE37F2A9E3F0F5A28675672ABDF0066AF58D9DA5A5C4722799B8823E63C0CF15838ABFBAAC7BB97E0E383BFBD7B99D773C91EBD2790F344D22AA4A036377B1C76AF58F0FACD6BE17431C659E67765DA33E5AE718CF7E413F8D78F5D4E8DE25936904798BCE78C0AF5FD1F5682DF40B0573847563BCB0031B8F23D6BA30F7E77738B3BE5FAB2E55BC8C7D53CC8ACE7DE85411C678E715E5EBD6BD17C5FAD5B8478219A26254E70E0E2BCDE172C7A74EF518BD6C570FAE58CAFD6C7B9FC173FE81783D97F9B57AA5795FC173FE817BF45FE6D5EA95D586FE123C2CF7FDFEA7CBF2454D3806D22D01E86041FF8E8AE0F5DF03428A4DA4D3181412E1F0CABFE45779A67FC826CFF00EB827FE822B224D267263856E374725DB4D701B2A590F6F7AAAB1BADAE72612BCE8C9B8CF94F9EA3BAF0EDE02F10788EE2BC46C8C083DC2D2FD82C2E1CADB6AD973FC2CEADFA3006BD3BC4BF067C3FAC69D7F79A5C3259EACC58C4E25250B03C02A7B1C638AF07B3F32DE792CB5249ADAE62628F1C870011ECD9A95452D9B476FF006BCE5FC48464BD0EA9F45BE8FEE4B030FF0069593F971503D85F28F9AD7CCF78E456FD0E0D5783ED10C656DEEBE43C9182BFC8FF004AB02FB528FF008DE41FEFAB7E8C3FAD3E4AAB6907D672EA9F1D2717E467EA76F77269F35BADACF1BCB84E6238C6467A64577BA3C3258F87D23DF7D10081498A30C8D80073FAD71F3789DAC5FCBBA0431FE1319523F226BB0F0F69FAF6B7A3FDB520B8B3B47C187739C4EBDC81C617DCF5AE5C4D3AB522933AF0F2C0C1354A56BDB7FF0086381BF39BF9BFDE35AFA7B1548B1FF3C47FE84D49AE787AEB4D79AE2E16411AE598AC64F1F8552B1D4E0312C8824650A23E83A8273DFDEB38529DDBB1EFCF30C272ABD447448F9FAD4CA6B9DBAF11D9D847E64D1CC3B003073FAD65DD78FE236F22DADA48262308EE4614FAE2B554A6FA1CB5331C2455F9D1D0EAFE26B5D25C5BA235CDE30E218FB7D4F6AC3FEDFF0011DF1FDC59DBA28607014B631EA73589A1C725E492CB2312A4EE9A527E690FA67D2BA0B8D7EC34D884524AF9C710C03A0F7AEA8D0491F375F37AF527783B20FB7F8B641C792A3A7110FEB46EF16B75BB55FF0080A8FE959E7C636001D96172D924FCD2543FF099DB6E1FF12E603B9F333FD2ABD944E6798E21FDA7F7B3A286F7C650DBAC29AD089067A3277FF80D65DD69BAA99E4D42FF00518EE9F8DE49CB1ED56F4DD52DF5183CE8900C1C329EAA6A5D40AB5939D801E3A7D45653C3D38A724B52F0989AAF11077DDAFCCF74F85A3FE29F9B807E74FF00D005777CFA015C2FC2F03FE11F9FA9FDE2F4FF007057723D90FE35A51F810667FEF953D45C9FEF0A427FDBFCA800FF00700A53BBFD915A1C0785F89023F8AF59C9120375FC43FD85ACD558D061234503B0515A5E24663E2CD60B1527ED2795E9F74566579B3F899FA1E057FB3C3D17E43FCC61FC4690B93D49A613499A93B14471C30C1A2496182DDA59067CA52E58F4500673F5A6D6178B2E197495B285BF7F7B208940FEEF563FCBF3A718DDD8C7135151A52A8FA23062F18EB5A94CD159D95BE09E3E52481EE7352CD2F894FCE6E208D876445CFEA2BA0F0C786AEAF17FB3B4B837B28DD34BD07D49F4ADCBFF00026A96F632DD5BB437890E44AB6EC4BA6064FCA40271EDCD77C69C4F85A9996265BCDFDE793DD5FEBA9956BEB8523EF283B71F95749E12D4E5BE46B7BD91A574E85CE4D417D1A48825C06DA7E6F753D6A969F34167AA4535BC88EAC769D8E0FB8A55A9FB8DAE874E538D9C7191536DA969AEBBFF00C13A55F0DC44932CC4E4E7017FC6B6963892D92016F6E420C0631024D381CA83EA3345702BA3EDE54294B78AFB8AD258C12925D339EA0703F4A6AE9B66BD2DD3F1E6AD62800E69349EE6D18A8AB4558F43F8551A44DA8A46A1542A703EA6BD2ABCDFE1703E6EA27071B539FCEBD22BD0A1FC347C0679FEFD3F97E48A56001D16D81240FB3A723AFDD1552CC9F3A358AFBCC8F3CA3F0D8FC6AEE9BFF209B3FF00AE09FF00A08A93C94F355CE0907825467F3AD4F208ED3885BFEBA37FE846BCFF00C75E29B7D37561A7DE68363A8DB1504FDA5793F43835DCEFD96A5B3C6F91B1EB824D61C7A9DAEAD631DC5DE96B243236C5DCAB2EE39C70383FA5572E971267999BAF8737C87ED3E15BBD3E43FC561274FF00BE587F2AEDBC37F0E3C3B673C3ABDBCD797D0CB1AC96F15E10CA99E43630093F5E9566F3C2FE12BC6226D392DA43C13196888FCF8AEA6C44305AC16B00C451208E3E73C0181CFD2A7953E85733EE569B4DD3F50B8B837961693AA0083CE855BB64F51EF59AB73A958E8923C902BCC25DA88801D89D3803B7A56B13FF0012F99C705E43FF00A162A432B8077C01BDD08A89D3E6D53B1AD2ADC9A3575A6E73ED12DDC4AB750A832A6248CF6C8E457CC77913E9379A95A5BB423ECF78F0832B6D2CAA481F53815F4C4B777093B96D39B683C1539CF35F3C5DC8B378835D94E30D7D29E7FDE356A36464E5CCDB395BD12DEB0335DD9AE3B093FF00AD54A4B309B025CC32BBB6D0B19271FA532F1FCCBD99FD5CF4ABBA0DBF9FA9A13D1064D3035AEEE0691A5C7045F7F1D7D49FF39FCAA9693A1BEA6C6E2E642B1139249E58D36E50EABAE470293B09CB7B03C9FD302BD43C3BE1D825B36BEBE692DF4BB62AACD1A658E78C2F6E3A93FCCD0FB08E5868BA4C318516A5BD58F7AC8D4FC331491B4DA79F9C7588F7FA57B85DF867C38DAB5E68E6DE7536D686E5AE6DE66665190002A7824E73D3B5798EB9613F86F5916B2CA93452209ADEE23FBB3467A30F43D88A394398E1F44B830EA490BBC88929D8C118A9CF6E9EF5D23CF7185B77903C7807247CC7EB589AEDB2DA6AF0DCC4309310F81D883CD6E3005D5874DA2B9F13271A67B391528D4C5A4D5ECAFF0091EFDF0E353B2B2D0265BABA48499010188E46D1507897C677F0EB5243A5DD06B358D7122F39639DDF9715C1C03F711F1FC23F953EB0559A828A3E81E514A5899579EB7E9D0D797C4FAD4C72FA85C7E0F815D85A7C42B3874EB78EE21966B958C095F03E66C726BCE68C528D69A36AD94E1AAA49C6D6EDA16353B88EF756BCBC89362DC4A64D98C6DC81C7E9550D388A4DB59B77773D1A54D538282D90C3477A76DA50B9A46A47DEB035B8F76B566E7EEC70391F52D8FE55D28B79986562723D769AE7F56643AAC69B81648F0E01CE3249C56D415E68F1F3C9C560A4AFAE9F99EB9E1AD2A1D3740D36286710DD074BBB9DE305830E063B823E51F8D6A9D3DAC90F92D22B2DC9BA9A4720B838E40C71C81B707A53E216373796A81DDA468229D06415DAA46D03038E4F7EBF8549AB4AB1D9DDCAA7CC7C046894ED241C8038E84E7F4AF42CD1F037478678CECA1B1F18EA36F02AA5B4EAB71122F45571923F3CD645BFC2EF1369B62BE229EDA01A679227122CEA4ED6C63E5EB9E456CF8ADFEDBE3ABED8A025B2476C141CE0AAE48FC3763F0AFA0EDF42B7BCF05DB6897AAC616B48E29141C1E147F5159D58F345A474E12AAA35A151F469FE2787A0F917FDD1FCA9D8AF5C8FE1C6868006374F8F5931FC855D87C11E1F87FE5C03FF00D74763FD6B9161E67D84B88F08B64DFCBFE09E2B8A9ECECE7BEBA8EDADE3324B23055502BDC62F0EE8D0FDCD32D47FDB207F9D5D8AD2DA0FF536F147FEE201FCAA961DF567354E268D9F253D7CD943C3DA243A0E951DA4782FF7A593FBEFDCFD2B568A2BA9249591F2952A4AA4DCE6EED9574CFF00904D9FFD704FFD04567EA9A66AF3DD2CFA5EB86CC1E1E196DD668CFB8E4107F1C568699FF20AB3FF00AE09FF00A08AB54C829FD88B5BAC723ABF04365701B3D7A74CD655EE9DA6E89A709DA596DED6DDB767990264F5E727AFE55D0D4571047756D2412AEE8E452AC3D41A77158E4E0BCD32EA39C596B16522CE06E4F3829CFE3CFE15A9A75AB417658461636008208209C1C9E3EB5E63E24F06BE9D752472C7E65BB926394AE723EB8EBEDF5AF3FBA4D7BC3B337F67EA37D6A87EE34333003F0CE2AD463BA33E696CCFA5EDE312E9EA8DDCE7F5CD2BC7B10EDDCBC7F0B7F8D7CD361F177C75A29F2A59D6FE35EF71186FD460D763A07C6DD6754B85B6BCF0BA4A5CE035ACACA7FEF960734ACBB9577D8F45681D5D9D2E2653D7E66C8AF9725B76BE86E27789647699E462642B824E4E3039AFAA2FA1D4D748FB541A4CB2CB22106D84CA244C83D7B71F5AF02B8F0378D87996F6FE16B844FBA18F71EBC54B6871479F25F69C9D749473EAD3BD68684204B5BEBA726350307D87B7E75BD67F073C6B25C47BF479026E1B831038CFBD4DA968D341772DA4DE6C66290AF96A54853F4FA8A13B8E5A185E198C5CEA5757447560A3D8673FC80AF773756965A1AE8B776BF69B15B54B89163CA36FDE06D623A8627DB815E27E1C8CDB4B731E30E24CF4C76C57BBC7ABC979E44D2C522690964B2CD2C8BF28638D8171F79860E476C9A6909B3764892747B7575B5BC9221991230AC23CE0E1BF8B19C73D322BC8BE294B66347B38ADA28E31A6DFB59C5B58B1F2CA7424F539033EF5EA5717FA75D288D8F99E759B4B1BC2A4F988B86F9491C9E8702BC63E23EA3757EDA669D7714697AEDF6A995140DABC84DD8FE2396CFD051B06E71FAE8F3349B193B87C0AEF6CBC01E21BDF0FD96AD6965F69B79E305444C0BF1C7DDFC2B223F05EB3AFE9709D3AC27B98AD9C090C63A13EDDFD6BE92F0369F73A5782348B1BC429730DB81229EA1B938FD6B1AD49555CAD9DF80C754C155F6B4D27D353CD2DBC1FAF3C68069B32E140F9F0BDBDCD5F8BE1F6BB272D14110FF6A51FD2BD72A191B2703A54470D1EE7A15388B13D125F7FF99E607E1DEA4A32D73031F44E7F9E2A2FF841351DE156363EECEAA3FAD7A79E2A3218D6AB0B4CE3967F8E7F6ADF24729A77C39B3F2C35FCCECFFDD8A4E07E38AD68BC09E1F8BAD9B49FEFCAC7FAD6B29753904D5B8DF7AE7BF7A1D0847A18BCD31753E2A8FEF3322F0C68907DCD32DBF14CFF003ABB1E9F6517FABB4813FDD8C0AB3450A315B230956A93F8A4DFCCF27F895E1D65D49751890F917002B618801C0EF8EDD0D7945DD935ADF79B83B5C7393939AFAA2EED2DEFED9EDAE6359227186535E7DADFC38799585AB89A2EAAAE70EBFD0D6A9AB5998493BDD1C9E89E2BB39BC3EDA46A13C7673ED58D2F194905074048E847E55A7AE78EB4CB379DF46912F6FA485618F621F2A20093E63B1FBCDCF00572BA9F83356D36523ECB2B2FA6D39FF0356745F026BBABCAA05A3C10F7967F9547F53F850D8D117813C34FADF88E14937490A3F9F732B725B9C9CFBB1E3F1F6AFA1EB1BC37E1CB4F0D69A2D6DBE6763BA5948C191BFA0F415B35050514514005145140051451401574CFF90559FF00D704FF00D0455AAABA67FC82ACFF00EB827FE822AD500145145004734315C44639A34910F5561915CFDFF82F47BE5606268F3D81C8FC8D74479A4A6886CF3E6F84BA234DBCCB2633D028AE9F44F0A689A01DD63668B2FF00CF57E5BF3ED5B38A36D024DA24A29A0E297348B4EE2D7927C46F091FED26D4A051E5DCF2D85E55C7F8FF00535EB751CF045730BC3322BC6E30CADD0D34EC0D5D58F932FB4F9B4BD61A5642239B9E14800FA73EF5D6691E253068D3E8F7D1CF71A64C08C40C049167AE33C107AE3D6BD2FC41F0DA1D463616AE983C80FD57F1EF5C05D7C39F10E9D21F2ED9A450786539FD47F5A77252EE59D4BC6F681E07D1B49BD96E2DA1315AFDA7091420A85C900E58E07FF5EB86874ABCBFD64CF725EEB52BA93918F9998F40076F403B576D67E0BF175DB0885B1854F059D828AF48F08780AD3C36DF6CB87175A8918F331F2C7EA147F5A96CB491ABE12D047873C3D058160D37324CC0705CF5FCBA7E15B945140087A1A8B654B4534C96AE43E5E697CBF6A9714B4F985C843E553D1369CE69F452BB1A8A4149F852D26290C293AF5A75140357198A36FB9A7D14EE2E51052D14522828A28A0028A28A0028A28A00ABA67FC82ACFFEB827FE822AD555D33FE41567FF005C13FF0041156A800A28A280131462968A02C2628C52D140AC84C518A5A280B05145140C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00ABA67FC82ACFFEB827FE822AD555D33FE41567FF005C13FF0041156A800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2802B69FF00F20CB5FF00AE29FC8559A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFD9);

SET IDENTITY_INSERT [Samochody] OFF;

SET IDENTITY_INSERT [SamochodySprzet] ON;

SET IDENTITY_INSERT [SamochodySprzet] OFF;

SET IDENTITY_INSERT [Skladki] ON;

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (2, 12, 'Roczna', 'Składka za rok 2015', 50, '', '2015.03.11 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (3, 7, 'Roczna', 'Składka za rok 2015', 50, '', '2015.03.11 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (4, 11, 'Okolicznościowa', 'Pogrzeb strażaka', 10, '', '2015.02.01 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (11, 13, 'Okolicznościowa', 'Pogrzeb strażaka', 10, '', '2011.02.01 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (12, 13, 'Roczna', 'Składka za rok 2011', 50, 'Informacje
', '2011.03.11 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (13, 16, 'Roczna', 'Składka za rok 2015', 50, '', '2015.01.10 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (14, 18, 'Roczna', 'Składka za rok 2015', 50, '', '2015.01.03 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (15, 19, 'Roczna', 'Składka za rok 2015', 50, '', '2015.01.02 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (16, 20, 'Roczna', 'Składka za rok 2011', 40, '', '2011.01.03 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (17, 20, 'Roczna', 'Składka za rok 2014', 50, '', '2014.01.02 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (18, 15, 'Roczna', 'Składka za rok 2014', 50, '', '2014.01.02 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (19, 7, 'Roczna', 'Składka za rok 2014', 50, '', '2014.01.30 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (20, 8, 'Roczna', 'Składka za rok 2014', 50, '', '2014.01.30 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (21, 8, 'Okolicznościowa', 'pogrzeb strażaka', 100, '', '2015.07.04 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (22, 8, 'Roczna', 'Składka za rok 2011', 50, '', '2011.01.17 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (23, 13, 'Roczna', 'Składka za rok 2012', 50, '', '2012.01.24 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (24, 10, 'Roczna', 'Składka za rok 2013', 50, '', '2013.01.30 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (25, 10, 'Roczna', 'Składka za rok 2015', 50, '', '2015.01.24 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (26, 9, 'Roczna', 'Składka za rok 2012', 40, '', '2012.02.22 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (27, 9, 'Roczna', 'Składka za rok 2015', 50, '', '2015.01.17 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (28, 9, 'Roczna', 'Składka za rok 2012', 50, '', '2012.01.30 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (29, 9, 'Okolicznościowa', 'pogrzeb strażaka', 50, '', '2015.02.09 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (30, 22, 'Roczna', 'Składka za rok 2012', 10, '', '2014.01.23 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (31, 28, 'Roczna', 'Składka za rok 2013', 10, '', '2013.07.28 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (32, 28, 'Roczna', 'Składka za rok 2015', 10, '', '2015.02.01 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (33, 28, 'Roczna', 'Składka za rok 2011', 10, '', '2011.02.09 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (34, 28, 'Roczna', 'Składka za rok 2012', 20, '', '2012.01.30 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (35, 27, 'Roczna', 'Składka za rok 2015', 10, '', '2015.07.12 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (36, 27, 'Roczna', 'Składka za rok 2011', 10, '', '2011.02.01 00:00:00.000', 1);

INSERT INTO [Skladki] ([Id], [IdOsoby], [Rodzaj], [Tytuł], [Kwota], [Informacje], [Data], [IdJednostki]) VALUES (37, 27, 'Roczna', 'Składka za rok 2012', 10, '', '2012.02.09 00:00:00.000', 1);

SET IDENTITY_INSERT [Skladki] OFF;

SET IDENTITY_INSERT [Sprzet] ON;

INSERT INTO [Sprzet] ([Id], [Rodzaj], [Producent], [Marka], [Rodzaj paliwa], [Norma na 1 h pracy], [Norma oleju na 1 h pracy], [Termin przeglądu], [Informacje], [Rok produkcji], [Norma na rozruch], [IdJednostki], [Numer CNBOP], [Zdjecie], [Numer fabryczny], [Numer seryjny], [Numer silnika]) VALUES (5, 'Poduszkowiec', 'HT-P ', 'Anaconda', 'ON', 15, 1, '2011.06.18 00:00:00.000', '', '1912.10.18 00:00:00.000', 0, 1, NULL, NULL, '', '', '');

INSERT INTO [Sprzet] ([Id], [Rodzaj], [Producent], [Marka], [Rodzaj paliwa], [Norma na 1 h pracy], [Norma oleju na 1 h pracy], [Termin przeglądu], [Informacje], [Rok produkcji], [Norma na rozruch], [IdJednostki], [Numer CNBOP], [Zdjecie], [Numer fabryczny], [Numer seryjny], [Numer silnika]) VALUES (6, 'Agregat oddymiający z napędem wodnym', 'Hernan', 'PS-34', 'PB 95', 0, 0, '2011.10.01 00:00:00.000', '
wentylator napędzany turbiną wodną
oddymia, schładza i usuwa gazy wybuchowe powstałe w wyniku pożaru
podaje mgłę wodną jako osłonę
brak silnika spalinowego redukuje hałas
waży znacznie mniej i oszczędza miejsce
wykonane w wersji Ex
obudowa termopl', '1912.10.18 00:00:00.000', 0, 1, NULL, NULL, '', '', '');

INSERT INTO [Sprzet] ([Id], [Rodzaj], [Producent], [Marka], [Rodzaj paliwa], [Norma na 1 h pracy], [Norma oleju na 1 h pracy], [Termin przeglądu], [Informacje], [Rok produkcji], [Norma na rozruch], [IdJednostki], [Numer CNBOP], [Zdjecie], [Numer fabryczny], [Numer seryjny], [Numer silnika]) VALUES (7, 'Agregat prądotwórczy ', 'Hernan', 'EC 2200', 'PB 98', 1, 0.5, '2011.09.30 00:00:00.000', 'Dane techniczne:
Moc maksymalna - 2,0 kVA
Moc znamionowa - 1,7 kVA
Napięcie znamionowe - 230V
Prąd znamionowy - 7,5 A
Wymiary - 585 x 435 x 440 mm
Ciężar - 36 kg
Generator synchroniczny, jednofazowy
Stopień ochrony IP 23
Silnik benzynowy, 4 suwow', '1912.10.18 00:00:00.000', 0, 1, '', 0xFFD8FFE000104A46494600010101004800480000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC0001108012C012C03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F69D334CD3DB49B326C6D4930213FB95FEE8F6AB7FD95A77FCF85AFF00DF95FF000A34AFF904597FD708FF00F41156E802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A7F6569DFF003E16BFF7E57FC28FECAD3BFE7C2D7FEFCAFF00855BA2802A7F6569DFF3E16BFF007E57FC28FECAD3BFE7C2D7FEFCAFF855BA2802A695FF00208B2FFAE11FFE822ADD54D2BFE41165FF005C23FF00D0455BA0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00A9A57FC822CBFEB847FFA08AB75534AFF00904597FD708FFF0041156E800A28A2800A28A2800A28A2800A28A2800A28A2800A28A867BCB6B6199EE21887AC8E17F9D004D45605DF8DFC31659136B76808EC8FBCFE99AC0BCF8C3E13B5C849EE2E08FF009E71607EA450077D457915E7C79D3901169A54CE7B19240BFC81AE7EF3E3CEAB2022D6C2D21F73963FCE803DF68AF98AF7E31F8A6EB38D40423FE9922AFF004AE7EE7C6FAF6A24F9BAA5DCDEA3CC63401F556ADAFE9DA35AB4F7770BC70234F99D8FA015E7F7BF172E16522D349B78E307EF5D5D004FE0BD2BC2ACBFB635DD452CAC63B8BBBB973B624E58E064D76561F077C697D83716F059A9EF3DC827F25CD0077F17C68B78518DFDADB6476B79D893F9AD5EB3F8D1A15C28696C6FE307BAA071FCC572D67FB3FCAFCEA1AE46BED0425BF5247F2AB971F00C6D06D7C5172AC060096DC11FA30A00ECA0F8A9E139880F7B2C04FF00CF581C7F206B4EDFC75E16BA2045AED964F67936FF003C5792CFF047C55064DA6BD65301D0481D33FA1ACAB8F85FF102D8122CACAEC0FEE4E873FF007D62803E848356D3AEBFE3DF50B597FDC995BF91AB6082320E47B57CB33F85BC6164C4DCF83E7603AB45116FD50D536D5354D31B12D86AF6247A3CB1E3F3A00FACE8AF962D7E23EAB6FF002A6BFAB478ECD20907E4D5D169FF00137C55201F67D55EE07FD36D3C11F98A00FA168AF174F8A3E27B754FB47F61B6073BD9D18FBE0138ABBFF0BAE0B680B5D416D3CA3F82D99C0FCD85007ADD15E536FF001C6C268FCE3A06A020CE37A32B5741A37C57F096B332C02FDACE763809789E5E4FFBDD3F5A00EDA8A4560CA19482A46411DE96800A28A2802A695FF208B2FF00AE11FF00E822ADD54D2BFE41165FF5C23FFD0455A665452CC40503249E805002D21600E0902BC4BC69F15AE6E2F25B1D12568AD509533270F27BE7B0AE13FE125B877DD3091D8FF11724D007D53457CD565E36BAB4C7957F7B0E3B2CA48FCAB425F1DDF5F45E5CDACCE41E3EFB467F3522803E829268E15DD2C888BEACC00AC9BBF16787EC73F68D66C908EC2604FE42BE7BB9B5875124B5FDE313DC5C893F46FF001ACD9FC2AEC3316A120F69603FCD49A00F79BCF8B1E11B4C817EF391FF003CA227F9E2B02F3E3AE8B1645B69F7337A17655FF1AF139BC31A9AFF00AB96D25F41E76D3F93015A7A4FC32F126B015925D32DD0F79AF5323F05C9A00EE6F3E3E5E1C8B4D26DD3D0C8C5BFC2B9EBDF8D3E29B90447710C00FF00CF3887F5CD357E1758D9E7FB53C570961C18EC6D5A43FF007D3102A78FC27E0FB63FF1EFAADF91DE7B95854FE0809FD6B09E2A8C34948EDA39762AB6B083B7DDF99CC5F7C42F12DF0227D66E8AFA09081FA562B6A77D7D2E04B3DC487B292E4D7AFE9A3C21A73291E0AB19187F1492B4A7FF001F06B4755F1535D69B3D86956306910CA9B0C96A02C8BFEE90062B278FA16BDFF03A56498D6EDCB6F9A3C663D0BC4172ACC9A4DE90064978CA607BEEC54F67E15D4AFA40AF75616E0F5324FBB1F5D81ABA86D3B51576921D6584C79F364B746933EBBBA9FC6A8C9E167BA25AFB57BCB924E4867201FC28FAFD0B5EE0B24C6B76E5FC50D9FC0DA4E9CF1AEA3E2CB591D864C76680EDF625D873F85695BF84BC310E0B5ADF5D9F59AE7603F8228FE754EDFC23A5C041F283639F9B9AE944DB63081013FDE63926B8AB639C9FEEE56F91EB61325505FBF826FC9B160B4D0AD221F63F0C6951C83FE5ACC8D39FC9C91579B58BB6B09AC77DBC56D321492286D923054F51F2806B3B733FCB9E3D29AFF20FBAC7DFA0AE7F6F5A6F4937FD791E87D4709496B08AF5FF008245A5A2786AFDAFB4482382E590C664032769C123E6CFA57409E34F133819BEDBF48D0FF4AE521D79E0B8659AD6DA18D49C4AF30663FF0001E6AE0F88915A8DB88A6C7F721DBFAFFF005ABD0861ABB5773B7DE7855B31C1C64D428A7F72FD0EEF4EF8877D6D6DB350B4376E0FFAD4C21C7B803153BFC4DFEE69C13FDF90FF0085798DCFC4FBF9015B5B3863F7DB9358579E2DD72F33E65CEC1ED815B7B1AE95954FC0E3FAD60DCAEE87FE4CFF00C8F6D5F892EA9B9B4C5907AACFB3FF004215757E28F86E3B149AEAE1A09C8F9ADC0DECA7EA383F9D7CDD3DFCF31FDFDE337B6ECD44B1C929FDD4134BEF8E2B6829415E72BFE07254942ACAD4A9DBEF67BBDFFC70D221DCB65613CE7B1760A3F4CD72FA87C6DD6EE015B3B2B5814F72A5CFEBC579E45A4DEC832561847FB4D93FA55E8BC3CADFEBEF243ED180054CB134A3D4DA9E5B8AA9B41AF5D3F31755F16EADABCA25BC960DC0E4110A2E3F21598B757DA849E5472DC5CB9E364419CFE42BA4D3EC2C34C9D661656B72CBDAED0C83F23C575D6DF11B52B083C9B4B5D3EDD7D20B65503F01C567F5DA5E6747F62E27A5BEF38FD33E1AF8B75720A6913C087F8EE888863E879FD2BAEB0F809752A86D4B578612474810C847E27029D0FC4FD7D660CD70AC33CABC2BB7F4AEE344F899A65EAAC7A90FB14C78DFD633F8F51F8FE7550C5D293B5EC635B2CC4D25771BFA1C5DC7C0FD6A37DD63E2C000E81E029FFA0B5719E2BF02F8A3C35135CEB16D1EA162BC35EDAFCC507AB70081F518F7AFA791D5D03A3065619041C8228923496368E45574605595864107A822BA4F3CF9CBC03F116F3C27776F677F70F73A04C70093B8DBE7F897D8775FCABE8D8E4496249237574750CACA72083D08AF9A7C7DE118FC2DE2D92C2D976E99A8A19ECC7689C7DE41F43FA115EA3F0675B9751F08BE9D72C5A6D365F2813D7CB232BF9723F01401E8F451450054D2BFE41165FF005C23FF00D045723F1635C7D1BC152C703ED9EF5C5BA91D403CB1FC863F1AEBB4AFF904597FD708FF00F4115E4DF1DA76326856BFC24CB21FAFCA2803C9F4BD3EE75AD6ECB48B3C7DA2EA40818F451DD8FB0193F857D1767F0C7C296BA525949A5C772C17E7B8909F31CFAEE078FA0AF27F83168B3FC4696671CDB59C8EBEC4955FE44D7B3F8D7597D1BC3371340FB6E65221848EA19BBFE0326A672508B93E8694A9CAACD538EEDD8E275CF86DE03B40DE6EAD2E9D27F73ED01F1FF01209AF38D67C3BA1DA16FECBD766BC61D15EC8A03FF02CFF004AB5F65DEC5DC966272589C927DCD21B323A13F9D7912CCE4FE1563EB6970DD18EB524DFE1FE673274FB95FB9CFF00BA6903EA16A7224993F3ADDBAB49F00A33107AE0F4AAE96643659F9F7AD29E6126B5B1957C868A7EE36BF1FD0A49AFEA51F0D22C9ED22835345E21C67ED1A742FCE772650FE95A63FD515FB3C4FEECB9AA12D944725A2541EA062B58E6307BA38E7C3D592BC66BE775FE65D87C5168303CCBF83FDD9778FC8D5E4D6ED2E071A9DBB1F4B9B6C1FCD6B9B6D3E063F2BBE7E99AB30F8527BB8CB433C191FC2E4A9AD7EB3427A4BF14724B2DC750D62BEE7FD33A48D8CA731AD9CE3FE98DD153F93548CB2C67E7B0BA51EA30FF00CAB8DBAF0E6A767CB459F78E406ABA5E6A7647E4B8B88F1EE693C3E1AA6C97C8163731A1BCA5F357FCCEDBED76EA487DD1B7A49130A6ADCABE489ECC01D8BF27E82B9A87C63ADDBF0275997A6D90035A9078E209976EA5A25B4B9EACAA3352F2EA37EBF79A473DC5A56767F225BAD7A1B2CEF8A4723BF9585FCEB2E7F1948DFF001EF6B1A8F52335B693F8535542B6F24FA75C91C004804FF2AE6357B392C6768EE155D0FDDB981403F88E87FCF35AC309461B47F5396AE678BA9BCDAF4D3F2193788B559C6049B07FB2315426BAB89799AE8FE2D5A16BE1EFB5C2B3B6A22489BFE78AFE9CF435763F0ED847CEC690FAC8734A589A54FDD48DA96598AC4A536F47D5BBFE5739ADF1B36033C8DE82AC45657B2E3C9B2603FBCFC0FD6BAA8AD96018892241FEC802A52081935CF2CC3B23BE9E41FCF3BFA1CD2E8D7CC3F792C718F441934F1A2C4BCCB24921F7E056F6F19C60D1866380B9AE7962AA4BED58EFA795E1A97FCBBBFAEBFF0000CDB2B48209C158131EEB9AD82D085E78FC3142DA370D23227EA69CF1AF45CB7BE31584AA7F348EB8538FD885BD341886CE4E0373E95235A211F29C545F61466DCC707DBAD5A488AA6C52D8FF0069BFA544AA456FA9A468D497C2DA28FD8486FBCC7DAA65B758BEF42A49FEF55D0871F78FE1C502300F4158CEAA7F0E86F4B0F35FC4772B88988238507B014E5B60060F4AB18C5048C566E4DEE74469C63B1E95F0DF5BF36C9F4699B325B8DD064F58FB8FC0FE86BBDAF9C1EFDED25592DE668E65FBAC8C411F956AD978FB5DB1591C084CAEE1DE4695D9700018C37B0F5AF67078D8AA7CB51EC7C966994CE55DD4C3ABA7BEDA336BE3D855D3F409578996EDC29EF8DBCFF21567E13C22DF5CD516318492CED9C81FDEF9B9FE75E7BF11FC6ABE2E9B462B12C62D44BE6AC726F5DC76F23F015EA1F0A8ACF36A974BD3C9B5881F5C213FD457A719292BA3E7A7070938CB747A4D14515441534AFF00904597FD708FFF004115E4DF1C9145FF0087647385265427FEF8AF59D2BFE41165FF005C23FF00D045795FC784FF0044D024C749E55FCD57FC28039AF8433ADBFC4C7841C8B8B17507E854FF004AEC3E27EA88DA8DB5916C476C9E63FF00BCDD3F41FAD7887F6CEA1A06AD06A3A54E60BB5568D5C0CF0DC115D85F5C5CDDC10CB7F3B4F7327CD2C8DD58E00AF3F31A9CB4D43B9EF70FE1FDA625D57B457E2FFA6588A6865FB92A31F406A52BF8573A65B481E592EA13246236DBB4E0AB766FC2B1EFF5F986AB7136973CD0DAB30D91B723A0C9C1E993935E752C03AD0E68C8F7B1B9C47095BD9CE2DAB5EE8EE4A0C537C953FC22B8EB7F18DEA604F0C337B81B4D6ADBF8C6C9C7EFE09A2F5206E1FA544F0188874BFA154B3BC1D4DE56F55FD2371A15C74A8A4B512215C75A6C1AC69B7281A3BB8B07A6E3B4FEB5754AB8CAB0607B835CD284E1F1268F429E229D55EE493F46668B6788F0AA7F0A7113718F931DC75AD02BED48568F692295385EF632DE26639625BFDEAAD28789C2A460E464135B4D1827A542F6EADD69AAAD3D472A69AF77431D6CCCCD99A18D87A6D1575B4AD0E48C1960960603968DCF35605B95E8C69AF6FB8E5B9ADE38A94758B671D4CBE9D5D2714CC3BBD2B4F208B59A6CF6F330455786E2588FD8EF49689B8563CE2B79ECD4FF000E2A9DD69C2688AE7E991D2BAA8660D4AD37A1E763721A53A6E5415A4BEE665B2DC787EEC4D165ED65FBEBD8FF00F5EB7566F3E359233946190477AA56006A1633E9F71FEB61CE33D48ED506892C903C964FCED2593FA8AEEC6534E1ED174FC8F1728C44E15BD84B67F8334FCB63D49A02EDEE6ADAC4CC3269E2DC03CD786EB763ECE387B6E4291C6C33B371FAD3D50E3A71EF566340BD052F7AC6536CD1538C5E84021C9C9CFD2A55403B53E90903BD4D8D030296A17B88D3AB0AAED7C0F0809AA5164B9A45ECD4325C246396AC9BBD561B61FE93729113D173963F875AC9975C6738B5B466FF00A6939DA3F21CD7452C2D4A9F0A387139961E87C7249F6DDFDC8E8DAF4B1C46BF89ACCBBD6ED6DC959AE833FF00CF38BE66FC8560CD25D5D822E6E9CA1FF9671FC8BFA75A6C714710C468AA3D857A34B2C4B59BFBBFCCF0313C42DE9463F37FE48BAFAD5CC84FD9AD1621D9E7393FF7C8FF001AA5309AECE6F2E249BFD9FBA83F014FA2BD0A787A54FE147895F1D88AFF00C493B76E811C248290C59C2962147403A9FA57D09F08ADFCBF0E5E4BDDEEB67E0B1A0FF1AF0CD1757B8D1EF1E4B64899E64111F3577003729E9F857D0DF0D232BE0B8266FBD713CD31F7CC847F4AD8E43AEA28A2802A695FF208B2FF00AE11FF00E822BCD7E3AC5BBC3BA54BFDCBDC7E687FC2BD2B4AFF00904597FD708FFF004115C0FC6E8C3781E093FE79DF467F30C2803C06783ED3A9D8C20677CC07E19CD763A930F3020FE15AC1D260F3FC4168D8C88C3BFE98FEB5B17AFBEE256FF68D78B98CAF5547B23ECB8729DA84A7DDFE5FD3313536C59CDFEEE3F5AF50F871E19D1753F00DA4B7FA5DACF2CB24A5A474F98E1881CF5ED5C2D9E8326BCD3C0B22C3122069666E446338071DF9AEB3C29E3AD27C21A6AF86B58134771633491BCF12F991B1DE4E78E475F4AEDC02B52BF99E467F34F149765FAB386F88FA5D8E8FE24369A7DB88210B9DA189F5F5AF5AF0FE9FA326890C3A8D9412916F0804A7270BEBF8D7907C42D66CB5CF12B5DD84DE741B0287DA573F81E6BD72CD36D85B2FA4283FF1D15DA788375DF02F86A6D226B85B5312AAEF1B181527EA3FC6BC5AFED8E9AFE659CB2C23E5C2AB9EF9FF000AF6CBD91C697731063B19092B9E3A579F6A9E22B28BC1D3E84F6CCD72D9292940402581E0F51C0A2D71A6D3BA32F4483C67AB584D7BA5DACDA85BC2FE5BE155886C6718C8278F4AB7A86AFAA684F0AEABA701E626F0D19618E4820E470411D2B4BC1D77E27B1F0744FE1AB786E09BE9A4B98E4553C2A46148C9047F17435BD7FF00172484C169AAE9BE64A220D7296C7CBF2A43D519240C1B1C77C1CD73CF0B467BC51D94B31C5D2F86A3F9EBF99C741E2ED326C799E6C44FF79723F315A506A96175FEA6EE173E9B803F9562F8F92CAFFC4C6F34DB68ED61B8B5B7985B80B1E0B46189C0E33C8E95C7DC594D046259159558E1772E33F4F5AE59E5749FC2DA3D2A5C43898FC7152FC3FAFB8F54C0229368AF36D2273F68292EA92D926C251D72C0B646011D875E6BA38AE757480CD6FAA595D228DC56420363193D0FA67F2AE49E57517C2D33D2A5C4945FF122D7E3FE4748CB4C31E6B9787C6CC31F68B207DE37FE86B4A0F166953F0F24909F49178FCC572CF055E1BC7F53D3A59BE0EA6D35F3D3F322BACD86BB04E9C2CCBB5BEBFE71434612F16E5463648377D0F14DD72E6DEE21B29EDE54917CD23729CF61525BB892D6F0B768C11F5CD7B785BCF0C94BD0F90CCAD4B1F29D3EE9FE4FF336D4D3EB1AE75DB0B2E26B94DDFDC5393F90AA7FF091FDB1B659187EB238CFE55E0AC3D46AF6D0FB6FAED04F95C95FB1D19600D5796F238C92585623ADCCA85EEAF8041D70E145576BDB387E5843DCB0FEEF0BF99FE9550C34A6ED15733AD8EA3495E724BE7AFDC8DA6D48B711A93EF55EE2F0C49BEE674853FDA38AC596FAF66E15D6DD7D22196FFBE8FF004C55610206F3082EE7ABB9DC7F335DF4B2D96F3763C3C4710C1694A3CDEBA2FF003FC8BF2EB31E48B68249CFF7DFE45FD793F955396EAFAE3892E3CA43FC100DBFAF5A29BF5AF429E12953D95DF99E262334C557D1CACBB2D089208E33944009EA7A93F8D3E9692BA4F3C28A29280173499A4A28025B4C1BC8B3D03027F0E6BEA3F03DB9B6F0468D19183F65473FF021BBFAD7CB966099988EA118FE95F5C69907D9749B3B7FF9E50227E4A05005AA28A2802A695FF208B2FF00AE11FF00E822B8BF8CB1799F0EAE5BFE79CF0B7FE3C07F5AED34AFF904597FD708FF00F4115CC7C558BCDF86DAC7FB288FF93AD007827872455D65831F98DBFCB9EFC8CD6EBD8E598AB6727F1AE284BE55E69D2824059E3DD838C8C8047E55F49DF7C37D22E0B35AC93DA31E815B7A8FC0F3FAD7958CC154A93F69067D26539BD1C351F63553F5DCF1F8ADDA063B5E4427AE0E33CE79F5AC7BCF0D5BCD249224B32C8EC59998EEDC4F249CD7AA5F7C3AD62D726D2682ED3FBB9D8DF91E3F5AE6AFB49BCB06C5F584F07FB4C840FCC715C3CD89C3EF75F91ECBFECFC76BEEC9FDCFF4679CCFE19BD43FBA31CC3D8E0FEB5DF5B78FE0B7448B54D2EF2D0A80BBD07989C0FC0D4690C2C412C71562E3478C5B79A93060474AE9A79954FB493382BE4387BFB9271BFCD7F5F32F4BE28D0F50D32E3ECBA9DBB3F967E476D8DD3D0E2BCB759B88A59CF9722B8C8E54E7B56F5EE99673E56581377F7D460D72B7D60D633EC27723728DEA3FC6BBF0F8C856D168CF1B30CA2BE0973CB58F75FA9EAFE10BB1A67806096224191256623BB1247F87E55C0F89E449668989CCC14A963DC00315B367AFDBE83E11D22DEE2D5E58EEE39A43B5B049F3597BF1D05725ACC93BEA72FDA2DA4B56000586404322E3233F5EBF8D759E516B5CD562D5EEA2682031AC50C716E63F336C8D13E8065491F5AC698336D5E4A8E78ED52458E7E94D0E16624F4E940136A7A59D2DAD41B88E6F3E2128F2DB3B73D8FB8A8ED638DA42F3231880F98A0C95CF19FF00F5D553217F2CFA0356A0BB9E1826B78A42B1CE009401F7803900FB6403F85005A6B1B0932C97C854725648991F1ED8C827F1AC81EA2AD4806D2338F7ABD6F67A79D26F64BA99A3BD8C03044AB90FCF393DB8A00658B0FB3228420F9A497CF5E06063DBFAD7476E71A6DF9EFE5561C11ECD3AC5B1CC85DFF503FA56C21C6937A7D5314A2EFAA2E7171767E5F8AB9C8C1A52B619999C9E78AD18B4E451CAA8FC39ABA8028000E829C2990575B58939D809F5C54A381C53F14DA004A28357ACB47D4751245A59CB20113CC5B185D8BF78E4F1C500679A4AEC57C31A7E87756E7C43299926F254C5049E5F946405897623F8570703A9239AE3D800ED83900F07DA801941A5269B40086928268A004A434B4DA00D4F0FDB1BAD5A0840CF992C51FF00DF4EA2BEB6AF983E1DC1F69F186949D47DB236FC14337F4AFA7E800A28A2802A695FF208B2FF00AE11FF00E822B17E2145E77C3ED7131FF2E8CDF973FD2B6B4AFF00904597FD708FFF0041154FC55179FE11D622FEF594C3FF001C3401F245E36DB38E4FEE90DF91AFAEEFF5BB1D23441A9DFDC243004539660371238519EE6BE42BBF9B4A6FF74D7BD7C4AFF4AF853A3DC673936EFF005CC47FC68032AFBE33EAF05E12FA1ADB5AF3B5B3E7823B12411FA54167F18EFAEA5639B59147061740A1BE809CD79CAA5F59BFFC4BEE96485BAC7B81C1FEEED3C9FA8E3DEA29116FEE3C89ACEDC5C1383B41524FB1071401DDF89FC5326AEB6EFA5E836369329CCE4921A4F65C6001F506A159DE5B1240646DBBB69EA3D4579CCD0CF69705639258A488E3648D9DA7D2B77C35AB5C36A06D2ECF0EB943EA4751F957998FC2C5C3DA4559AFC8F7F26CC670ACA8D4778BDAFD1F4FBF635257CE4D656A717DA2D1D71965F9D7F0EBFA56ADC47E54AE87B1AA4FC367AD797467C92525D0FB0C5D155E8CA9BD9A3374CF156B1A4D9FD8EDEE2396C725BEC9730A4D164F5F9581C67DB15A73788B4AF125E19359F0D17BB2A035C69972D13E00C0F91F729C0EDC5739736AF1DE3C11A9639F9401D41E95D6DF7826DB47B0134F7734D72DC7CA81511B19FA9FD3A57D3269ABA3F329C250938CB74717B446EC06E0A4FCBB86091D8D40577B9C6371381CF534F7903CA46E240E073D3FFAD4C4FDDC9BD49DC0E41F4A6485CD8DC585C8B6BB85E19D172C8E304679A4887CF8F7A9EEEEAE350BB6BABA99E69D8005DCE49C5354286058903D8671400D9CF18EF9A89E52491FF4CF07DEA59B6861B5830C673823F9D5AB8D0AFA2D220D5E48F1677727910BE79661D78EB401A7711F9369A4C7DFECC18FE273575B8D12E4FAE05375F5115FDB463A242AA3F0344C71E1F97DDC561869735252EFFE67663E1C988943B597DC91D0F873C2306B1A19BB7B8449A6B878159DF0B02A2062C47F1139E9D315CA10031008201C023BD289241118848E23277140C704FAE3D6AC5AD99B84F319B6A671C7535ACA4A2AECE6A74E5525CB15A957B803AD6F69DE0BD6B509407B492CE26824B859AE50AAB226338E324F22B57C0FA6887E23E93191B90069BE6E7A237F5AF4DD62E352B6D0EF9B535CDCC5A5DDCAD22E3682ED85518EE140A232538F34761D5A72A53709EE8E2741F0169779E0ED3753B813497B7D7108C17C2A46D2EDE00F550793EB5DCE95ABD86BFA85E690802FF6789E07548F6A471B4811141EE76AF38AB3A5E92F6561A65BBBC7E5C49668880F20A2B31CFD49FD2B9F9F568F4C67D134E89EFF005988C26486CD32198CC649373741C6064FAD51998175041AD6B9A9D8EA91B3DCDCEA13DCDA46A33C5BAECF2F8E7E75CFFDF23D6BCA813C6783DEBD8B5DB0D4A2D26FF58D4EEAD74F513ADC3DA5A287B958A4940643370402413F2F539E6BC8AEE48A5BD9E4823F2A17919A38F39DAB9E07E540109A43D28A43D28012B4B49D127D5D9D9248E1823655965739DB9F451CB7E159B5ABA7F886E74BD2E7B2B544569A4DEF237CDC6DC0017A647241EA28037F49B0D1F4AB38AF752840661FEB6E3952727EE277E0A9EE7BF15C95D5D2DC6A735D3A0916499A42A78DC0B67150DC35CBDB9BB992E6589008FCD2ACE170385CF6E3B565C97E64915603F21C7CC473401ECBF0FAEAD35AF88B677369622D638D27918039DDC6D07DB0180C7B57BAD7887C15B6075FB9976F1158019F7771FF00C4D7B7D001451450054D2BFE41165FF5C23FFD0451AA47E76937B17F7E075FCD4D1A57FC822CBFEB847FFA08AB322EF8D90F46045007C6F32674D75F4522BDD7C47FE99F023499BAEDB6B46FC828AF13B88F6A5CC7FDD665FC89AF6B8BFD2FF676B427929631FF00E3AE07F4A00F0891DE2BB0E8C558670476A94BBC92199CFCC7A9A8AEC7FA563D69E4F1B6801A496393D6952E1AD6682753CC52AB0FEBFA5371CD4770310E7FDA1FCE9349AB31C64E2D496E8EF6F42C8914E9CABAE33FCBF4ACB9454FE1DB91A9787FC92544B0398FD3A74FD0FE953BD9EC3FBC07F2AF979C7D94DC1F43F4DC2D6588A11A8BAA1961750DA4371348C89843B8B1C6F00741EF583AAF8AB52D5765B497737D9578D80805874E4E2BA07B781E231CB124887B30AA32E8D6726045BA203385FBCA33EC6BD0C2E2A947E2BDCF1335C062AAA71A5671DEDD6FD75FF8638C9C2433BC71FCEA0F0DEB48B9CE4D6FDEF86A700B5B889F8E8AC467F03FE358B3DA5CDA9C4F0491FBB2F1F9D7AB0AD09FC2CF94AD84AF47F8916BFAEE2038A5EBF4A883114A1EB439C73282413DBA56869BE65DEA3656CEEED109830424903B9E3F0A9B48F0EEA7ADA192D2DCFD9D5B6BCEE708A7D33EB5A3A2E90D69AFE25963730C65FE5CF39F97F9E6B2AF2E5A5297933A7074FDA62210EED7E649E22E7578BFEB98FE669B7585D01467AC9FD697C4647F6D228E76C4A3F9D36E06745857D64FEB518456A11F435CC9DF1751F9B2A9E2BA2B183688A2EA1464FF005FD7F9D738C79AD7B6D5E3B5B51842F36318E8062962A33942D0DCD32CA9469D5BD5765FD69F33B6F029FB47C40F94A8FB258CAC5DB8018E0727F1AE8ECF5FB58E36D06C6CE6F11CD6B6A9048F1806091F259CBC8DC05071EB9AE07C1161617DFDB9AAEB114D716B6502C8F0472141333370AD8EA38E95E99AAE910D9691ABC3A45D43A224B3C2ACD100B9C46328A38F99B207E75A51A7ECE9A876397175DE22BCAABEAFFE18CCB6F0DDE6B8C6FB57D4DE17BDBC86E6E34CB66C2A295C2067FBD9DAB9E08AB3670C3A559EA3A5DBDE47A4A5AD879B35D018F2A49E42C39EE42A80327B8A9FC8B887C53A96B46FD858DA6F45B251F2B3456E32EC7BE33803EB595E25F10785EC5F563A8B0BE97505B6905A5BB649644E3791C019C707F2AD4E72BFC437B787C0B2C11B4DF698E4B3B69A4739F37119703FF1EC9F735E355D0788FC5B7FE229675942436925C1B816E83386DA1065BA9C2803F3AE7A800A4341C8566C1217962074AEFB49F00471049B5693CC73CFD9E33851FEF377FC2803CEE6B88ADD3748C07A0EE6934A9AE751BD74B6D362BD50BCC0F71E53B67BA90C0E7E99FA557F15B44DE22BDF211521F38AC6AA3002AF1C0FC2B17683C100FD6803AF616BA4DC67CDF117866EDBFE7A832C67F11B1B1F83560191EE3507924944AEEE4B4806379CF5C7BD4D61AF6B16682DED750B8F29B8F21CF9919F6D8D91FA5320B7961D4CC13C663951F6BA1182A73C8C76A00FA17E0B5BE22D62E08EF0420FD1493FFA10AF57AF3EF841004F0A5D4F8E66BD939F50A157FA1AF41A0028A28A00A9A57FC822CBFEB847FF00A08AB75534AFF904597FD708FF00F41156E803E4AD5E2F2B57D521FEE5CCABFF008F1AF60F0BFF00A57ECF613AECB49D7FEF991BFC2BCB7C591791E34D722EC2F64FD589FEB5EA3F0D3FD2BE095E41FDD1769FFA11FEB401E1B7698BB1F4CD460E58D4D7FC5DAFBAD409C93400EA8EE47FA3B7B107F5A94D4738CDBC9F4A009FC31AAA69DABCB04D9105C7048FE1607827DBAD7A04722C89BA375743D0A9C835E576FF0026A6CC0E08CE31579E4BB5643A69952EDDB1B6027E7FF808EF5E7E2B00ABCB9E2ECCF6F2ECE658487B29C79A3F8A3D11E189FAA6DF75E2A07B26EB1B86F66E0D25E78ABC2FFF00086C379646E575C80C515D58DC36D2E7A3BAF183CF3C74EE0550B0F14E957D1E4CFF00677040D93707F03D0D795530588A5D2EBC8FA4C3E7184AFA2972BECFFAB7E24EF1C911F9D597EBD29449F2ED20153D88AD2490326E460CA7B8390698D04327DE8C03EA9C560A76DCF45A525DCC49F48D36EB25EDC231FE28FE53FE159571E13CE4DADD03FECCA3FA8FF0AEA9AC3BC7203ECC31503C52C5F7D0E3D4722BAE9E2EAC3691E6D7CAB0B5BE28D9F96865699ADEBDE18D16E74B5D3E39ED667DFBF9250F19C15EC703AFA555F0B5C4B79ACDE5C4F83218F9C0C0196C9E2B783B0E41A92CE3066924DA37100120726B6AB8E73A4E125B9C787C8E347111AD0968BA339CD6DF7EB4E7D001FA54975C695683B97FEB55B543BB5798FF00B553DDB634FB21EE4D7AB87FE0C7D11F318F77C554FF0013FCCAADF7A8CF1484E4D07815B1C87A6FC3CD32E2FBC1DAB476F1348F75A85B42D8EC8ACACC4FB004D6D78B3C4DE1B6D345C4D722EEF61BF7BAB4B589FEF32B6D0CF8E830A719F6EB5E5D6BE28D5EC3427D1ACEE8DBDA4B23492F9430EE480305BAE303A0AC5271401D878A7E20EA5E21BA7FB329D3ACD9190C10B72E1882C5DB8C9381F9571F9E38E28192401C93C003BD75DA17C3ED4B54D935F13636A79C30CC8C3D97B7D4FE5401C94514B7132C30C6F2CAE70A88A493F8575DA4781669712EAB21853AF9087E73F53D057A2E97A2E9BA1C062D32D40908C3CC7976FAB7F41585AAEA82D2EA4B6890CB70A7057A75F4FF001A00C0D4B4CB7FB49D2ACA248A297CB5C28F4753927BF7AEBF5096EA76165A6C266D42E3290463B1EECC7B28EA4D54D374F92EAE16F587EE90FCADFDF6E991EBE82BD3FC3DA769F6B60973671B6F9D41796503CC6F63E98F41C50073FA7FC2AF0BC7E1EB6D3B54D2EDAFE7404CB74EB8919CF2486182067A0CD733AB7ECF9E1CBACBE977F7DA7B9E8AC44C83F03CFEB5EBD45007CD1A9FC06F16E9AFE76997565A805395D9218641F83719FC6B895D2F50D2FC44D63AADBC905EC6E3CD8E420B0CE0F247A8E6BECDAF94FC5B73F6BF8A3E21B9CE425D3A03EC8BB7FA5007BEFC30B7FB3FC3ED30E3065124A7FE04EC7F962BAFAC8F0A5AFD8BC23A45BFF72CE207EBB466B5E800A28A2802A695FF00208B2FFAE11FFE822ADD54D2BFE41165FF005C23FF00D0455BA00F997E2045E4FC42D6971F7A60FF009A83FD6BD13E0CFEFBE1BEA76FFDDBCB84FCD14FF5AE23E29C5E57C46D47FDB8E27FFC707F85767F021C3683AE41D96FF3F9A2FF00850078A6AAA52E2327D08AAF1F5AD2D7A2D970E3FB92B0FD48ACC5E0500486A3724A38FF0064D049F5A551889F3DC500664B2795765C77FF00EB575FE05F086A3E32D722821125BD9A8F367BBD8708BD06D3DD89E3F03E95C65D7FAECFA81FCABEA4F82AB2AFC2ED344A8E9F3CC5770C654C8C411ED401E4FE38F016A7E1D8CCFAB4697D63BB6A6A30616404F40E0F5FC73F5AE09B4F6B49923DD1CAB22861B0EEE4F41EC6BE91F8DAAC7E19DD943865B88083E9FBC03FAD7CE71936F3AC8BCB2B17CFAB638FD7140179A56D3C882D2E1D264CF992AB1DACFDD40E981EBDF9ABD61E26D47708E686DE7E075711B7EBC1AC77F94C7244CC0C5B4237AB632C4FAF26A3F25587CCA09F7AC27429D55EFAB9D543195F0EFF007526BF2FB8ED61F11593BAC53F99692B7459D700FD18706B591C328646054F42A720D799AC662E159BCAEF1E723EA3D2AC5949750B06B79E48413C153C1FC2B82A65717AC1D8F6B0FC45523A568DFD347FD7DC7A13C71483E6407DC7069B144B17099E4F7AE4BFE12BBCB311FDA204B84C95723E56CF507D39047E46AE5C78CAC52D37C51CA66238438E0FD735C52C0E222ED6B9ECD1CE70538DF9ADEA65DF36ED4A63FED9FE7535D9FF0044B31FEC9359E26131130DDF38DC7775CF7ADBB1B03AC5FE956025588CEC91EF3FC3B9B19AFA0A7171828BE88F88C4CD54AD39AD9B6FF133179E686C56FF008A3438345BB845B4A0C138631A16DCCAAA71963EFC9AE79982D598884D6858E8F3DEC6D33110DB28CB4AE09EE0703A9E481E9CF5AB5E1ED2E1D48A4CD6D797261B850E9014DB8E08DFBB1C139E9E98EF5DA693A56B72BBEA57BE5C572E40681F07318183F2F400F523D8544A4D6C1D4C9B2D2EDB4C682F2C12673E58CCF32E0EE23E603D3D8D7A0D8C71C1A7C45EE5DE32377CC7AE7FA5719E26D7E148ADD9AE162B5624148D788D870578EBD41FC6B73C3B3D96B562AD637A92C7080AE3F8D7EABD45545DD5C19A73DCDFDE3FD97478034A7EF48FC246BDD98F41F8D70B75A6182E659754B87113C87FD5905EE1C1E79E98AEC2E7C59A0E95A98D17549A71688A2465B60186E24FFACC7CDD8576F63A8F857C49A78B2B4B8B0BBB7231E47191FF00013C83EF4C0F3CD2BC431431C0977114B6849DE14E5F6678519C73EA78CD76B63E38B6BBD663B5B6B29174831646A0E36207FEEE0F41DB27BD79FF00C4AF0B2F8756DAE6C3ED2F673390D95C885B8C02DE879C67D285D6747D2BC2F19BEDCECF182F1863866EE702803DB810C010410790452D79A6A7F16B40D134AB1874FDB793B451E6384FEEE01819CB0EA40EC3D3B57A259DE5BEA1670DDDA4CB35BCC81E3910E4303D0D004CCC154B31C003249ED5F20C1E6EB3E20D46E90645DDDB91EFBE4E3F9D7D29F1235D1E1EF01EA976182CF2446DE0F777F9463E9927F0AF16F85FA50BED7B4BB60B955945C487FD98FE6FD5B68A00FA4618C4304712FDD450A3F014FA28A0028A28A00A9A57FC822CBFEB847FFA08AB75534AFF00904597FD708FFF0041156E803E7DF8C71F95E3DDFF00F3D6CE36FC8B0FE95BDF0164F97C4717FD3685FF003561FD2A8FC6F876F88F4C9B1F7ED1973EE18FF8D4FF00027E5D4B5F19EB1C071F8BD0079E78C2036FACEA31118297520C7FC08D6042032026BDA7E297C3AD42F2E2E35BD161FB4093E7B8B64FBE1BBB28FE2CF71D6BC71ECAE2DE12E08240C98F1CE0753400C2A0535B846FA1A70218023A1A6B8CA30FF64D00654B134B2C28A32CE001CE39E9D6BD7FE1C78CB52F05F86B51B5D4B4FBAB98D6556B4817AA123E6E7FBA782319E735E43703E48C9F4FEB5D5F87EFA5D36389848268F3B8A31DCBF80ED4016FC6FF0011BC45E2A8A5B1BB85ED2C890C2DD632A320E4649E4F22B960D15C428E4ED247507F3AF4497C662490C7F678E48BB3B5BECFC080E6B85D4AD6285A47B31FBB32798A833F2E7AA8CD00578D0A10AC7383D6BA9D33C376FADC03EC7A8225CAC0D2BC4E33C820638E99C9F5E95CE3ABF96B301947556E3FBC060FE60035B3E1AD79343BD96692D05CC72A04652D82307391EB536BD9DCA4D24D5866A3E1AD5B4A24DCD9B941D5E3F9D7F1C74FC6B3526C44D6E41248262FA8E71FCEBD3ED35ED175AB71683516B72FB43C77036F43F2804E738E7BFE15E5974145C9D878573B493EFC5532464C56E2270719E304FD32A7F98FC6B422F0F5AC7A4D96A6CAD3C52DBC9248A5B6ED9109CA71D38C73EF58C490E37A15C0DBD72315AB05D5C43A3F96F21FB349E646A83FBDC64FE58A5601B751C505C3C70A858947C801C8C76A9E495A35B575728C91860C0E0A9EB9CD547DA7EE0F94200327B018A5D54622857FD81C7E14C0B17B2CC92E662CD248AB26E66C960C37039F706A8349B8F26A4B998496F62724B2DB2A1CFB1207E98AAA03499DAA4E064E0741EA6803BEF86972C979A8C4BDE347CFA6091FD6BBD9653043717258AB47196073C8E3FF00D55E7DF0E22B8136A4F6F0991CAA4793C05EA4E7F4AEE743D2EE75CD5A3B7BF730594D087661D59493B547A12573F801401C0F89B3A969001F29248E4F35BCA8C286CFDE6C0EA7A1FC2B8AB6B8D4346517B6EF3428C4A89E3C8527D370E3F0AFADF4BF07683A41DD6DA74464C63CC97F78DF9B74FC2B61ED6DE4B736EF044D091831B202A47D3A52515156407C6716B0AEECD2A12CC72CF9C963EA7D6AFC77913E1A170241D3270735F446B7F083C1BAD967FECCFB0CEDCF9B62DE573FEEFDDFD2BC4FE217C30BEF04CB05C59C971A869B3020CC22F9A161D9F1C723A1E3BD301352F116A37FE1A874D5D66FFCB63FE910BBB32B60FCBC9E40EF8CE2B016E12EAE60B5D67509C592E4130A0765E38C838CF3EA6B1E2BF96DF812607704D3E4749110B6D5E32001400A6E592E0EE6DF8F97818047B0AF79F8367C4D0E9D219638E2F0F3379B1C97590C3AEEF2C7F74F7278E0E3BD7CFE6478DC347F230E8C3935AF67AAEAE9646C45FDC0B171F3C0656DA71EA338A00EEBE2F78C93C4FAD41A65849BF4EB2638753C4B2742DF40381F89EF5E81F063C36F61A2C9ADDCA1596F1424008E4440F5FF00811E7E805713F0FBE195CF88678B52D5226874907700DC35CFB0F45F53DFB7AD7D091C690C491C68A88802AAA8C0007402801D45145001451450054D2BFE41165FF5C23FFD0455BAA9A57FC822CBFEB847FF00A08AB7401E5DF1AB497B8D16C3548D0B0B494A4B8ECAF8C1FCC0FCEBCE7E1CF8B20F0A78B44F7CFB2C2F23FB3CF263FD59CE558FB6720FB1AFA3EFACADF51B19ECEEA212C13214743DC1AF9F7C5DF0B359D1AE2592C2DE4D42C09251E25DCEA3D19473F88E2803DECEB7A52DA7DA8EA569F67237093CE5DA47D735F307892EAC62D6EEC5ADD2C902DC486275070C84E456543E1DD6A69FC8B5D375167271B12DDF3FCABBCF0DFC11D6F522B36B13269B01E4A1C49311F41C2FE27F0A00F368674388C46E3270A0724FE15D5DBFC3DF16DDDB09E2D0AEBCB64DC37ED4247D09073ED5EFDE1AF007877C2AA1F4FB156BA1D6EA7F9E53F89E9F862BA7A00F9F7C39F03B52D4ACE4935C9FFB38ECFDC228123EE27AB0CE31ED9CD729E2EF007883C0CC92DC95B8B29090B756E09407D1863E53FA7BD7D5B48CAAEA55802A78208C83401F18C1A9123E7C37BAD5C59E293957E7D3B8AFA775DF87FE17F10C456F7498164C7CB3C0BE548BFF00025EBF8E6BCA3C45F02752B4DD3F87EF92F631C8B7B8C4728FA37DD3F8E2803CD7CF312BC0AA0A93B973D173D47D33C8F635551CF61F855CBED3351D26E4DA6A7653DADC8E024C854B0F6EC7F0A7E990EF2FF2337AECC123FE034B602A6E18E6884A99C492AE61886E603F41F89C7EB52CD6E8199C5EC2DC9263643149FF007C918FCAAA4219660140322B023238F627E946E8043BF6E0A1C003713D89E82AB5C4B2FD9CB2B011ABE00EEC4FA5685F4E8116089B7E096925FF009E8E7A9FA0E83FFAF5945D8C88AD9D9BB90BD71DE85B01AD08FDC47EBE58A9B57FF965C7F081FA5210AAC420F9428C7D299AC360C40F71FD2981451B28371C2A8C026BAAD022B7B0D1AEB55BB51247202B0C4A4877619EFD00EFDF815C399B79C36768E82BA5B1D3F55D66D609E55034FB7611C50061963D7A7A7A93401D2E89A95CD868A210DB5AE1CCF2E06092DD3F402B6F48B6D6EFE6596DA6FB2DB0C626C10C083D8E79FCB149E1ED3B4991A66D42F11A58937B01CA47CE39FEF7F2AEFF00C3169FDBB6E2482E226B34036CA872483D063B1C500759E1B7B87D1A31737125C4AAC54CB263737D715AF50DADAC5676EB0420845F53926A6A0028C668AAF7B7B6BA759CB777B711DBDBC4BB9E59182AA8FAD0043368BA55C4C269B4CB39251D1DE0566FCC8AF18F8B573F0FED5A7B4834982E7C40DC16B26F28427D642BC13FECE09F5C553F1DFC64BBD5CC9A5F85CC96D6672B25E9189251FEC7F747BF5FA570BE1AF0AEA5E22D445A69B6C67989CC92370918FEF3B76FE668031ACB4F96E268E348DA495D82A468A4B313D80EE6BDDFC07F08A3B5116A5E248D5E5E1A3B1CE553D0C9EA7DBA7AE6BACF057C3CD33C23089B8BAD4D970F74EBF77D420FE11FA9AEC68011542A85500003000ED4B4514005145140051451401534AFF904597FD708FF00F41156EAA695FF00208B2FFAE11FFE822ADD00145145001451450014514500145145001451450055D434CB1D56D5ADB50B486EA16EA932061FAF4AF3BD7FE0C6937A5A7D1EE24D3EE3B2B12E9F9FDE1F99FA57A751401F2FEBFE08F15F86C39B98A596D7A79CA04D1E3EB8257F1C571CD0C81BEEF38C641E2BED12010411906B8FF10FC33F0DF8803C8F682D2E5BFE5B5B00B93EEBD0FE54580F9664877E06FE9DC0CE2916DD22E541CFF79ABD3FC45F0675ED2B7CDA695D4ADC73887E5900F74279FC09FA579D5CDBFD8E7782E84914E9C3452465187D4119A0098F04FB28AADE2120CB0AE71C1CFE956A4FBCF8F415435CF9AE23CFF768034BC35E1A1AFC1298E7B7B78E165134D238DC339C100E38CF156B51F105D5BE836BA25B88E38601B5E48882656EA4E476C9AE6123856C8CA6E3136EC797EDEB5144C403841822803A0D3750BBB34B8863B90AD2A059153938F427FC2BDF7E0BDCD8CFE119A38208E2BC8672B74CA3E6973CAB31FA1C7E06BE6EB2758EE173C29E0D7AE7C1FB4F113EAD3DDE95E4C7A649B52EA69D4B0201CE10023E6C6467A0CFD2803DF68A4240192702BC8FC7DF19EDB4B32E97E1968EEEF8655EEFEF4509FF0067FBEDFA0F7E9401DB78C7C79A3782ECBCCBF97CCBA71986D2220C927E1D87B9FD6BE72F15F8CB5BF1CDE799A84BE4D9A1CC36919FDDA7B9FEF1F73F862B1CADF6B1A935D5ECB3DE5EDC3F56CBBC8C7A0FFEB57B67817E1024222D47C4D1ABBF0D1D87555F793D4FFB3D3D73401C5F813E18DFF89CA5D4DBACB49CF3395F9E6F68C1FF00D08F1F5AFA0F45D0B4EF0F69C963A65B24102F5C7573EAC7A93EF5A0AAA88A88A155460003000A5A0028A28A0028A28A0028A28A0028A28A00A9A57FC822CBFEB847FF00A08AB75534AFF904597FD708FF00F41156E800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800ACBD6BC37A3788ADFC9D5B4EB7BB5E80C8BF32FD18723F035A945007C817B12C7AA5E4318C224EC8A33D00620552D62D6527ED3E44BF6753B0CC10EC0DD705BA67157EFBFE4317A7FE9E5FFF004235EDDF06EDE29FC33AAC7346924725E6191D410C362F506803E6868B9E08229C876F078AFA73C49F057C31ADEF9AC51F49BA6E775AF3193EF19E3F2C5791788FE1078AFC3E1E58AD9754B45E7CDB4E580F743CFE59A00E1BE54CF3F52456BE897BA9E9972B77617F7366DD9A094AEEFAF623EB5899677651C203F31AD3B50C618C292103124E7F21401D16ADF12FC5BE20D1869379A80F249C48D0C6237987A391D47B0C67BD66681E1ABFD6F508EC74EB633DCB7381C2A0F563D85741E0AF006A3E2BB91F6753058A3626BC75E07A851FC4DFCBBD7D11E1DF0CE97E17D3859E9B0040799256E5E56F563DFF0090A00C2F03FC39D3FC2512DCCBB6EF5565C3DC11C27A841D87BF53FA576B4514005145140051451400514514005145140051451401534AFF00904597FD708FFF0041156EAA695FF208B2FF00AE11FF00E822ADD0014514500145145001451450014514500145145001451450014514500145145007C8F7E9FF00138BD53FF3F2FF00FA11AF73F8371ECF0ADE3766BD6FD112BC63C4F68DA7F8BB55B561831DDBE3E84E47E8457A6FC2BF1768FA4E81A85AEA9A84167E5CFE7A999C2EE56500E3D482BD07A8A00F5FAF21F88BF186CF4F86E745F0F14BCBD7568A5BA0731439E0ED23EF37E83DFA5721F117E2BDDF89257D2B40926B6D271B649802B25CFF00554F6EA7BFA570DA5E897175730DBC36EF34F21DB1C51AE4B1FA50050B4B166C349C20F5AF5DF00FC26975158EFF005B47B7D38FCD1DB9E24981F5FEEAFEA7DABAEF03FC2DB6D1FCAD475B58EE6FC61A383AC701FF00D99BDFA0EDEB5E954010DADA5BD8DAC56B6B0A43044BB5238D70AA3D00A9A8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2802A695FF208B2FF00AE11FF00E822ADD54D2BFE41165FF5C23FFD0455BA0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00F1FF008B9E09B9B9B91E23D320698EC0B79122E5B03A381DF8E0FD0578E6229410E5703D7B57D8759971E1CD12EE6F3AE347B0965CE4BBDBA124FD71401F36785FC21A8F896F162D32D4B460FCF72E31147F53DCFB0E6BE81F09F82B4CF0A5AFEE17CEBC71896E9C7CCDEC3FBABEDF9E6BA28A18A0896286348E35185445000FA014FA0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00A9A57FC822CBFEB847FF00A08AB75574C18D2ACC7A409FFA08AB5400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401FFD9, '', '', '');

INSERT INTO [Sprzet] ([Id], [Rodzaj], [Producent], [Marka], [Rodzaj paliwa], [Norma na 1 h pracy], [Norma oleju na 1 h pracy], [Termin przeglądu], [Informacje], [Rok produkcji], [Norma na rozruch], [IdJednostki], [Numer CNBOP], [Zdjecie], [Numer fabryczny], [Numer seryjny], [Numer silnika]) VALUES (8, 'Pompa szlamowa', 'Honda', 'WT 20X', 'PB 98', 1.4, 0.5, '2011.10.01 00:00:00.000', 'Dane techniczne:
Typ pompy - motopompa szlamowa, wirnikowa, samozasysająca
Wydajność - 710 l/min
Maksymalna wysokość podnoszenia - 30m
Maksymalna wysokość ssania - 8m
Maksymalna średnica zanieczyszczeń - 20mm
Średnica nasad przyłączeniowych ssawny 2', '1912.10.18 00:00:00.000', 0, 1, '', 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC000110800C5010003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA3345793FC5AF1C5C6933DBF87F4FBAFB34D3C467BBB956E618864000F62C41FC05007AB6E1EB4B5F28347E31B283EDD69A84FE537CCB249E6C3BBFE04703F5AB569F13FC7BA327EF4CF3A7F79D84C3F339FE740CFA9A8AF9AEDFE3E6A4EE9F6AF3136B7CDE5AAAEEF6E55B15AFFF000BDED1C7C93DE44DFF004D155BF555FE9408F7DA2BC5ED7E23789350B58AEF4FB44B9B595B6C522DD22EF23A8DBE5E4118E454E7C65E38FF00A038FF00C0AFF08A9D80F61A2BC6FF00E132F1DFFD0213FF00028FFF0019A5FF0084C3C7DFF40A83FF00021BFA434580F63A2BC6C78BBC783FE5CAD47FBD3C9FFC669BFF00097F8EFF00E7D6CFFF000224FF00E354580F66A2BC5CF8BBC7BFF3C2C7FF000224FF00E354DFF84BBC7BFF003CB4EFFC0893FF008DD1611ED5466BC48F8B3C77FF0050EFFC0A93FF008DD21F15F8E3FE7AE9DFF8152FFF00114582E7B7515E1A7C59E36FF9FAD2D7FEDEA4FF00E269A7C5BE33FF009FFD2FFF000224FF00E268E50B9EE9499AF0B6F1678BBFE82BA5FF00E0449FE151FF00C259E2CFFA0D697FF81525160B9EF3466BC08F8ABC51FF0041ED37FF000325FF00E2A9A7C55E26FF00A1874EFF00C0C97FF8AA2C33DED9D638F7B36D51D4B5505F10E8CCFB1357B067FEEFDA533FCEBC1EF35BD5EF20F2AEF5ED2E78BFE79C9752B0FC8BE2B2668F7FDCD57428BFDD63FD5E8B01F4D457104E374534522FAA303FCAA6CD7C9F776373732459F1758C1E52958FC8902F5C6790E09E9525BCBACD97FC7BFC4575FF0067EDC71F91968B01F56D15F345BF8BFC536DF77E215ABFFD74685FFF00427AD38FE28F89ADBEF78A744B9FF7A187FA4C28B01F42515E1365F1C2EA39D13506D3A44FE268947E81656C93F4AEC7C2DF16348F11FC88F12CBFF3C8310CBF81EBF851603D168AAB6B796F791F9B04AAE99DBF2F63E87D0D5AA4021AF90BE2BEAF2DEFC48D71D5FF00D54E2D97D84600C7FDF59AFAFABE2CF1EDBF97E21BDB9FE2BBBEBC95BF0B875FFD96803EB3F06D9FD8BC1DA55BB8F9FECC8CE7D5986E27F33566FBC37A36A41BED7A6DB48CDFC5E580DFF7D0C1FD6B1BC5DE31B0F00F8562BEBB4795995628205EB2B6DE9EC001926BC6A7FDA275A23F75A6DAFD795C7B7539A00F43F117C2DF0A3C7F3DD4969BFE5559156519E7B91BBB1FE2ED5C3EA1F019EE6069744BDB3B94DC5772C8C9C8F63B81FF00BE8572BAA7C4EBBF16082DF5BBC9EDA289BCC1240AB9CE318CA8538E7A5759E1CF8A30699636FA75AEAF2B2C5F2FCD6618CA4F727A96279CF534C479DF8735FBAF076AD7BA3EAD037D8A57F26F6DDBAC4C0E37AFFB4BD7DEBD5343F84D2EB9A6A5F5BF8BE5689D8AFCB6AAD8C1C75DDC8E841F422B81F8A76D2EA1AF4BAF1B47B66B9815D95A164DE548466C11EE99FAD7ABFC11BAFB1C17FA279AF24460B6D46DBCC6E42CB180CBFF000165C50047FF000A365FE3F164FF00F80ABFFC552FFC28DFFA9B2EBFF01D7FF8AAF44F125B6AF7BA6FD97479E281E5F9649E4660517FD9C0EA7D6BCBB5AF87BE2E7B44DFE2B95595C347F67695DF3823AE46140F7FFEBA1DCB67E07DBFF1F8B2EBFEFCAFFF00154A9F022C1FFE666BC7FF007634FF001AE57FE15C78CD1F645AE7C8CBF37DA159B939E4EEDC7FFD556AD7C11E384820B75D6563DB29679D72BBC7A020023EB4EC2E63A35F809A6FF1EBD7EDFF006CD69DFF000A0B46FE2D66FF00FEF94FF0AE83C27A46B9A3695FE9BAD36A170CDE66E919976F0015C313DC13DBAD76B6939B9B749593637F12EE0D83F5143561DCF2B6FD9FF417FBDAA6A3FF008E7F85432FECEDE1B9B9FED5D517FE049FD56BD8AB0352F1669BA6CE6DDE5F3255FBCABD17D89F5F6A40D9E703F670F0CFFD05F56FFBEA3FFE22B8EF1BF823C01F0FAFECAD350FEDDBE7B94327EEA6886C00E39CA8EBCFE55EC3A978B679E38BFB29A256DDFBC66C31C7B6715C7F8A3C09178E755B7D4356B897747108B74332AFCA096FBBB48CFCC6AB9593CE883C2DF09BE1EF8AF438B55D3FFB4FECF2315DB24C159194E0A918EB5B83E0278317FE59DE1FFB6DFF00D6A97C1BA6D9785AC5B4AD075B92E6DE4733B79D1A314E003823682381D6BBAB7D4E2102FDA274F33F88FDDFC7193438B1F31C07FC284F067F76F7FEFF002FFF00135CE78EFE147847C29E09D4B58B78AE5AE2D90794B24DC6F660A3200E7AF4AF663AB5963FD7AFE19FF0AE37E2659BF8B3C1375A3E9B2C4B713C9132B4CC5530AC18F201F4F4A39587323C5BE12783B4CF1AEAB711EA76BFE8B04464611332927700BCE7DDBF2AF651F04BC15FF3E573FF00810D585F05FC217FE109F524D4DA0F36E553CAF2640C182F27F1F9ABD8A931DCF3D1F05BC123FE61F3FF00E04BFF00434E1F063C0FFF0040C97FF02A4FF1AF40A2905CE093E0DF8193FE610CDFEF5C4BFF00C554A3E11F8257A68DFF0093127FF155DC51401C1DCFC1FF00055CC0D17F65345BBF8A3B8933FAB1AE43C77F076D2DB46FED5F0A0960D4AC57CC58D5B26503A807FBD8FCEBDAE90D0173E5FF00865F11755B2F1223DDCAD3E9F20097ABC7EE95982AC9F456619F663ED8FA814D7CA1E2EB18BC0DF123588BC8FF008965CACB0491AFFCF29E3DC31E986271FEE57D0FF0EB577D73E1FE8B7D2BEE95AD96391BFBCC9F2B1FC48A607535F1A7C433FE9F6FFF005D6F7FF4AE6AFB2EBE32F8827FD3AD7FDFBCFF00D2C9A901EBBFB462E3C23A1FFB37657FF219AF08F0DEDFED65DC8AC3637DEFA57BD7ED1C57FE110D17FBDF6CFF00DA66BC17C35FF21C87FDD3FCA84056D59766AB72BFEDD7B6FC23B38B45F06BEBAB02FDAAE656FDE328CEC53B4004F4E726BC4F5AFF0090CDD7FD74AF77D376DAFC26D210EEDB240BBBCB52C4062589C28CFB7B66949D9361BB486FC47D5135CF0FC32EC666582E1559947468B7F04123FE59AD72BF03753B8FF84EBCA9A690C4DA73C49F456560A3E99356355B949AC62B7FDEEFFDE7DE52A1A316F200467AFF00F5EA97C1DB8FF8ACF4087E5E978ADEBFEAC37F4A549B946EC75128BB23E9B885ABFF0079BFDE62DFCEA711449FF2CBFF001DAC885B649563CD6FEFD69633E63436AFF73F41410BFDDFE5585AAC97A9A6CAFA7EE6BAE3CB5550DBB9E473ED9E6B32497C41E7CC82DE4583CD46DC8A9911907705C81920E3A8E99C64D44A56763A29517523CDCC97AB3B0CA7F9C52829FECFE95C6EEF136FDEAADB54BED59163064418DA1B1F758E580238E06475A64926BC906FDF32B7D9432EE6870B2E4F0D9ED8DB9C52E7F2669F56FEF2FBCEDB7AD646A1E1FD1B530DF6BB289DFF00BEBF23FF00DF4306B223BCD61352FB43F94F6ACFB1ADFCC8F28303E753C7F16EE09270474C57459AA8BB9CF560E16D53F4773CBBC51E143A1EDB8B5B9792D646DABBBEF21C6707D7EB593A74D7093EC96E1B637CBB7F9D7A5F8B22F3BC3F71FDF8B122FE079FD09AF2BF3BFE26D6E9FE7AD5DCCB7360D8CB6569A87F63ED8AE167556F9BEF46141DBCFB9071C6714CD1B56BAD3EC750BED62F56089595A49266E22C0C1202E72CCDD147B54926A915947A86F75DED2FCABB87644C9E7EA2BC9BC7BABFDB63B7B4B7BD81EDD58BBAAC833BFDC0FF003D3D2AB6D494AECEAB53F8A12BEB3F65D33E68B686F3A661F5CE17A751C0CD53D43C75AFBC0F2DA5ECFBD7F863B78D55BF065763F891F4AE174DF2ADB4D7B875F9BEF37AFB01FE7A9AB163E35BAB28DA17D3EC6E6266C9F355B763D3706E29733EA5F2A3B6F03FC41BFB6D72CE5D7AC2E9ED7CDDDF6B8E1625339E48030475C918E07435F4BC33C573024D13AC9148A1959790C0F422BE41D5BC75746C7FB3EC74BB0B07930F3C8ABE6C84F50033E76E01EDD3D6B2348F1CF89F43BAF3F4FD72F223FDD690BC67EA8D953F956764523ED57B98524589E54591FEEAB30CB7D077A981AF9CB4A9F46F88F77A7EBDAA6BD2DB788AC8A2FD91950AB796DBC328C0254E7919C8E6BD5A2F1A496B7715BDEFD9E7F3776D9215317CCA37636966EA371CE7B5572B0E647714573D65E30D06F61DFF00DA76D04BCE61B8955244C123952723A75EE08AD2B3D634DD41DD2C6FED6E5D3EF2C332B91F500D48CBF45145007CDBFB414489E32B056FF979B68B77FC05DC7F26AF52F83D0456BE034B589B72417D751A9F612B01FA63F3AF31FDA113CFF1CE8117F7AD82FE721AF4DF83ADBFC132FF00D846EBFF00461A607A0D7C61F107FE4256BFF6F4DF9DDCF5F67D7C5FF107FE42D69FF5CE6FFD2A9E908F49FDA2B55B5B9BBD234A8A5FF4BB4DF24B1ED3D1C2ED20F43F74FD2BC7FC3BF67FED84FB47DCC1FE22BCFD4115EB5FB45E9F6B6BAFE87A9449B6E2E6291256E70446576F1FF023FA57875033525BB4B2F1035DC51C53A452EE549977A3E3B1E791F8D7BEF8565D3FC6BE0DB56457B6F21B63431B1C44EBC7CA7AE3041E7D6BE702ECDB7FD9AF4DF849E34B7D02F9F47BDF96DEF650639BB44E4639CF638514C4CED7C47E1DB8D32C51DF5096E62F324DAB3632A7C994F518CF1C579C7C1F9BCBF89FA28DDF2FEFFF00585FFC057B478E84BFD9B17EF7F75BA5568F6F7F225E7DABC3FE14E3FE163E925BFBD27EB1B8A124B615DB5A9F52C25FFB95682BFF0071AB07CAFDE7C89530B57AB207F89B43B8D7FC377BA54370D692CEA02CEAA72841073C107B7AF7AF3BD3BE0ADD5B4ECFA8788DB5089863CB9A395769E3E605660735E85F637A0D9FF1BEC5A560BD8E4C7C23B0F337EFB5D9B47CACB33723BE4CF56AD7E1C4565E6FD9EFEC224694491AFD877795800601329383B4E73FDE35BED05BA7DF962FFBE875F4FD29AC2DD3EFCABFFD6AAB13CC6347F0FEDD2D12DDF54B56DA9E5EE6B55CB7CA549277F5C1E0F6C0C576704915B41145F6A89BCA8C47BB70F9B000CFE959CB63FEDD38587FB75360B92EAED14DA6DC45F6A8177215DCD20C2F1D4D7856A1AADBDB789228BEDB6B728B85692DE4DC8DCFAFAFB57A6F8FE1FB1781B57B857F996D9B6FD48C7F5AF03D26C2DF50BB54B48925F2FE759D6464DB85C9528463AE79A4CD226C78F74FBCD6765C69F6EF3C504B2798CB8C8CA46471D7B1AF3CB9B2BAB329F69B7960DEBB97CC52BB87A8CF5AF6DD266B7B6D0B557B8FE29638E355EBB8A8C0C7AE6B0F59F0FAEB1A6A452A4B05C5B7CD16EC670DC943D463B8F43F5A1A1A3CFF004CD560B6B47B7B8899B77DD6AB26C748B98F7FDA9627DDFE411591A8E9F71A65DB5BDC2329EDEE2A382DBED1F2A326FF00EEB363F2F5A43B114A7748DF36EE7EF5475667B4B8B63FBF89E3FF00794E0FE351C50CB348B1448F23B7DD545C93F403AD219D9FC2FB496E7C57E726CD96D134B2337A60AE07E2C3F2AF56D5FF00E3FB4D7FFA6B22FF00E4192B0FE1FF00873FE11DD1A59AEDD5750BBC6F8FFE7928CE14FBE4927F0F4AD8D4CEFBBD37FEBBB7FE8A92B68AB23293D4A7E2CD1F4DD4AEE6B865F2B5055DD05CAAED642A300103865F6EE0D79445E2EF11E8DACA5C4379E45D5B4A76F971A8190482080391D460D7AC6AF7BE7409B3F864DBF8104D78E78A02AF886E9B6FDEC37E6054491A277DCF5BB7F8CDE29BA812577B18B761BE587F4E49AB50FC5FF10A4E8F2CB672A7F12B421463EA3915E1B1B587D97E796F23B81F776AAB27F3047EB54CC8FF00DE6FFBEAA467A8FC43F155AF8CFC55E18D42D70AFB1629A1DD9F2A41310467B83C107D0D7B57C1F1B7C1971FF613BBFF00D186BE53D0FF00E43BA7FF00D7D45FFA18AFAA7E0EFF00C8A77BFF00615BAFFD0CD1D047A257C5DE3FFF0090CDAFFD7297FF004AA7AFB46BE31F1CA799AED827F7A261F9DCCD4867AA7ED2A9FE89E1D7DBF7649D777D421C7E95F3DD7D21FB482B3F87F45C2F0B74FF0037A7C95F3BDA5D5C59CEB35BC9E5CABF75B8FEB40176CAD607D5AD6DEE77F92F2A2C9E5E59F69600ED1DCE09C0F5AE8BC6FA045E1FF10FD9ECAFDAEADFEC70DC4BBA116F2C41B8D8C879DC06D2463233C8E0D737A9CB7A7526BAB983ECD7123799F2C7E50CE7EF003DFBD5CB89F52F145ECFA96A374D3DCEC0BE6328CBE0600E00EDDE86D2DCA85373765B9EA769E378BC4BE18B7B4B8565D42232AEE6C7EF5443280FC1E0E3191EB9AF3EF85C71F117481DDA46FF00D01A8F0C457F0EB36B13CAFF0067549BF77BB852627EDF9D616877F75A5EAD15ED8B2A5D45CC6CDFC24F19FC89A13BAB8E74F95F2D9A3EBA4FF5957457CD29F133C5DA7A6CFB7ADCEDFE29ADC1DE3D7A023D2BB7F0A7C52FED2B395756BA86CEEA3F9BEE10AE3D5493D47714F9911EC9EC7B10A8AE15DED25D89B9F69DABFDE3E95C7D9F8B3EDB3C4888CA92A16566FE2F4E3341F11DEA68D71AB4A96AB6B037CDB59F2ABFDF24803F019E39CD5AEE64CD86D35FEFCA92ABEE3FF2CD9CB0C800FCBC7E1EE7EB52AD945E7FFC7BFC9B7EEFD94F719FBC6B853F1534BFF9FF00B5FF00BE8B5427E2AE97FC37F137FB2B1B31FD2ABDA11C87ABA7DC4FF769F9AF179FE2C3BCE90D8A2B3B36DDD22ED0B9E3A753FA55AF147C43B8F0EC76AB2BB48D73009156155CE78CE4F61C8F5A8B8F94E8FE30DDADB7C37D43E6F9E568E35FC5C7F406BE7DF075D4B6DACB6C9766E89D7F12293C4DE32D57C51227DB65DB046731C29F754FAFB9F7AB3E043B35C6FEF6D1FCC54F5354AC8F58D3F4F8A18364B2C52A36D9245DC3EF2FDD61D7040E0F63ED5A865B5F9FF74ADBBFE9B0FCBA55A6B8A72B3BFF00FB35AD913776B1877BA7E95A9C0F15F59412A7FB5273F810323F0AE7DBE1BF8666937A3CF127F756E370FCC8CD7745BFDB6AB10B6FF93FF66A7615EC79E6A56FE16D0E34D32DFC8FDF2EE6DD2199988E36F39C763800569B5E7863468EDE5D3EDE282F7CB8E4DD0DBBEF6E8091F2FB91E9593E27D22E2F7C6DE6DBDD3412C48563F2D4374F5CF0735AF36997BF6AB2B89BC4CCFE42245F67B78638BE53805415E98C67F0A81B2A6A3E264D66D2E2D3FD3E04F2257FB4B46621F280480F8241C127A1E9EF5E7565AD5FC37F045A86B379022395F397E7D980577053C9EA474CFEB5E89E24D0F7DA79C977793DDC914B046B35C33060CA54801B81D47E95C258F80B57792DD2F628ADA5B972B14772597EE82C490070300E077A4EE356B1DA49A8585D6956EB657EB7CEAC37CCABB4E54632C30304E735E69AA21BFD567B845DD16ED8BFED638AF6DD1FE133EB3A15ACBA6EAEBA7D94EA56E63FB18F377A92AFB5B774241C1233822BA5B0F82BA1DB3C3E6CF2CB6F1E3F75B76EE03B13D79EF5372AC786E91E0E82EAD5269A094965DCCA5880BEF918AD88BC116B23EC8AC1DD99BE55552C4FA0C7A9EBEC2BEA34B6892358D225545C6D5551818E9C54BB68B8CF9035BF09CFE13F196856F70BE5B5CBC32F97DD479BB79FAE335EF9F06CFF00C529A87FD856EBFF0043AF3AF8D7FF00256BC3BFF5CE0FFD1C6BD13E0CFF00C8A17FFF00615B9FFD0A8E807A357C63E31F9FC43A6FFD733FFA532D7D9D5F1978ABE7F11E95FEE7FEDCCB480F69F8FF0016ABFF0008E5ADC5A2C3F608D9D6E59DD77658000053D7A1E4723E95F3CD9E8BABDCC297B65A6DE4F16EC2CB0C2CEA1876C80467DABD47E3EF8B1B50F13C1A0DACAC20D35774BB4FDE99803FA2903F135A5F042D64D1745D7BC65752B4764B19892DD5B872B86248F5C9551FEF1A0695DD91E30F05FDFDF3178A5699BE66DD91D7EBD05751681F48D3FECF2AC52BAFCE70B9DB93C9C753F502BA29F557BABE7795228925F99557E509F4F6E4FE55897D693583C8F1233C519FB445E9827E78CFB11C8AE594F9DF29EFD1C1FD5E1EDA2EEF67E5F22E69D72973ACA6DFDDB46EDB95B1F3AB46FB5811F5AE134604EAD6EBFDE6AEBB48B70BAEDA889FE5B794A06F589D094CFAE0F15CDF8561FB4F89EC22FEFC9B7F4AD63A41D8E1ACDCF130E6F2FCCE8AEF4BFDDEFD958B359CB0BD7A6D8E9FF6CDC9F776AEEFBBEF8C7EA2A2BDD22DD2E9ED6E02ABFF007B9C7D7819AE48D5713E82BE5909BB27A9CB26A7A87F63245BD36EC911595B64910C0236E39EA339E3A915ED9E06B6FF008483C0A9F6EDDB278BEC92C6BB70AAAA1719DB9C91D79F5AF2B9346B2B287ED114F07DE0ACADBBA1F7200C7E358D14DA95AE87756F6FA8EA76CD68CED17D9EE1D77AF5E533F74601DC3A67BD7552A8E5B9F3B8FC1FD5DAD77390D72D22B0D7B50B2837F9505CC9126EEB85620669DA5BC50F9B712FDFDBB63FA9EFF5AD8F0C78723F14DFDD23DEB232A891A493AB127E6E7B9EF9AD89FC0CFA65F2DC5BCB15D476CDF347F74960A194FB8E79FA57425D4F35BE858B4D062B5822797E5978925FA8E71F874AE6FC5535FEABAEDD3BC5BA2818A47E5C2515547603270063A67D6BB46F36FF0046B2BBB74765BB9E28376D3B7E66C1E4F6E08A5D7CEB3A1E9D712C571B25DA7CB6551951F306EBFDE5661F853B0AE7915769E025DFAAF9BFEC84FC43023F4FE55C6115D7F8127F2756D8EDF26E56FD707F9FE952B7299EE6ABFBCA9E43FBBAE2AFDB52F9FF00D367F97FBADB7F95639FB7BC9F3DD5D37FDB46FF001ADAE6563D1C0AB16BB124AE434A8D7FE5AFCCFF00ED57616322247B13FEF95A6819522D26D66F105D4B2FCCEB8FCDB9FF000A9AF74C486FADEE3ECFB6DD6267DDFDE248191F867F3AD0BA65F22E254FF5BE585DDEC33FE26AB8B9F3BC3F124BFF002CB747F8751FA914728B98C9B9B04D6756B77B77FDD2C7F37CBF75B3C8C1F6C551D4AD2587C51A55BBBEEDB14CCBBBFDD55FEB5D2784F63DF6C7FEF55EF13E91FF0015269F769FC398FF00072BFD57F5A4ED60573BD8A248635445DAAB525145606E145145007CEBF1A47FC5DEF0EFFBB6FF00FA38D7A17C18FF00914350FF00B0ADCFFE855E79F19BFE4B0787FF00DDB7FF00D1C6BD0BE0A7FC89B7BFF615B8FF00D0853E807A4357C63E29678F5FD29D13CC758832AFF78FDA24207E35F66B7DDAF8D7C43FF233E85FF5CD3FF4A24A40623C9A86BBE2666997CDD4AFAEB9561F7A576C6D20F41938C76AED2D1B5FF09C7AAF85AFA296DACA7656B9B693E608DB815746079560A79E41C63AD7D18BE02F0C27889BC42BA441FDABE679BE7EE6FBDFDEDB9C67DF1EF5CE7C4FD12DEE9F4CD592DF75EC72F90D376F2B96DAC3B8C838EE09FAD4CFE166D878DEAC5799E3FA9A5BA492A4570AD2C18691769C2B678FAAE49CD68DBC0D7D6F6A563691A740CAACA73DC1C81ED927EB4158A6813CABAF22EB67CB1DE4633F3778DBBA9273B4FA543671CA9A6A45B559D5DFFE5B07DF9C1DC48E849C9C76CD725485AD63EA72FC4AABCDCEAC95EFA76D99764F0F4DA5FD966F2628F6C9145FED633803DC0CD797F849CC3E2BD35FFB93A9FD6BB78F50966D561B7DABB05EC311F5C32EE07F3AE0BC3A7FE27F69FEFD6D4FF86FE67958D6A58D824EEB45A2B753DD230967E2B68BFBCFB7FEFA008FD6A878BA4FB1EACB2A44D2EE887CAB8EE48279EB8C52EA773B35982E3FD989FF0023FF00D6A8B56B94D42EF7FF000AAED5FF006B927FAD71DD24D799F4CE949B8CBCAC644D04FAC58B416B6EC526E1A42BB760CF3B47DE2DC600C63B9E2BA1D03C3D6FFF0008FF00DA350F367BAF21A29249182ED55CA84038C2803A7D6B2D5AACC17971A7D8FDA26B85892297CF68D94387888E1739F9493839FAD7560E5EF58F033CA0953551BBBBA5E5638DF83F0B5CF8BA58773795F656668F71F98E40071ED9CD7AAEAFA327F64F88922B59DAED6359226FEE831000FE6AD5C1785AC1740D5AE35BB774F359D9E0F2642A515B3B93D1B82303D456F6A1ADEA53492DDC57BB92588453377DA092A581E9824FB73D6BBE32B2B33E69ABBBA337E17CF6137845D2F9FF00E3DAE5B6AC8CDB5460306C671C124E71DAB63C5D6DF69825D9F3232AB2FF00C0B72FF51F9D54F86568F6D3F88B4CFF00972D42DB7C4CBD370CAB2FA67E61C7A568AC72CDE17B777FBFE418DBFDE5C7F55A16C4BDCF9FEE599EE2467FBDB8E6B63C28DFF136893FBD95FCC1FF000AA9AF41F66D72E9557E5DFBD7E879FEB53F861F66B36FFEF8AC96E6BD0F7A5B34B9B48A5FEF461BF319AAB269495ADA34A8FA6DAA3FF0C5B7F2E2A5BAD9F256E656326DEC367DCAD88614863DFF00C7FDEAA826A7ACCEF4C0D5493CE8FCAFEF295FCC572E9A9CAF692D8A79114B2B6E59E490EC5207195FC0719ADDB79F6489589058DBCDF6D47B756F97E5DCBF74E7DE864A363C113BF9F14B71B37EE0ACABD14F3903D471C1AECBC5505C4D6F135A7FC7C7FCB16DBBB6B7041C77C1E6B89B06961BB89F7D772979F69BAB2FF7C54345C59B567F68FB243F6AD9F68D83CDDBD37639C7B66ACD20A5AC4D428A28A00F9DBE327FC961D03FDDB6FF00D1C6BD03E0A7FC89B7BFF615B8FF00D085701F193FE4B0E81FEEDB7FE8E35E81F05463C13707FBDA9DCFFE854FA0CF457FB8D5F1AF885BFE2A7D13FDC4FF00D1F257D96FF76BE2BD726FF8A9EC37FF00CB260ADF84CD4847DABDEB8DF8951C5FF08AFDA258925482EA1936B6739DDB46D03AB658003D4D765DAB1FC4F64D7FE1BD42DD3779AD1168F6F5DCBF30C7BE4527B1749F2CD3F33C06416F35DA45B3E789BCB556FE2C376F5CE075A874510923C858638BED07F76919429D015753D18743EB806AE3456FE5FDADE5977B47FC2BCA93F2B38FA10CDF81AA3B677D1DBCB976CF26E60D22F427BFBAF707D081DAB966F6F91F4D85849396DAA76F47DCC8B75FF8A9CFFD846D3FF40AE37405FF008A8ED13FE9AD777058CB0EB904ACCACB26A36E7EF73851B7F3C9AE23451B7C556FED71FD6B5859D376FEB43CBAF1947191BF7FD4F517595E44F35F77CBF2FD29E23A9253FBC4FF0076B7B4FF0007EA57B6915DFDA2C228A589655DD23E5558023202F079F5AE285394F63EBB138DA1878AF6CED7D8E79A2AA561E21D1B5CD546893432F270EB228D8FB71B978391C2920FB56E6AF60FA4EA4F6934B14FB515FCC8738F9B771CF71B7F5AE534DF0CDAE8FE2B96EAEE59EE7630FF005119E0CA48E8B92463773C01C5756162E32699F3B9E55855A34E507A3B9E93ACE91A45B47A7FF67E9F02FD9A53BBCB51F74A32F7EBF36DA65A327DFF00B3ED4DC5776D551C13B81E7B7F4AA9E21F0B44FA34BFD98F12DDEE5656F39B38C824024919C74ACFB24961B7FF0048BF7F2A0B530470CD18F398E4F2CC0E08E7200E99AF41F63E5D1DAE9D34B0C12F9B132EE656556C76047627D47EB5CDE9EDB2C654D9FBA5BE9A366FEEE49383F98FCEB5F59BDB7BAB1B88ADEE22DED115FF00583AE3D735E7D63AAC5A7E849637DA534B7AABB6693EF166049DDBB3C9C639F6A6D824701E348121D5A274FE2817F3191FD2B37C3CDB35DB4FFAE83F9D763E26F125ADED8DC5BFF61ED7688ED936AB6C391F312071D0D719A0FF00C876CBFEBA0AC5EE6AB63E85D2E4D96289566E4FEEFE4ACBB16FDC7FC06AD4B735571587247BEA510ECA8A3993CBA9A1BB4AAB8AC3906C9FEE6EF98522C0F0C17170FF002C5B4FCDDB83CF356A0BAFDFFF000EC5FBDFFD6AC0B06BF867B84953CDB29E56F323F3970C4E7DFBE79A2E163A18951E3DE8FBB6A8DDFECD745A32B3DF5BFD777E95C7E8DA7FF664096FE6F9BD157AB1DA09DB927A900819F6AEF7C3D16F9DA5FEEAFF003A4DE8163A4A28A2B2340A28A2803E77F8C5FF00258740FF0076DBFF00471AF42F82DFF222CDFF00611B9FFD0EBCF3E2FF00FC968F0FFF00BB6BFF00A38D7A2FC17FF9109FFEBFEE3FF43A7D07D0F4335F1278D6DE5D33C6DAADA32ED7B6BC9557E9E61653F930AFB72BE74FDA03C192C3A8C5E2BB48B75BCAA22BCDBFC0E38563ECC38FA81EB4847BEE95A843AB69369A85BB068AE62495587A3006AE919AF9C3E117C59B7D1211E1FD7E5F2ECB77FA35D76889EAADE809C9CF6C9ED5F445BDCC173024D6F3472C4EBB9648D832B03DC11C1A00F10F197856EB4CD59E2B756FB14ADBA0EB85073C67B63247D2B97BEBB8ADA78AD13F7BFBB2D26DECAA092D8EB827B7BD7D2977696B7B6CD05D44B2C4DD55D7835E71AE7C2EF0F5E9696C757974F6CEE68DA7F363241240393B82824FCAAC0726B19D1E63D6C3666A946DF6BBF91E6369A8DADE49610A41E5DC2DC5BBB7DECE0C8A4646701BE9DBB579E697F278BA1F6BAFFD9B15E869E18BAD3355B796E2E15D12F2372CBD647DE064F600024003F3AF3DB0F93C6B17FD7F7FECF4E0AD0688AF373C4426FCBF33D375097C98E57FEEC65BF215A8DE3E7D3E38AD1EF7EEA88D56DD57A2B305CE33C6D55CFA8FF7B8C3BE9BF79545A7AE5A35BD9DEC8F7333C1AC5CA3795AD7E9DCDBD4BC49FF000906A577A9A44D144DB56356EB8551FD4B55217B2DD49BDE58A0976FDE5DCA719E9B979C7B5518DFCE91E2DFFC1B99BEBD07F3FCA9E2C7F79BF7B7FC07FCFBD75D0BBBC9F53C2CCE514A1422EFC8BF165F0DF7FF00D36297E5FE2DEDEBEAB4AB70FF00ECAFFC057FC2B32E6DEE1244D8EDB3785FEB4E782E2E644447FBABB9BF13C7F235D079059BBBF7B5F2B7BB7DEDDF37B73587A86B02EBC317570BBD6E9AECA4122FF1038CE727FDEE952EB489A7DAA39FDE7EF551977101812323F206AE5E787ADEE6489DDECE2483322C71CCEFBB23A723DBDA828E8AC6C2C1F65943B7FB3752D336B48BF2EEE0EE62DFDE07D7DEBC7F4887FE2A08911B72ACA7E6F619E6A2BAD52EE64687CF75B7DC7F74BF2AFE2075FC6B7FC19A6F99E6DDBAFF00B09FD6A5BB947A2C5A9EC8EA19354AAE61ACEBC5D9F7DE9DC46A1D6D29A9E214FE07AF3ED5B54F264D8952E9370F7B22223EDFEF7A2FA9345C0F58D21EEB538EE2E227DC912EEF2FBB9E7FC0D42FAB6FD9B3EFAB7DDDBF8FE1D2A1F8777E8FAB5C58A7DC9620D1EEFF0064F3F890C4D74FACE96F65AEE9F7DF2AC53F996D232E3AB00CA49F72847D585525744B761BA0CD7175223CB14ABBBEEEE5FBD5EA7A4DAFD9AC5437DF6F99ABCD25D43FB27CABDF36CD6DE09565BB9AE24E2281597CCC28C967230140EE6BA8B4F8A7E07BD81654F1259A2B7F0CCC623F9300454CBB0E3AEA7654556B3BDB7BFB58AEED2E239EDE55DD1C91B06571EA08EB566A0B0A28A2803E73F8BC7FE2F468FF00ECC56CDFF915ABD1FE0C71E02FFB7D9CFE6735E57F1927D9F18217FF009E16D07F366FEB5EB3F071367C3BB4FF006A591BF5FF00EB53E83E87A0555BDB2B7D42CE5B5BB8239EDE65D924722E4303D88AB545211F3AF89BE08DFE81AC47AB785E08B55B289F7B69D70C3CC5FF00646EE1C7A679E9C35509FC7BFF0008B4535ABF86751B6491B74905CC7E5479CF3D393CF439AFA669AC8AE3E619A00F949FE2FEA0F0BDB456AD2A37DDF3A462C3D86C2B8AC797E246B2F27CB6764BB5BE5DD1BB1047D58F35F6179117FCF24FFBE457CFDF113E08DFADFDDEB7E1AFF4B49DDA596CA46FDE2B3124EC3FC439CE0F3F5A69B44F2477B1CF697E26BAD42D364B2DACABB95B6C30F94D095607E6527907D47A579F19960F133CADF763BA27F27A5B1965B5D5628A583CA7898AB2B29041E7820F23E9542EDBCDBE9E4FEFC8CDF9934AC8DBDA4BDDF2D8EC6EBC4304D233AC8BFF007D53ACFEDB7B3EC4B7959F76DF2F69CB1F61547C131D82DF4F2EA1E57CA815239B18E4E73CFD3F5AF44BC6B09A3795F76F54FBD0B157E9D0608CFE3597D5958EF79AD46EED1CFDBBDADAC72BFDAA0825DA7CD59B7E7728E13EEE01C60F5EF57349D6B45BAB4F36E1E781FCC2BB7E5CF18E724F15C1EB5A9473CCB169AB71144B2172D2643976E3D4E3F3AA3B20F97CF75F33F8BE6CD6D1D158F36B4B9E4E5DD9EB02EF4AD4F7FF0067C57579B5BE6559930B9CF5201C55F7D176469BF4ABA5F35032EEBA5C30FA81CF5AE53E1BC9A74FA93E896EECB7BA93948E4F2CB818424671FC39DD9AF6DB2F005D5B6930DA25C5AC0F1B990B2C65B71624907A67AF5EFE82B44D753169F43CBB5AD02EB50B44B7B1B5B38BF7AACDE736FE07D491FA566EA9A6EAFF00D8D7B77F6768BCACA34D676FFBB07A85C8181D8678AF6987E1FCE92EE97525DBFECC2727FF001EAE9342D02D340B17B7B7776F31FCC91A46FBCD803A7403007152DAE85A4FA9F14DBE973CD3AA63E4CFDEE2BB8B19E2D32D12DD3E5555FF00BEBDEBEA2BAF0FE917B04B0DC697672A4ABB5D5A15F987E55E4BE2FF0080D15D07B8F0BDE7D95FFE7CAED8BC67FDD73965FC73F854A19E7326BBFBCD89F33FF757AFE439ACDBDBED4AE9365BE9B7927FDBBB7F5158DACE8BAFF84EFBECFAAD95C594BCAAB3746FF75C7047D0D58B3F1A6A56B68F6EF3B49F295566EAB40186D697933BB7D9E76DB9DDFBB3F2E3AE78E315A9A6DCC5F645B58BE566F9A4F56F61ED546CF5CD4AC24DF6F793A739FBE6B7E1F0D5BDEDBFF6AA6A89126DF35A355DCEA7A9032450069E957375A4EBB6489136F953CC864F38273DC827A63FC6BA1BAF1D5D6AD63F64B88AC1772AC8B24D78AA1195830CFF0075815E95E73AA5EC57FBFECF6B3CF144BB639A45DA50673CAA920724F7EF5996C22F9BCF65DBFAFE54D3B09AB9E99AE78B62D420974CBA4D3BECF3C4ECCD6778CE7E452C06EDA00C9503BD79FDADF5BDADE2491DAC7342B3EEF266FBAE99076B1EA7818FC7357BC3773A0DB6A4E355B2B9D42096078552DFE593CC6E15867A91CF1DF3D0D7B77877E0068D046B71AADFDE5CB4986112A884A03CED241273D890474A4D8D23AFF863E25FEDFF000FED87C38FA259DB61204FF964E0E49D8703383D78EF5DE551D2F4BB3D1B4CB7D374F8BC9B4B64F2E28F716DA076C9249FC4D5EA430A434B5E75F14BE21C1E0ED0E5B7B3911B58B84DB02FFCF107FE5A37A639C0EE7E86803C2FE286AA9AB7C4ED4AE217DC8928B64DBD311A853FF8FEEFCABE90F8776274FF0001691132ED76804ADFF02F9BF9115F35F813C1D3EBFE28B2B1955B733096E4B758E218241FF6883FA8AFAE218D218D2345DA8AA1557D00E00A6C7D0968A28A420A28A2800A4C52D1401C2F8DBE19E8DE2F8FED4F1FD9B558FE68AEE1001623A2B8FE21DBD7DEBE45BC81ECF51B8B79536BC52B232FA152411FA57DE66BE5FF008E5E097D13C4FF00DBF6917FC4BF526DD232F449BB83E81BAFE7401E592FFAC747FE1A4FB55D22795E7C9B5B8DBB8D5A9E5B6B9B7B7DD98EE917CB66ED201F75BD881F29FA0F7AEC749F0DE91E22D0ED2249560D4224DB232AF2793C95FE2183D4734C0E08DCDC79651A57D8DFC3BBE87FA0A82B5B53D0AEF4D9E542BE6A44E55993D8E3F2E2B271480F75FD9D740B79EFF55D7A5DAD35B05B6817FB9BB966FC8000FF00BD5F44D7C31A0EAFACE857EB7FA2DC5CDB5C2FF1C39C11E8C3A11EC78AFA23C13F199350B58A2F14584BA63F0AB7FE5916CE71D4E7EEE7F11EE2803D7E8AE5A4F887E114E175CB695BFBB6FBA53F9283558FC4AD0DCFFA3C3AB4FF00EEE9B320FCDD545007634579FDDFC56B2B6FF9845E7FBD35C5BC43F5933FA560DE7C70B785FE4B7D2553FE9A6A4CEDF947130FD69D80F51D474BB0D5EC9AD350B382E6DDBEF47346187E47A1F7AF18F17FECF96B7265BBF0ADCFD9A5EBF64B86263FA2BE32BF439FA8A6DCFC7A5C7EEAE6CD7FEB9D94B2FEACC958B3FC6BD46E67478B52BE8BF876C76B04519CFAEE123668B01E53AE786B57F0CDEFD9358B096D25EDE62F0FEEAC3823E86B2416AF48D5FE2ADFEBF64F65A9DACF796ADF7A3B8B8550DFF7C22E0FD2B981AD449C5AF87B4A8BFEBA46F29FCDD8FF002A2C045A46B1169F03EE4569554EDDD9E7D3A5644705C5CC9FBA8A595BFE99A96FE55B9FF0926AF1FF00AA96CEDBFD986CE25FE4B9A64DAEEB937FADD66E76FF00756629FA0228B01D1FC34B08B4CF18DBEA5E20D23516B5B6532C2AB6ACD99811B320E381C9CFA815F42C5F143C37F65F3AE2596CDB27F7570AAACBEE70C473F5AF92247966FF005B7B2CADFED316FF001AEAB48F859E2AD6AD61BBB2D1A77B59D43C733C91A020F7F9981A00F79BBF8E1E11B64CACF2CC7FD8D9FD18D605EFED11A4A7FC7AE9AF21FF006A43FD16B88B2F809E2B9BFD741A741FF5D2E893F92A9FE75BF67FB3C6A5FF002F1AE5845FF5CED59CFE65850050D53F684D56FC3DBE9FA7259230C798BF3C9F519E07E47F0AE6ECE4D5FC5FAAA5BE9BA6CB3DD4ADBE4B9B8F9E573DD8E7E55518EF93C0C92005AF5BD33E03E876BF36A1A95E5E7F795710A9FCB27F5AF46D2341D2F40B4FB2E976515B45FC5B5796F72C7927DC9A00C4F02F826DFC1DA518F779FA84FF0035CDC1EAC7D013CE3EBD4F35D7D145200A28A2800A28A2800A28A2800ACDD6347B0D7B4AB8D37528127B59D76BC6DFA11E841E41AD2A2803E50F1D7C1CD6BC2D24B71A74526A5A57559235DD2C43FDB503FF001E1C7D2BCFAD64B8B69D1EDEEA481D4E772B152A7F0E95F7862B9FD53C15E19D664F3B50D0EC6797FE7A34203FFDF4306803E55864B278FCDD4357BA96E19B7379733AEE2793FF002CCF27EB5621BCF0B59EEFB3E96F2B32FCCD248EF9E7FDE4AFA0E5F835E049A4DFFD86CBFEEDE4CA3F20F512FC12F022BEE3A5CCDFECB5E4B8FF00D0A9DC7A1E0B178BACADA374B4D22CE246FBDB6DDBE61E87748D9FC699FF0009ADC26C4B1B78207FE1586DE153F4C08C9FD6BE8E87E15781A1FB9E1BB33FEFEE7FFD089ADAD3FC2FA0E9322BE9FA2D85B3AFDD68ADD148FA10334730B43E601A878E753FF8F7B5D6D93F87C98E651FA6053D7C0FF10F53FBFA1EA6DBBFE7E182FF00E8C6AFAD314B8A2E07CAD6DF03FC6D3FDFB0B0B6FF00AE970BFF00B2835AD6DFB3D7899FFE3E354D2A0FF71A473FFA0AD7D27452B81E0B69FB39B7FCBDF893FEFCDAFF00F14C6B5A0FD9E340465336B3A9C8ABF7953CB4CFE3B4E2BD928A00F35B6F819E08B60BBAD6F27DBFF3D2E9FF0092E07E95B36DF0B3C0F6C3E4F0DD937FD765327FE844D7634500600F0578592DDADD3C39A4AC4CA432AD9C7DFF00E0359D6FF0BBC156DF7340B56FFAE80B7F335D8514018D6BE14F0F59FF00C7BE87A745FEEDBA7F856AC712A46111155474555C0FCAA4A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFFD9, '', '', '');

SET IDENTITY_INSERT [Sprzet] OFF;

SET IDENTITY_INSERT [Stany] ON;

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (271, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (272, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (273, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (274, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (275, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (276, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (277, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (278, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (279, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (280, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (281, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (282, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (283, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (284, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (285, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (286, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (287, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (288, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (289, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (290, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (291, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (292, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (293, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (294, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (295, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (296, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (297, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (298, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (299, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (300, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (301, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (302, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (303, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (304, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (305, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (306, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (307, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (308, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (309, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (310, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (311, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (312, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (1, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (2, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (3, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (4, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (5, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (6, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (7, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (8, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (9, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (10, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (11, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (12, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (13, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (14, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (15, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (16, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (17, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (18, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (19, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (20, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (21, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (22, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (23, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (24, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (25, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (26, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (27, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (28, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (29, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (30, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (31, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (32, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (33, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (34, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (35, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (36, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (37, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (38, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (39, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (40, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (41, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (42, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (43, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (44, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (45, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (46, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (47, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (48, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (49, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (50, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (51, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (52, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (53, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (54, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (55, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (56, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (57, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (58, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (59, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (60, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (61, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (62, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (63, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (64, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (65, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (66, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (67, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (68, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (69, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (70, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (71, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (72, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (73, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (74, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (75, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (76, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (77, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (78, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (79, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (80, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (81, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (82, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (83, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (84, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (85, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (86, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (87, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (88, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (89, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (90, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (91, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (92, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (93, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (94, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (95, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (96, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (97, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (98, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (99, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (100, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (101, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (102, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (103, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (104, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (105, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (106, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (107, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (108, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (109, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (110, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (111, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (112, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (113, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (114, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (115, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (116, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (117, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (118, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (119, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (120, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (121, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (122, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (123, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (124, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (125, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (126, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (127, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (128, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (129, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (130, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (131, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (132, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (133, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (134, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (135, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (136, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (137, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (138, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (139, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (140, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (141, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (142, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (143, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (144, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (145, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (146, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (147, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (148, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (149, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (150, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (151, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (152, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (153, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (154, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (155, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (156, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (157, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (158, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (159, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (160, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (161, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (162, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (163, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (164, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (165, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (166, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (167, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (168, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (169, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (170, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (171, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (172, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (173, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (174, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (175, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (176, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (177, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (178, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (179, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (180, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (181, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (182, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (183, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (184, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (185, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (186, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (187, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (188, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (189, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (190, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (191, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (192, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (193, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (194, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (195, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (196, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (197, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (198, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (199, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (200, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (201, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (202, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (203, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (204, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (205, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (206, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (207, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (208, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (209, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (210, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (211, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (212, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (213, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (214, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (215, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (216, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (217, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (218, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (219, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (220, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (221, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (222, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (223, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (224, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (225, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (226, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (227, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (228, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (229, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (230, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (231, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (232, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (233, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (234, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (235, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (236, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (237, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (238, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (239, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (240, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (241, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (242, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (243, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (244, 'MAGAZYN', 1, 11, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (245, 'ZAKUP', -1, 12, -5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (246, 'MAGAZYN', 1, 12, 5, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (247, 'ZAKUP', -1, 13, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (248, 'MAGAZYN', 1, 13, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (249, 'ZAKUP', -1, 14, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (250, 'MAGAZYN', 1, 14, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (251, 'ZAKUP', -1, 15, -10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (252, 'MAGAZYN', 1, 15, 10, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (253, 'ZAKUP', -1, 16, -50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (254, 'MAGAZYN', 1, 16, 50, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (255, 'ZAKUP', -1, 17, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (256, 'MAGAZYN', 1, 17, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (257, 'ZAKUP', -1, 18, -20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (258, 'MAGAZYN', 1, 18, 20, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (259, 'ZAKUP', -1, 19, -2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (260, 'MAGAZYN', 1, 19, 2, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (261, 'ZAKUP', -1, 7, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (262, 'MAGAZYN', 1, 7, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (263, 'ZAKUP', -1, 8, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (264, 'MAGAZYN', 1, 8, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (265, 'ZAKUP', -1, 9, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (266, 'MAGAZYN', 1, 9, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (267, 'ZAKUP', -1, 10, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (268, 'MAGAZYN', 1, 10, 1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (269, 'ZAKUP', -1, 11, -1, 1);

INSERT INTO [Stany] ([Id], [MagazynTyp], [IdMagazynu], [IdProduktu], [Ilość], [IdJednostki]) VALUES (270, 'MAGAZYN', 1, 11, 1, 1);

SET IDENTITY_INSERT [Stany] OFF;

SET IDENTITY_INSERT [Szkolenia] ON;

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (121, 19, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2009.07.27 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (122, 19, 'Z zakresu kwalifikowanej pierwszej pomocy', '2009.06.29 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (142, 15, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2011.11.14 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (143, 15, 'Z zakresu kwalifikowanej pierwszej pomocy', '2012.01.10 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (113, 7, 'Nurkowie', '2011.06.01 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (114, 7, 'Strażacy ratownicy OSP', '2011.02.07 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (115, 7, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2010.03.15 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (116, 7, 'Z zakresu kwalifikowanej pierwszej pomocy', '2010.05.09 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (117, 8, 'Pilarze do drewna', '2010.09.06 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (118, 8, 'Z zakresu kwalifikowanej pierwszej pomocy', '2010.10.29 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (119, 8, 'Z zakresu ratownictwa technicznego', '2011.08.15 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (128, 13, 'Strażacy ratownicy OSP', '2011.02.07 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (129, 13, 'Z zakresu kwalifikowanej pierwszej pomocy', '2012.02.07 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (135, 10, 'Pilarze do drewna', '2011.07.18 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (136, 10, 'Strażacy ratownicy OSP', '2009.11.23 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (137, 10, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2009.10.09 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (139, 16, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2004.11.30 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (145, 9, 'Płetwnurkowie', '2011.05.30 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (146, 9, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2010.03.09 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (147, 9, 'Z zakresu kierowania ruchem drogowym', '2011.07.25 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (107, 11, 'Pilarze do drewna', '2014.01.10 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (108, 11, 'Pilarze do stali i betonu', '2013.03.22 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (109, 11, 'Strażacy ratownicy OSP', '2010.06.11 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (110, 11, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2008.02.12 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (101, 21, 'Dowódcy MDP', '2002.06.11 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (102, 21, 'Kierowcy konserwatorzy sprzętu ratowniczego', '1994.09.20 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (103, 21, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '1989.05.09 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (104, 21, 'Z zakresu kierowania ruchem drogowym', '2000.06.12 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (105, 21, 'Z zakresu kwalifikowanej pierwszej pomocy', '1987.05.25 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (112, 22, 'Członkowie MDP', '2014.03.21 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (144, 18, 'Członkowie MDP', '2010.11.30 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (123, 14, 'Dowódcy OSP', '1998.09.15 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (134, 27, 'Członkowie MDP', '2010.10.11 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (140, 16, 'Z zakresu kierowania ruchem drogowym', '2010.05.31 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (141, 16, 'Z zakresu kwalifikowanej pierwszej pomocy', '2005.02.07 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (130, 12, 'Sternicy motorowodni', '2010.05.03 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (131, 12, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '2009.10.12 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (132, 12, 'Z zakresu kierowania ruchem drogowym', '2010.11.22 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (133, 12, 'Z zakresu zabezpieczenia lądowania LPR', '2010.03.08 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (124, 14, 'Strażacy ratownicy OSP', '1989.06.14 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (125, 14, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', '1993.05.11 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (126, 14, 'Z zakresu kwalifikowanej pierwszej pomocy', '1994.06.08 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (127, 14, 'Z zakresu ratownictwa technicznego', '1990.01.31 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (106, 21, 'Z zakresu ratownictwa technicznego', '2008.02.09 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (138, 10, 'Z zakresu ratownictwa technicznego', '2010.12.13 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (120, 28, 'Członkowie MDP', '2009.09.28 00:00:00.000', '', 1);

INSERT INTO [Szkolenia] ([Id], [IdOsoby], [Nazwa], [Data], [Informacje], [IdJednostki]) VALUES (111, 11, 'Z zakresu kwalifikowanej pierwszej pomocy', '2008.09.15 00:00:00.000', '', 1);

SET IDENTITY_INSERT [Szkolenia] OFF;

SET IDENTITY_INSERT [TakcjeDodatkowe] ON;

SET IDENTITY_INSERT [TakcjeDodatkowe] OFF;

SET IDENTITY_INSERT [Tankowania] ON;

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (21, 'Pojazd', 10, -1, '2013.10.04 00:00:00.000', 'FV/2010-10-04/55', '', '', 'ON', 60, 350, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (22, 'Pojazd', 8, -1, '2014.12.06 00:00:00.000', 'FV/2010-12-06/87', '', '', 'PB 95', 75, 415, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (23, 'Pojazd', 9, -1, '2015.07.13 00:00:00.000', '2010/07/13/FV-123', '', '', 'ON', 65, 360, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (24, 'Pojazd', 10, -1, '2011.08.25 00:00:00.000', '2010/08/25/FV-658', '', '', 'ON', 45, 280, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (25, 'Kanister', -1, -1, '2014.10.19 00:00:00.000', 'FV/2010-10-19/59', '', '', 'ON', 10, 45, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (26, 'Pojazd', 7, -1, '2015.03.15 00:00:00.000', 'FV/2010/03/15/78', '', '', 'ON', 75, 475, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (27, 'Pojazd', 10, -1, '2014.04.14 00:00:00.000', '2010/04/14/FV-89', '', '', 'ON', 75, 436, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (28, 'Kanister', -1, -1, '2015.05.11 00:00:00.000', '2010/05/11/FV-95', '', '', 'ON', 20, 105, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (29, 'Sprzęt', -1, 5, '2014.08.09 00:00:00.000', 'FV/2010-08-09/65', '', '', 'ON', 75, 458, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (30, 'Pojazd', 8, -1, '2014.09.08 00:00:00.000', '2010/09/08/FV-45', '', '', 'PB 95', 78, 515, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (31, 'Kanister', -1, -1, '2013.11.22 00:00:00.000', 'Fv/2010-11-22/245', '', '', 'ON', 15, 85, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (32, 'Pojazd', 10, -1, '2011.01.03 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'ON', 30, 150, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (33, 'Kanister', -1, -1, '2015.01.09 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'PB 95', 10, 55, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (34, 'Sprzęt', -1, 8, '2014.01.16 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'PB 98', 50, 280, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (35, 'Sprzęt', -1, 6, '2012.01.11 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'PB 98', 10, 58, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (36, 'Pojazd', 8, -1, '2013.01.24 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'PB 95', 30, 145, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (37, 'Pojazd', 9, -1, '2015.01.30 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'ON', 50, 290, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (38, 'Kanister', -1, -1, '2012.02.01 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'ON', 15, 85, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (39, 'Pojazd', 7, -1, '2015.02.03 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'ON', 40, 210, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (40, 'Sprzęt', -1, 5, '2012.02.06 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Gas', 10, 50, '', 1);

INSERT INTO [Tankowania] ([Id], [Typ], [IdSamochodu], [IdSprzetu], [Data], [Numer faktury], [Sprzedawca], [Nabywca], [Rodzaj paliwa], [Ilość], [Wartość], [Informacje], [IdJednostki]) VALUES (44, 'Kanister', -1, -1, '2012.01.18 00:00:00.000', '', '', 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'ON', 0, 1000, '', 1);

SET IDENTITY_INSERT [Tankowania] OFF;

SET IDENTITY_INSERT [TdokumentyKasa] ON;

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (1, '', 'KP - wpłata do kasy', 31, 0, 'KP', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (2, '', 'BP - wpłata na konto', 0, 0, 'BP', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (3, '', 'KW - wypłata z kasy', 24, 0, 'KW', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (4, '', 'BW - wypłata z konta', 0, 0, 'BW', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (5, NULL, 'KP - wpłata do kasy', 0, 0, 'KP', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (6, NULL, 'BP - wpłata na konto', 0, 0, 'BP', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (7, NULL, 'KW - wypłata z kasy', 24, 0, 'KW', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

INSERT INTO [TdokumentyKasa] ([Id], [Informacja], [Nazwa], [Indeks], [Indeks_startowy], [Symbol], [Schemat], [Typ numeracji], [IdJednostki]) VALUES (8, NULL, 'BW - wypłata z konta', 0, 0, 'BW', '{Symbol}/{Rok}/{Indeks}', 'normal', 1);

SET IDENTITY_INSERT [TdokumentyKasa] OFF;

SET IDENTITY_INSERT [TgrupyCzlonkow] ON;

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (7, 'Zwyczajni', -1, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (8, 'MDP', -1, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (9, 'Wspierający', -1, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (10, 'Honorowi', -1, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (11, 'Mężczyźni', 7, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (12, 'Kobiety', 7, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (13, 'Chłopcy', 8, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (14, 'Dziewczęta', 8, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (15, 'JOT', 7, 1);

INSERT INTO [TgrupyCzlonkow] ([Id], [Nazwa], [Nadgrupa], [IdJednostki]) VALUES (16, 'Dziewczęta', 2, 1);

SET IDENTITY_INSERT [TgrupyCzlonkow] OFF;

SET IDENTITY_INSERT [Tinterwencje] ON;

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (3, 'Pożar', 1);

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (4, 'Wypadek drogowy', 1);

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (5, 'Akcja powodziowa', 1);

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (6, 'Ratownictwo chemiczne', 1);

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (7, 'Wichura', 1);

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (8, 'Inne', 1);

INSERT INTO [Tinterwencje] ([Id], [Nazwa], [IdJednostki]) VALUES (9, 'Alarm fałszywy', 1);

SET IDENTITY_INSERT [Tinterwencje] OFF;

SET IDENTITY_INSERT [TkasaGrupy] ON;

INSERT INTO [TkasaGrupy] ([Id], [Nazwa], [IdJednostki]) VALUES (1, '', 1);

INSERT INTO [TkasaGrupy] ([Id], [Nazwa], [IdJednostki]) VALUES (2, 'KSRG', 1);

SET IDENTITY_INSERT [TkasaGrupy] OFF;

SET IDENTITY_INSERT [Tkonta] ON;

INSERT INTO [Tkonta] ([Id], [Nazwa], [IdJednostki]) VALUES (1, '0000 0000 00000 5555 55555', 1);

SET IDENTITY_INSERT [Tkonta] OFF;

SET IDENTITY_INSERT [Tkontrahenci] ON;

SET IDENTITY_INSERT [Tkontrahenci] OFF;

SET IDENTITY_INSERT [Tlokalizacje] ON;

INSERT INTO [Tlokalizacje] ([Id], [Nazwa], [IdJednostki]) VALUES (1, 'Teren gminy', 1);

INSERT INTO [Tlokalizacje] ([Id], [Nazwa], [IdJednostki]) VALUES (2, 'Teren powiatu', 1);

INSERT INTO [Tlokalizacje] ([Id], [Nazwa], [IdJednostki]) VALUES (3, 'Poza powiatem', 1);

SET IDENTITY_INSERT [Tlokalizacje] OFF;

SET IDENTITY_INSERT [Tmagazyny] ON;

INSERT INTO [Tmagazyny] ([Id], [Nazwa], [IdJednostki]) VALUES (1, 'Główny', 1);

SET IDENTITY_INSERT [Tmagazyny] OFF;

SET IDENTITY_INSERT [Tnormy] ON;

SET IDENTITY_INSERT [Tnormy] OFF;

SET IDENTITY_INSERT [Todznaczenia] ON;

SET IDENTITY_INSERT [Todznaczenia] OFF;

SET IDENTITY_INSERT [Tsprzedawca] ON;

INSERT INTO [Tsprzedawca] ([Id], [Nazwa], [Miejsce sprzedaży], [Jednostka], [Miejscowość], [IdJednostki]) VALUES (1, 'OSP Nowa Góra
Nowa Góra 111
32-065 Krzeszowice
', 'Nowa Góra', 'OSP Nowa Góra', 'Nowa Góra', 1);

INSERT INTO [Tsprzedawca] ([Id], [Nazwa], [Miejsce sprzedaży], [Jednostka], [Miejscowość], [IdJednostki]) VALUES (2, 'OSP Ostrężnica
Ostrężnica 8
32-065 Krzeszowice', 'Ostrężnica', 'OSP Ostrężnica', 'Ostrężnica', 1);

SET IDENTITY_INSERT [Tsprzedawca] OFF;

SET IDENTITY_INSERT [Tsrodki] ON;

INSERT INTO [Tsrodki] ([Id], [Nazwa], [IdJednostki]) VALUES (1, 'Środki trwałe', 1);

INSERT INTO [Tsrodki] ([Id], [Nazwa], [IdJednostki]) VALUES (2, 'Środki nietrwałe', 1);

SET IDENTITY_INSERT [Tsrodki] OFF;

SET IDENTITY_INSERT [Tszkolenia] ON;

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (3, 'Strażacy ratownicy OSP', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (4, 'Kierowcy konserwatorzy sprzętu ratowniczego', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (5, 'Z zakresu ratownictwa technicznego', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (6, 'Z zakresu kierowania ruchem drogowym', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (7, 'Z zakresu kwalifikowanej pierwszej pomocy', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (8, 'Z zakresu działań przeciwpowodziowych i ratownictwa na wodach', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (9, 'Z zakresu zabezpieczenia lądowania LPR', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (10, 'Płetwnurkowie', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (11, 'Nurkowie', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (12, 'Sternicy motorowodni', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (13, 'Dowódcy OSP', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (14, 'Naczelnicy OSP', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (15, 'Pilarze do drewna', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (16, 'Pilarze do stali i betonu', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (17, 'Członkowie MDP', 1);

INSERT INTO [Tszkolenia] ([Id], [Nazwa], [IdJednostki]) VALUES (18, 'Dowódcy MDP', 1);

SET IDENTITY_INSERT [Tszkolenia] OFF;

SET IDENTITY_INSERT [Tuzytkownicy] ON;

INSERT INTO [Tuzytkownicy] ([Id], [Nazwa], [IdJednostki]) VALUES (1, '', 1);

SET IDENTITY_INSERT [Tuzytkownicy] OFF;

SET IDENTITY_INSERT [Twlasciciele] ON;

INSERT INTO [Twlasciciele] ([Id], [Nazwa], [IdJednostki]) VALUES (1, 'Gmina', 1);

INSERT INTO [Twlasciciele] ([Id], [Nazwa], [IdJednostki]) VALUES (2, 'OSP', 1);

SET IDENTITY_INSERT [Twlasciciele] OFF;

SET IDENTITY_INSERT [Ubezpieczenia] ON;

INSERT INTO [Ubezpieczenia] ([Id], [IdOsoby], [Numer], [Ubezpieczyciel], [Data_od], [Data_do], [Informacje], [IdJednostki]) VALUES (9, 12, '1231231232', 'PZU', '2015.01.27 00:00:00.000', '2016.01.27 00:00:00.000', 'sdfsdfssssss', 1);

SET IDENTITY_INSERT [Ubezpieczenia] OFF;

SET IDENTITY_INSERT [Uzupelnienia] ON;

SET IDENTITY_INSERT [Uzupelnienia] OFF;

SET IDENTITY_INSERT [Uzytkownicy] ON;

INSERT INTO [Uzytkownicy] ([Id], [Nazwa], [Prawa], [Hasło], [IdJednostki]) VALUES (1, 'Administrator', 'alllaws', 'D41D8CD98F00B204E9800998ECF8427E', 1);

SET IDENTITY_INSERT [Uzytkownicy] OFF;

SET IDENTITY_INSERT [Zarzad] ON;

INSERT INTO [Zarzad] ([Id], [Data_od], [Data_do], [Prezes], [Wiceprezes], [Naczelnik], [Zastępca naczelnika], [Sekretarz], [Skarbnik], [Gospodarz], [Kronikarz], [Członek], [Przewodniczący], [Wiceprzewodniczący], [Sekretarz komisji], [Informacje], [Do teraz], [Członek 2], [Członek 3], [IdJednostki]) VALUES (1, '2015.02.01 00:00:00.000', '2013.02.06 00:00:00.000', 'Jan Nowicki', 'Krzysztof Bermudzki', 'Dariusz Kępa', 'Michał Krok', 'Antoni Myśliwiec', 'Michał Krok', 'Jan Nowicki', 'Antoni Myśliwiec', '', 'Jan Nowicki', 'Dariusz Kępa', 'Antoni Myśliwiec', '', 'True', '', '', 1);

INSERT INTO [Zarzad] ([Id], [Data_od], [Data_do], [Prezes], [Wiceprezes], [Naczelnik], [Zastępca naczelnika], [Sekretarz], [Skarbnik], [Gospodarz], [Kronikarz], [Członek], [Przewodniczący], [Wiceprzewodniczący], [Sekretarz komisji], [Informacje], [Do teraz], [Członek 2], [Członek 3], [IdJednostki]) VALUES (2, '2009.11.12 00:00:00.000', '2015.01.31 00:00:00.000', 'Jerzy Muszyński', 'Henryk Kalf', 'Radosław Hibner', 'Grzegorz Sarnowski', 'Magdalena Kosiecka', 'Ewa Trepkowska', 'Patryk Wróblewski', 'Łukasz Tobiański', 'Anna Pałęcka', 'Arkadiusz Grabowski', 'Klaudyna Banach', 'Walerian Rojkowski', '', 'False', '', '', 1);

INSERT INTO [Zarzad] ([Id], [Data_od], [Data_do], [Prezes], [Wiceprezes], [Naczelnik], [Zastępca naczelnika], [Sekretarz], [Skarbnik], [Gospodarz], [Kronikarz], [Członek], [Przewodniczący], [Wiceprzewodniczący], [Sekretarz komisji], [Informacje], [Do teraz], [Członek 2], [Członek 3], [IdJednostki]) VALUES (3, '2002.01.02 00:00:00.000', '2009.11.11 00:00:00.000', 'Radosław Durski', 'Roman Matysik', 'Roman Matysik', 'Szymon Bociąga', 'Tomasz Mikitów', 'Zdzisław Różański', 'Jan Raducki', 'Elżbieta Bukowiecka', 'Łukasz Krupa', 'Arkadiusz Bober', 'Sławomir Kuźmiński', 'Ryszard Ganiacz', '', 'False', '', '', 1);

SET IDENTITY_INSERT [Zarzad] OFF;

SET IDENTITY_INSERT [Zawody] ON;

INSERT INTO [Zawody] ([Id], [Data], [Szczebel], [Grupa], [Miejsce], [Mężczyźni], [Kobiety], [Chłopcy], [Dziewczęta], [Informacje], [IdJednostki]) VALUES (2, '2013.09.13 00:00:00.000', 'Szczebel gminny', 'Wspierający', '', 5, 0, 0, 0, '', 1);

INSERT INTO [Zawody] ([Id], [Data], [Szczebel], [Grupa], [Miejsce], [Mężczyźni], [Kobiety], [Chłopcy], [Dziewczęta], [Informacje], [IdJednostki]) VALUES (3, '2014.10.10 00:00:00.000', 'Szczebel powiatowy', 'MDP - Chłopcy', 'Wyróznienie', 0, 0, 5, 0, '', 1);

INSERT INTO [Zawody] ([Id], [Data], [Szczebel], [Grupa], [Miejsce], [Mężczyźni], [Kobiety], [Chłopcy], [Dziewczęta], [Informacje], [IdJednostki]) VALUES (4, '2012.06.21 00:00:00.000', 'Szczebel gminny', 'Zwyczajni - Kobiety', 'Drugie', 0, 2, 0, 0, '', 1);

INSERT INTO [Zawody] ([Id], [Data], [Szczebel], [Grupa], [Miejsce], [Mężczyźni], [Kobiety], [Chłopcy], [Dziewczęta], [Informacje], [IdJednostki]) VALUES (5, '2015.02.09 00:00:00.000', 'Szczebel wojewódzki', 'Zwyczajni - Mężczyźni', 'Wyróznienie', 5, 0, 0, 0, '', 1);

INSERT INTO [Zawody] ([Id], [Data], [Szczebel], [Grupa], [Miejsce], [Mężczyźni], [Kobiety], [Chłopcy], [Dziewczęta], [Informacje], [IdJednostki]) VALUES (6, '2015.06.13 00:00:00.000', 'Szczebel gminny', 'MDP - Chłopcy', 'Pierwsze', 2, 0, 0, 0, '', 1);

SET IDENTITY_INSERT [Zawody] OFF;

ALTER TABLE [Akcje] ADD CONSTRAINT [Akcje$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [AkcjeInne] ADD CONSTRAINT [AkcjeInne$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [AkcjeOsoby] ADD CONSTRAINT [AkcjeOsoby$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [AkcjeSamochody] ADD CONSTRAINT [AkcjeSamochody$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [AkcjeSprzet] ADD CONSTRAINT [AkcjeSprzet$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [AkcjeUczestnicy] ADD CONSTRAINT [AkcjeUczestnicy$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [AkcjeWieszowa] ADD CONSTRAINT [AkcjeWieszowa$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [Ksiega] ADD CONSTRAINT [Ksiega$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [Osoby] ADD CONSTRAINT [Osoby$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [Samochody] ADD CONSTRAINT [Samochody$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [Sprzet] ADD CONSTRAINT [Sprzet$PrimaryKey] PRIMARY KEY ([Id]);

ALTER TABLE [Tankowania] ADD CONSTRAINT [Tankowania$PrimaryKey] PRIMARY KEY ([Id]);

CREATE INDEX [Akcje$Id] ON [Akcje] ([Id] ASC);

CREATE INDEX [Akcje$IdJednostki] ON [Akcje] ([IdJednostki] ASC);

CREATE INDEX [AkcjeDodatkowe$IdAkcji] ON [AkcjeDodatkowe] ([IdAkcji] ASC);

CREATE INDEX [AkcjeDodatkowe$IdJednostki] ON [AkcjeDodatkowe] ([IdJednostki] ASC);

CREATE INDEX [AkcjeInne$Id] ON [AkcjeInne] ([Id] ASC);

CREATE INDEX [AkcjeInne$IdAkcji] ON [AkcjeInne] ([IdAkcji] ASC);

CREATE INDEX [AkcjeInne$IdJednostki] ON [AkcjeInne] ([IdJednostki] ASC);

CREATE INDEX [AkcjeOsoby$Id] ON [AkcjeOsoby] ([Id] ASC);

CREATE INDEX [AkcjeOsoby$IdAkcji] ON [AkcjeOsoby] ([IdAkcji] ASC);

CREATE INDEX [AkcjeOsoby$IdJednostki] ON [AkcjeOsoby] ([IdJednostki] ASC);

CREATE INDEX [AkcjeOsoby$IdOsoby] ON [AkcjeOsoby] ([IdOsoby] ASC);

CREATE INDEX [AkcjeSamochody$Id] ON [AkcjeSamochody] ([Id] ASC);

CREATE INDEX [AkcjeSamochody$IdAkcji] ON [AkcjeSamochody] ([IdAkcji] ASC);

CREATE INDEX [AkcjeSamochody$IdJednostki] ON [AkcjeSamochody] ([IdJednostki] ASC);

CREATE INDEX [AkcjeSamochody$IdSamochodu] ON [AkcjeSamochody] ([IdSamochodu] ASC);

CREATE INDEX [AkcjeSprzet$Id] ON [AkcjeSprzet] ([Id] ASC);

CREATE INDEX [AkcjeSprzet$IdAkcji] ON [AkcjeSprzet] ([IdAkcji] ASC);

CREATE INDEX [AkcjeSprzet$IdJednostki] ON [AkcjeSprzet] ([IdJednostki] ASC);

CREATE INDEX [AkcjeSprzet$IdSprzetu] ON [AkcjeSprzet] ([IdSprzetu] ASC);

CREATE INDEX [AkcjeUczestnicy$Id] ON [AkcjeUczestnicy] ([Id] ASC);

CREATE INDEX [AkcjeUczestnicy$IdAkcji] ON [AkcjeUczestnicy] ([IdAkcji] ASC);

CREATE INDEX [AkcjeUczestnicy$IdJednostki] ON [AkcjeUczestnicy] ([IdJednostki] ASC);

CREATE INDEX [AkcjeOWieszowa$Id] ON [AkcjeWieszowa] ([Id] ASC);

CREATE INDEX [AkcjeWieszowa$IdAkcji] ON [AkcjeWieszowa] ([IdAkcji] ASC);

CREATE INDEX [AkcjeWieszowa$IdJednostki] ON [AkcjeWieszowa] ([IdJednostki] ASC);

CREATE INDEX [Kasa$IdJednostki] ON [Kasa] ([IdJednostki] ASC);

CREATE INDEX [Ksiega$Id] ON [Ksiega] ([Id] ASC);

CREATE INDEX [Ksiega$IdJednostki] ON [Ksiega] ([IdJednostki] ASC);

CREATE INDEX [Magazyn$IdJednostki] ON [Magazyn] ([IdJednostki] ASC);

CREATE INDEX [Odznaczenia$IdJednostki] ON [Odznaczenia] ([IdJednostki] ASC);

CREATE INDEX [Osoby$IdJednostki] ON [Osoby] ([IdJednostki] ASC);

CREATE INDEX [Osoby$KId] ON [Osoby] ([Id] ASC);

CREATE INDEX [OsobyWyposazenie$IdJednostki] ON [OsobyWyposazenie] ([IdJednostki] ASC);

CREATE INDEX [Parametry$IdJednostki] ON [Parametry] ([IdJednostki] ASC);

CREATE INDEX [Przypomnienia$IdJednostki] ON [Przypomnienia] ([IdJednostki] ASC);

CREATE INDEX [Samochody$Id] ON [Samochody] ([Id] ASC);

CREATE INDEX [Samochody$IdJednostki] ON [Samochody] ([IdJednostki] ASC);

CREATE INDEX [SamochodySprzet$IdJednostki] ON [SamochodySprzet] ([IdJednostki] ASC);

CREATE INDEX [Skladki$IdJednostki] ON [Skladki] ([IdJednostki] ASC);

CREATE INDEX [Sprzet$Id] ON [Sprzet] ([Id] ASC);

CREATE INDEX [Sprzet$IdJednostki] ON [Sprzet] ([IdJednostki] ASC);

CREATE INDEX [Stany$IdJednostki] ON [Stany] ([IdJednostki] ASC);

CREATE INDEX [Szkolenia$IdJednostki] ON [Szkolenia] ([IdJednostki] ASC);

CREATE INDEX [Tankowania$Id] ON [Tankowania] ([Id] ASC);

CREATE INDEX [Tankowania$IdJednostki] ON [Tankowania] ([IdJednostki] ASC);

CREATE INDEX [Tankowania$IdSamochodu] ON [Tankowania] ([IdSamochodu] ASC);

CREATE INDEX [Tankowania$IdSprzetu] ON [Tankowania] ([IdSprzetu] ASC);

CREATE INDEX [TdokumentyKasa$IdJednostki] ON [TdokumentyKasa] ([IdJednostki] ASC);

CREATE INDEX [TgrupyCzlonkow$IdJednostki] ON [TgrupyCzlonkow] ([IdJednostki] ASC);

CREATE INDEX [Tinterwencje$IdJednostki] ON [Tinterwencje] ([IdJednostki] ASC);

CREATE INDEX [Tkonta$IdJednostki] ON [Tkonta] ([IdJednostki] ASC);

CREATE INDEX [Tkontrahenci$IdJednostki] ON [Tkontrahenci] ([IdJednostki] ASC);

CREATE INDEX [Tsprzedawca$IdJednostki] ON [Tsprzedawca] ([IdJednostki] ASC);

CREATE INDEX [Tszkolenia$IdJednostki] ON [Tszkolenia] ([IdJednostki] ASC);

CREATE INDEX [Tuzytkownicy$IdJednostki] ON [Tuzytkownicy] ([IdJednostki] ASC);

CREATE INDEX [Ubezpieczenia$IdJednostki] ON [Ubezpieczenia] ([IdJednostki] ASC);

CREATE INDEX [Uzupelnienia$IdJednostki] ON [Uzupelnienia] ([IdJednostki] ASC);

CREATE INDEX [Uzytkownicy$IdJednostki] ON [Uzytkownicy] ([IdJednostki] ASC);

CREATE INDEX [Zarzad$IdJednostki] ON [Zarzad] ([IdJednostki] ASC);

CREATE INDEX [Zawody$IdJednostki] ON [Zawody] ([IdJednostki] ASC);

