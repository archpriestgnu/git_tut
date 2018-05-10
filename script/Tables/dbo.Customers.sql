/*=============================================================
SCRIPT HEADER

VERSION:   0.00.0000
DATE:      05-10-2018 17:49:30
SERVER:    DESKTOP-EHDJQ3I\SQLEXPRESS

%ObjectList%

=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [dbo].[Customers]
Print 'Create Table [dbo].[Customers]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Customers] (
		[CustomerID]       [nchar](5) NOT NULL,
		[CompanyName]      [nvarchar](40) NOT NULL,
		[ContactName]      [nvarchar](30) NULL,
		[ContactTitle]     [nvarchar](30) NULL,
		[Address]          [nvarchar](60) NULL,
		[City]             [nvarchar](15) NULL,
		[Region]           [nvarchar](15) NULL,
		[PostalCode]       [nvarchar](10) NULL,
		[Country]          [nvarchar](15) NULL,
		[Phone]            [nvarchar](24) NULL,
		[Fax]              [nvarchar](24) NULL,
		CONSTRAINT [PK_Customers]
		PRIMARY KEY
		CLUSTERED
		([CustomerID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [City]
	ON [dbo].[Customers] ([City])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [CompanyName]
	ON [dbo].[Customers] ([CompanyName])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [PostalCode]
	ON [dbo].[Customers] ([PostalCode])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [Region]
	ON [dbo].[Customers] ([Region])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Customers] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
