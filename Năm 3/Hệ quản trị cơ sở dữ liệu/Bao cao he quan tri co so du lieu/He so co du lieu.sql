/*BÀI 3.2 
*/ 

--1. 
select  DiaChi
from Khach;

--2.
 select TenH,Slton
 from Hang;

 --3.
  select *
  from Hang
  where Slton>5;

  --4.
  select *
  from Khach
  where DiaChi like'Ha Noi';

  --5.
  select TenK
  from Khach,HoaDon
  where NgayHD like '1/1/2011';

  --6. 
  select MaH, TenH, DonG
  from Hang,ChiTietHD
  where DonG>200000;

  --7. 
  select TenK
  from Khach,HoaDon
  where DiaChi like 'Hai Phong' and NgayHD= '2/2/2013';

  --9. 
  select MaH
  from Hang, ChiTietHD
  where SlBan=0;
  --hoặc:
  select *
  from Hang
  where Hang.MaH not in(select ChiTietHD.MaH from ChiTietHD);

  --10. 
  select MaK
  from Khach
  where MaK not in(select * from HoaDon where NgayHD=' 12/12/2012');


  /* MỘT SỐ CÂU LỆNH TRÊN LỚP
  */
  
  --Tạo  bảng
  create table Hang
(
MaH char(5) not null primary key,
TenH varchar(20) ,
Slton int,
)

--Xoa bang
Drop table Hang;

--Bo xung 1 gia tri
insert Into Hang
value ('Tom');

--Tao 1 bang moi tu mot bang
select MaH, TenH, Slton
into Moi
from Hang
where TenH like 'Hoa Qua';

--Sua noi dung
update Hang
set Slton=Slton/2;

--Xoa bo
delete from Hang
where TenH like' Tom';

--Xap xep tang
select MaH,TenH, Slton
from Hang
order by Slton;

--( Các thao tác hàm dữ liệu)
--Cho biết số lượng tồn lớn nhất và nhỏ nhất của các mật hàng
select Max(Slton), Min(slton)
from Hang;

-- Đưa ra số lượng lớn nhất của một mặt hàng trong mỗi đơn hàng
select SoHD, Max( Slban) as SL_Max
from ChiTietHD
group by SoHD;


-- Đưa ra tổng số lượng hàng của mỗi hóa đơn bán
select SoHD , sum(Slban) as s_l_ban
from ChitietHD
group by SoHD;

--( Kết nối tự nhiên).
--Cho biết tên các khách hàng mua hàng trong năm 2011.
 select KH.TenK
from Khach KH, HoaDon HD
where ( KH.MaK= HD.MaK) and (year( NgayHD)=2011);
select Khach.*, HoaDon.*
from Khach left outer Join HoaDon on Khach.MaK= HoaDon.MaK;
 
 --Cho biết các thông tin về khách hàng và các đơn mua hàng của họ nếu có
--( Truy vấn lồng nhau)
select * 
from Hang
where Slton=(select Max(Slton) from Hang);
--Hoặc: where >(select Min(Slton) from Hang); or thay bởi dấu !=

--Đưa ra các mặt hàng k phải là mặt hàng có số lượng tồn nhỏ nhất
select *
from Hang
where Slton not in( select Min(Slton) from Hang);

-- Đưa ra các mặt hàng chưa từng được bán
select *
from Hang
where Hang.MaH not in(select Hang.MaH from ChiTietHD);

-- Đưa ra các khách hàng chưa từng mua hàng trong năm 2015
select *
from Khach
where Khach.MaK not in (select MaK from HoaDon where (YEAR(NgayHD)=2015));

-- Đưa ra tên khách mua hàng trong năm 2015
select *
from Khach
where MaK in (select MaK from HoaDon where (YEAR(NgayHD)=2015));
--Cách 2:
select *
from Khach, HoaDon
where (YEAR(NgayHD)=2015);

-- Liệt kê các mặt hàng không phải là mặt hàng có tồn kho lớn nhất.
select *
from Hang
where Slton< (select Slton from Hang);

-- Cho biết 5 mặt hàng có tồn kho lớn nhất( Truy vấn lồng nhau tương quan ).
select *
from Hang H
where ( select count(*) from Hang where Slton> H.Slton)<5;

--cho biết các khách hàng ở hà nội mua hàng trong tháng 1/2011
select *
from Khach 
where DiaChi like 'Ha Noi' and 
Khach.MaK in( select HoaDon.MaK from HoaDon where (month(NgayHD)=1) and(NgayHD)=2011);

-- Liệt kê các mặt hàng k phải là mặt hàng có tồn kho lớn nhất 
select *
from Hang
where Slton<some(select Slton from Hang);


/* PHẦN 1: NGÔN NGỮ SQL.
--Bài 1:
*/

--6. Đưa ra tất cả thông tin của nhân viên.
select *
from NHANVIEN;

--7. Đưa ra Họ tên, Công việc, Lương của tất cả các nhân viên
select HoTen,Congviec, Luong
from NHANVIEN;

--8. Đưa ra toàn bộ công việc của các nhân viên, các giá trị k trùng nhau.
select distinct Congviec
from NHANVIEN;

--9. Đưa ra họ tên, LuongQuy của tất cả các nhân viên.
select HoTen,Luong*3 as Luongquy
from NHANVIEN;

--10. Đưa ra HoTen, Luong sắp xếp theo thứ tự tăng dần.
select Hoten, Luong
from NHANVIEN
order by Luong;

--11. Đưa ra HoTen, Luong của nhân viên có lương >300
select HoTen, Luong
from NHANVIEN 
where Luong>300;

--12. Đưa ra Hoten, Luong của các nhân viên có Luong>300 và làm công việc là Giáo viên.
select HoTen, Luong
from  NHANVIEN
where (Luong>300) and (Congviec like' Giao vien');

--13. Đưa ra những nhân viên có lương hoặc 200, 300, 600. 
select *
from NHANVIEN 
where (Luong =600);

--14.Đưa ra những nhân viên có Lương trong khoảng 300 đến 600.
select *
from NHANVIEN
where(Luong between 300 and 600);

--15.Đưa ra Hoten, Congviec của các nhân viên có Họ tên bắt đầu bằng chữ ‘Hoàng’
select HoTen, CongViec
from NHANVIEN
where HoTen like 'Hoang';

--16. .Đưa ra lương trung bình, lương lớn nhất, nhỏ nhất của tất cả các nhân viên trong bảng NHANVIEN.
 select AVG(Luong), Max(Luong), Min(Luong)
 from NHANVIEN;
  
 --17. Đưa ra Côngviệc, Lương trung bình của từng loại công việc.
 select Congviec, AVG(luong) as Luongtb
 from NHANVIEN
 group by  Congviec;

 -- 18. Đưa ra Côngviệc, Lương trung bình của tất cả các nhân viên có Luong>200 theo từng loại công việc.
 select CongViec, AVG(Luong)
 from NHANVIEN
 group by CongViec
 having count(Luong)>200;

 /*19..Đưa ra tổng lương của từng nhóm công việc trong từng đơn vị.
 Select madonvi, congviec, sum(luong) from nhan vien nv group by congviec, madonvi
 */
 select MaDV,CongViec,Sum(Luong) as TongL
 from NHANVIEN
 group by Congviec, MaDV;

 --20.Đưa ra những Congviec và trung bình lương của các công việc có trung bình lương>=300
 select CongViec, AVG(Luong)
 from NHANVIEN
 group by Congviec
 having (AVG(luong)>=300);

 --21. Đưa ra những đơn vị và lương lớn nhất của các đơn vị có lương lớn nhất >=300
 select MaDV,Max(Luong)
 from NHANVIEN
 group by MaDV
 having Max(Luong)>=300;

 --22. Đưa ra Hoten, Congviec, TenDV của tất cả nhân viên.
select HoTen, CongViec,TenDV
from NHANVIEN, DONVI;
where NHANVIEN.MaDV=DONVI.MaNV;

--23. Câu lệnh sau cho kết quả như thế nào.
SELECT HoTen, CongViec, TenDV
FROM NHANVIEN NV, DONVI DV
WHERE NV.MaDV= DV.MaDV;
--( Kết nối tự nhiên: Chương tỉnh in ra TenNV, CongViec và TenDV).

--24. .Đưa ra HoTen, Congviec, TenDV, Luong của những nhân viên có Luong>=500.
select HoTen,CongViec, TenDV, Luong
from NHANVIEN, DONVI
where (NHANVIEN.MaDV=DONVI.MaNV) and (Luong>=500);

--25. Câu lệnh sau cho kết quả như thế nào.
SELECT NV.MaNV, NV.Hoten, PT.MaNV, PT.Hoten
FROM NHANVIEN NV, NHANVIEN PT
WHERE (NV.MaNV=PT.MaPT) AND (NV.Luong>PT.Luong);
--(Kết nối tự nhiên: Inra MaNV, HoTen)

--27. .Đưa ra những công việc trong đơn vị 1 có MaDV là 0001 và đơn vị 2 có MaDV là 0002
select CongViec
from NHANVIEN, DONVI
where MaDV=0001 and MaDV=0002;

--28..Đưa ra Hoten, TenDV, Congviec, Luong của những người có lương lớn hơn lương trung bình của toàn bộ nhân viên.
select HoTen, TenDV,CongViec, Luong
from NHANVIEN nv, DONVI dv
where (nv.MaDV=dv.MaDV) and(Luong>(select avg(Luong) from NHANVIEN));

--29. Đưa ra những nhân viên có lương lớn hơn người có lương lớn nhất trong đơn vị có tên là DHTL.
--Select hoten from nhanvien where (luong > select max(luong) from nhanvien, donvi
--where (nhanvien.madv=donvi.madonvi) and (donvi,tendonvi=’DHTL))
select HoTen
from NHANVIEN
where(Luong>(select Max(Luong) from NHANVIEN nv, DONVI dv where (nv.MaDV=dv.MaNV) and(  dv.TenDV like 'DHTL'));

--30. Đưa ra Hoten, MaDV, Luong của các nhân viên có Luong=Luong thấp nhất trong đơn vị của họ.
select HoTen, MADV, Luong
from NHANVIEN
where (MaDV, Luong) in (select MaDV,Min(Luong)
                         from NHANVIEN
						 group by MaDV );

--31..Đưa ra Hoten, MaDV, Luong của các nhân viên có Luong=Luong thấp nhất trong một đơn vị nào đó.
select NHANVIEN.HoTen,NHANVIEN.MaDV,NHANVIE.Luong
from NHANVIEN
whereNHANVIEN.Luong in(select Min(NHANVIEN.Luong) 
                       from NHANVIEN
					   group by NHANVIEN.MaNV);

--32. .Đưa ra Hoten,Luong của các nhân viên có Luong lớn nhất của đơn vị có mã đơn vị là 0002.
select HoTen, Luong 
from NHANVIEN
where Luong = (select Max(Luong) from NHANVIEN, DONVI where MaDV like '0002');

--33. .Đưa ra MaDV, AVG(Luong) của đơn vị có trung bình lương lớn hơn lương nhỏ nhấ của đơn vị có mã đơn vị là 0003.
select MaDV,AVG(Luong)
from NHANVIEN
group by NHANVIEN.MaDV
having AVG(Luong)>(select Min(Luong) NHANVIEN where MaDV like '0003');


/*
Bai 2 _PHAN 1
*/
/* BAI2_ PHAN1
*/
-- I.   2. Sua doi cau truc
--1.
alter table KHACH
add SoThich varchar(30);

--
alter table HANG
add NoiCungCap varchar(30); 
alter table HANG
add NoiSanXuat varchar(30);

--2.
alter table KHACH
alter column SoThich nvarchar(30);
--
alter table HANG
alter column NoiCungCap int;

--3. 
alter table HANG
drop column NoiCungCap;

alter table KHACH
drop column SoThich;
--II.
--2
insert into KHACH
values ('K004','Trinh Hong Cuong','Dai Hoc Thuy Loi');

--3.

Delete from HANG
where Ma_hang like' H001';

delete from  KHACH
where Diachi_kh like' Dai Hoc Thuy loi';

--4. 
update KHACH
set Diachi_kh= 'Dai hoc quoc Gia'
where Ma_khach like' K002';

--III
--9. 
select So_phieu, Ma_hang, Don_gia, So_luonggi,(Don_gia*So_luonggi)
from DONGPHIEU;
--10

select So_phieu, Ma_hang, Don_gia,So_luonggi, (Don_gia*So_luonggi)
from DONGPHIEU;

--11
select *
from HANG
order  by Ma_hang asc;

--12.
select *
order by To
from PHIEUGng_tien asc;

--13. 
select *
from KHACH
where Diachi_kh like' Dai Hoc Quoc Gia';
--14.
select So_phieu, Mak
from PHIEUGIAO
where Tong_tien >=100000
order by Tong_tien Asc ;

--15. 
select Tenh, Mota_h 
from HANG
where Donvi = 'Bong' ;

--16.
select So_phieu, Mak, Ngay_giao
from PHIEUGIAO
where Noi_giao = 'Ha Noi' and Tong_tien > 50000; 

--17.
select Mak, Tenk
from KHACH
where Diachikh in ('Dai hoc Quoc Gia', 'Dai hoc Thuy Loi') ;

--18. 
select Mah
from HANG
where Donvi in ( 'Bong', 'Canh', 'Bo') ; 

--19.
select Mak, Tong_tien 
from PHIEUGIAO
where Noi_giao in ('Ha Noi', 'Ho Chi Minh', 'Hai Phong') ;

--20.
select PHIEUGIAO.*
from PHIEUGIAO
where Tong_tien between 100000 and 500000 ;

--21. 
select Mak, Tenk
from KHACH
where Tenk LIKE 'Nguyen%' ;

--22.
select Mak, count(So_phieu) as So_Lan_Mua
from PHIEUGIAO
where Mak = 'K001' 
group by Mak ;

--23.
select Tong_tien, avg(Tong_tien) as Trung_Binh_PG
from PHIEUGIAO
group by Tong_tien ;

--24. 
select SUM(Tong_tien) 
from PHIEUGIAO
where Mak = 'K002' ;

--25. 
select Mak, count(Mak) as Tong_so_khach
from KHACH
where Diachikh like 'Dai hoc Thuy Loi' 
group by Mak 

--26.
select Mak, Ngay_giao, Noi_giao
from PHIEUGIAO
where Tong_tien in (select MAX(Tong_tien) from PHIEUGIAO ) ;

--27. 
select Mak, Ngay_giao, Noi_giao
from PHIEUGIAO
where Tong_tien = (select MIN(Tong_tien) from PHIEUGIAO ) ;


/* BÀI TẬP CHƯƠNG 4:
*/
-- BAI 4.1
-- 1. Tạo bảng.
create table DIADIEM
(
MaDD char(5) not null primary key,
TenDD varchar(50)
);

create table XE
(
BienS char(5) not null primary key,
KhTD int,
);

create table HUONGDV
(
MaHDV char(10) not null primary key,
HoTenHDV varchar(50),
DiaDiemCD varchar(50),
);
 
 create table CHUYENDI
 (
 MaCD char(5) not null primary key,
 TenCD varchar(30),
 NgayKH date,
 NgayKT date,
 KhDK int
 );

 create table CHITIETCD
 (
 MaCD char(5) not null,
 MaDD varchar(30) not null,
 primary key(MaCD, MaDD),
 foreign key(MaCD) references CHUYENDI(MaCD),
 foreign key(MaDD) references diadiem(MaDD),
 SoNgayLL int,
 );

 create table HUONGDAN
 (
 MaCD char(5) not null,
 MaHDV char(10) not null,
 primary key( MaCD, MaHDV),
 foreign key(MaCD) references chuyendi(MaCD),
 );

 create table KHACH
 (
 MaCD char(5) not null,
 HoTenHK varchar(50) not null,
 primary key( MaCD, HoTenHK),
 Tuoi date,
 DiaChiKH varchar(50),
 DTKH varchar(50),

 );
 create table XEPV
 (
 MaCD char(5) not null,
 BienSo varchar (30) not null,
 primary key (MaCD, BienSo),
 )

 -- 2. Danh cách hướng dẫn viên của công ty
select *
from HUONGDV;

--3.  Thông tin về cá điểm du lịch liên kết với công ty
select *
from DIADIEM;

--4. hông tin về địa điểm mà chuyến đi mã sô CD2000 Đi uqa
select *
from DIADIEM, CHUYENDI
where MaCD like 'CD2000';

--5. Liệt kê lữ khách của chuyến đi CD2000.
select *
from KHACH
where HoTenHK=(select MaCD from CHUYENDI where MaCD like 'CD1999');

-- 6. Số lượng khách hàng của chuyến đis
select KHDK
from CHUYENDI
where MaCD like 'CD1999';

-- 7. Chuyến đi nào có số lượng khách lớn hơn số lượng dữ kiến.
select *
from CHUYENDI
where KhDK >(select KhDK from CHUYENDI );

-- 8. Cho biết tổng số lượng khách của tất cả các chuyến đi co ngày khởi hành trong 12/2001.
select sum(KhDK)
from CHUYENDI
where KhDK=(select * from CHUYENDI where NgayKH like '12/2001');

--9. Số ngày luu lại tb, lon nhat, nho nhat qua các điểm cuarcd CD2000.
select AVG(SoNgayLL),MAX(SoNgayLL), Min(SoNgayLL)
from CHITIETCD
where MaCD like 'CD200';

--10. Số lượng xe phục vụ cho chuyến đi
select  MaCD as soxe, count(*) as BienSo 
from XEPV
group by MaCD
HAVING MaCD like' CD2000';

--11
select *
from DIADIEM,CHITIETCD
where SoNgayLL= (select Max(SoNgayLL) from CHITIETCD 
where MaCD like 'CD2000');

--12.
select *
from DIADIEM, CHITIETCD
where MaCD like 'CD200' and (SoNgayLL>(select AVG(SoNgayLL) from CHITIETCD));

--13. 
select MaCD as dem,count(*) as So_CD
from DIADIEM, CHITIETCD
where MaCD like 'Ba Vi' and (SoNgayLL=(select sum(SoNgayLL) from CHITIETCD));

--14. 
select*
from CHITIETCD, DIADIEM d
where MaCD like' CD2000' and (SoNgayLL= (select MAX( SoNgayLL) from CHITIETCD, DIADIEM where (MaDD >d.MaDD)<3));

--15. 
select*
from CHITIETCD, DIADIEM d
where MaCD like' CD2000' and (SoNgayLL= (select Min( SoNgayLL) from CHITIETCD, DIADIEM where (MaDD >d.MaDD)<3));

--16
select *
from DIADIEM, CHUYENDI
where  MaCD like 'CD' and MaDD not in(select Min(SoNgayLL) from CHITIETCD where MaDD like 'CD2000');

--17
 select MaDD as Tinh, count (*) as SL_DD
 from DIADIEM, CHITIETCD
 group by MaDD
 having NgaKH like'12/2000' and (select MaHDV as Tinh,count(*) as SL_HuongDV from HUONGDAN, XEPV);
 
 --18.
 select *
 from CHUYENDI
 where MaCD=(select Max(BIENSO) from XEPV );

 --19.
 select *
 from CHUYENDI
 Where MaCD not in( select BIENSO from XePV );

 --20.
 select *
 from HUONGDV
 where MaHDV not in(select * from  HUONGDAN);


 /* CHUONG 4- BÀI 4.2

*/
--1.
 select *
from CBVC
order by HT asc;

--2.
select *
from CBVC
where MaCC=(selcet HeSoL from NGACHBACLUONG where HeSoL>3);

--3.
select sum(HeSoL)
from DONVI,NGACHBACLUONG;

--4.
select *
from CBVC
from MaDV=(select TenDV from DONVI where like'a');

--5.
select *
from CBVC
from MaDV= (select Loai from DONVI where like' Hanh Chinh');

--6.
select *
from CBVC
from Ngach like 'Can su' and Bac>=7 or( select HeSoL from NGACHBACLUONG where HeSoL>3.06);

--7. 
select *
from CBVC
where NgayXep like '1998' and NgayXep=(select *
from CBVC where (NgayXep> 3 and Ngach like 'Chuyen Vien'and Ngach like 'Chuyen Vien Chinh' )or NgayXep >2);

--8.
select *
from CBVC
from HeSoL>( select HeSoL from CBVC where Ngach like'Can su');


/*
BAI 4.3
*/
--1.
Select *
from LOP;

--2.
select *
from LOP
where Malop like'TH1';

--3. 
select *
from KHOA
where Makh like 'Cong Nghe Thong Tin';

--4.
select *
from CTHOC
where Malop like'TH1'

--5
select Diem
from DIEMSV, LOP
where Lan like'1' and Mamh like 'CSDL' and Malop like' TH1';

--6
select  AVG(Diem)
from DIEMSV, LOP
where Lan like'1' and Mamh like 'CSDL' and Malop like' TH1';

--7.
select count(MaSV) as SLsinhVien
from LOP
where Malop like' TH2';

--8.
select count(Mamh) as SLMonhoc
from CTHOC
where Malop like'TH1' and like' HK1' and like' HK2';

--9.
select MAX(Diem), top(3)
from DIEMSV 
where Lan like'1' and Mamh like'CSDL';

--10.
select LOP.Malop, count(Masv) as Siso
from LOP ,SINHVIEN
group by LOP.Malop;

--11

select Makh, count(Masv) as SL
from SINHVIEN,KHOA
where SINHVIEN.Makh=KHOA.Masv and KHOA.Makh in (select max(Masv) from SINHVIEN;)
--12.
select Malop, count (Masv) as SL
from LOP, SINHVIEN
where LOP.Masv=SINHVIEN.Malop and Malop=(select max(Masv) from LOP,KHOA where Makh like' CNTT');

--13.
select Mamh
from MONHOC
where  LT like '1' and (select  count (Masv) from SINHVIEN,DIEMSV where Max( Diem)<4);

--14.
select Masv ,max(Diem)
from SINHVIEN,MONHOC
group by Masv
having SINHVIEN.Mamh=MONHOC.Diem;

--15.
select Malop,AVG(Diem)
from LOP,DIEMSV
group by Malop
having LOP.Diem=DIEMSV.Malop and Malop in (select Makh
                                           from KHOA, MONHOC
								            where Makh like 'CNTT' and LT like '1' and Mamh like'CSDL');

--16.
select *
from SINHVIEN,LOP
where SINHVIEN.Malop=LOP.Masv and Malop like 'TH1' and Masv in (select *
                                                                from DIEMSV, CTHOC
														        where all(Diem)>=4 and KH like 'HK2'
														        );
--17. 
select *
from SINHVIEN,LOP
where SINHVIEN.Malop=LOP.Masv and Malop like 'TH2' and Masv in (select *
                                                                from DIEMSV, CTHOC
														        where avg( Diem)>=7 and all(Diem)>=4 and HK like 'HK2'
														        );

--18.
select *
from LOP, CTHOC
where Malop like 'TH1' and HK between 1 and 6 and Masv in (select * from DIEMSV
                                                            where all(Diem)>=4
														   );








