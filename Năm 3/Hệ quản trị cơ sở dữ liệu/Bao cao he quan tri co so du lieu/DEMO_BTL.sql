--THỦ TỤC THÊM VÀO BẢNG
CREATE PROCEDURE PRC_LOAISACH_INSERT
@MAL NVARCHAR(10),
@TENS NVARCHAR(10),
@NHAXB NVARCHAR(10),
@NAMXB DATE,
@GIASACH FLOAT
AS 
BEGIN
INSERT INTO LOAISACH
VALUES(@MAL,@TENS,@NHAXB,@NAMXB,@GIASACH)
END
--THỦ TỤC UPDATE BẢNG
GO
CREATE PROCEDURE PRC_LOAISACH_UPDATE
@MAL NVARCHAR(10),
@TENS NVARCHAR(10),
@NHAXB NVARCHAR(10),
@NAMXB DATE,
@GIASACH FLOAT
AS BEGIN
UPDATE LOAISACH
SET TENS=@TENS,NHAXB=@NHAXB,NAMXB=@NAMXB ,GIASACH=@GIASACH
WHERE MAL=@MAL
END
--THỦ TỤC XÓA BẢN GHI TRONG BẢNG LOAISACH
GO
CREATE PROCEDURE PRC_LOAISACH_DELETE
@MAL NVARCHAR(10)
AS BEGIN
DELETE FROM LOAISACH
WHERE MAL=@MAL
END
--THỦ TỤC SELECTALL BẢNG SÁCH
GO
CREATE PROCEDURE PRC_SACH_SELECTALL
AS BEGIN
SELECT S.IDSACH,S.MAL,S.MAS FROM SACH AS S
END
--THỦ TỤC SELECTID TRONG BẢNG SÁCH
GO
CREATE PROCEDURE PRC_SACH_SELECTID
@IDSACH NVARCHAR(10)
AS BEGIN
SELECT S.IDSACH,S.MAL,S.MAS FROM SACH AS S
WHERE IDSACH=@IDSACH
END
--THỦ TỤC THÊM BẢN GHI MỚI TRONG BẢNG SÁCH
GO 
CREATE PROCEDURE PRC_SACH_INSERT
@IDSACH NVARCHAR(10),
@MAL NVARCHAR(10),
@MAS NVARCHAR(10)
AS BEGIN 
INSERT INTO SACH
VALUES(@IDSACH,@MAL,@MAS)
END
--THỦ TỤC UPDATE BẢNG SÁCH
GO
CREATE PROCEDURE PRC_SACH_UPDATE
@IDSACH NVARCHAR(10),
@MAL NVARCHAR(10),
@MAS NVARCHAR(10)
AS BEGIN
UPDATE SACH
SET MAL=@MAL,MAS=@MAS
WHERE IDSACH=@IDSACH
END
--THỦ TỤC XÓA CÁC BẢN GHI TRONG BẢNG SÁCH
GO 
CREATE PROCEDURE PRC_SACH_DELETE
@IDSACH NVARCHAR(10)
AS BEGIN 
DELETE FROM SACH
WHERE IDSACH=@IDSACH
END