CREATE PROCEDURE [dbo].InsertNewIteam 
	@name varchar(20)

	
AS
	Insert into Iteam
	(name, Availability_id, Condition_id)
	values (@name, 1,1);

GO;

