USE [quanlykho]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[mahanghoa_Timkiem]
@keyword nvarchar(30)
as
begin
		select hh.ma_hh as[m� h�ng h�a],hh.ten_hh as [t�n h�ng h�a],hh.dvt as[dvt] from hanghoa hh
	where hh.ma_hh LIKE N'%'+@keyword+'%'
end
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[TenHang_Timkiem]
@keyword nvarchar(30)
as
begin
	
		select hh.ma_hh as[m� h�ng h�a],hh.ten_hh as [t�n h�ng h�a],hh.dvt as[dvt] from hanghoa hh
	where hh.ten_hh LIKE N'%'+@keyword+'%'
end