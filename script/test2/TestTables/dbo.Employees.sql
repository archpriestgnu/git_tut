/*=============================================================
SCRIPT HEADER

VERSION:   0.00.0000
DATE:      05-10-2018 17:55:47
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

-- Create Table [dbo].[Employees]
Print 'Create Table [dbo].[Employees]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Employees] (
		[EmployeeID]          [int] IDENTITY(1, 1) NOT NULL,
		[LastName]            [nvarchar](20) NOT NULL,
		[FirstName]           [nvarchar](10) NOT NULL,
		[Title]               [nvarchar](30) NULL,
		[TitleOfCourtesy]     [nvarchar](25) NULL,
		[BirthDate]           [datetime] NULL,
		[HireDate]            [datetime] NULL,
		[Address]             [nvarchar](60) NULL,
		[City]                [nvarchar](15) NULL,
		[Region]              [nvarchar](15) NULL,
		[PostalCode]          [nvarchar](10) NULL,
		[Country]             [nvarchar](15) NULL,
		[HomePhone]           [nvarchar](24) NULL,
		[Extension]           [nvarchar](4) NULL,
		[Photo]               [image] NULL,
		[Notes]               [ntext] NULL,
		[ReportsTo]           [int] NULL,
		[PhotoPath]           [nvarchar](255) NULL,
		CONSTRAINT [PK_Employees]
		PRIMARY KEY
		CLUSTERED
		([EmployeeID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Employees]
	WITH NOCHECK
	ADD
	CONSTRAINT [CK_Birthdate]
	CHECK
	([BirthDate] < getdate())
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Employees]
CHECK CONSTRAINT [CK_Birthdate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [LastName]
	ON [dbo].[Employees] ([LastName])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [PostalCode]
	ON [dbo].[Employees] ([PostalCode])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Employees] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Employees]
	WITH NOCHECK
	ADD CONSTRAINT [FK_Employees_Employees]
	FOREIGN KEY ([ReportsTo]) REFERENCES [dbo].[Employees] ([EmployeeID])
ALTER TABLE [dbo].[Employees]
	CHECK CONSTRAINT [FK_Employees_Employees]

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
