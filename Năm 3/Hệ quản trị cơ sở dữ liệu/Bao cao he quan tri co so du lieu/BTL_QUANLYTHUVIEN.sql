﻿--TẠO CƠ SỞ DỮ LIỆU
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
--TẠO BẢNG TRẢ SÁCH
CREATE TABLE TRA
(
    ID_NV INT NOT NULL,
    NGAYT DATE,
    ID_S INT NOT NULL,
    GHICHU NVARCHAR(MAX),
    CONSTRAINT FK_IDNV_TRA FOREIGN KEY(ID_NV) REFERENCES NHANVIEN(ID),
    CONSTRAINT FK_IDS_TRA FOREIGN KEY(ID_s) REFERENCES SACH(ID)
)
--TẠO BẢNG HÓA ĐƠN MƯỢN SÁCH
CREATE TABLE HDMUON
(
    SOHDMUON INT NOT NULL PRIMARY KEY,
    ID_DG INT NOT NULL,
    ID_NV INT NOT NULL,
    NGAYM DATE,
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
--THÊM DỮ LIỆU VÀO BẢNG LOẠI SÁCH
INSERT LOAISACH
VALUES('ML1',N'TOÁN CAO CẤP'),('ML2',N'VẬT LÝ ĐẠI CƯƠNG'),('ML3',N'CHÍNH TRỊ - ĐẢNG'),('ML4',N'HÓA ĐẠI CƯƠNG'),('ML5',N'NGÔN NGỮ LẬP TRÌNH'),('ML6',N'KHOA HỌC MÁY TÍNH')
--THÊM DỮ LIỆU VÀO BẢNG SÁCH
INSERT SACH
VALUES(100,'MS1',N'GIẢI TÍCH HÀM MỘT BIẾN','ML1',N'ĐẠI HỌC THỦY LỢI','2012',1000,123000),(101,'MS2',N'GIẢI TÍCH HÀM NHIỀU BIẾN','ML1',N'ĐẠI HỌC THỦY LỢI','2015',2000,145000),(102,'MS13',N'MẠNG MÁY TÍNH','ML6',N'ĐẠI HỌC THỦY LỢI','2012',1000,123000),
(103,'MS3',N'PHƯƠNG TRÌNH VI PHÂN','ML1',N'ĐẠI HỌC KHOA HỌC TỰ NHIÊN','2011',1500,199000),(104,'MS4',N'XÁC SUẤT THỐNG KÊ','ML1',N'ĐẠI HỌC KHOA HỌC TỰ NHIÊN','2012',1000,232000),
(105,'MS5',N'NGUYÊN LÝ CỦA CHỦ NGHĨA MÁC_LÊNIN 1','ML3',N'ĐẠI HỌC KINH TẾ','2017',1324,113000),(106,'MS6',N'NGUYÊN LÝ CỦA CHỦ NGHĨA MÁC_LÊNIN','ML1',N'ĐẠI HỌC KINH TẾ','2009',1000,190000),
(107,'MS7',N'VẬT LÝ 1','ML2',N'ĐẠI HỌC BÁCH KHOA','2011',900,223000),(108,'MS8',N'VẬT LÝ 2','ML2',N'ĐẠI HỌC BÁCH KHOA','2012',999,200000),(109,'MS9',N'HÓA 1','ML4',N'ĐẠI HỌC THỦY LỢI','2010',1000,122000),
(112,'MS10',N'LẬP TRÌNH C++','ML5',N'ĐẠI HỌC BÁCH KHOA','2015',1000,124000),(110,'MS11',N'LẬP TRÌNH KHOA HỌC DỮ LIỆU','ML5',N'HỌC VIỆN BƯU CHÍNH VIỄN THÔNG','2011',2000,200000),
(111,'MS12',N'LẬP TRÌNH NÂNG CAO','ML5',N'ĐẠI HỌC BÁCH KHOA','2014',2000,193000)
--THÊM DỮ LIỆU VÀO BẢNG NHÂN VIEN
INSERT NHANVIEN
VALUES(1,'ADMIN','ADMIN','ADMIN','ADMIN','ADMIN','QT'),(2,'NV1',N'NGUYỄN VĂN SANG','0373853448','123456',N'BẮC NINH','NV'),(3,'NV2',N'TÀO PHƯƠNG QUỲNH','0375748755','12345',N'THANH HÓA','NV'),
(4,'NV3',N'TRẦN THU LIỄU','0375754433','LIU123',N'NAM ĐỊNH','NV')
--THÊM DỮ LIỆU VÀO BẢNG ĐỘC GIẢ
INSERT DOCGIA(ID,MADG,TENDG,GIOITINH,NGAYSINH,KHOA,DIACHI,DONGPHI)
VALUES(1000,'DG1',N'PHÙNG QUANG HUY',1,'10/25/2000','CNTT',N'HÀ GIANG',1),(1001,'DG2',N'NGUYỄN XUÂN THÀNH',1,'1/25/2000','CNTT',N'LAI CHÂU',1),(1002,'DG3',N'NGÔ QUANG THẮNG',1,'11/15/2000',N'KINH TẾ',N'HÀ NỘI',0),
(1003,'DG4',N'TRẦN QUANG THỊNH',1,'10/1/2000',N'PHẦN MỀM',N'HÀ NỘI',0),(1004,'DG5',N'NGUYỄN TIẾN TÀI',1,'11/1/2001','CNTT',N'HẢI PHÒNG',1),(1005,'DG6',N'TRẦN VĂN HẢI',1,'9/25/2002',N'HỆ THỐNG THÔNG TIN',N'HÀ NỘI',1),
(1006,'DG7',N'NGUYỄN TIẾN TRƯỜNG ',1,'1/5/2000','CNTT',N'BẮC NINH',0),(1007,'DG7',N'VŨ NGỌC BỘI',0,'11/5/2000',N'QUẢN LÝ XÂY DƯNG',N'HÀ NỘI',1),(1008,'DG8',N'NGUYỄN THỊ VÂN ANH',0,'1/15/2001','KINH TẾ',N'BẮC NINH',1)
--THEM DỮ LIỆU VÀO BẢNG HÓA ĐƠN MƯỢN SÁCH
INSERT HDMUON
VALUES(10,1000,1,'9/26/2020',1,'GHICHU1'),(11,1000,2,'9/26/2020',1,'GHICHU2'),(12,1001,3,'10/6/2020',1,'GHICHU3'),(13,1001,1,'9/26/2020',1,'GHICHU4'),
(14,1002,1,'9/26/2020',2,'GHICHU5'),(15,1003,1,'9/6/2020',10,'GHICHU6'),(16,1004,1,'10/2/2020',2,'GHICHU7'),(17,1005,2,'8/6/2020',1,'GHICHU8'),
(18,1005,2,'1/6/2020',1,'GHICHU9'),(19,1006,1,'9/2/2020',1,'GHICHU10'),(20,1007,4,'10/26/2020',2,'GHICHU11'),(21,1008,3,'1/26/2020',2,'GHICHU12'),(22,1008,3,'1/26/2020',1,'GHICHU12')
--THÊM DỮ LIỆU VAO BẢNG CHI TIẾT HÓA ĐƠN MƯỢN
INSERT CHITIETHDMUON
VALUES(100,10),(101,11),(102,12),(100,13),(103,14),(109,15),(102,16),(111,17),(110,18),(108,19),(109,20),(103,21),(107,22)
--

