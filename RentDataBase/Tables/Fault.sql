CREATE TABLE [dbo].[Fault]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] TEXT NULL, 
    [Cost] DECIMAL(7, 2) NULL
)
