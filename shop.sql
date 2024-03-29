USE [master]
GO
/****** Object:  Database [shop]    Script Date: 7/5/2019 3:38:43 PM ******/
CREATE DATABASE [shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shop', FILENAME = N'D:\programer\SQL server database\shop\shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shop_log', FILENAME = N'D:\programer\SQL server database\shop\shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [shop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shop] SET RECOVERY FULL 
GO
ALTER DATABASE [shop] SET  MULTI_USER 
GO
ALTER DATABASE [shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'shop', N'ON'
GO
ALTER DATABASE [shop] SET QUERY_STORE = OFF
GO
USE [shop]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [shop]
GO
/****** Object:  Table [dbo].[addres]    Script Date: 7/5/2019 3:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addres](
	[member#] [int] NOT NULL,
	[addres_type] [nvarchar](10) NOT NULL,
	[city] [nvarchar](15) NULL,
	[addres] [nvarchar](100) NULL,
	[phon_number] [int] NULL,
 CONSTRAINT [PK_addres] PRIMARY KEY CLUSTERED 
(
	[member#] ASC,
	[addres_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 7/5/2019 3:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[br#] [int] NOT NULL,
	[brName] [nvarchar](50) NULL,
	[pro#] [int] NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[br#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buy]    Script Date: 7/5/2019 3:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buy](
	[member#] [int] NOT NULL,
	[fac#] [int] NOT NULL,
	[pt#] [int] NULL,
 CONSTRAINT [PK_buy] PRIMARY KEY CLUSTERED 
(
	[member#] ASC,
	[fac#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 7/5/2019 3:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat#] [int] NOT NULL,
	[catName] [nvarchar](50) NULL,
	[k#] [int] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[cat#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coment]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coment](
	[coment#] [int] NOT NULL,
	[member#] [int] NULL,
	[message] [nvarchar](250) NULL,
	[voting] [int] NULL,
 CONSTRAINT [PK_coment] PRIMARY KEY CLUSTERED 
(
	[coment#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[count]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[count](
	[pro#] [int] NOT NULL,
	[s#] [int] NOT NULL,
	[count] [int] NULL,
 CONSTRAINT [PK_count] PRIMARY KEY CLUSTERED 
(
	[pro#] ASC,
	[s#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount](
	[pro#] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[time] [int] NULL,
	[off] [int] NULL,
 CONSTRAINT [PK_discount] PRIMARY KEY CLUSTERED 
(
	[pro#] ASC,
	[startTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factor]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factor](
	[fac#] [int] NOT NULL,
	[date] [int] NULL,
 CONSTRAINT [PK_factor] PRIMARY KEY CLUSTERED 
(
	[fac#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fee]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fee](
	[fac#] [int] NOT NULL,
	[pro#] [int] NOT NULL,
	[count] [int] NULL,
 CONSTRAINT [PK_fee] PRIMARY KEY CLUSTERED 
(
	[fac#] ASC,
	[pro#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kind]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kind](
	[k#] [int] NOT NULL,
	[kname] [nvarchar](50) NULL,
 CONSTRAINT [PK_kind] PRIMARY KEY CLUSTERED 
(
	[k#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kind_Category]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kind_Category](
	[k#] [int] NOT NULL,
	[kname] [nvarchar](50) NULL,
 CONSTRAINT [PK_kind_Category] PRIMARY KEY CLUSTERED 
(
	[k#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memmber]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memmber](
	[member#] [int] NOT NULL,
	[mName] [nvarchar](10) NULL,
	[pasword] [nvarchar](10) NULL,
 CONSTRAINT [PK_memmber] PRIMARY KEY CLUSTERED 
(
	[member#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_type]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_type](
	[pt#] [int] NOT NULL,
	[name] [nvarchar](15) NULL,
	[price] [int] NULL,
	[time] [int] NULL,
 CONSTRAINT [PK_post_type] PRIMARY KEY CLUSTERED 
(
	[pt#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[price]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[price](
	[pro#] [int] NOT NULL,
	[startYear] [int] NOT NULL,
	[finishYear] [int] NOT NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_price] PRIMARY KEY CLUSTERED 
(
	[pro#] ASC,
	[startYear] ASC,
	[finishYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prodoct]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodoct](
	[pro#] [int] NOT NULL,
	[pname] [nvarchar](50) NULL,
	[color] [int] NOT NULL,
	[size] [int] NOT NULL,
	[caption] [int] NOT NULL,
	[weight] [int] NOT NULL,
	[cat#] [int] NULL,
 CONSTRAINT [PK_prodoct] PRIMARY KEY CLUSTERED 
(
	[pro#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question](
	[member#] [int] NOT NULL,
	[question] [nvarchar](200) NOT NULL,
	[answer] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[member#] ASC,
	[question] ASC,
	[answer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repesentation]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repesentation](
	[s#] [int] NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Repesentation_1] PRIMARY KEY CLUSTERED 
(
	[s#] ASC,
	[city] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seller]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seller](
	[s#] [int] NOT NULL,
	[sname] [nvarchar](50) NULL,
	[city] [nvarchar](10) NULL,
 CONSTRAINT [PK_seller] PRIMARY KEY CLUSTERED 
(
	[s#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_group]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_group](
	[pro#] [int] NOT NULL,
	[subGroup] [int] NOT NULL,
 CONSTRAINT [PK_sub_group] PRIMARY KEY CLUSTERED 
(
	[pro#] ASC,
	[subGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warranty]    Script Date: 7/5/2019 3:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warranty](
	[pro#] [int] NOT NULL,
	[name_waranty] [int] NOT NULL,
	[conditions] [nvarchar](100) NULL,
 CONSTRAINT [PK_warranty] PRIMARY KEY CLUSTERED 
(
	[pro#] ASC,
	[name_waranty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[addres]  WITH CHECK ADD  CONSTRAINT [FK_addres_memmber] FOREIGN KEY([member#])
REFERENCES [dbo].[memmber] ([member#])
GO
ALTER TABLE [dbo].[addres] CHECK CONSTRAINT [FK_addres_memmber]
GO
ALTER TABLE [dbo].[brand]  WITH CHECK ADD  CONSTRAINT [FK_brand_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[brand] CHECK CONSTRAINT [FK_brand_prodoct]
GO
ALTER TABLE [dbo].[buy]  WITH CHECK ADD  CONSTRAINT [FK_buy_factor] FOREIGN KEY([fac#])
REFERENCES [dbo].[factor] ([fac#])
GO
ALTER TABLE [dbo].[buy] CHECK CONSTRAINT [FK_buy_factor]
GO
ALTER TABLE [dbo].[buy]  WITH CHECK ADD  CONSTRAINT [FK_buy_memmber] FOREIGN KEY([member#])
REFERENCES [dbo].[memmber] ([member#])
GO
ALTER TABLE [dbo].[buy] CHECK CONSTRAINT [FK_buy_memmber]
GO
ALTER TABLE [dbo].[buy]  WITH CHECK ADD  CONSTRAINT [FK_buy_post_type] FOREIGN KEY([pt#])
REFERENCES [dbo].[post_type] ([pt#])
GO
ALTER TABLE [dbo].[buy] CHECK CONSTRAINT [FK_buy_post_type]
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD  CONSTRAINT [FK_category_kind] FOREIGN KEY([k#])
REFERENCES [dbo].[kind] ([k#])
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK_category_kind]
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD  CONSTRAINT [FK_category_kind_Category] FOREIGN KEY([k#])
REFERENCES [dbo].[kind_Category] ([k#])
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK_category_kind_Category]
GO
ALTER TABLE [dbo].[coment]  WITH CHECK ADD  CONSTRAINT [FK_coment_memmber] FOREIGN KEY([member#])
REFERENCES [dbo].[memmber] ([member#])
GO
ALTER TABLE [dbo].[coment] CHECK CONSTRAINT [FK_coment_memmber]
GO
ALTER TABLE [dbo].[count]  WITH CHECK ADD  CONSTRAINT [FK_count_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[count] CHECK CONSTRAINT [FK_count_prodoct]
GO
ALTER TABLE [dbo].[count]  WITH CHECK ADD  CONSTRAINT [FK_count_prodoct1] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[count] CHECK CONSTRAINT [FK_count_prodoct1]
GO
ALTER TABLE [dbo].[count]  WITH CHECK ADD  CONSTRAINT [FK_count_seller] FOREIGN KEY([s#])
REFERENCES [dbo].[seller] ([s#])
GO
ALTER TABLE [dbo].[count] CHECK CONSTRAINT [FK_count_seller]
GO
ALTER TABLE [dbo].[discount]  WITH CHECK ADD  CONSTRAINT [FK_discount_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[discount] CHECK CONSTRAINT [FK_discount_prodoct]
GO
ALTER TABLE [dbo].[fee]  WITH CHECK ADD  CONSTRAINT [FK_fee_factor] FOREIGN KEY([fac#])
REFERENCES [dbo].[factor] ([fac#])
GO
ALTER TABLE [dbo].[fee] CHECK CONSTRAINT [FK_fee_factor]
GO
ALTER TABLE [dbo].[fee]  WITH CHECK ADD  CONSTRAINT [FK_fee_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[fee] CHECK CONSTRAINT [FK_fee_prodoct]
GO
ALTER TABLE [dbo].[price]  WITH CHECK ADD  CONSTRAINT [FK_price_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[price] CHECK CONSTRAINT [FK_price_prodoct]
GO
ALTER TABLE [dbo].[prodoct]  WITH CHECK ADD  CONSTRAINT [FK_prodoct_category] FOREIGN KEY([cat#])
REFERENCES [dbo].[category] ([cat#])
GO
ALTER TABLE [dbo].[prodoct] CHECK CONSTRAINT [FK_prodoct_category]
GO
ALTER TABLE [dbo].[question]  WITH CHECK ADD  CONSTRAINT [FK_question_memmber] FOREIGN KEY([member#])
REFERENCES [dbo].[memmber] ([member#])
GO
ALTER TABLE [dbo].[question] CHECK CONSTRAINT [FK_question_memmber]
GO
ALTER TABLE [dbo].[Repesentation]  WITH CHECK ADD  CONSTRAINT [FK_Repesentation_seller1] FOREIGN KEY([s#])
REFERENCES [dbo].[seller] ([s#])
GO
ALTER TABLE [dbo].[Repesentation] CHECK CONSTRAINT [FK_Repesentation_seller1]
GO
ALTER TABLE [dbo].[sub_group]  WITH CHECK ADD  CONSTRAINT [FK_sub_group_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[sub_group] CHECK CONSTRAINT [FK_sub_group_prodoct]
GO
ALTER TABLE [dbo].[warranty]  WITH CHECK ADD  CONSTRAINT [FK_warranty_prodoct] FOREIGN KEY([pro#])
REFERENCES [dbo].[prodoct] ([pro#])
GO
ALTER TABLE [dbo].[warranty] CHECK CONSTRAINT [FK_warranty_prodoct]
GO
USE [master]
GO
ALTER DATABASE [shop] SET  READ_WRITE 
GO
