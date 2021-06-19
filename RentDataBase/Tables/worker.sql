CREATE TABLE [dbo].[Worker]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(20) NULL, 
    [Surname] VARCHAR(20) NULL, 
    [Position_id] INT NULL, 
    CONSTRAINT [FK_worker_ToTable] 
	FOREIGN KEY (Position_id) REFERENCES Position(Id), 

)
