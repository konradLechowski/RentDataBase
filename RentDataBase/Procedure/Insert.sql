
	Insert Position (Name)
	values ('ksiêgowy'),
	('programista'),
	('dyrektor'),
	('kierownik'),
	('konsultant');

	Insert Rent(Reservation_id, Service_id)



	Insert Repair(Date_from, Date_to, Fault_id)
	values ('2021.07.2','2021.07.25',2,3),

	Insert Reservation (Date_from, Date_to, Worker_id, Iteam_id)
	values	('2021.07.20','2021.07.25',2,3),
			('2021.07.02','2021.07.12',1,3),
			('2021.06.23','2021.07.24',4,1),
			('2021.06.24','2021.07.01',2,4);
			
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