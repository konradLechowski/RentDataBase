CREATE TABLE [dbo].[Repair]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Date_from] DATE NULL, 
    [Date_to] DATE NULL, 
    [Fault_id] INT NULL, 
    CONSTRAINT FK_Repair_Fault FOREIGN KEY (Fault_id) REFERENCES Fault(id)
)

GO

CREATE UNIQUE INDEX [IX_Repair_Id] ON [dbo].[Repair] (Id)
