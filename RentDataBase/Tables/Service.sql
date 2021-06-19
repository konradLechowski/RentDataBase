CREATE TABLE [dbo].[Service]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(20) NULL, 
    [Surname] VARCHAR(20) NULL, 
    [Permission_id] INT NULL, 
    CONSTRAINT FK_Service_Permission FOREIGN KEY (Permission_id) REFERENCES Permission(Id)
)
