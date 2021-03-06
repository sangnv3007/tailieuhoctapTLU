--TẠO CƠ SỞ DỮ LIỆU
CREATE DATABASE QUANLYTHUVIEN
--TẠO BẢNG LOẠI SÁCH
CREATE TABLE LOAISACH
(
    MAL NVARCHAR(10) NOT NULL PRIMARY KEY,
    TENL NVARCHAR(50) NOT NULL   
)
--TẠO BẢNG SÁCH
CREATE TABLE SACH
(
    ID INT NOT NULL PRIMARY KEY,
    MAS NVARCHAR(10) NOT NULL,
    TENS NVARCHAR(100),
    MAL NVARCHAR(10) NOT NULL,
    NXB NVARCHAR(50),
    NAMXB NCHAR(4),
    SOLUONG INT,
    GIABIA FLOAT
    CONSTRAINT FK_MAL_S FOREIGN KEY(MAL) REFERENCES LOAISACH(MAL)
)
--TẠO BẢNG NHÂN VIÊN
CREATE TABLE NHANVIEN
(
    ID INT NOT NULL PRIMARY KEY,
    MANV NVARCHAR(10) NOT NULL,
    TENNV NVARCHAR(50) NOT NULL,
    SDT NVARCHAR(15),
    PASSNV NVARCHAR(50),
    DIACHI NVARCHAR(50),
    QUYEN NVARCHAR(50)
)
--TẠO BẢNG ĐỘC GIẢ
CREATE TABLE DOCGIA
(
    ID INT NOT NULL PRIMARY KEY,
    MADG NVARCHAR(10) NOT NULL,
    TENDG NVARCHAR(50) NOT NULL,
    GIOITINH BIT,--NAM LÀ 1 NỮ LÀ 0
    NGAYSINH DATE,
    KHOA NVARCHAR(50),
    DIACHI NVARCHAR(MAX),
    DONGPHI BIT,--1 LÀ ĐÃ ĐÓNG PHÍ 0 LÀ CHƯA ĐÓNG PHÍ
    GHICHU NVARCHAR(MAX)
)
--TẠO BẢNG HÓA ĐƠN MƯỢN SÁCH
CREATE TABLE HDMUON
(
    SOHDMUON INT NOT NULL PRIMARY KEY,
    ID_DG INT NOT NULL,
    ID_NV INT NOT NULL,
    NGAYM DATE,
    NGAYHENT DATE,
    SOLUONG INT,
    GHICHU NVARCHAR(MAX),
    CONSTRAINT FK_IDDG_HDMUON FOREIGN KEY(ID_DG) REFERENCES DOCGIA(ID),
    CONSTRAINT FK_IDNV_HDMUON FOREIGN KEY(ID_NV) REFERENCES NHANVIEN(ID)
)
--TẠO BẢNG CHI TIẾT HÓA ĐƠN MƯỢN
CREATE TABLE CHITIETHDMUON
(
    ID_S INT NOT NULL,
    SOHDMUON INT NOT NULL,
    PRIMARY KEY(ID_S,SOHDMUON),
    CONSTRAINT FK_IDS_CHITETHDMUON FOREIGN KEY(ID_S) REFERENCES SACH(ID),
    CONSTRAINT FK_SOHDMUON_CHITIETHDMUON FOREIGN KEY(SOHDMUON) REFERENCES HDMUON(SOHDMUON)
)
--TẠO BẢNG TRẢ SÁCH
CREATE TABLE TRA
(
    ID_S INT NOT NULL,
    SOHDMUON INT NOT NULL,
    ID_NV INT NOT NULL,
    NGAYT DATE,
    GHICHU NVARCHAR(MAX),
    CONSTRAINT FK_IDNV_TRA FOREIGN KEY(ID_NV) REFERENCES NHANVIEN(ID),
    CONSTRAINT FK_IDS_TRA FOREIGN KEY(ID_S) REFERENCES SACH(ID),
    CONSTRAINT FK_SOHDMUON_TRA FOREIGN KEY(SOHDMUON) REFERENCES HDMUON(SOHDMUON)
)
--THÊM DỮ LIỆU VÀO BẢNG LOẠI SÁCH
INSERT LOAISACH
VALUES('ML1',N'TOÁN CAO CẤP'),('ML2',N'VẬT LÝ ĐẠI CƯƠNG'),('ML3',N'CHÍNH TRỊ - ĐẢNG'),('ML4',N'HÓA ĐẠI CƯƠNG'),('ML5',N'NGÔN NGỮ LẬP TRÌNH'),('ML6',N'KHOA HỌC MÁY TÍNH')
--THÊM DỮ LIỆU VÀO BẢNG SÁCH
INSERT SACH
VALUES(100,'MS1',N'GIẢI TÍCH HÀM MỘT BIẾN','ML1',N'ĐẠI HỌC THỦY LỢI','2012',1000,123000),(101,'MS2',N'GIẢI TÍCH HÀM NHIỀU BIẾN','ML1',N'ĐẠI HỌC THỦY LỢI','2015',2000,145000),(102,'MS13',N'MẠNG MÁY TÍNH','ML6',N'ĐẠI HỌC THỦY LỢI','2012',1000,123000),
(103,'MS3',N'PHƯƠNG TRÌNH VI PHÂN','ML1',N'ĐẠI HỌC KHOA HỌC TỰ NHIÊN','2011',1500,199000),(104,'MS4',N'XÁC SUẤT THỐNG KÊ','ML1',N'ĐẠI HỌC KHOA HỌC TỰ NHIÊN','2012',1000,232000),
(105,'MS5',N'NGUYÊN LÝ CỦA CHỦ NGHĨA MÁC_LÊNIN 1','ML3',N'ĐẠI HỌC KINH TẾ','2017',1324,113000),(106,'MS6',N'NGUYÊN LÝ CỦA CHỦ NGHĨA MÁC_LÊNIN','ML1',N'ĐẠI HỌC KINH TẾ','2009',1000,190000),
(106,'MS7',N'VẬT LÝ 1','ML2',N'ĐẠI HỌC BÁCH KHOA','2011',900,223000),(107,'MS8',N'VẬT LÝ 2','ML2',N'ĐẠI HỌC BÁCH KHOA','2012',999,200000),(108,'MS9',N'HÓA 1','ML4',N'ĐẠI HỌC THỦY LỢI','2010',1000,122000),
(109,'MS10',N'LẬP TRÌNH C++','ML5',N'ĐẠI HỌC BÁCH KHOA','2015',1000,124000),(110,'MS11',N'LẬP TRÌNH KHOA HỌC DỮ LIỆU','ML5',N'HỌC VIỆN BƯU CHÍNH VIỄN THÔNG','2011',2000,200000),
(111,'MS12',N'LẬP TRÌNH NÂNG CAO','ML5',N'ĐẠI HỌC BÁCH KHOA','2014',2000,193000)
--THÊM DỮ LIỆU VÀO BẢNG NHÂN VIEN
INSERT NHANVIEN
VALUES(1,'ADMIN','ADMIN','ADMIN','ADMIN','ADMIN','ADMIN','QT'),(2,'NV1',N'NGUYỄN VĂN SANG','0373853448','123456',N'BẮC NINH','NV'),(3,'NV2',N'TÀO PHƯƠNG QUỲNH','0375748755','12345',N'THANH HÓA','NV'),
(4,'NV3',N'TRẦN THU LIỄU','0375754433','LIU123',N'NAM ĐỊNH','NV')
--THÊM DỮ LIỆU VÀO BẢNG ĐỘC GIẢ
INSERT DOCGIA
VALUES(1000,'DG1',N'PHÙNG QUANG HUY',1,'10/25/2000','CNTT',N'HÀ GIANG',1),(1001,'DG2',N'NGUYỄN XUÂN THÀNH',1,'1/25/2000','CNTT',N'LAI CHÂU',1),(1002,'DG3',N'NGÔ QUANG THẮNG',1,'11/15/2000',N'KINH TẾ',N'HÀ NỘI',0),
(1003,'DG4',N'TRẦN QUANG THỊNH',1,'10/1/2000',N'PHẦN MỀM',N'HÀ NỘI',0),(1004,'DG5',N'NGUYỄN TIẾN TÀI',1,'11/1/2001','CNTT',N'HẢI PHÒNG',1),(1005,'DG6',N'TRẦN VĂN HẢI',1,'9/25/2002',N'HỆ THỐNG THÔNG TIN',N'HÀ NỘI',1),
(1006,'DG7',N'NGUYỄN TIẾN TRƯỜNG ',1,'1/5/2000','CNTT',N'BẮC NINH',0),(1007,'DG8',N'VŨ NGỌC BỘI',0,'11/5/2000',N'QUẢN LÝ XÂY DƯNG',N'HÀ NỘI',1),(1008,'DG9',N'NGUYỄN THỊ VÂN ANH',0,'1/15/2001','KINH TẾ',N'BẮC NINH',1)
--THEM DỮ LIỆU VÀO BẢNG HÓA ĐƠN MƯỢN SÁCH
INSERT HDMUON
VALUES(10,1000,1,'9/26/2020','12/26/2020',1,'GHICHU1'),(11,1000,2,'9/26/2020','12/26/2020',1,'GHICHU2'),(12,1001,3,'10/6/2020','10/26/2020',1,'GHICHU3'),(13,1001,1,'9/26/2020','12/26/2020',1,'GHICHU4'),
(14,1002,1,'9/26/2020','10/26/2020',2,'GHICHU5'),(15,1003,1,'9/6/2020','12/26/2020',10,'GHICHU6'),(16,1004,1,'10/2/2020','12/26/2020',2,'GHICHU7'),(17,1005,2,'8/6/2020','12/26/2020',1,'GHICHU8'),
(18,1005,2,'1/6/2020','12/26/2020',1,'GHICHU9'),(19,1006,1,'9/2/2020','12/26/2020',1,'GHICHU10'),(20,1007,4,'10/26/2020','12/26/2020',2,'GHICHU11'),(21,1008,3,'1/26/2020','12/26/2020',2,'GHICHU12'),(22,1008,3,'1/26/2020','12/26/2020',1,'GHICHU12')
--THÊM DỮ LIỆU VAO BẢNG CHI TIẾT HÓA ĐƠN MƯỢN
INSERT CHITIETHDMUON
VALUES(100,10),(101,11),(102,12),(100,13),(103,14),(109,15),(102,16),(111,17),(110,18),(108,19),(109,20),(103,21),(107,22)
--THÊM DỮ LIỆU VÀO BẢNG TRẢ SÁCH
INSERT TRA
VALUES(100,10,2,'10/26/2020','GHICHUT1'),(101,11,2,'10/26/2020','GHICHUT2'),(102,12,2,'12/26/2020','GHICHUT3')
--4.1 THỦ TỤC(PROCEDURE)
--4.1.1 TẠO THỦ TỤC THỐNG KÊ CÁC ĐỘC GIẢ CHƯA ĐÓNG PHÍ MƯỢN SÁCH
GO
CREATE PROCEDURE TT_CHUADP
AS 
BEGIN
SELECT ID,MADG,TENDG,NGAYSINH,KHOA,CASE WHEN GIOITINH=1 THEN N'NAM' WHEN GIOITINH=0 THEN N'NỮ' END AS  GIOITINH,
CASE WHEN DONGPHI=1 THEN N'ĐÃ ĐÓNG PHÍ' WHEN DONGPHI=0 THEN N'CHƯA ĐÓNG PHÍ' END AS DONGPHI,DIACHI,GHICHU
FROM DOCGIA
WHERE DONGPHI=0
END
--CHẠY THỬ 
EXECUTE TT_CHUADP
SELECT * FROM DOCGIA
--4.1.2 TẠO THỦ THỐNG KÊ CÁC SÁCH ĐƯỢC MƯỢN BỞI 1 SV NÀO ĐÓ
GO
CREATE PROCEDURE TK_S @IDDG INT
AS
BEGIN 
SELECT DOCGIA.ID,DOCGIA.MADG,DOCGIA.TENDG,SACH.MAS,SACH.MAL,SACH.TENS,SACH.NXB,SACH.NAMXB,SACH.SOLUONG,SACH.GIABIA FROM HDMUON
INNER JOIN DOCGIA ON HDMUON.ID_DG=DOCGIA.ID
INNER JOIN CHITIETHDMUON ON CHITIETHDMUON.SOHDMUON=HDMUON.SOHDMUON
INNER JOIN SACH ON CHITIETHDMUON.ID_S=SACH.ID
WHERE DOCGIA.ID=@IDDG
END
--CHẠY THỬ THỐNG KÊ SÁCH ĐƯƠC MƯỢN BỞI SV CÓ MÃ LÀ:1001
GO
EXECUTE TK_S 1001
---4.1.3 VIẾT THỦ TỤC IN RA THÔNG TIN TẤT CẢ NHÂN VIÊN VÀ THÊM,SỬA,XÓA 1 NHÂN VIÊN 
--THỦ TỤC IN RA THÔNG TIN TẤT CẢ NHÂN VIÊN
GO
CREATE PROCEDURE PROC_SELECTALL_NV
AS 
BEGIN
SELECT NV.ID,NV.MANV,NV.TENNV,NV.SDT,NV.DIACHI,NV.PASSNV,NV.QUYEN FROM NHANVIEN AS NV
END
--THỦ THỤC THÊM 1 NHÂN VIÊN MỚI VÀO BẢNG NHÂN VIÊN
GO
CREATE PROCEDURE PROC_INSERT_S 
@ID INT,@MANV NVARCHAR(10),@TENNV NVARCHAR(50),@SDT NVARCHAR(15),@PASSNV NVARCHAR(50),
@DIACHI NVARCHAR(50),@QUYEN NVARCHAR(50)
AS BEGIN
INSERT INTO NHANVIEN(ID,MANV,TENNV,SDT,PASSNV,DIACHI,QUYEN)
VALUES(@ID,@MANV,@TENNV,@SDT,@PASSNV,@DIACHI,@QUYEN)
END
EXECUTE PROC_INSERT_NV 5,'NV5',N'NGUYỄN TUẤN MẠNH','0377438333','MANH123',N'HÀ NỘI','NV'
SELECT * FROM NHANVIEN
--THỦ TỤC XÓA 1 NHÂN VIÊN 
GO 
CREATE PROCEDURE PROC_DELETE_NV @ID INT 
AS BEGIN
DELETE FROM NHANVIEN
WHERE ID=@ID
END
GO
DELETE FROM NHANVIEN
SELECT * FROM NHANVIEN
--CHẠY THỬ VOWSI NHÂN VIÊN CÓ ID_NV LÀ 5
EXECUTE PROC_DELETE_NV 5

--THỦ TỤC SỬA(UPDATE) 1 NHÂN VIÊN 
GO
CREATE PROCEDURE PROC_UPADTE_NV 
@ID INT,@MANV NVARCHAR(10),@TENNV NVARCHAR(50),@SDT NVARCHAR(15),@PASSNV NVARCHAR(50),
@DIACHI NVARCHAR(50),@QUYEN NVARCHAR(50)
AS BEGIN
UPDATE NHANVIEN
SET MANV=@MANV,TENNV=@TENNV,SDT=@SDT,PASSNV=@PASSNV,DIACHI=@DIACHI,QUYEN=@QUYEN
WHERE ID=@ID
END
GO 
EXECUTE PROC_UPADTE_NV 5,'NV5',N'NGUYỄN TUẤN MẠNH','011111111','12345',N'HÀ NỘI','NV'
--4.1.4 THỦ TỤC TÌM KIẾM 1 QUYỂN SÁCH NÀO ĐÓ THEO MÃ SÁCH
GO 
CREATE PROCEDURE PROC_TK_SACH @IDS INT
AS
BEGIN
IF(@IDS NOT IN (SELECT ID FROM SACH))
SELECT ID AS N'NO DATA',MAS AS N'NO DATA',MAL AS N'NO DATA',TENS AS N'NO DATA',NXB AS N'NO DATA',NAMXB AS N'NO DATA',SOLUONG AS N'NO DATA',GIABIA AS N'NO DATA' FROM SACH
WHERE @IDS=ID
ELSE
SELECT ID,MAS,MAL,TENS,NXB,NAMXB,SOLUONG,GIABIA FROM SACH
WHERE @IDS =ID
END
GO
--CHẠY THỬ VỚI MÃ SÁCH LÀ 110
EXECUTE PROC_TK_SACH 110
--4.1.5 Thống kê danh sách sinh viên mượn sách trong một ngày bất kì
GO
CREATE PROCEDURE PROC_THONGKE_NGAY(@DATE DATE) 
AS
BEGIN
SELECT HDMUON.SOHDMUON,DOCGIA.MADG,DOCGIA.TENDG,HDMUON.SOLUONG FROM HDMUON,DOCGIA
WHERE HDMUON.ID_DG=DOCGIA.ID AND HDMUON.NGAYM =@DATE
END
GO
SELECT * FROM HDMUON
EXECUTE PROC_THONGKE_NGAY '9/26/2020'
--4.1.6 THỦ TỤC ĐƯA RA DANH SÁCH CÁC ĐỌC GIẢ(SINH VIÊN) KHOA BẤT KÌ MƯỢN MỘT CUỐN SÁCH NÀO ĐÓ(THEO TÊN SÁCH),MẶC ĐỊNH LÀ KHOA CNTT SÁCH MẠNG MÁY TÍNH
GO
CREATE PROCEDURE PROC_DSDG(@TENK NVARCHAR(50)='CNTT',@TENS NVARCHAR(100)=N'MẠNG MÁY TÍNH')
AS 
BEGIN
SELECT DOCGIA.MADG,DOCGIA.TENDG FROM DOCGIA
INNER JOIN HDMUON ON DOCGIA.ID=HDMUON.ID_DG
INNER JOIN CHITIETHDMUON ON HDMUON.SOHDMUON=CHITIETHDMUON.SOHDMUON
INNER JOIN SACH ON CHITIETHDMUON.ID_S=SACH.ID
WHERE SACH.TENS=@TENS AND DOCGIA.KHOA=@TENK
END
EXECUTE PROC_DSDG --N'KINH TẾ',N'GIẢI TÍCH HÀM MỘT BIẾN'
--4.2 HÀM(FUNTION)

--4.2.1 Hàm trả về giá trị tính số lần mượn một quyển sách nào đó của một độc giả (sinh viên) nào đó.
GO
CREATE FUNCTION FUN_SOLUONGSACH(@IDSACH INT,@IDDG INT )
RETURNS INT 
AS 
BEGIN
DECLARE @SL INT
SELECT @SL=(SELECT COUNT(ID_S) FROM CHITIETHDMUON INNER JOIN HDMUON ON CHITIETHDMUON.SOHDMUON=HDMUON.SOHDMUON 
WHERE HDMUON.ID_DG=@IDDG AND CHITIETHDMUON.ID_S=@IDSACH)
RETURN @SL
END
--CHẠY THỬ
GO
SELECT DBO.FUN_SOLUONGSACH(102,1001) 
SELECT * FROM CHITIETHDMUON
--4.2.2. Hàm trả về giá trị tính tổng số sách đang được mượn
GO
CREATE FUNCTION FUN_TONG_MUON()
RETURNS INT
AS BEGIN
DECLARE @TONGMUON INT
SELECT @TONGMUON=(SELECT SUM(SOLUONG) FROM HDMUON)
RETURN @TONGMUON
END
--CHẠY THỬ
GO
SELECT DBO.FUN_TONG_MUON()
SELECT * FROM HDMUON

--4.2.3 Hàm trả về giá trị tính tổng số sách còn lại trong kho
GO
CREATE FUNCTION FUN_TONGKHO()
RETURNS INT
AS BEGIN
DECLARE @TONGKHO INT
SELECT @TONGKHO=(SELECT SUM(SACH.SOLUONG) FROM SACH)-(SELECT DBO.FUN_TONG_MUON())
RETURN @TONGKHO
END
--CHẠY THỬ
GO
SELECT DBO.FUN_TONGKHO()
--4.2.4 Hàm trả về bảng tính số lượng sách theo từng loại sách
GO
CREATE FUNCTION FUN_TONG_LOAISACH()
RETURNS @KQ TABLE(TENL NVARCHAR(50),SOLUONG INT)
AS BEGIN
INSERT INTO @KQ
SELECT MAL,SUM(SACH.SOLUONG) AS SOLUONG FROM SACH
GROUP BY MAL
RETURN 
END
--CHẠY THỬ
GO
SELECT * FROM FUN_TONG_LOAISACH()
--4.3.5 Viết một hàm trả về danh sách Sách của một loại sách bất kỳ. Nếu mã loại không có trong CSDL thì hiển thi tất cả sách theo từng loại.
GO
CREATE FUNCTION FUN_DS_SACH(@MAL NVARCHAR(10))
RETURNS @KQ TABLE(MAS NVARCHAR(10),TENS NVARCHAR(100),MAL NVARCHAR(10))
AS BEGIN
IF(@MAL NOT IN (SELECT DISTINCT MAL FROM SACH))
INSERT INTO @KQ
SELECT MAS,TENS,MAL FROM SACH
ELSE
INSERT INTO @KQ
SELECT MAS,TENS,MAL FROM SACH
WHERE @MAL=MAL
RETURN
END
--CHẠY THỬ
GO
SELECT * FROM DBO.FUN_DS_SACH('ML13')
--4.3.6 Viết một hàm trả về số lượng sách quá hạn 
GO
CREATE FUNCTION FUN_TONGS_QH()
RETURNS INT
AS BEGIN
DECLARE @TONGQH INT
SELECT @TONGQH=SUM(SOLUONG) FROM HDMUON
INNER JOIN TRA ON HDMUON.SOHDMUON=TRA.SOHDMUON
WHERE NGAYHENT<NGAYT
RETURN @TONGQH
END
--CHẠY THỬ
GO
SELECT DBO.FUN_TONGS_QH() 

--4.3 VIEW(KHUNG NHÌN)
--4.3.1 Tạo view liệt kê thông tin các độc giả mượn sách quá hạn
GO
CREATE VIEW TT_DG_QUAHAN1
AS
SELECT DISTINCT DOCGIA.ID,DOCGIA.MADG,DOCGIA.TENDG FROM DOCGIA
INNER JOIN HDMUON ON DOCGIA.ID=HDMUON.ID_DG
INNER JOIN TRA ON HDMUON.SOHDMUON=TRA.SOHDMUON
WHERE NGAYHENT>NGAYT
--CHẠY THỬ
GO
SELECT * FROM TT_DG_QUAHAN1
--4.3.2 Tạo vew chứa thông tin sách đang được mượn bởi DOCGIA(sinh viên)
GO
CREATE VIEW TT_SACH_MUON_SV
AS
SELECT DG.ID,DG.MADG,DG.TENDG,SACH.TENS,SACH.MAL,SACH.NXB,SACH.SOLUONG,SACH.GIABIA FROM DOCGIA AS DG
INNER JOIN HDMUON ON DG.ID=HDMUON.ID_DG
INNER JOIN CHITIETHDMUON ON HDMUON.SOHDMUON=CHITIETHDMUON.SOHDMUON
INNER JOIN SACH ON CHITIETHDMUON.ID_S=SACH.ID
--CHẠY THỬ
GO
SELECT * FROM TT_SACH_MUON_SV
--4.3.3 Tạo view chứa thông tin cơ bản về giao địch mượn của sinh viên.
GO
CREATE VIEW THONGTINS_MUON
AS
SELECT DOCGIA.MADG,DOCGIA.TENDG,NHANVIEN.ID,NHANVIEN.TENNV,HDMUON.NGAYM,HDMUON.NGAYHENT FROM DOCGIA
INNER JOIN HDMUON ON DOCGIA.ID=HDMUON.ID_DG
INNER JOIN NHANVIEN ON HDMUON.ID_NV=NHANVIEN.ID
--CHẠY THỬ
GO
SELECT * FROM THONGTINS_MUON
--4.3.4 Tạo view chứa tất cả thông tin về giao dịch mượn sách
GO 
CREATE VIEW THONGTIN_GDMUON
AS
SELECT HDMUON.SOHDMUON,HDMUON.ID_DG,HDMUON.ID_NV,HDMUON.NGAYM,HDMUON.NGAYHENT,HDMUON.SOLUONG,HDMUON.GHICHU,CHITIETHDMUON.ID_S FROM HDMUON,CHITIETHDMUON
WHERE HDMUON.SOHDMUON=CHITIETHDMUON.SOHDMUON
--CHẠY THỬ
GO
SELECT * FROM THONGTIN_GDMUON
--4.3.5 Tạo view chứa thông tin sách đang được mượn quá hạn
GO 
CREATE VIEW TT_SACH_QH
AS
SELECT SACH.ID,SACH.MAS,SACH.TENS,SACH.MAL FROM SACH INNER JOIN TRA ON SACH.ID=TRA.ID_S
INNER JOIN HDMUON ON TRA.SOHDMUON=HDMUON.SOHDMUON
WHERE NGAYHENT<NGAYT
--CHẠY THỬ
GO
SELECT * FROM TT_SACH_QH
--4.3.6 Tạo thông tin sách chưa từng được mượn
GO
CREATE VIEW TT_SACH_CHUAMUON
AS
SELECT * FROM SACH
WHERE ID NOT IN (SELECT DISTINCT ID_S FROM CHITIETHDMUON) 
--CHẠY THỬ 
GO
SELECT * FROM TT_SACH_CHUAMUON 
--4.3.7 Tạo view chứa thông tin về các sách sắp đến hạn trả
GO
CREATE VIEW TT_SACH_SAPDENHANTRA
AS
SELECT DOCGIA.TENDG,SACH.TENS,DATEDIFF(DD,NGAYHENT,GETDATE()) AS SO_NGAY_MUON_CON_LAI FROM HDMUON
INNER JOIN DOCGIA ON HDMUON.ID_DG=DOCGIA.ID
INNER JOIN CHITIETHDMUON ON HDMUON.SOHDMUON=CHITIETHDMUON.SOHDMUON
INNER JOIN SACH ON CHITIETHDMUON.ID_S=SACH.ID
WHERE DATEDIFF(DD,NGAYHENT,GETDATE())<=7 AND DATEDIFF(DD,NGAYHENT,GETDATE())>=0
GO
SELECT* FROM TT_SACH_SAPDENHANTRA
SELECT * FROM HDMUON
UPDATE HDMUON
SET NGAYHENT='11/1/2020'
WHERE SOLUONG=2
--4.4 TRIGGER
--4.4.1 TRIGGER không cho phép thêm phiếu mượn nếu ngày mượn lớn hơn ngày hiện tại ngược lại chèn 1 bản ghi mới vào bảng HDMuon
GO
CREATE TRIGGER CHECK_DATE
ON HDMUON
FOR INSERT
AS
IF((SELECT NGAYM FROM inserted)>GETDATE())
BEGIN
PRINT(N'VUI LÒNG KIỂN TRA CỘT NGÀY MƯỢN CỦA PHIẾU MƯỢN')
ROLLBACK TRANSACTION
END
--CHẠY THỬ
GO
INSERT HDMUON
VALUES(1000,1000,1,'12/1/2020','12/26/2020',1,'GHICHU100')
DROP TRIGGER CHECK_DATE
--4.4.2 Viết một trigger để đảm bảo rằng khi nhập số lượng sách vào kho phải lớn hơn 0 và giá bìa lớn hơn 500000 VNĐ
GO
CREATE TRIGGER CHECK_SL_SACH
ON SACH
FOR INSERT
AS
IF((SELECT SOLUONG FROM inserted)<=0 OR (SELECT GIABIA FROM inserted)<50000)
BEGIN
PRINT(N'VUI LÒNG KIỂM TRA LẠI SỐ LƯỢNG SÁCH HOẶC GIÁ BÌA SÁCH!!!')
ROLLBACK TRANSACTION
END
--CHẠY THỬ
GO
INSERT SACH
VALUES(131,'MS31',N'SỨC BỀN VẬT LIỆU 2','ML4',N'ĐẠI HỌC THỦY LỢI','2011',10,13000)
--TRIGGER KHÔNG CHO THÊM HD MƯỢN NẾU SL MƯỢN <=0 
GO
CREATE TRIGGER CHECK_SL_HDMUON
ON HDMUON
FOR INSERT
AS
IF((SELECT SOLUONG FROM inserted)<=0)
BEGIN
PRINT(N'VUI LÒNG KIỂM TRA LẠI SỐ LƯỢNG SÁCH MƯỢN !!!')
ROLLBACK TRANSACTION
END
--4.4.3 Viết trigger cập nhật số lượng sách trong kho khi có giao dịch mượn sách
GO
CREATE TRIGGER UPDATE_GD_MUON
ON CHITIETHDMUON
FOR INSERT
AS
BEGIN
DECLARE @SL_MUON INT
SET @SL_MUON=(SELECT SOLUONG FROM HDMUON WHERE SOHDMUON=(SELECT SOHDMUON FROM inserted))
DECLARE @ID_S INT
SET @ID_S=(SELECT ID_S FROM inserted)
UPDATE SACH
SET SOLUONG=SOLUONG-@SL_MUON
WHERE ID=@ID_S
END
--CHẠY THỬ
GO
INSERT CHITIETHDMUON
VALUES(108,20)
INSERT CHITIETHDMUON
VALUES(108,22)
SELECT * FROM SACH
SELECT * FROM CHITIETHDMUON
--Viết trigger khi sửa số lượng trong bảng hdmuon thì kho sách cũng sẽ cập nhật theo
GO
CREATE TRIGGER UPDATE_SACH_EDIT_HDMUON
ON HDMUON
FOR UPDATE
AS
IF(UPDATE(SOLUONG))
BEGIN
DECLARE @ID_S INT
SET @ID_S=(SELECT ID_S FROM CHITIETHDMUON WHERE SOHDMUON=(SELECT SOHDMUON FROM inserted))
DECLARE @SL_MOI INT
SET @SL_MOI=(SELECT SOLUONG FROM inserted )
DECLARE @SL_CU INT
SET @SL_CU =(SELECT SOLUONG FROM deleted)
UPDATE SACH
SET SOLUONG=SOLUONG+@SL_CU-@SL_MOI
WHERE ID=@ID_S
END
--chạy thử
GO
SELECT * FROM CHITIETHDMUON
SELECT * FROM HDMUON
SELECT * FROM SACH
UPDATE HDMUON
set SOLUONG=5
WHERE SOHDMUON=111
GO
EXECUTE sp_helptrigger TRA
--VIẾT 1 TRIGGER không cho lập hóa đơn nếu độc giả đó chưa đóng phí mượn sách
GO
CREATE TRIGGER CHECK_DP_DG
ON HDMUON
FOR INSERT
AS
DECLARE @DP BIT
SET @DP=(SELECT DONGPHI FROM DOCGIA WHERE ID=(SELECT ID_DG FROM inserted))
IF(@DP=0)
BEGIN
PRINT(N'ĐỘC GIẢ NÀY CHƯA ĐÓNG PHÍ. ERROR !!!')
ROLLBACK TRANSACTION
END
--CHẠY THỬ
DROP TRIGGER CHECK_DP_DG
SELECT * FROM DOCGIA
SELECT * FROM HDMUON
INSERT HDMUON
VALUES(199,1003,2,'9/26/2020','12/30/2020',1,'GHICHU199')

--4.4.4 Viết trigger cập nhật số lượng sách trong kho khi có giao dịch trả sách
GO
CREATE TRIGGER UPDATE_GD_TRA
ON TRA
FOR INSERT
AS 
BEGIN
DECLARE @SL_TRA INT
SET @SL_TRA=(SELECT SOLUONG FROM HDMUON WHERE SOHDMUON=(SELECT SOHDMUON FROM inserted))
DECLARE @ID_S INT
SET @ID_S=(SELECT ID_S FROM inserted)
UPDATE SACH
SET SOLUONG=SOLUONG+@SL_TRA
WHERE ID=@ID_S
END
--CHẠY THỬ
INSERT TRA
VALUES(103,14,2,'10/30/2020','GHICHUT4')
SELECT * FROM SACH
SELECT * FROM TRA
--4.4.5 Tạo trigger để kiểm tra dữ liệu nhập vào cột MAL trong bảng SACH phải là dữ liệu đã tồn tại trong cột MAL của bảng LOAISACH
GO
CREATE TRIGGER CHECK_MAL1
ON SACH
FOR INSERT 
AS
IF((SELECT MAL FROM inserted) NOT IN (SELECT MAL FROM LOAISACH))
BEGIN
PRINT(N'MÃ LOẠI KHÔNG TỒN TẠI. VUI LÒNG KIỂM TRA LẠI !!!')
ROLLBACK TRANSACTION
END
GO
INSERT SACH
VALUES(161,'MS60',N'TRÍ TUỆ NHÂN TẠO','ML19',N'ĐẠI HỌC BÁCH KHOA','2012',1000,123000)
--VÔ HIỆU HÓA KHÓA NGOẠI để chạy trigger
ALTER TABLE SACH
NOCHECK CONSTRAINT FK_MAL_S
DROP TRIGGER CHECK_MAL1
SELECT * FROM LOAISACH
--VIẾT 1 CÂU TRUY VẤN CHO BIẾT THÔNG TIN VỀ ĐỘC GIẢ CÓ TUỔI CAO NHẨT
SELECT * FROM DOCGIA
WHERE DATEDIFF(YY,NGAYSINH,GETDATE())>=ALL(SELECT DATEDIFF(YY,NGAYSINH,GETDATE()) FROM DOCGIA)
INSERT DOCGIA
VALUES(1991,'DG1009',N'HUY',1,'10/25/1993','CNTT',N'HÀ GIANG',1,'GHICHU1')