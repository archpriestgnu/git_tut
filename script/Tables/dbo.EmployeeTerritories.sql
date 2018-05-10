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

-- Create Table [dbo].[EmployeeTerritories]
Print 'Create Table [dbo].[EmployeeTerritories]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[EmployeeTerritories] (
		[EmployeeID]      [int] NOT NULL,
		[TerritoryID]     [nvarchar](20) NOT NULL,
		CONSTRAINT [PK_EmployeeTerritories]
		PRIMARY KEY
		NONCLUSTERED
		([EmployeeID], [TerritoryID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[EmployeeTerritories] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[EmployeeTerritories]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeeTerritories_Employees]
	FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
ALTER TABLE [dbo].[EmployeeTerritories]
	CHECK CONSTRAINT [FK_EmployeeTerritories_Employees]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[EmployeeTerritories]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeeTerritories_Territories]
	FOREIGN KEY ([TerritoryID]) REFERENCES [dbo].[Territories] ([TerritoryID])
ALTER TABLE [dbo].[EmployeeTerritories]
	CHECK CONSTRAINT [FK_EmployeeTerritories_Territories]

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
