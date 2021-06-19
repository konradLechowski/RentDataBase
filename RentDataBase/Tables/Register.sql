CREATE TABLE [dbo].[Register]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Date_from] DATE NOT NULL, 
    [Date_to] DATE NOT NULL, 
    [Iteam_id] INT NOT NULL, 
    [Worker_id] INT NOT NULL, 
    [Service_id] INT NULL, 
    CONSTRAINT [FK_Register_Iteam] FOREIGN KEY (Iteam_id) REFERENCES Iteam(Id), 
    CONSTRAINT [FK_Register_Worker] FOREIGN KEY (Worker_id) REFERENCES Worker(Id), 
    CONSTRAINT [FK_Register_Service] FOREIGN KEY (Service_id) REFERENCES Service(Id)
)

GO

CREATE UNIQUE INDEX [IX_Register_Id] ON [dbo].[Register] (Id)
