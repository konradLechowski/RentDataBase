CREATE TABLE [dbo].[Register]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Date_from] DATE NULL, 
    [Date_to] DATE NULL, 
    [Iteam_id] INT NULL, 
    [Worker_id] INT NULL, 
    [Service_id] INT NULL, 
    CONSTRAINT [FK_Register_Iteam] FOREIGN KEY (Iteam_id) REFERENCES Iteam(Id), 
    CONSTRAINT [FK_Register_Worker] FOREIGN KEY (Worker_id) REFERENCES Worker(Id), 
    CONSTRAINT [FK_Register_Service] FOREIGN KEY (Service_id) REFERENCES Service(Id)
)
