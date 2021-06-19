CREATE TABLE [dbo].[Service]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(20) NOT NULL, 
    [Surname] VARCHAR(20) NULL, 
    [Permission_id] INT NULL, 
    CONSTRAINT FK_Service_Permission FOREIGN KEY (Permission_id) REFERENCES Permission(Id)
)

GO

CREATE UNIQUE INDEX [IX_Service_Id] ON [dbo].[Service] (Id)
