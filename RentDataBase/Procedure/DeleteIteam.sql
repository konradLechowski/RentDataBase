CREATE PROCEDURE [dbo].DeleteIteam 
	@Id int
	/* format daty yyyymmdd*/
	
AS
	delete from Iteam
	where id = @id
	and Availability_id = 1;


GO;
