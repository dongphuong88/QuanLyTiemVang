USE [master]
GO
/****** Object:  Database [Cam_Do_Database]    Script Date: 6/14/2016 4:56:16 PM ******/
CREATE DATABASE [Cam_Do_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cam_Do_Database', FILENAME = N'C:\HPE\Cam_Do_Database.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cam_Do_Database_log', FILENAME = N'C:\HPE\Cam_Do_Database_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cam_Do_Database] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cam_Do_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cam_Do_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Cam_Do_Database] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cam_Do_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cam_Do_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cam_Do_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cam_Do_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cam_Do_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cam_Do_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Cam_Do_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cam_Do_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cam_Do_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cam_Do_Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cam_Do_Database]
GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[CMNDSo] [nvarchar](50) NULL,
	[CMNDNgayCap] [datetime] NULL,
	[CMNDNoiCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_EMPLOYEES] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INVESTMENTS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVESTMENTS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[Loai] [nchar](10) NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[SoTien] [int] NOT NULL,
 CONSTRAINT [PK_INVESTMENTS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ITEM_DETAILS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEM_DETAILS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[RecordSTT] [int] NOT NULL,
	[TenTaiSan] [nvarchar](50) NOT NULL,
	[LoaiVang] [nvarchar](50) NULL,
	[TrongLuong] [money] NULL,
	[ChuanDo] [money] NULL,
	[GiaTriVatCam] [int] NULL,
 CONSTRAINT [PK_ITEM_DETAILS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ITEM_TYPES]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEM_TYPES](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDoChinh] [nvarchar](50) NOT NULL,
	[TenLoaiDoPhu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ITEM_TYPES] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ITEMS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEMS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[PartnerShopSTT] [int] NULL,
	[MaHH] [nvarchar](50) NULL,
	[Note] [nvarchar](200) NULL,
	[TienCong] [int] NULL,
	[TienCongKH] [int] NULL,
	[CanNang] [money] NULL,
	[CanNangNguyenHot] [money] NULL,
	[LoaiVang] [nvarchar](50) NULL,
	[Picture] [image] NULL,
	[TenMonDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_ITEMS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAIVANGS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIVANGS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[LoaiVang] [nvarchar](50) NULL,
	[GiaMua] [int] NULL,
	[GiaBan] [int] NULL,
 CONSTRAINT [PK_LOAIVANGS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PARTNERSHOPS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTNERSHOPS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenTiem] [nvarchar](50) NULL,
 CONSTRAINT [PK_PARTNERSHOPS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RECORDS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECORDS](
	[STT] [int] NOT NULL,
	[Lien] [int] NULL,
	[KhachHangID] [int] NOT NULL,
	[NhanVienID] [int] NOT NULL,
	[SoTienCam] [int] NOT NULL,
	[NgayCam] [datetime] NOT NULL,
	[DenNgay] [datetime] NULL,
	[LaiSuatNgay] [money] NULL,
	[LaiSuatThang] [money] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_RECORDS_1] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHOPCONFIG]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHOPCONFIG](
	[ChuTiem] [nvarchar](50) NOT NULL,
	[TenTiem] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[SoNgayQuaHan] [int] NULL,
	[LaiSuat] [money] NULL,
	[GoldPriceBuy24K] [int] NULL,
	[GoldPriceSell24K] [int] NULL,
	[GoldPriceBuy24KKH] [int] NULL,
	[GoldPriceSell24KKH] [int] NULL,
	[GoldPirceBuy18K] [int] NULL,
	[GoldPriceSell18K] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAG_DETAILS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAG_DETAILS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[ItemSTT] [int] NOT NULL,
	[Tag] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TAG_DETAILS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAGLIST]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAGLIST](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[ItemType] [nvarchar](50) NULL,
	[ItemTag] [nvarchar](50) NULL,
 CONSTRAINT [PK_TAGLIST] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRANSACTIONS]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSACTIONS](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[RecordSTT] [int] NOT NULL,
	[LoaiGiaoDich] [nvarchar](50) NULL,
	[TienCam] [int] NULL,
	[TuNgay] [datetime] NULL,
	[DenNgay] [datetime] NULL,
	[LaiSuat] [money] NULL,
	[TienLoi] [int] NULL,
	[TienThu] [int] NULL,
	[TienChi] [int] NULL,
 CONSTRAINT [PK_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[MonDoView]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MonDoView] AS
SELECT        RECORDS.STT, STUFF
                             ((SELECT        '; ' + ITEM_DETAILS.TenTaiSan
                                 FROM            ITEM_DETAILS
                                 WHERE        ITEM_DETAILS.RecordSTT = RECORDS.STT FOR XML PATH('')), 1, 1, '') [TenTaiSan]
FROM            RECORDS
GROUP BY RECORDS.STT
GO
/****** Object:  View [dbo].[TransactionView]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TransactionView]
AS
SELECT DISTINCT 
                         dbo.RECORDS.STT, dbo.CUSTOMERS.Ten, dbo.CUSTOMERS.DienThoai, dbo.RECORDS.SoTienCam, dbo.RECORDS.NgayCam, dbo.RECORDS.DenNgay, 
                         dbo.RECORDS.LaiSuatThang, dbo.RECORDS.GhiChu, DATEDIFF(day, dbo.RECORDS.DenNgay, { fn CURDATE() }) AS NgayQuaHan, dbo.MonDoView.TenTaiSan
FROM            dbo.CUSTOMERS INNER JOIN
                         dbo.RECORDS ON dbo.CUSTOMERS.STT = dbo.RECORDS.KhachHangID INNER JOIN
                         dbo.MonDoView ON dbo.RECORDS.STT = dbo.MonDoView.STT
WHERE        (dbo.RECORDS.Status <> N'Đã Chuộc')

GO
/****** Object:  View [dbo].[TienCamView]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TienCamView]
AS
SELECT DISTINCT dbo.RECORDS.STT, dbo.CUSTOMERS.Ten, dbo.MonDoView.TenTaiSan, dbo.RECORDS.SoTienCam, dbo.RECORDS.NgayCam
FROM            dbo.CUSTOMERS INNER JOIN
                         dbo.RECORDS ON dbo.CUSTOMERS.STT = dbo.RECORDS.KhachHangID INNER JOIN
                         dbo.MonDoView ON dbo.RECORDS.STT = dbo.MonDoView.STT
WHERE        (dbo.RECORDS.Status <> N'Đã Chuộc')

GO
/****** Object:  View [dbo].[ThongTinCamDoView]    Script Date: 6/14/2016 4:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ThongTinCamDoView]
AS
SELECT        dbo.RECORDS.STT, dbo.CUSTOMERS.Ten, dbo.CUSTOMERS.DienThoai, dbo.CUSTOMERS.DiaChi, dbo.CUSTOMERS.CMNDSo, dbo.CUSTOMERS.CMNDNgayCap, dbo.CUSTOMERS.CMNDNoiCap, 
                         dbo.RECORDS.SoTienCam, dbo.RECORDS.NgayCam, dbo.RECORDS.DenNgay, dbo.RECORDS.LaiSuatNgay, dbo.RECORDS.LaiSuatThang, dbo.RECORDS.GhiChu, dbo.RECORDS.Status
FROM            dbo.CUSTOMERS INNER JOIN
                         dbo.RECORDS ON dbo.CUSTOMERS.STT = dbo.RECORDS.KhachHangID

GO
ALTER TABLE [dbo].[ITEM_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ITEM_DETAILS_RECORDS] FOREIGN KEY([RecordSTT])
REFERENCES [dbo].[RECORDS] ([STT])
GO
ALTER TABLE [dbo].[ITEM_DETAILS] CHECK CONSTRAINT [FK_ITEM_DETAILS_RECORDS]
GO
ALTER TABLE [dbo].[ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_ITEMS_PARTNERSHOPS] FOREIGN KEY([PartnerShopSTT])
REFERENCES [dbo].[PARTNERSHOPS] ([STT])
GO
ALTER TABLE [dbo].[ITEMS] CHECK CONSTRAINT [FK_ITEMS_PARTNERSHOPS]
GO
ALTER TABLE [dbo].[RECORDS]  WITH CHECK ADD  CONSTRAINT [FK_RECORDS_CUSTOMERS] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[CUSTOMERS] ([STT])
GO
ALTER TABLE [dbo].[RECORDS] CHECK CONSTRAINT [FK_RECORDS_CUSTOMERS]
GO
ALTER TABLE [dbo].[RECORDS]  WITH CHECK ADD  CONSTRAINT [FK_RECORDS_EMPLOYEES] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[EMPLOYEES] ([STT])
GO
ALTER TABLE [dbo].[RECORDS] CHECK CONSTRAINT [FK_RECORDS_EMPLOYEES]
GO
ALTER TABLE [dbo].[TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_TRANSACTIONS_RECORDS] FOREIGN KEY([RecordSTT])
REFERENCES [dbo].[RECORDS] ([STT])
GO
ALTER TABLE [dbo].[TRANSACTIONS] CHECK CONSTRAINT [FK_TRANSACTIONS_RECORDS]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CUSTOMERS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 305
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RECORDS"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 283
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ThongTinCamDoView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ThongTinCamDoView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CUSTOMERS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RECORDS"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 136
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MonDoView"
            Begin Extent = 
               Top = 6
               Left = 458
               Bottom = 101
               Right = 628
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TienCamView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TienCamView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CUSTOMERS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RECORDS"
            Begin Extent = 
               Top = 6
               Left = 458
               Bottom = 136
               Right = 628
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "MonDoView"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 101
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 975
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 1155
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TransactionView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TransactionView'
GO
USE [master]
GO
ALTER DATABASE [Cam_Do_Database] SET  READ_WRITE 
GO
