USE [master]
GO
/****** Object:  Database [Nkdb]    Script Date: 2019/06/25 2:00:32 PM ******/
CREATE DATABASE [Nkdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nkdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Nkdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nkdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Nkdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Nkdb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nkdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nkdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nkdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nkdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nkdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nkdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nkdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nkdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nkdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nkdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nkdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nkdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nkdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nkdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nkdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nkdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Nkdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nkdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nkdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nkdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nkdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nkdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nkdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nkdb] SET RECOVERY FULL 
GO
ALTER DATABASE [Nkdb] SET  MULTI_USER 
GO
ALTER DATABASE [Nkdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nkdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nkdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nkdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nkdb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Nkdb', N'ON'
GO
ALTER DATABASE [Nkdb] SET QUERY_STORE = OFF
GO
USE [Nkdb]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019/06/25 2:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019/06/25 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019/06/25 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019/06/25 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[RoleId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019/06/25 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[C__MigrationHistory]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_C__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FamilyMembers]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamilyMembers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](50) NOT NULL,
	[Middlename] [varchar](50) NULL,
	[Lastname] [varchar](50) NOT NULL,
	[Tribe] [varchar](50) NULL,
	[RelationshipType] [int] NULL,
	[IdNumber] [varchar](13) NOT NULL,
	[ParentId] [varchar](50) NULL,
 CONSTRAINT [PK_FamilyMembers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Firstname] ASC,
	[Lastname] ASC,
	[IdNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tribes]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tribes](
	[TribeId] [int] IDENTITY(1,1) NOT NULL,
	[TribeName] [varchar](50) NOT NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_Tribes] PRIMARY KEY CLUSTERED 
(
	[TribeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFamilyMembers]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFamilyMembers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](100) NULL,
	[FamilyMemberId] [int] NULL,
 CONSTRAINT [PK_UserFamilyMembers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Firstname] [varchar](50) NOT NULL,
	[Middlename] [varchar](50) NULL,
	[Lastname] [varchar](50) NOT NULL,
	[IDNumber] [varchar](50) NOT NULL,
	[TribeId] [int] NULL,
	[Age] [int] NULL,
	[AspUserId] [bigint] NULL,
	[DateOfBirth] [datetime] NULL,
	[WebUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]    Script Date: 2019/06/25 2:00:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]    Script Date: 2019/06/25 2:00:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_AspNetUserRoles_AspNetUser]    Script Date: 2019/06/25 2:00:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_AspNetUserRoles_AspNetUser] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRole]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUser]
GO
/****** Object:  StoredProcedure [dbo].[AddFamilyMember]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddFamilyMember]
@Firstname VARCHAR(50),
@Middlename VARCHAR(50),
@Lastname VARCHAR(50),
@IdNumber VARCHAR(13),
@Relationship VARCHAR(50),
@Tribe INT,
@UserId VARCHAR(50)
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM FamilyMembers WHERE IdNumber = @IdNumber)
		BEGIN
			DECLARE @FamilyId VARCHAR(100)
			INSERT INTO FamilyMembers(Firstname,Middlename,Lastname,IdNumber,RelationshipType, Tribe)
			VALUES(@Firstname, @Middlename, @Lastname, @IdNumber, @Relationship, @Tribe)
			SET @FamilyId = SCOPE_IDENTITY()

			INSERT INTO UserFamilyMembers(UserId, FamilyMemberId)
			VALUES(@UserId, @FamilyId)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[GetFamilyMembers]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetFamilyMembers]
@UserId VARCHAR(100)
AS
	BEGIN
		SELECT
			FM.Id,
			FM.Firstname,
			FM.Middlename,
			FM.Lastname,
			FM.Tribe,
			FM.RelationshipType,
			FM.IdNumber,
			T.TribeName
		FROM FamilyMembers FM
		INNER JOIN Tribes T
		ON T.TribeId = FM.Tribe
	END
GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 2019/06/25 2:00:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RegisterUser]
@Firstname VARCHAR(50),
@Middlename VARCHAR(50),
@Lastname VARCHAR(50),
@IdNumber VARCHAR(50),
@Email VARCHAR(50),
@Tribe INT,
@Password VARCHAR(50),
@Age DATE,
@UserId UNIQUEIDENTIFIER
AS
	BEGIN
		IF NOT EXISTS(SELECT * FROM Users WHERE IDNumber = @IdNumber)
			BEGIN
				INSERT INTO Users(Firstname,Middlename,Lastname,IDNumber,EmailAddress, TribeId, Password, WebUserId)
				VALUES(@Firstname, @Middlename, @Lastname, @IdNumber, @Email, @Tribe, @Password, @UserId)
			END
	END
GO
USE [master]
GO
ALTER DATABASE [Nkdb] SET  READ_WRITE 
GO
