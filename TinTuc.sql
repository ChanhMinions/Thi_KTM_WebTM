CREATE DATABASE Gioithieutintuc
USE Gioithieutintuc
CREATE TABLE TinTuc
(
TinID NVARCHAR(50),
NoiDung NVARCHAR(50),
NgayGui Datetime,
TacGiaID NVARCHAR(50),
PRIMARY KEY ( TinID)
)
CREATE TABLE TacGia
(
TacGiaID NVARCHAR(50),
TenTG NVARCHAR(50),
Email NVARCHAR(50),
PRIMARY KEY (TacGiaID)
)
CREATE TABLE ChuDe
(
ChuDeID NVARCHAR(50),
TenCD NVARCHAR(50),
PRIMARY KEY (ChuDeID)
)

INSERT INTO TinTuc VALUES ('T01',N'Quảng Cáo','04/08/2020','TG1');
INSERT INTO TinTuc VALUES ('T02',N'Ẩm Thực','05/08/2020','TG2');
INSERT INTO TinTuc VALUES ('T03',N'Áo Quần','06/08/2020','TG3');
INSERT INTO TinTuc VALUES ('T04',N'Bất Động Sản','07/08/2020','TG4');
INSERT INTO TinTuc VALUES ('T05',N'Kinh Doang','08/08/2020','TG5');
INSERT INTO TinTuc VALUES ('T06',N'Bán Hàng','09/08/2020','TG6');
INSERT INTO TinTuc VALUES ('T07',N'Quảng Cáo','10/08/2020','TG7');
INSERT INTO TinTuc VALUES ('T08',N'Tư Vấn','11/08/2020','TG8');
INSERT INTO TinTuc VALUES ('T09',N'Nhà Đất','12/08/2020','TG9');

INSERT INTO TacGia VALUES ('TG1',N'Nguyên Quốc Long','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG2',N'Nguyên Thị Mỹ Dung','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG3',N'Phan Thị Dung','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG4',N'Nguyên Đạt Minh','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG5',N'Bùi Văn Tiến','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG6',N'Lê Thị Vy','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG7',N'Nguyên Chi Quân','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG8',N'Cao Thị Mỹ Linh','abc@gmail.com')
INSERT INTO TacGia VALUES ('TG9',N'Phan Cư Chánh','abc@gmail.com')

INSERT INTO ChuDe VALUES ('CD1',N'Quảng Cáo')
INSERT INTO ChuDe VALUES ('CD2',N'Ẩm Thực Đường Phố')
INSERT INTO ChuDe VALUES ('CD3',N'Shop Áo Quần')
INSERT INTO ChuDe VALUES ('CD4',N'Kinh Doanh Bất động Sản')
INSERT INTO ChuDe VALUES ('CD5',N'Kinh Doanh các mặt hàng')
INSERT INTO ChuDe VALUES ('CD6',N'Bán Hàng Online')
INSERT INTO ChuDe VALUES ('CD7',N'Quảng Bá')
INSERT INTO ChuDe VALUES ('CD9',N'Tư Vấn Khách Hàng')
INSERT INTO ChuDe VALUES ('CD9',N'Buôn Bán Nhà Đất')


SELECT*
FROM TacGia

SELECT*
FROM TinTuc
Where ChuDe

SELECT*
FROM ChuDe