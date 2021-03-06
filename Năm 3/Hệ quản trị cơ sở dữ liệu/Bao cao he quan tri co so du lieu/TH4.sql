CREATE DATABASE QLNV1

CREATE TABLE phong
(
    map CHAR(10) not null,
    tenp NVARCHAR(100),
    CONSTRAINT P_PK PRIMARY KEY(map)
)

CREATE TABLE nhanvien
(
    manv INT not null,
    hoten NVARCHAR(100),
    ngaysinh DATE,
    diachi NVARCHAR(100),
    map CHAR(10) NOT NULL,
    CONSTRAINT NV_PK PRIMARY KEY(manv),
    CONSTRAINT P_FK FOREIGN KEY(map) REFERENCES phong(MaP),
)

CREATE TABLE NGUOITHAN
(
    MANV INT NOT NULL,
    HOTENNT NVARCHAR(100),
    CONSTRAINT NT_PK PRIMARY KEY(MANV)
)

CREATE TABLE DUAN
(
    MADA CHAR(10) NOT NULL,
    TENDA NVARCHAR(100),
    CONSTRAINT DA_PK PRIMARY KEY(MADA)
)

CREATE TABLE NHANVIEN_DUAN
(
    MANV INT NOT NULL,
    MADA CHAR(10) NOT NULL,
    CONSTRAINT NVDA_PK PRIMARY KEY(MANV,MADA),
    CONSTRAINT NVDA_FK_NV FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV),
    CONSTRAINT NVDA_FK_DA FOREIGN KEY(MADA) REFERENCES DUAN(MADA)
)
--CAU 2:
ALTER TABLE NHANVIEN
ADD CONSTRAINT CHECK_NS CHECK(NGAYSINH<GETDATE())
--CAU 3:
ALTER TABLE NHANVIEN
ADD STT INT IDENTITY(1,1)
--CAU 4:
ALTER TABLE DUAN
ADD SONGAYLAM INT DEFAULT 30
--CAU 5:
ALTER TABLE NHANVIEN
ADD GIOITINH CHAR(5) CHECK(GIOITINH IN ('NAM','NU'))
--CAU 6:
SELECT NV.MANV,NV.HOTEN,NVDA.MADA FROM NHANVIEN NV INNER JOIN NHANVIEN_DUAN NVDA ON NV.MANV=NVDA.MADA
--CAU 7:
SELECT NV.MANV,NV.HOTEN,NVDA.MADA FROM NHANVIEN NV LEFT JOIN NHANVIEN_DUAN NVDA ON NV.MANV=NVDA.MADA
-- DIEM KHAC NHAU LA NHUNG NHAN VIEN CHUA THAM GIA DU AN NAO VAN CO TRONG BANG VA GIA TRI MA DU AN = NULL
--CAU 8 :
SELECT * FROM NHANVIEN
WHERE MANV NOT IN (SELECT MANV FROM NGUOITHAN)
--CAU 9:
SELECT * FROM NHANVIEN
WHERE MANV IN (SELECT MANV FROM NGUOITHAN) AND MANV IN (SELECT MANV FROM NHANVIEN_DUAN)
--CAU 10 :
SELECT * FROM NHANVIEN
WHERE MANV IN (SELECT MANV FROM NGUOITHAN) OR MANV IN (SELECT MANV FROM NHANVIEN_DUAN)
--CAU 11:
SELECT MAP, COUNT(MANV) AS SOLUONGNV FROM  NHANVIEN
GROUP BY MAP 
HAVING COUNT(MANV)>=ALL(SELECT COUNT(MANV) FROM NHANVIEN GROUP BY MAP)
--CAU 12:
SELECT MANV,COUNT(MADA) AS SODUAN FROM NHANVIEN_DUAN
GROUP BY MANV
HAVING COUNT(MADA)>=ALL(SELECT COUNT(MADA) FROM NHANVIEN_DUAN GROUP BY MANV) 
--CAU 13:
GO

DECLARE @MAP CHAR(10)
SELECT @MAP=MAP FROM PHONG WHERE TENP='HANH CHINH'

SELECT NT.MANV,NT.HOTENNT FROM NHANVIEN NV INNER JOIN NGUOITHAN NT ON NV.MANV=NT.MANV
WHERE NV.MANV IN (SELECT MANV FROM NHANVIEN WHERE MAP=@MAP)

GO
--CAU 14:
SELECT MANV,HOTEN INTO TEMPNHANVIEN FROM NHANVIEN
--CAU 15:
SELECT TOP 5 * FROM NHANVIEN
--CAU 16 :
GO
DECLARE CURSOR_NV CURSOR 
DYNAMIC FORWARD_ONLY
FOR SELECT MANV,HOTEN FROM NHANVIEN
OPEN CURSOR_NV

DECLARE @MANV INT,@HOTEN NVARCHAR(100)
FETCH NEXT FROM CURSOR_NV INTO @MANV,@HOTEN
WHILE(@@FETCH_STATUS=0)
BEGIN 
    PRINT CAST(@MANV AS CHAR(10)) + ' '+@HOTEN
    FETCH NEXT FROM CURSOR_NV INTO @MANV,@HOTEN
END
CLOSE CURSOR_NV
DEALLOCATE CURSOR_NV

--CAU 17:

GO
DECLARE CURSOR_NV CURSOR 
STATIC SCROLL
FOR SELECT MANV,HOTEN FROM NHANVIEN
OPEN CURSOR_NV
DECLARE @MANV INT,@HOTEN NVARCHAR(100),@SOBANGHI INT
SELECT @SOBANGHI = COUNT(MANV)-3 FROM NHANVIEN
FETCH ABSOLUTE @SOBANGHI  FROM CURSOR_NV INTO @MANV,@HOTEN
WHILE(@@FETCH_STATUS=0)
BEGIN
    FETCH NEXT FROM CURSOR_NV INTO @MANV,@HOTEN
    PRINT CAST(@MANV AS CHAR(10)) + ' '+@HOTEN
END
CLOSE CURSOR_NV
DEALLOCATE CURSOR_NV