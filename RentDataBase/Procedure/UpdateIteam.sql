CREATE PROCEDURE [dbo].UpdateIteam 
	@name varchar(20),
	@Availbility_id int,
	@Condition_id int,
	@id int
	
AS
	Update  Iteam
	set  name = @name,
	Availbility_id = @Availbility_id,
	Condition_id = @Condition_id
	where id = @id;

GO;

