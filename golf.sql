USE [master]
GO
/****** Object:  Database [golf]    Script Date: 6/08/2019 2:58:18 PM ******/
CREATE DATABASE [golf]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'golf', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\golf.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'golf_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\golf_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [golf] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [golf].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [golf] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [golf] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [golf] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [golf] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [golf] SET ARITHABORT OFF 
GO
ALTER DATABASE [golf] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [golf] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [golf] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [golf] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [golf] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [golf] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [golf] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [golf] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [golf] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [golf] SET  DISABLE_BROKER 
GO
ALTER DATABASE [golf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [golf] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [golf] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [golf] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [golf] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [golf] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [golf] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [golf] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [golf] SET  MULTI_USER 
GO
ALTER DATABASE [golf] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [golf] SET DB_CHAINING OFF 
GO
ALTER DATABASE [golf] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [golf] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [golf] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [golf] SET QUERY_STORE = OFF
GO
USE [golf]
GO
/****** Object:  Table [dbo].[Golf]    Script Date: 6/08/2019 2:58:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Golf](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Gender] [nchar](10) NULL,
	[DOB] [date] NULL,
	[Street] [nvarchar](50) NULL,
	[Suburb] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Available week days] [nvarchar](50) NULL,
	[Handicap] [nvarchar](50) NULL,
 CONSTRAINT [PK_Golf] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Golf] ON 

INSERT [dbo].[Golf] ([ID], [Title], [Firstname], [Surname], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (2, N'Mr.', N'Jatinder', N'Singh', N'M         ', CAST(N'1985-07-25' AS Date), N'Megan Avenue', N'Pakuranga', N'Auckland', N'Monday', N'No')
INSERT [dbo].[Golf] ([ID], [Title], [Firstname], [Surname], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (4, N'Mr.', N'Satinder', N'Singh', N'M         ', CAST(N'1995-07-31' AS Date), N'Enise Avenue', N'Pakuranga', N'Auckland', N'Friday', N'No')
INSERT [dbo].[Golf] ([ID], [Title], [Firstname], [Surname], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (5, N'Miss', N'Jass', N'Kap', N'F         ', CAST(N'1996-02-23' AS Date), N'60, Hobson Streeet', N'Auckland CBD', N'Auckland', N'Sunday', N'Yes')
SET IDENTITY_INSERT [dbo].[Golf] OFF
/****** Object:  StoredProcedure [dbo].[GolferGender]    Script Date: 6/08/2019 2:58:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GolferGender]
	@Gender nvarchar 
	
AS
SET NOCOUNT ON;
	SELECT * FROM Golf WHERE Gender = @Gender
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[HandicapGolfers]    Script Date: 6/08/2019 2:58:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HandicapGolfers]
	@Handicap nvarchar(50)

AS
SET NOCOUNT ON;
	SELECT * FROM Golf WHERE Handicap = @Handicap
RETURN 0
GO
USE [master]
GO
ALTER DATABASE [golf] SET  READ_WRITE 
GO
