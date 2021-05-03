--TẠO CSDL
CREATE DATABASE QUANLYNHANVIEN
GO
USE QUANLYNHANVIEN
GO
--TẠO BẢNG DON VI
CREATE TABLE DONVI
(
    MaDV NVARCHAR(10) NOT NULL PRIMARY KEY,
    TenDV NVARCHAR(50)
);
--TẠO BẢNG BAC LUONG
CREATE TABLE BACLUONG
(
    MaBac NVARCHAR(10) NOT NULL PRIMARY KEY,
    BacCao NVARCHAR(20),
    BacThap NVARCHAR(20)
);
--TẠO BẢNG NHAN VIEN
CREATE TABLE NHANVIEN
(
    MaNV  NVARCHAR(10) NOT NULL PRIMARY KEY,
    HoTen NVARCHAR(50),
    Congviec NVARCHAR(50), 
    Luong NVARCHAR(30),
    MaDV NVARCHAR(10) NOT NULL,
    MaPT NVARCHAR(10)
    FOREIGN KEY (MADV) REFERENCES DONVI(MADV)
);
INSERT  DONVI
VALUES('0001',N'KHTN'),('0002',N'DHTL'),('0003',N'DHQG')
INSERT  BACLUONG
VALUES('1','400','500'),('2','501 ','600'),('3','601','800')
INSERT  NHANVIEN
VALUES('NV001 ',N'Phạm Thị Nhàn',N'Thư ký ','500 ','0001','MAPT1'),('NV002 ',N'Hoàng Thanh Vân ',N'Giáo viên ','600 ','0001','MAPT2'),('NV003 ',N'nguyễn văn sang',N'kĩ sư ','504 ','0002','MAPT5'),('NV004 ',N'Hoàng a n ',N'Giáo viên ','608 ','0003','MAPT8')
--CÂU 6 Dùng câu lệnh truy vấn dữ liệu, đưa ra tất cả thông tin về nhân viên
SELECT*FROM NHANVIEN
--CÂU 7 Đưa ra Hoten, Congviec, Luong của tất cả các nhân viên
SELECT HoTen,Congviec,Luong FROM nhanvien WHERE Luong>550
-- thêm cột ngày sinh trong bảng nhân viên
ALTER TABLE NHANVIEN
ADD NgaySinh date
-- thay đổi kiểu dữ liệu cột
ALTER TABLE NHANVIEN
ALTER COLUMN MaPT NVARCHAR(20)
--xóa cột ngày sinh
ALTER TABLE NHANVIEN
DROP COLUMN NgaySinh
--UPDATE
UPDATE NHANVIEN
SET Congviec = 'ĐẸP TRAI' WHERE MaNV = 'NV001'
--XÓA BẢNG BẬC LƯƠNG
DROP TABLE DONVI
--lấy ra hai nhân viên có luowng cao nhất
SELECT  * 
FROM nhanvien -- DESC LÀ LẤY CAO NHẤT
ORDER BY MaNV DESC --MẶC ĐỊNH LÀ ASC
--khoagr cách từ giá trị này sang giá trị khác
SELECT * FROM nhanvien
WHERE Luong BETWEEN 500 and 600