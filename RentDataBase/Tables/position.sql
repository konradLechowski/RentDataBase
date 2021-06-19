CREATE TABLE [dbo].[Position]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NULL, 
    
)

GO

CREATE UNIQUE INDEX [IX_Position_Id] ON [dbo].[Position] (Id)
