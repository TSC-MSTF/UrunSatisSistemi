/*
CREATE PROCEDURE INSERTKULLANICI
	@AD VARCHAR(50),
	@SOYAD VARCHAR(50),
	@SIFRE INT,
	@MA?L VARCHAR(50)
AS
	INSERT INTO KULLANICI VALUES(@AD,@SOYAD,@SIFRE,@MA?L)
	
--EXEC INSERTKULLANICI 'MUSTAFA' ,'TA??I',1234,'MUSTAFA@GMA?L.COM'
--SELECT * FROM KULLANICI

*/

/*

CREATE PROCEDURE INSERTADRES
	@NAME VARCHAR(50),
	@ACIKLAMA VARCHAR(50),
	@KULLANICI_ADI_ID int
	
AS
	INSERT INTO ADRES VALUES(@NAME,@ACIKLAMA,@KULLANICI_ADI_ID)
	*/
/*
CREATE PROCEDURE INSERTKATEGORILER
	@NAME VARCHAR(50),
	@PARENT_ID int,
	@ACIKLAMA VARCHAR(250)
AS
BEGIN
	INSERT INTO KATEGORILER VALUES(@NAME,@PARENT_ID,@ACIKLAMA) 
END
*/
/*
CREATE PROCEDURE INSERTKIMLIKBILGILERI

	@ID INT,
	@TC_NO int,
	@SERI_NO int,
	@DOGUMYERI VARCHAR(20),
	@UYRUK  VARCHAR(5)
AS 
BEGIN
	INSERT INTO KIMLIKBILGILERI VALUES(@ID,@TC_NO,@SERI_NO,@DOGUMYERI,@UYRUK)
END
*/
/*
CREATE PROCEDURE INSTERTMUSTERI
	@KULLANICI_ID INT
AS 
BEGIN
	INSERT INTO MUSTERI VALUES(@KULLANICI_ID)
END
*/

/*
CREATE PROCEDURE INSTERTSATICI
	@KULLANICI_ID INT
AS 
BEGIN
	INSERT INTO SATICI VALUES(@KULLANICI_ID)
END
*/
/*
CREATE PROCEDURE INSERTSIPARISDETAY
	@SIPARIS_ID int, 
	@VERGI_NO int,
	@VERGI_DAIRE varchar(50),
	@KDV int
AS 
BEGIN
	INSERT INTO SIPARIS_DETAY VALUES(@SIPARIS_ID,@VERGI_NO,@VERGI_DAIRE,@KDV)
END
*/
/*
CREATE PROCEDURE INSERTSIPARISLER
	@DURUM varchar(50),
	@TARIH date,
	@ADRESS_ID int,
	@MUSTERI_ID int 
AS 
BEGIN
	INSERT INTO SIPARISLER VALUES(@DURUM,@TARIH,@ADRESS_ID,@MUSTERI_ID)
END

*/
/*
CREATE PROCEDURE INSERTTEL
	@ID INT,
	@EV int,
	@CEP int, 
	@FAX int
as 
BEGIN
INSERT INTO TEL VALUES(@ID,@EV,@CEP,@FAX)
END
*/

/*
CREATE PROCEDURE UPDATEKULLANICI
	@KULLANICI_ADI int,
	@AD VARCHAR(50),
	@SOYAD VARCHAR(50),
	@SIFRE INT,
	@MA?L VARCHAR(50)
AS
BEGIN
	UPDATE KULLANICI
	SET AD = @AD , SOYAD = @SOYAD , SIFRE = @SIFRE , MA?L =@MA?L
	WHERE KULLANICI_ADI = @KULLANICI_ADI
END	


*/
/*
CREATE PROCEDURE UPDATEADRES
	@ID INT,
	@NAME VARCHAR(50),
	@ACIKLAMA VARCHAR(50),
	@KULLANICI_ADI_ID int
	
AS
BEGIN
	UPDATE ADRES
	SET NAME = @NAME , ACIKLAMA = @ACIKLAMA , KULLANICI_ADI_ID = @KULLANICI_ADI_ID 
	WHERE ID = @ID
END	
*/
/*
CREATE PROCEDURE UPDATEKATEGORILER
	@Id INT,
	@NAME VARCHAR(50),
	@PARENT_ID int,
	@ACIKLAMA VARCHAR(250)
AS
BEGIN
	UPDATE KATEGORILER
	SET NAME = @NAME , ACIKLAMA = @ACIKLAMA ,Parent_Id =@PARENT_ID 
	WHERE Id=@Id
END
*/
/*
CREATE PROCEDURE UPDATEKIMLIKBILGILERI

	@ID INT,
	@TC_NO int,
	@SERI_NO int,
	@DOGUMYERI VARCHAR(20),
	@UYRUK  VARCHAR(5)
AS
BEGIN
	UPDATE KIMLIKBILGILERI
	SET TC_NO = @TC_NO , SERI_NO = @SERI_NO ,DOGUMYERI =@DOGUMYERI, UYRUK = @UYRUK 
	WHERE ID=@ID
END
*/
/*
CREATE PROCEDURE DELETEKULLANICI
	@KULLANICI_ADI int
	
AS
BEGIN	
	DELETE FROM KULLANICI WHERE KULLANICI_ADI = @KULLANICI_ADI
END	
*/
/*
CREATE PROCEDURE DELETEADRES
	@ID INT
	
AS
BEGIN
	DELETE FROM ADRES
	
	WHERE ID = @ID
END	
*/
/*
CREATE PROCEDURE DELETEKATEGORILER
	@Id INT
AS	
BEGIN
	DELETE FROM KATEGORILER
	WHERE Id=@Id
END
*/
/*
CREATE PROCEDURE DELETEKIMLIKBILGILERI

	@ID INT
AS
BEGIN
	DELETE FROM KIMLIKBILGILERI
	WHERE ID=@ID
END
*/
/*
CREATE PROCEDURE DELETEURUNLER
	@URUN_NO INT
AS
BEGIN
	DELETE FROM URUNLER
	WHERE URUN_NO = @URUN_NO
END
*/
/*
CREATE PROCEDURE DDELETESIPARISLER

	@ID INT
AS
BEGIN
	DELETE FROM SIPARISLER
	WHERE ID = @ID
END
*/

--CREATE PROCEDURE INSERTADRES

--	@NAME VARCHAR(50),
--	@ACIKLAMA VARCHAR(50),
--	@KULLANICI_ADI_ID int
	

	
--AS
--BEGIN
--	INSERT INTO ADRES VALUES(@NAME,@ACIKLAMA,@KULLANICI_ADI_ID)
--	END	

--CREATE PROCEDURE INSERTURUN

	
--	@FIYAT DECIMAL(8,2),
--	@OZELLIK VARCHAR(100),
--	@STOK_MIKTAR INT,
--	@CATEGORI_ID INT
--AS 
--BEGIN
--	INSERT INTO URUNLER VALUES(@FIYAT,@OZELLIK,@STOK_MIKTAR,@CATEGORI_ID)
--END



exec INSERTSIPARISLER 'Telefon', 12, '2015-02-14', 1