CREATE TABLE [dbo].[Fault]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] TEXT NULL, 
    [Cost] DECIMAL(7, 2) NULL
)

GO

CREATE UNIQUE INDEX [IX_Fault_Id] ON [dbo].[Fault] (Id)
