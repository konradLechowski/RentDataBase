CREATE TABLE [dbo].[Availbility]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] TEXT NOT NULL
)



CREATE INDEX [IX_Availbility_Id] ON [dbo].[Availbility] (Id);


CREATE TABLE [dbo].[Condition]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(20) NOT NULL
)



CREATE UNIQUE INDEX [IX_Condition_Id] ON [dbo].[Condition] (Id);


CREATE TABLE [dbo].[Fault]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] TEXT NULL, 
    [Cost] DECIMAL(7, 2) NULL
)



CREATE UNIQUE INDEX [IX_Fault_Id] ON [dbo].[Fault] (Id);



CREATE TABLE [dbo].[Iteam]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    [Availability_id] INT NULL, 
    [Condition_id] INT NULL, 
    CONSTRAINT FK_Iteam_Av FOREIGN KEY ([Availability_id]) REFERENCES Availbility(Id), 
    CONSTRAINT FK_Iteam_Condition FOREIGN KEY ([Condition_id]) REFERENCES Condition(Id)
)



CREATE UNIQUE INDEX [IX_Iteam_Id] ON [dbo].[Iteam] (Id)

CREATE TABLE [dbo].[Permission]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    [Description ] TEXT NULL
)


CREATE UNIQUE INDEX [IX_Permission_Id] ON [dbo].[Permission] (Id)


CREATE TABLE [dbo].[Position]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    
)


CREATE UNIQUE INDEX [IX_Position_Id] ON [dbo].[Position] (Id)

CREATE TABLE [dbo].[Register]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Date_from] DATE NOT NULL, 
    [Date_to] DATE NOT NULL, 
    [Iteam_id] INT NOT NULL, 
    [Worker_id] INT NOT NULL, 
    [Service_id] INT NULL, 
    CONSTRAINT [FK_Register_Iteam] FOREIGN KEY (Iteam_id) REFERENCES Iteam(Id), 
    CONSTRAINT [FK_Register_Worker] FOREIGN KEY (Worker_id) REFERENCES Worker(Id), 
    CONSTRAINT [FK_Register_Service] FOREIGN KEY (Service_id) REFERENCES Service(Id)
)


CREATE UNIQUE INDEX [IX_Register_Id] ON [dbo].[Register] (Id)


CREATE TABLE [dbo].[Repair] (
    [Id]        INT  IDENTITY (1, 1) NOT NULL,
    [Date_from] DATE NOT NULL,
    [Date_to]   DATE NULL,
    [Fault_id]  INT  NOT NULL,
    [Iteam_id] INT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Repair_Fault] FOREIGN KEY ([Fault_id]) REFERENCES [dbo].[Fault] ([Id]), 
    CONSTRAINT [FK_Repair_Iteam] FOREIGN KEY (Iteam_id) REFERENCES Iteam(Id)
);

GO

CREATE UNIQUE INDEX [IX_Repair_Id] ON [dbo].[Repair] (Id)


CREATE TABLE [dbo].[Reservation]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Date_from] DATE NOT NULL, 
    [Date_to] DATE NOT NULL, 
    [Worker_id] INT NOT NULL, 
    [Iteam_id] INT NOT NULL, 
    CONSTRAINT FK_Reservation_Worker FOREIGN KEY (Worker_id) REFERENCES Worker(Id), 
    CONSTRAINT FK_Reservation_Iteam FOREIGN KEY (Iteam_id) REFERENCES Iteam(Id)
)

GO

CREATE UNIQUE INDEX [IX_Reservation_Id] ON [dbo].[Reservation] (Id)


CREATE TABLE [dbo].[Service]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1), 
    [Name] VARCHAR(20) NOT NULL, 
    [Surname] VARCHAR(20) NULL, 
    [Permission_id] INT NULL, 
    CONSTRAINT FK_Service_Permission FOREIGN KEY (Permission_id) REFERENCES Permission(Id)
)

GO

CREATE UNIQUE INDEX [IX_Service_Id] ON [dbo].[Service] (Id)


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


