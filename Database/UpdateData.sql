USE [quanlykho]
GO
insert into khachhang values ('MKH2','nguyen van n ', 'Hung yen','01324')
insert into khachhang values ('MKH3','nguyen van b ', 'Bac Giang','01324')
insert into khachhang values ('MKH4','nguyen van Hung ', 'Ha Noi ','01324')
insert into khachhang values ('MKH5','Duong van Luyen ', 'Van Lam','01324')
insert into khachhang values ('MKH6','Ha Manh Hung ', 'Dien Bien','01324')
insert into khachhang values ('MKH7','Le Hong QUang ', 'Bac Ninh','01324')
insert into khachhang values ('MKH8','nguyen Xuan Lam ', 'HA Noi','01324')
insert into khachhang values ('MKH9','LE Van Luyen ', 'Thanh Hoa','01324')
------------------------------------------------------------------
insert into nhacungcap values ('NCC1','Cty A ', 'Hung yen','01324')
insert into nhacungcap values ('NCC2','Cty B ', 'Ha Noi','01324')
insert into nhacungcap values ('NCC3','Cty C ', 'Hung yen','01324')
insert into nhacungcap values ('NCC4','Cty D ', 'Ha Noi','01324')
insert into nhacungcap values ('NCC5','Cty A ', 'Ha Noi','01324')
insert into nhacungcap values ('NCC6','Cty B ', 'Hung yen','01324')
insert into nhacungcap values ('NCC7','Cty AE ', 'Dien Bien','01324')
insert into nhacungcap values ('NCC8','Cty G ', 'Hung yen','01324')
insert into nhacungcap values ('NCC9','Cty B ', 'Hung yen','01324')
insert into nhacungcap values ('NCC10','Cty H ', 'Hung yen','01324')
insert into nhacungcap values ('NCC11','Cty A ', 'Hung yen','01324')
------------------------------------------------
insert into kho values ('MK1','Kho A ','01324', 'Hung yen')
insert into kho values ('MK2','Kho B ','01324', 'Hung yen')
insert into kho values ('MK3','Kho C ','01324', 'Hung yen')
-------------------------------
insert into phieunhap1 values ('MPN1','2017/5/9 ','NCC1', 'MK1')
insert into phieunhap1 values ('MPN2','2017/6/4 ','NCC2', 'MK2')
insert into phieunhap1 values ('MPN3','2017/4/3 ','NCC3', 'MK2')
insert into phieunhap1 values ('MPN4','2017/12/1 ','NCC5', 'MK3')
insert into phieunhap1 values ('MPN5','2017/3/4 ','NCC6', 'MK1')
insert into phieunhap1 values ('MPN6','2017/8/5','NCC4', 'MK2')
insert into phieunhap1 values ('MPN7','2017/5/9 ','NCC1', 'MK1')


----------------------------------
insert into hanghoa values ('H1','Cam','Thung')
insert into hanghoa values ('H2','Quyt','Thung')
insert into hanghoa values ('H3','Mit','Thung')
insert into hanghoa values ('H4','Dua','Thung')
insert into hanghoa values ('H5','Le','Thung')
insert into hanghoa values ('H6','TAo','Thung')
insert into hanghoa values ('H7','Buoi','Thung')

----------------------------------------
insert into chitietphieunhap values ('MPN1','H1','MK1','10','20000')
insert into chitietphieunhap values ('MPN2','H2','MK2','5','2000')
insert into chitietphieunhap values ('MPN3','H3','MK2','15','20000')
insert into chitietphieunhap values ('MPN4','H1','MK3','20','250000')
insert into chitietphieunhap values ('MPN5','H2','MK2','20','250000')
insert into chitietphieunhap values ('MPN6','H3','MK3','20','250000')
insert into chitietphieunhap values ('MPN7','H1','MK1','10','20000')

-------------------------------------------------------
insert into phieuxuat values('MPX1','2017/6/1','MK1','MKH2')
insert into phieuxuat values('MPX2','2017/6/5','MK2','MKH4')
insert into phieuxuat values('MPX3','2017/2/6','MK3','MKH6')
insert into phieuxuat values('MPX4','2017/4/7','MK1','MKH8')
insert into phieuxuat values('MPX5','2017/7/12','MK2','MKH3')
insert into phieuxuat values('MPX6','2017/6/5','MK3','MKH5')
insert into phieuxuat values('MPX7','2017/5/21','MK1','MKH7')
---------------------------------
insert into CTphieuxuat values ('MPX1','H1','MK1','5','10000')
insert into CTphieuxuat values ('MPX2','H3','MK2','5','10000')
insert into CTphieuxuat values ('MPX3','H2','MK3','5','10000')
insert into CTphieuxuat values ('MPX4','H4','MK1','5','10000')
insert into CTphieuxuat values ('MPX5','H6','MK2','5','10000')
insert into CTphieuxuat values ('MPX6','H7','MK3','5','10000')
insert into CTphieuxuat values ('MPX7','H5','MK1','5','10000')


