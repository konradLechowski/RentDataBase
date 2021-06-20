CREATE TABLE [dbo].[Position]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    
)

GO

CREATE UNIQUE INDEX [IX_Position_Id] ON [dbo].[Position] (Id)
