

	SET IDENTITY_INSERT [dbo].[Availbility] ON
INSERT INTO [dbo].[Availbility] ([Id], [Name]) VALUES (1, N'Dostepne')
INSERT INTO [dbo].[Availbility] ([Id], [Name]) VALUES (2, N'W naprawie')
INSERT INTO [dbo].[Availbility] ([Id], [Name]) VALUES (3, N'Zarezerwowane')
INSERT INTO [dbo].[Availbility] ([Id], [Name]) VALUES (4, N'Wypozyczone')
SET IDENTITY_INSERT [dbo].[Availbility] OFF

SET IDENTITY_INSERT [dbo].[Condition] ON
INSERT INTO [dbo].[Condition] ([Id], [Name]) VALUES (1, N'Sprawny')
INSERT INTO [dbo].[Condition] ([Id], [Name]) VALUES (2, N'Uszkodzony')
INSERT INTO [dbo].[Condition] ([Id], [Name]) VALUES (3, N'Po naprawie')
SET IDENTITY_INSERT [dbo].[Condition] OFF


SET IDENTITY_INSERT [dbo].[Fault] ON
INSERT INTO [dbo].[Fault] ([Id], [Name], [Description], [Cost]) VALUES (1, N'zarysowanie', N'rysa na obudowie urzadzenia zabezpieczenie folia', CAST(300.00 AS Decimal(7, 2)))
INSERT INTO [dbo].[Fault] ([Id], [Name], [Description], [Cost]) VALUES (2, N'pekniecie', N'wymagana wymiana obudowy na nowa ', CAST(500.00 AS Decimal(7, 2)))
INSERT INTO [dbo].[Fault] ([Id], [Name], [Description], [Cost]) VALUES (3, N'przepalenie', N'przepalenie bezpiecznika wymianan na nowy', CAST(1000.00 AS Decimal(7, 2)))
INSERT INTO [dbo].[Fault] ([Id], [Name], [Description], [Cost]) VALUES (4, N'pekniecie ekranu', N'wymiana wyswietlacza', CAST(750.00 AS Decimal(7, 2)))
SET IDENTITY_INSERT [dbo].[Fault] OFF


SET IDENTITY_INSERT [dbo].[Iteam] ON
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (1, N'smartphone', 1, 1)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (2, N'laptop', 2, 2)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (3, N'karta graficzna', 1, 3)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (4, N'procesor', 3, 1)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (5, N'laptop', 1, 3)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (6, N'laptop', 2, 1)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (7, N'laptop', 1, 1)
INSERT INTO [dbo].[Iteam] ([Id], [Name], [Availability_id], [Condition_id]) VALUES (8, N'smartphone', 3, 3)
SET IDENTITY_INSERT [dbo].[Iteam] OFF


SET IDENTITY_INSERT [dbo].[Permission] ON
INSERT INTO [dbo].[Permission] ([Id], [Name], [Description ]) VALUES (1, N'naprawa', N'pozwala na dokonywania wszelkich napraw urzadzeni')
INSERT INTO [dbo].[Permission] ([Id], [Name], [Description ]) VALUES (2, N'wyminana czesci', N'pozwala na wymiane uszkodzonej czesci')
INSERT INTO [dbo].[Permission] ([Id], [Name], [Description ]) VALUES (3, N'zabezpieczenie ', N'pozwala na zabezpieczenie urzadzenia')
INSERT INTO [dbo].[Permission] ([Id], [Name], [Description ]) VALUES (4, N'wypozyczenie', N'pozwala na wypozyczenie urzadzenia pracownikowi')
SET IDENTITY_INSERT [dbo].[Permission] OFF



	Insert Position (Name)
	values ('ksiêgowy'),
	('programista'),
	('dyrektor'),
	('kierownik'),
	('konsultant');

	Insert Rent(Reservation_id, Service_id)
	values	(1,2),
			(2,3);




	Insert Repair(Date_from, Date_to, Fault_id, iteam_id)
	values	('2021.06.20','2021.07.25',2,8),
			('2021.06.19','2021.07.07',3,7),
			('2021.07.15', '2021.06.23'1,6);


	Insert Reservation (Date_from, Date_to, Worker_id, Iteam_id)
	values	('2021.06.20','2021.06.25',2,3),
			('2021.06.22','2021.06.17',1,3),
			('2021.07.23','2021.07.24',4,1),
			('2021.07.24','2021.07.01',2,4);
			
	Insert Service (Name, Surname, Permission_id)
	values	('Renata',' Urbañska',1),
			('Jerzy', 'Wróblewski', 2),
			('Stanis³aw', 'Kowalski', 3),
			('Edyta', 'Nowicka',4);

	Insert Worker (Name, Surname, Position_id)
	values	('Konrad', 'Lechowski', 1),
			('Jan','Nowak',2),
			('Henryk','Kowalski',4),
			('Anna','Jopek',2);