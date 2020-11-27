USE [quanlykho]
GO
INSERT into khachhang values ('MKH2','Tran Van Oc Cho ', 'Bac Ninh','01324')
insert into khachhang values ('MKH3','Nguyen Suc Vat ', 'Bac Giang','01324')
insert into khachhang values ('MKH7','Truong Van Luyen', 'Bac Ninh','01324')
insert into khachhang values ('MKH8','Le Van Nam ', 'HA Noi','01324')
insert into khachhang values ('MKH9','Dam Trong Tung ', 'Thanh Hoa','01324')
------------------------------------------------------------------

insert into nhacungcap values ('NCC12','Cty B ', 'Hung yen','01324')
insert into nhacungcap values ('NCC13','Cty H ', 'Hung yen','01324')
insert into nhacungcap values ('NCC14','Cty A ', 'Hung yen','01324')
------------------------------------------------
insert into kho values ('MK1','Kho A ','01324', 'Hung yen')
insert into kho values ('MK2','Kho B ','01324', 'Hung yen')
insert into kho values ('MK3','Kho C ','01324', 'Hung yen')
-------------------------------
insert into phieunhap1 values ('MPN8','2020/27/11 ','NCC1', 'MK1')
insert into phieunhap1 values ('MPN9','2020/27/11 ','NCC2', 'MK2')
insert into phieunhap1 values ('MPN10','2020/26/11 ','NCC3', 'MK2')


----------------------------------
insert into hanghoa values ('H9','Cam','Thung')
insert into hanghoa values ('H10','Quyt','Thung')
insert into hanghoa values ('H11','Mit','Thung')

----------------------------------------

insert into chitietphieunhap values ('MPN8','H2','MK2','20','250000')
insert into chitietphieunhap values ('MPN9','H3','MK3','20','250000')
insert into chitietphieunhap values ('MPN10','H1','MK1','10','20000')

-------------------------------------------------------

insert into phieuxuat values('MPX8','2017/7/12','MK2','MKH3')
insert into phieuxuat values('MPX9','2017/6/5','MK3','MKH5')
insert into phieuxuat values('MPX10','2017/5/21','MK1','MKH7')
---------------------------------

insert into CTphieuxuat values ('MPX8','H6','MK2','5','10000')
insert into CTphieuxuat values ('MPX9','H7','MK3','5','10000')
insert into CTphieuxuat values ('MPX10','H5','MK1','5','10000')
