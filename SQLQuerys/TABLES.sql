
CREATE TABLE KULLANICI (
KULLANICI_ADI int IDENTITY(1,1) PRIMARY KEY,
AD VARCHAR(50),
SOYAD VARCHAR(50),
SIFRE int NOT NULL,
MA�L VARCHAR(60),
)

CREATE TABLE KIMLIKBILGILERI(
ID int PRIMARY KEY NOT NULL ,
TC_NO int not null UNIQUE CHECK(TC_NO = 11),
SERI_NO int not null UNIQUE,
DOGUMYERI varchar(20),
UYRUK varchar(5) default  'TC',

FOREIGN KEY (ID) REFERENCES KULLANICI (KULLANICI_ADI) ON DELETE CASCADE ON UPDATE NO ACTION , 
)


CREATE TABLE TEL(
ID int PRIMARY KEY NOT NULL ,
EV int,
CEP int CHECK(CEP <= 11),
FAX int,


FOREIGN KEY (ID) REFERENCES KULLANICI (KULLANICI_ADI) ON DELETE CASCADE ON UPDATE NO ACTION , 
)



CREATE TABLE MUSTERI(
MUSTERI_NO int  IDENTITY(1,1) PRIMARY KEY,
KULLANICI_ID int,
FOREIGN KEY (KULLANICI_ID) REFERENCES KULLANICI (KULLANICI_ADI) ON DELETE CASCADE ON UPDATE NO ACTION ,
) 

CREATE TABLE ADRES(
ID int IDENTITY(1,1) PRIMARY KEY NOT NULL ,
NAME VARCHAR(10)NOT NULL,
ACIKLAMA VARCHAR(250) NOT NULL ,
KULLANICI_ADI_ID int NOT NULL, 

FOREIGN KEY (KULLANICI_ADI_ID) REFERENCES KULLANICI (KULLANICI_ADI) ON DELETE CASCADE ON UPDATE NO ACTION , 
)

CREATE TABLE KATEGORILER(
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Name varchar(60) NOT NULL,
	Parent_Id int NULL,
	ACIKLAMA varchar(250) NULL,
)

CREATE TABLE URUNLER(
URUN_NO int PRIMARY KEY IDENTITY(1,1), --�D  
FIYAT decimal(8,2) NOT NULL,
OZELLIK varchar(100),
STOK_MIKTAR int NOT NULL,
CATEGORI_ID int NOT NULL,
FOREIGN KEY (CATEGORI_ID) REFERENCES KATEGORILER (Id) ON DELETE CASCADE ON UPDATE NO ACTION,

)

CREATE TABLE SIPARISLER(
ID int PRIMARY KEY IDENTITY(1,1) , 
DURUM varchar(50),
TARIH date,
ADRESS_ID int,
MUSTERI_ID int, 
FOREIGN KEY (MUSTERI_ID) REFERENCES MUSTERI (MUSTERI_NO) ON DELETE CASCADE ON UPDATE NO ACTION,
FOREIGN KEY (ADRESS_ID) REFERENCES ADRES (ID) ,
)

CREATE TABLE SIPARISVEURUN(
ID int PRIMARY KEY IDENTITY(1,1)  ,
SVU int foreign key references SIPARISLER(ID),
movie_id int foreign key references URUNLER(URUN_NO),
)

CREATE TABLE SIPARIS_DETAY(
ID int PRIMARY KEY IDENTITY(1,1),
SIPARIS_ID int, 
VERGI_NO int NOT NULL UNIQUE,
VERGI_DAIRE varchar(50) NOT NULL ,
KDV int default 18,

FOREIGN KEY (SIPARIS_ID ) REFERENCES SIPARISLER (ID) ON DELETE CASCADE ON UPDATE NO ACTION,
)

CREATE TABLE SATICI(
SATICI_NO int PRIMARY KEY IDENTITY(1,1) NOT NULL,
KULLANICI_ID int,

FOREIGN KEY (KULLANICI_ID) REFERENCES KULLANICI (KULLANICI_ADI) ON DELETE CASCADE ON UPDATE NO ACTION , 
)
