CREATE PROCEDURE [dbo].CreatingReservation 
	@Date_from date,
	@Date_to date,
	@Worker_id int,
	@Iteam_name varchar(20)
	/* format daty yyyymmdd*/
	
AS
	select top 1 id from Iteam
	where name = @Iteam_name 
	and Availability_id = 1 
	and Condition_id = 1;

	Insert into Reservation
	(Date_from, Date_to, Worker_id, Iteam_id)
	values (@Date_from, @Date_to,@Worker_id, Iteam.id);
	
	update Iteam
	set Availability_id = 3
	where id = Iteam.id;


GO;
