USE [master]
GO
/****** Object:  Database [kytucxa]    Script Date: 09-Nov-16 6:50:51 ******/
CREATE DATABASE [kytucxa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kytucxa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\kytucxa.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kytucxa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\kytucxa_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kytucxa] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kytucxa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kytucxa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kytucxa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kytucxa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kytucxa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kytucxa] SET ARITHABORT OFF 
GO
ALTER DATABASE [kytucxa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kytucxa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kytucxa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kytucxa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kytucxa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kytucxa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kytucxa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kytucxa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kytucxa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kytucxa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kytucxa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kytucxa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kytucxa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kytucxa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kytucxa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kytucxa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kytucxa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kytucxa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kytucxa] SET  MULTI_USER 
GO
ALTER DATABASE [kytucxa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kytucxa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kytucxa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kytucxa] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [kytucxa] SET DELAYED_DURABILITY = DISABLED 
GO
USE [kytucxa]
GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[maloaiphong] [nvarchar](50) NOT NULL,
	[tenloaiphong] [nvarchar](50) NOT NULL,
	[dongia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loaiphong] PRIMARY KEY CLUSTERED 
(
	[maloaiphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[tennv] [nvarchar](50) NOT NULL,
	[chucvu] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[ghichu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phieuthu]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieuthu](
	[maphieu] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
	[ngaythu] [datetime] NOT NULL,
	[sotien] [nvarchar](50) NOT NULL,
	[masv] [nvarchar](50) NOT NULL,
	[manv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_phieuthu] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maphong] [nvarchar](50) NOT NULL,
	[tenphong] [nvarchar](50) NULL,
	[matang] [nvarchar](50) NULL,
	[maloaiphong] [nvarchar](50) NULL,
	[slmax] [int] NULL,
	[sldango] [int] NULL,
	[sodienthangtruoc] [int] NULL,
	[sodienthangsau] [int] NULL,
	[sonuocthangtruoc] [int] NULL,
	[sonuocthangsau] [int] NULL,
	[sltaisan] [int] NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](5) NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quydinh]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quydinh](
	[tiendien] [nvarchar](50) NOT NULL,
	[tiennuoc] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_quydinh] PRIMARY KEY CLUSTERED 
(
	[tiendien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masv] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
	[hokhau] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](5) NOT NULL,
	[ngaysinh] [datetime] NOT NULL,
	[ngaydangky] [datetime] NOT NULL,
	[trangthai] [nvarchar](50) NOT NULL,
	[sdt] [int] NOT NULL,
	[thoigianhoc] [nvarchar](50) NOT NULL,
	[lop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tang]    Script Date: 09-Nov-16 6:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tang](
	[matang] [nvarchar](50) NOT NULL,
	[tentang] [nvarchar](50) NOT NULL,
	[manv] [nvarchar](50) NOT NULL,
	[ghichu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tang] PRIMARY KEY CLUSTERED 
(
	[matang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[phieuthu]  WITH CHECK ADD  CONSTRAINT [FK_phieuthu_nhanvien] FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[phieuthu] CHECK CONSTRAINT [FK_phieuthu_nhanvien]
GO
ALTER TABLE [dbo].[phieuthu]  WITH CHECK ADD  CONSTRAINT [FK_phieuthu_phong] FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([maphong])
GO
ALTER TABLE [dbo].[phieuthu] CHECK CONSTRAINT [FK_phieuthu_phong]
GO
ALTER TABLE [dbo].[phieuthu]  WITH CHECK ADD  CONSTRAINT [FK_phieuthu_sinhvien] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[phieuthu] CHECK CONSTRAINT [FK_phieuthu_sinhvien]
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK_phong_loaiphong] FOREIGN KEY([maloaiphong])
REFERENCES [dbo].[loaiphong] ([maloaiphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK_phong_loaiphong]
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK_phong_tang] FOREIGN KEY([matang])
REFERENCES [dbo].[tang] ([matang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK_phong_tang]
GO
ALTER TABLE [dbo].[quydinh]  WITH CHECK ADD  CONSTRAINT [FK_quydinh_phong] FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([maphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[quydinh] CHECK CONSTRAINT [FK_quydinh_phong]
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_phong] FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([maphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_phong]
GO
ALTER TABLE [dbo].[tang]  WITH CHECK ADD  CONSTRAINT [FK_tang_nhanvien] FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tang] CHECK CONSTRAINT [FK_tang_nhanvien]
GO
USE [master]
GO
ALTER DATABASE [kytucxa] SET  READ_WRITE 
GO
