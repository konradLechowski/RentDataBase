CREATE TABLE [dbo].[Iteam]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NULL, 
    [Availability_id] INT NULL, 
    [Condition_id] INT NULL, 
    CONSTRAINT FK_Iteam_Av FOREIGN KEY ([Availability_id]) REFERENCES Availbility(Id), 
    CONSTRAINT FK_Iteam_Condition FOREIGN KEY ([Condition_id]) REFERENCES Condition(Id)
)

GO

CREATE UNIQUE INDEX [IX_Iteam_Id] ON [dbo].[Iteam] (Id)
