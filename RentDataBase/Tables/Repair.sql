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
