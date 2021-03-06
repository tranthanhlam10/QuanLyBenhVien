USE [master]
GO
/****** Object:  Database [QLPhongKham]    Script Date: 12/22/2020 6:07:58 PM ******/
CREATE DATABASE [QLPhongKham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLPhongKham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLPhongKham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLPhongKham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLPhongKham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLPhongKham] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPhongKham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLPhongKham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLPhongKham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLPhongKham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLPhongKham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLPhongKham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLPhongKham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLPhongKham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLPhongKham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLPhongKham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLPhongKham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLPhongKham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLPhongKham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLPhongKham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLPhongKham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLPhongKham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLPhongKham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLPhongKham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLPhongKham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLPhongKham] SET RECOVERY FULL 
GO
ALTER DATABASE [QLPhongKham] SET  MULTI_USER 
GO
ALTER DATABASE [QLPhongKham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLPhongKham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLPhongKham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLPhongKham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLPhongKham] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLPhongKham', N'ON'
GO
ALTER DATABASE [QLPhongKham] SET QUERY_STORE = OFF
GO
USE [QLPhongKham]
GO
/****** Object:  Table [dbo].[BenhNhan]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan](
	[MaBN] [varchar](10) NOT NULL,
	[TenBN] [varchar](40) NULL,
	[SoDT] [char](10) NULL,
	[GioiTinh] [varchar](5) NULL,
	[DiaChi] [varchar](45) NULL,
	[NgSinh] [datetime] NULL,
	[TrieuChung] [varchar](100) NULL,
	[KetLuanBenh] [varchar](100) NULL,
	[BaoHiem] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDT]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDT](
	[MaCTDT] [int] NOT NULL,
	[MaDT] [int] NOT NULL,
	[MaThuoc] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[MaCTPN] [int] NOT NULL,
	[MaPN] [int] NOT NULL,
	[MaThuoc] [varchar](10) NOT NULL,
	[TenThuoc] [varchar](45) NULL,
	[SoLuong] [int] NULL,
	[NSX] [datetime] NULL,
	[HSD] [datetime] NULL,
	[NCC] [varchar](45) NULL,
	[Gia] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dangnhap]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dangnhap](
	[taikhoan] [varchar](45) NULL,
	[matkhau] [varchar](45) NULL,
	[chucvi] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonThuoc]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonThuoc](
	[MaDT] [int] NOT NULL,
	[NgDT] [datetime] NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaBN] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiayHenNhapVien]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayHenNhapVien](
	[MaGH] [varchar](10) NOT NULL,
	[MaBN] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgNhapVen] [datetime] NOT NULL,
	[SoPhong] [varchar](5) NULL,
	[GhiChu] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiayXetNghiem]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayXetNghiem](
	[MaPKB] [varchar](10) NOT NULL,
	[MaBN] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgXetNghiem] [datetime] NOT NULL,
	[LoaiXetNghiem] [varchar](50) NULL,
	[Ketqua] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[MaDT] [int] NOT NULL,
	[NgHD] [datetime] NULL,
	[TriGia] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNhanVien] [varchar](10) NOT NULL,
	[TenLoaiNhanVien] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [varchar](40) NULL,
	[SoDT] [char](10) NULL,
	[GioiTinh] [varchar](5) NULL,
	[DiaChi] [varchar](45) NULL,
	[NgSinh] [datetime] NULL,
	[NgVaoLam] [datetime] NULL,
	[MaLoaiNhanVien] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhNhap]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhNhap](
	[MaPN] [int] NOT NULL,
	[NgPhieuNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PKB]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PKB](
	[MaPKB] [varchar](10) NOT NULL,
	[MaBN] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgKham] [datetime] NOT NULL,
	[ChuanDoan] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 12/22/2020 6:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaThuoc] [varchar](10) NOT NULL,
	[TenThuoc] [varchar](45) NULL,
	[SoLuong] [int] NULL,
	[NSX] [datetime] NULL,
	[HSD] [datetime] NULL,
	[NCC] [varchar](45) NULL,
	[Gia] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'1', N'Nguyen Nhat Linh', N'0123456789', N'Nam', N'Long An', CAST(N'2020-12-19T00:00:00.000' AS DateTime), N'Cam', N'Sot sieu vi', N'123456789369')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN001', N'Nguyen Thanh Cong', N'0945165187', N'Nam', N'784 Truong Chinh, Q1, Tp.Ho Chi Minh', CAST(N'1987-01-28T00:00:00.000' AS DateTime), N'Ho, dau hong', N'Nhiem Covid19', N'Bao Hiem Nhan Tho')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN002', N'Van Cong Vi', N'0945958874', N'Nam', N'82/9 Truong Cong Dinh,Q8, Tp.Ho Chi Minh', CAST(N'1994-02-02T00:00:00.000' AS DateTime), N'Dau co chan trai', N'Trat khop co chan trai', N'Bao Hiem Phuong')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN003', N'Tran Nhu Y ', N'0913785946', N'Nu', N'84 Do Xuan Hop,Q9 Tp.Ho Chi Minh', CAST(N'1999-09-05T00:00:00.000' AS DateTime), N'Dau nua dau', N'Chan thuong nao do va dap', N'Khong co')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN005', N'Nguyen Van Buoc', N'0945165187', N'Nam', N'82/9 Truong Cong Dinh,Q8, Tp.Ho Chi Minh', CAST(N'1985-07-13T00:00:00.000' AS DateTime), N'Dau tim', N'', N'Khong co')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN006', N'Nguyen Thanh Hien', N'0918754784', N'Nam', N'11/78/7 Pasteur,Q1 Tp.Ho Chi Minh', CAST(N'1993-04-16T00:00:00.000' AS DateTime), N'Dau cu', N'Thu dam qua nhieu', N'Bao hiem NBA')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN007', N'Ho Truong Khang', N'0945165187', N'Nam', N'82/9 Truong Cong Dinh,Q8, Tp.Ho Chi Minh', CAST(N'1994-09-26T00:00:00.000' AS DateTime), N'Dau hong', N'', N'Khong co')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN008', N'Tran Tuan Thanh', N'0918754784', N'Nam', N'11/78/7 Pasteur,Q1 Tp.Ho Chi Minh', CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'Ho, dau hong', N'Nhiem Covid19', N'Bao Hiem Nhan Tho')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN009', N'Nguyen Tran Mila', N'0918754784', N'Nam', N'82/9 Truong Cong Dinh,Q8, Tp.Ho Chi Minh', CAST(N'1989-11-16T00:00:00.000' AS DateTime), N'Dau nua dau', N'Chan thuong nao do va dap', N'Khong co')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN010', N'Nguyen Hoang Duy', N'0945165187', N'Nam', N'11/78/7 Pasteur,Q1 Tp.Ho Chi Minh', CAST(N'1999-06-04T00:00:00.000' AS DateTime), N'Dau tim', N'', N'Khong co')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN011', N'Vo Thanh Hau', N'0918754784', N'Nu', N'84 Do Xuan Hop,Q9 Tp.Ho Chi Minh', CAST(N'1999-05-27T00:00:00.000' AS DateTime), N'Ngat Xiu, hon me', N'Co the mat suc nhin an', N'Bao Hiem Truong')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN012', N'Ngo Duc Thang', N'0918754784', N'Nam', N'11/78/7 Pasteur,Q1 Tp.Ho Chi Minh', CAST(N'1986-03-03T00:00:00.000' AS DateTime), N'Ho, dau hong', N'Nhiem Covid19', N'Bao Hiem Nhan Tho')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN013', N'Le Tan Phi', N'0945165187', N'Nu', N'84 Do Xuan Hop,Q9 Tp.Ho Chi Minh', CAST(N'1995-01-02T00:00:00.000' AS DateTime), N'Ho, dau hong', N'Nhiem Covid19', N'Bao Hiem Nhan Tho')
INSERT [dbo].[BenhNhan] ([MaBN], [TenBN], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [TrieuChung], [KetLuanBenh], [BaoHiem]) VALUES (N'BN014', N'Mia Khalid', N'0945165187', N'Nam', N'11/78/7 Pasteur,Q1 Tp.Ho Chi Minh', CAST(N'1996-02-26T00:00:00.000' AS DateTime), N'Ho, dau hong', N'Nhiem Covid19', N'Bao Hiem Nhan Tho')
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (1, 1, N'TH003', 10)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (2, 2, N'TH005', 2)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (3, 3, N'TH007', 30)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (4, 4, N'TH010', 10)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (5, 5, N'TH001', 4)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (6, 6, N'TH001', 4)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (7, 7, N'TH005', 6)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (8, 8, N'TH010', 5)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (9, 9, N'TH001', 10)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (10, 10, N'TH002', 1)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (11, 11, N'TH006', 2)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (12, 12, N'TH005', 4)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (13, 13, N'TH009', 5)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (14, 14, N'TH005', 5)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (15, 16, N'TH003', 3)
INSERT [dbo].[CTDT] ([MaCTDT], [MaDT], [MaThuoc], [SoLuong]) VALUES (16, 17, N'TH003', 10)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'ADMIN', N'ADMIN', 1)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'ADMIN', N'ADMIN', 1)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'tt0001', N'1', 3)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'tt0002', N'1', 3)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'tt0003', N'1', 3)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'bs0001', N'1', 2)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'bs0002', N'1', 2)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'bs0003', N'1', 2)
INSERT [dbo].[Dangnhap] ([taikhoan], [matkhau], [chucvi]) VALUES (N'tk0001', N'1', 4)
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (1, CAST(N'2020-03-01T00:00:00.000' AS DateTime), N'BS001', N'BN001')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (2, CAST(N'2020-03-01T00:00:00.000' AS DateTime), N'BS001', N'BN002')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (3, CAST(N'2020-07-07T00:00:00.000' AS DateTime), N'BS001', N'BN003')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (4, CAST(N'2020-03-08T00:00:00.000' AS DateTime), N'BS002', N'BN003')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (5, CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'BS001', N'BN005')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (6, CAST(N'2020-03-16T00:00:00.000' AS DateTime), N'BS001', N'BN006')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (7, CAST(N'2020-03-16T00:00:00.000' AS DateTime), N'BS002', N'BN007')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (8, CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'BS002', N'BN008')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (9, CAST(N'2020-03-16T00:00:00.000' AS DateTime), N'BS002', N'BN009')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (10, CAST(N'2020-03-20T00:00:00.000' AS DateTime), N'BS001', N'BN010')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (11, CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'BS002', N'BN011')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (12, CAST(N'2020-04-02T00:00:00.000' AS DateTime), N'BS002', N'BN012')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (13, CAST(N'2020-04-06T00:00:00.000' AS DateTime), N'BS001', N'BN013')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (14, CAST(N'2020-05-06T00:00:00.000' AS DateTime), N'BS001', N'BN014')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (15, CAST(N'2020-12-01T18:57:04.000' AS DateTime), N'BS001', N'BN001')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (16, CAST(N'2020-12-03T14:19:04.000' AS DateTime), N'BS001', N'BN001')
INSERT [dbo].[DonThuoc] ([MaDT], [NgDT], [MaNV], [MaBN]) VALUES (17, CAST(N'2020-12-19T20:31:14.000' AS DateTime), N'BS001', N'BN001')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'1', N'BN001', N'TT001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'1', N'')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'2', N'BN002', N'TT001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'2', N'')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'3', N'BN003', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'3', N'Benh nhan phai bi cach ly ta phong 3')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'4', N'BN001', N'TT001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'4', N'')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'5', N'BN009', N'TT001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'4', N'')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'6', N'BN008', N'TT001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'4', N'')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'7', N'BN012', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'12', N'Nh?p ghi chú')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'8', N'BN013', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'13', N'Nh?p ghi chú')
INSERT [dbo].[GiayHenNhapVien] ([MaGH], [MaBN], [MaNV], [NgNhapVen], [SoPhong], [GhiChu]) VALUES (N'9', N'BN002', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'13', N'Nh?p ghi chú')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'1', N'BN001', N'BS001', CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'X-Quang', N'ngu')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'2', N'BN002', N'BS002', CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'X-Quang', N'helloo')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'3', N'BN014', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'Công th?c máu', N'Ung thu mau')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'4', N'BN013', N'TT001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'CT scan', N'Ung thu xuong')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'5', N'BN012', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'Siêu âm', N'Dau da day')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'6', N'BN013', N'BS001', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'MRI', N'Dau nao')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'7', N'BN010', N'BS002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'Ion d?', N'Phoi co nuoc')
INSERT [dbo].[GiayXetNghiem] ([MaPKB], [MaBN], [MaNV], [NgXetNghiem], [LoaiXetNghiem], [Ketqua]) VALUES (N'8', N'BN009', N'TT002', CAST(N'2020-12-21T00:00:00.000' AS DateTime), N'Kháng sinh d?', N'Covid')
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD001', 1, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD002', 2, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 60000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD003', 3, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 1350000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD004', 4, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 200000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD005', 5, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 100000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD006', 6, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 100000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD007', 7, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 180000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD008', 8, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 100000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD009', 9, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 250000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD010', 10, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD011', 11, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD012', 11, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD013', 13, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD014', 14, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD1', 1, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 270000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD10', 10, CAST(N'2020-03-20T00:00:00.000' AS DateTime), 25000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD2', 2, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 60000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaDT], [NgHD], [TriGia]) VALUES (N'HD4', 4, CAST(N'2020-03-08T00:00:00.000' AS DateTime), 200000.0000)
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNhanVien], [TenLoaiNhanVien]) VALUES (N'2', N'Bac Si')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNhanVien], [TenLoaiNhanVien]) VALUES (N'3', N'Le Tan')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNhanVien], [TenLoaiNhanVien]) VALUES (N'4', N'Thu Kho')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [NgVaoLam], [MaLoaiNhanVien]) VALUES (N'BS001', N'Nguyen Tien Truong', N'0918359847', N'Nam', N'Q7, Tp.Ho Chi Minh', CAST(N'1987-02-15T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [NgVaoLam], [MaLoaiNhanVien]) VALUES (N'BS002', N'Tran Minh Chien', N'0948975485', N'Nam', N'Q73, Tp.Ho Chi Minh', CAST(N'1975-09-08T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [NgVaoLam], [MaLoaiNhanVien]) VALUES (N'TK001', N'Trinh Chung Cuong', N'0915145145', N'Nam', N'Q76, Tp.Ho Chi Minh', CAST(N'1969-08-22T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [NgVaoLam], [MaLoaiNhanVien]) VALUES (N'TT001', N'Nguyen Van A', N'0918359847', N'Nam', N'Q7, Tp.Ho Chi Minh', CAST(N'1987-02-15T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT], [GioiTinh], [DiaChi], [NgSinh], [NgVaoLam], [MaLoaiNhanVien]) VALUES (N'TT002', N'Nguyen Thi Lanh', N'0918359877', N'Nu', N'P5, Vung Tau', CAST(N'1985-08-17T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'3')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB002', N'BN002', N'BS001', CAST(N'2020-03-01T00:00:00.000' AS DateTime), N'Dau co chan trai')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB003', N'BN014', N'BS001', CAST(N'2020-07-07T00:00:00.000' AS DateTime), N'Ho, dau hong')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB004', N'BN003', N'BS002', CAST(N'2020-03-08T00:00:00.000' AS DateTime), N'Dau nua dau')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB006', N'BN005', N'BS001', CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'Dau tim')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB007', N'BN006', N'BS001', CAST(N'2020-03-16T00:00:00.000' AS DateTime), N'Dau cu')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB008', N'BN007', N'BS002', CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'Dau hong')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB009', N'BN008', N'BS002', CAST(N'2020-03-16T00:00:00.000' AS DateTime), N'Ho, dau hong')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB010', N'BN009', N'BS002', CAST(N'2020-03-20T00:00:00.000' AS DateTime), N'Dau nua dau')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB011', N'BN010', N'BS001', CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'Dau tim')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB012', N'BN011', N'BS002', CAST(N'2020-04-02T00:00:00.000' AS DateTime), N'Ngat Xiu, hon me')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB013', N'BN012', N'BS002', CAST(N'2020-04-06T00:00:00.000' AS DateTime), N'Ho, dau hong')
INSERT [dbo].[PKB] ([MaPKB], [MaBN], [MaNV], [NgKham], [ChuanDoan]) VALUES (N'PKB014', N'BN013', N'BS001', CAST(N'2020-05-06T00:00:00.000' AS DateTime), N'Ho, dau hong')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'', N'', 0, CAST(N'2020-05-07T00:00:00.000' AS DateTime), CAST(N'2020-05-07T00:00:00.000' AS DateTime), N'', 0.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH001', N'Amoxcillin', 150, CAST(N'2019-01-11T00:00:00.000' AS DateTime), CAST(N'2030-01-11T00:00:00.000' AS DateTime), N'Coopmart', 25000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH002', N'Ampicillin', 80, CAST(N'2019-03-11T00:00:00.000' AS DateTime), CAST(N'2030-01-11T00:00:00.000' AS DateTime), N'Coopmart', 25000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH003', N'Cefalexin', 80, CAST(N'2019-01-20T00:00:00.000' AS DateTime), CAST(N'2030-01-20T00:00:00.000' AS DateTime), N'Vinmart', 27000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH004', N' Cefadroxin 500mg', 80, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2030-01-01T00:00:00.000' AS DateTime), N'Vinmart', 35000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH005', N'Augmentin 625mg', 60, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2030-01-01T00:00:00.000' AS DateTime), N'Vinmart', 30000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH006', N'Klamentin 625mg', 60, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2030-01-01T00:00:00.000' AS DateTime), N'Hogward', 30000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH007', N'Azithromycin 250mg', 90, CAST(N'2019-01-11T00:00:00.000' AS DateTime), CAST(N'2030-01-11T00:00:00.000' AS DateTime), N'Hogward', 45000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH008', N'Clarythromycin 250mg', 80, CAST(N'2019-01-11T00:00:00.000' AS DateTime), CAST(N'2030-01-11T00:00:00.000' AS DateTime), N'Hogward', 120000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH009', N'Cefpodoxim 100mg', 80, CAST(N'2019-01-11T00:00:00.000' AS DateTime), CAST(N'2030-01-11T00:00:00.000' AS DateTime), N'Hogward', 20000.0000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [SoLuong], [NSX], [HSD], [NCC], [Gia]) VALUES (N'TH010', N'Augmentin 1g', 80, CAST(N'2019-01-11T00:00:00.000' AS DateTime), CAST(N'2030-01-11T00:00:00.000' AS DateTime), N'Coopmart', 20000.0000)
ALTER TABLE [dbo].[CTDT]  WITH CHECK ADD FOREIGN KEY([MaDT])
REFERENCES [dbo].[DonThuoc] ([MaDT])
GO
ALTER TABLE [dbo].[CTDT]  WITH CHECK ADD FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhNhap] ([MaPN])
GO
ALTER TABLE [dbo].[DonThuoc]  WITH CHECK ADD FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[DonThuoc]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[GiayHenNhapVien]  WITH CHECK ADD FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[GiayHenNhapVien]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[GiayXetNghiem]  WITH CHECK ADD FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[GiayXetNghiem]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaDT])
REFERENCES [dbo].[DonThuoc] ([MaDT])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaLoaiNhanVien])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNhanVien])
GO
ALTER TABLE [dbo].[PKB]  WITH CHECK ADD FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[PKB]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [QLPhongKham] SET  READ_WRITE 
GO
