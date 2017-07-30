USE [master]
GO
/****** Object:  Database [InteriorMobilya]    Script Date: 29.7.2017 16:55:36 ******/
CREATE DATABASE [InteriorMobilya]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InteriorMobilya', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\InteriorMobilya .mdf' , SIZE = 192512KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InteriorMobilya _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\InteriorMobilya _log.ldf' , SIZE = 688384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InteriorMobilya] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InteriorMobilya].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InteriorMobilya] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InteriorMobilya] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InteriorMobilya] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InteriorMobilya] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InteriorMobilya] SET ARITHABORT OFF 
GO
ALTER DATABASE [InteriorMobilya] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InteriorMobilya] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InteriorMobilya] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InteriorMobilya] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InteriorMobilya] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InteriorMobilya] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InteriorMobilya] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InteriorMobilya] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InteriorMobilya] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InteriorMobilya] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InteriorMobilya] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InteriorMobilya] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InteriorMobilya] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InteriorMobilya] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InteriorMobilya] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InteriorMobilya] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InteriorMobilya] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InteriorMobilya] SET RECOVERY FULL 
GO
ALTER DATABASE [InteriorMobilya] SET  MULTI_USER 
GO
ALTER DATABASE [InteriorMobilya] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InteriorMobilya] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InteriorMobilya] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InteriorMobilya] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [InteriorMobilya] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InteriorMobilya]
GO
/****** Object:  Table [dbo].[Kampanya]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanya](
	[KampanyaID] [int] NOT NULL,
	[Kampanya İsmi] [nvarchar](255) NULL,
	[Açıklama] [nvarchar](255) NULL,
	[KampanyaBa#T#] [datetime] NULL,
	[KampanyaBi#T#] [datetime] NULL,
 CONSTRAINT [PK_Kampanya ] PRIMARY KEY CLUSTERED 
(
	[KampanyaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kargo]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kargo](
	[KargoID] [int] NOT NULL,
	[Firma Adı] [nvarchar](255) NULL,
	[Yetkili Kişi] [nvarchar](255) NULL,
	[Telefon] [nvarchar](255) NULL,
 CONSTRAINT [PK_Kargo] PRIMARY KEY CLUSTERED 
(
	[KargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KatID] [int] NOT NULL,
	[Adı] [nvarchar](255) NULL,
	[Açıklama] [nvarchar](255) NULL,
	[Resim] [nvarchar](255) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanıcı]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanıcı](
	[Müşteri_ID] [int] NOT NULL,
	[KullanıcıAdı] [nvarchar](255) NULL,
	[Şifre] [nvarchar](255) NULL,
 CONSTRAINT [PK_Kullanıcı] PRIMARY KEY CLUSTERED 
(
	[Müşteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanıcı Detay]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanıcı Detay](
	[Müşteri_ID] [int] NOT NULL,
	[AD] [nvarchar](255) NULL,
	[İkinciAd] [nvarchar](255) NULL,
	[SoyAd] [nvarchar](255) NULL,
	[D#t] [nvarchar](255) NULL,
	[ÜyelikT#] [nvarchar](255) NULL,
	[ErkekMi] [bit] NULL,
	[MüşteriKodu] [nvarchar](255) NULL,
	[Şehir_ID] [int] NULL,
 CONSTRAINT [PK_Kullanıcı Detay] PRIMARY KEY CLUSTERED 
(
	[Müşteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sipariş]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sipariş](
	[Sipariş_ID] [int] NOT NULL,
	[Sipariş_Tarihi] [datetime] NULL,
	[TahminiUlaşım] [datetime] NULL,
	[Ulaşim_Tarıhı] [datetime] NULL,
	[Müşteri_ID] [int] NULL,
	[Kargo_ID] [int] NULL,
	[Şehir_ID] [int] NULL,
	[SSD_ID] [int] NULL,
	[Kampanya_ID] [int] NULL,
	[KargoÜcreti] [int] NULL,
 CONSTRAINT [PK_Sipariş] PRIMARY KEY CLUSTERED 
(
	[Sipariş_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiparişDetaay]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparişDetaay](
	[Sipariş_ID] [int] NOT NULL,
	[Ürün_ID] [int] NOT NULL,
	[Miktar] [int] NULL,
	[Fiyat] [int] NULL,
	[İndirim] [float] NULL,
 CONSTRAINT [PK_SiparişDetaay] PRIMARY KEY CLUSTERED 
(
	[Sipariş_ID] ASC,
	[Ürün_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SSD]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSD](
	[SSID] [int] NOT NULL,
	[Destek Türü] [nvarchar](255) NULL,
	[Açıklama] [nvarchar](255) NULL,
 CONSTRAINT [PK_SSD] PRIMARY KEY CLUSTERED 
(
	[SSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Şehir]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Şehir](
	[Şehir_ID] [int] NOT NULL,
	[Şehir] [nvarchar](255) NULL,
	[Ülke_ID] [int] NULL,
 CONSTRAINT [PK_Şehir ] PRIMARY KEY CLUSTERED 
(
	[Şehir_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ülke]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ülke](
	[Ülke_ID] [int] NOT NULL,
	[ÜlkeAdı] [nvarchar](255) NULL,
 CONSTRAINT [PK_Ülke ] PRIMARY KEY CLUSTERED 
(
	[Ülke_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ürün]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ürün](
	[KatID] [int] NULL,
	[ÜrünID] [int] NOT NULL,
	[Adı] [nvarchar](255) NULL,
	[Stok] [float] NULL,
	[Ürünün Malzemesi] [nvarchar](255) NULL,
	[ücret] [float] NULL,
	[Renk] [nvarchar](255) NULL,
	[Üretimde mi?] [bit] NULL,
 CONSTRAINT [PK_Ürün] PRIMARY KEY CLUSTERED 
(
	[ÜrünID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Kullanıcı Detay]  WITH CHECK ADD  CONSTRAINT [FK_Kullanıcı Detay_Kullanıcı] FOREIGN KEY([Müşteri_ID])
REFERENCES [dbo].[Kullanıcı] ([Müşteri_ID])
GO
ALTER TABLE [dbo].[Kullanıcı Detay] CHECK CONSTRAINT [FK_Kullanıcı Detay_Kullanıcı]
GO
ALTER TABLE [dbo].[Kullanıcı Detay]  WITH CHECK ADD  CONSTRAINT [FK_Kullanıcı Detay_Şehir ] FOREIGN KEY([Şehir_ID])
REFERENCES [dbo].[Şehir] ([Şehir_ID])
GO
ALTER TABLE [dbo].[Kullanıcı Detay] CHECK CONSTRAINT [FK_Kullanıcı Detay_Şehir ]
GO
ALTER TABLE [dbo].[Sipariş]  WITH CHECK ADD  CONSTRAINT [FK_Sipariş_Kampanya ] FOREIGN KEY([Kampanya_ID])
REFERENCES [dbo].[Kampanya] ([KampanyaID])
GO
ALTER TABLE [dbo].[Sipariş] CHECK CONSTRAINT [FK_Sipariş_Kampanya ]
GO
ALTER TABLE [dbo].[Sipariş]  WITH CHECK ADD  CONSTRAINT [FK_Sipariş_Kargo] FOREIGN KEY([Kargo_ID])
REFERENCES [dbo].[Kargo] ([KargoID])
GO
ALTER TABLE [dbo].[Sipariş] CHECK CONSTRAINT [FK_Sipariş_Kargo]
GO
ALTER TABLE [dbo].[Sipariş]  WITH CHECK ADD  CONSTRAINT [FK_Sipariş_Kullanıcı] FOREIGN KEY([Müşteri_ID])
REFERENCES [dbo].[Kullanıcı] ([Müşteri_ID])
GO
ALTER TABLE [dbo].[Sipariş] CHECK CONSTRAINT [FK_Sipariş_Kullanıcı]
GO
ALTER TABLE [dbo].[Sipariş]  WITH CHECK ADD  CONSTRAINT [FK_Sipariş_SSD] FOREIGN KEY([SSD_ID])
REFERENCES [dbo].[SSD] ([SSID])
GO
ALTER TABLE [dbo].[Sipariş] CHECK CONSTRAINT [FK_Sipariş_SSD]
GO
ALTER TABLE [dbo].[Sipariş]  WITH CHECK ADD  CONSTRAINT [FK_Sipariş_Şehir ] FOREIGN KEY([Şehir_ID])
REFERENCES [dbo].[Şehir] ([Şehir_ID])
GO
ALTER TABLE [dbo].[Sipariş] CHECK CONSTRAINT [FK_Sipariş_Şehir ]
GO
ALTER TABLE [dbo].[SiparişDetaay]  WITH NOCHECK ADD  CONSTRAINT [FK_SiparişDetaay_Sipariş] FOREIGN KEY([Sipariş_ID])
REFERENCES [dbo].[Sipariş] ([Sipariş_ID])
GO
ALTER TABLE [dbo].[SiparişDetaay] CHECK CONSTRAINT [FK_SiparişDetaay_Sipariş]
GO
ALTER TABLE [dbo].[SiparişDetaay]  WITH NOCHECK ADD  CONSTRAINT [FK_SiparişDetaay_Ürün] FOREIGN KEY([Ürün_ID])
REFERENCES [dbo].[Ürün] ([ÜrünID])
GO
ALTER TABLE [dbo].[SiparişDetaay] CHECK CONSTRAINT [FK_SiparişDetaay_Ürün]
GO
ALTER TABLE [dbo].[Şehir]  WITH CHECK ADD  CONSTRAINT [FK_Şehir _Ülke ] FOREIGN KEY([Ülke_ID])
REFERENCES [dbo].[Ülke] ([Ülke_ID])
GO
ALTER TABLE [dbo].[Şehir] CHECK CONSTRAINT [FK_Şehir _Ülke ]
GO
ALTER TABLE [dbo].[Ürün]  WITH CHECK ADD  CONSTRAINT [FK_Ürün_Kategori] FOREIGN KEY([KatID])
REFERENCES [dbo].[Kategori] ([KatID])
GO
ALTER TABLE [dbo].[Ürün] CHECK CONSTRAINT [FK_Ürün_Kategori]
GO
/****** Object:  StoredProcedure [dbo].[Ürün_Öneri]    Script Date: 29.7.2017 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Ürün_Öneri]
    @MüşteriID int = 0
   
AS
    

--Module 1 Favori Kategori Bulunması
declare @favoriKat varchar(max)


select @FavoriKat=p.Adı --Favori Kategori
From( select top 1  t.Adı,t.Müşteri_ID,count(*) 'Sipariş Sayisi' 

from(select 
	s.Müşteri_ID,
		s.Sipariş_Tarihi,
			s.Sipariş_ID,
			k.Adı,
				ROW_NUMBER() over (partition by s.Müşteri_ID order by Sipariş_Tarihi desc) 'row' -- Müşteriye ait son siparişler
from Sipariş s
	join SiparişDetaay s1 on s1.Sipariş_ID=s.Sipariş_ID 
		join Ürün ü on ü.ÜrünID=s1.Ürün_ID 
			join Kategori k on k.KatID=ü.KatID
			 where s.Müşteri_ID=@MüşteriID) as t 
			where t.row<=10					--Son 10 sipariş
			group by t.Adı,t.Müşteri_ID
			order by 3 desc) as p


--Module 2 Kategoriye ait Fav Ürün Bulunması


SELECT t.Ürünadı,@FavoriKat 'Kategori' --Önerilmesi
From (Select top 3 p.Ürünadı
		,sum(p.Miktar) 'Sipariş Miktarı'
from(select 
		ü.Adı 'Ürünadı',
		 s1.Miktar,
			ROW_NUMBER() over (partition by ü.Adı order by Sipariş_Tarihi desc) 'row' -- Kategoriye Ait son siparişler
from Sipariş s 
	join SiparişDetaay s1 on s1.Sipariş_ID=s.Sipariş_ID 
		join Ürün ü on ü.ÜrünID=s1.Ürün_ID 
			join Kategori k on k.KatID=ü.KatID
					where k.Adı = @FavoriKat and ü.[Üretimde mi?]=1) as p -- üretimde mi kontrol edilmesi
					where p.row <=20    --Son 20 sipariş alınması
		group by p.Ürünadı
		order by 2 desc) as t
RETURN 0 
GO
USE [master]
GO
ALTER DATABASE [InteriorMobilya] SET  READ_WRITE 
GO
