CREATE TABLE [dbo].[Worker]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(20) NULL, 
    [Surname] VARCHAR(20) NULL, 
    [Position_id] INT NULL, 
    CONSTRAINT [FK_worker_ToTable] 
	FOREIGN KEY (Position_id) REFERENCES Position(Id), 

)

GO

CREATE UNIQUE INDEX [IX_Worker_Id] ON [dbo].[Worker] (Id)
