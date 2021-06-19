﻿CREATE TABLE [dbo].[Condition]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(20) NOT NULL
)

GO

CREATE UNIQUE INDEX [IX_Condition_Id] ON [dbo].[Condition] (Id)
