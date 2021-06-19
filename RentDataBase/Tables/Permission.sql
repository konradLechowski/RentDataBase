CREATE TABLE [dbo].[Permission]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Description ] TEXT NULL
)

GO

CREATE UNIQUE INDEX [IX_Permission_Id] ON [dbo].[Permission] (Id)
