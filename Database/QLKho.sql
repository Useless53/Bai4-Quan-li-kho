create database [quanlykho]
go
USE [quanlykho]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mahanghoa_Timkiem]
@keyword nvarchar(30)
as
begin
		select hh.ma_hh as[mã hàng hóa],hh.ten_hh as [tên hàng hóa],hh.dvt as[dvt] from hanghoa hh
	where hh.ma_hh LIKE N'%'+@keyword+'%'
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TenHang_Timkiem]
@keyword nvarchar(30)
as
begin
	
		select hh.ma_hh as[mã hàng hóa],hh.ten_hh as [tên hàng hóa],hh.dvt as[dvt] from hanghoa hh
	where hh.ten_hh LIKE N'%'+@keyword+'%'
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[so_pn] [nvarchar](10) NOT NULL,
	[ma_hh] [nvarchar](10) NOT NULL,
	[ma_kho] [nvarchar](10) NULL,
	[soluong] [nchar](10) NULL,
	[dongia] [nchar](10) NULL,
 CONSTRAINT [PK_chitietphieunhap] PRIMARY KEY CLUSTERED 
(
	[so_pn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTphieuxuat](
	[so_px] [nvarchar](10) NOT NULL,
	[ma_hh] [nvarchar](10) NOT NULL,
	[ma_kho] [nvarchar](10) NULL,
	[soluong] [nchar](10) NULL,
	[dongia] [nchar](10) NULL,
 CONSTRAINT [PK_CTphieuxuat_1] PRIMARY KEY CLUSTERED 
(
	[so_px] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hanghoa](
	[ma_hh] [nvarchar](10) NOT NULL,
	[ten_hh] [nvarchar](50) NULL,
	[dvt] [nvarchar](50) NULL,
 CONSTRAINT [PK_hanghoa] PRIMARY KEY CLUSTERED 
(
	[ma_hh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[ma_khach] [nvarchar](10) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[diachi] [nchar](10) NULL,
	[sodienthoai] [nchar](10) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[ma_khach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[ma_kho] [nvarchar](10) NOT NULL,
	[tenkho] [nchar](10) NULL,
	[sdt] [nchar](10) NULL,
	[diachi] [nchar](10) NULL,
 CONSTRAINT [PK_kho] PRIMARY KEY CLUSTERED 
(
	[ma_kho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[ma_ncc] [nvarchar](10) NOT NULL,
	[ten_ncc] [nvarchar](50) NULL,
	[diachi] [nchar](10) NULL,
	[sodienthoai] [nchar](10) NULL,
 CONSTRAINT [PK_nhacungcap] PRIMARY KEY CLUSTERED 
(
	[ma_ncc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap1](
	[so_pn] [nvarchar](10) NOT NULL,
	[ngaynhap] [date] NULL,
	[ma_ncc] [nvarchar](10) NULL,
	[ma_kho] [nvarchar](10) NULL,
 CONSTRAINT [PK_phieunhap1] PRIMARY KEY CLUSTERED 
(
	[so_pn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieuxuat](
	[so_px] [nvarchar](10) NOT NULL,
	[ngayxuat] [date] NULL,
	[ma_kho] [nvarchar](10) NULL,
	[ma_khach] [nvarchar](10) NULL,
 CONSTRAINT [PK_phieuxuat_1] PRIMARY KEY CLUSTERED 
(
	[so_px] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieunhap_hanghoa] FOREIGN KEY([ma_hh])
REFERENCES [dbo].[hanghoa] ([ma_hh])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [FK_chitietphieunhap_hanghoa]
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieunhap_kho] FOREIGN KEY([ma_kho])
REFERENCES [dbo].[kho] ([ma_kho])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [FK_chitietphieunhap_kho]
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieunhap_phieunhap1] FOREIGN KEY([so_pn])
REFERENCES [dbo].[phieunhap1] ([so_pn])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [FK_chitietphieunhap_phieunhap1]
GO
ALTER TABLE [dbo].[CTphieuxuat]  WITH CHECK ADD  CONSTRAINT [FK_CTphieuxuat_hanghoa] FOREIGN KEY([ma_hh])
REFERENCES [dbo].[hanghoa] ([ma_hh])
GO
ALTER TABLE [dbo].[CTphieuxuat] CHECK CONSTRAINT [FK_CTphieuxuat_hanghoa]
GO
ALTER TABLE [dbo].[CTphieuxuat]  WITH CHECK ADD  CONSTRAINT [FK_CTphieuxuat_kho] FOREIGN KEY([ma_kho])
REFERENCES [dbo].[kho] ([ma_kho])
GO
ALTER TABLE [dbo].[CTphieuxuat] CHECK CONSTRAINT [FK_CTphieuxuat_kho]
GO
ALTER TABLE [dbo].[CTphieuxuat]  WITH CHECK ADD  CONSTRAINT [FK_CTphieuxuat_phieuxuat] FOREIGN KEY([so_px])
REFERENCES [dbo].[phieuxuat] ([so_px])
GO
ALTER TABLE [dbo].[CTphieuxuat] CHECK CONSTRAINT [FK_CTphieuxuat_phieuxuat]
GO
ALTER TABLE [dbo].[phieunhap1]  WITH CHECK ADD  CONSTRAINT [FK_phieunhap1_kho] FOREIGN KEY([ma_kho])
REFERENCES [dbo].[kho] ([ma_kho])
GO
ALTER TABLE [dbo].[phieunhap1] CHECK CONSTRAINT [FK_phieunhap1_kho]
GO
ALTER TABLE [dbo].[phieunhap1]  WITH CHECK ADD  CONSTRAINT [FK_phieunhap1_nhacungcap] FOREIGN KEY([ma_ncc])
REFERENCES [dbo].[nhacungcap] ([ma_ncc])
GO
ALTER TABLE [dbo].[phieunhap1] CHECK CONSTRAINT [FK_phieunhap1_nhacungcap]
GO
ALTER TABLE [dbo].[phieuxuat]  WITH CHECK ADD  CONSTRAINT [FK_phieuxuat_khachhang] FOREIGN KEY([ma_khach])
REFERENCES [dbo].[khachhang] ([ma_khach])
GO
ALTER TABLE [dbo].[phieuxuat] CHECK CONSTRAINT [FK_phieuxuat_khachhang]
GO
ALTER TABLE [dbo].[phieuxuat]  WITH CHECK ADD  CONSTRAINT [FK_phieuxuat_kho] FOREIGN KEY([ma_kho])
REFERENCES [dbo].[kho] ([ma_kho])
GO
ALTER TABLE [dbo].[phieuxuat] CHECK CONSTRAINT [FK_phieuxuat_kho]
GO
