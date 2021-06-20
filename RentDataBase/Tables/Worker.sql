CREATE TABLE [dbo].[Worker]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(20) NOT NULL, 
    [Surname] VARCHAR(20) NOT NULL, 
    [Position_id] INT NOT NULL, 
    CONSTRAINT [FK_worker_ToTable] 
	FOREIGN KEY (Position_id) REFERENCES Position(Id), 

)

GO

CREATE UNIQUE INDEX [IX_Worker_Id] ON [dbo].[Worker] (Id)
