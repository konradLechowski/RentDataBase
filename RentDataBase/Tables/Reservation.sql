CREATE TABLE [dbo].[Reservation]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Date_from] DATE NULL, 
    [Date_to] DATE NOT NULL, 
    [Worker_id] INT NOT NULL, 
    [Iteam_id] INT NOT NULL, 
    CONSTRAINT FK_Reservation_Worker FOREIGN KEY (Worker_id) REFERENCES Worker(Id), 
    CONSTRAINT FK_Reservation_Iteam FOREIGN KEY (Iteam_id) REFERENCES Iteam(Id)
)

GO

CREATE UNIQUE INDEX [IX_Reservation_Id] ON [dbo].[Reservation] (Id)
