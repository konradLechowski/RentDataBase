CREATE PROCEDURE [dbo].CreatingReservation 
	@Date_from date,
	@Date_to date,
	@Worker_id int,
	@Iteam_id int
	/* format daty yyyymmdd*/
	
AS
	Insert into Reservation
	(Date_from, Date_to, Worker_id, Iteam_id)
	values (@Date_from, @Date_to,@Worker_id, @Iteam_id);

GO;
