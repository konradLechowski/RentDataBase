CREATE PROCEDURE [dbo].DeletingReservation 
	@Id int
	
AS
	Delete from Reservation
	where id = @id 
GO;
