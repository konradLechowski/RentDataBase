CREATE TABLE [dbo].[iteam]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] TEXT NULL, 
    [Availability_id] INT NULL, 
    CONSTRAINT FK_Iteam_Av FOREIGN KEY ([Availability_id]) REFERENCES Availbility(Id)
)
