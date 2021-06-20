CREATE TABLE [dbo].[Rent]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Reservation_id] INT NOT NULL, 
    [Service_id] INT NOT NULL, 
    CONSTRAINT FK_Rent_Reservation FOREIGN KEY (Reservation_Id) REFERENCES Reservation(Id), 
    CONSTRAINT FK_Rent_Service FOREIGN KEY (Service_Id) REFERENCES Service(Id)
)

GO

CREATE UNIQUE INDEX [IX_Rent_Id] ON [dbo].[Rent] (Id)
