CREATE TABLE [dbo].[Iteam]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NULL, 
    [Availability_id] INT NULL, 
    CONSTRAINT FK_Iteam_Av FOREIGN KEY ([Availability_id]) REFERENCES Availbility(Id)
)
