﻿CREATE TABLE [dbo].[Availbility]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] TEXT NOT NULL
)

GO

CREATE INDEX [IX_Availbility_Id] ON [dbo].[Availbility] (Id)
