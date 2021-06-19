CREATE TABLE [dbo].[Rent]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Reservation_id] INT NULL, 
    [Service_id] INT NULL, 
    CONSTRAINT FK_Rent_Reservation FOREIGN KEY (Reservation_Id) REFERENCES Reservation(Id), 
    CONSTRAINT FK_Rent_Service FOREIGN KEY (Service_Id) REFERENCES Service(Id)
)

GO

CREATE UNIQUE INDEX [IX_Rent_Id] ON [dbo].[Rent] (Id)
