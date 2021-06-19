CREATE TABLE [dbo].[worker]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] TEXT NULL, 
    [Surname] TEXT NULL, 
    [Position_id] INT NULL, 
    CONSTRAINT [FK_worker_ToTable] 
	FOREIGN KEY (Position_id) REFERENCES Position(Id), 

)
