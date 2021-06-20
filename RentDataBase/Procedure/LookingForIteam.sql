CREATE PROCEDURE LookingForIteam
	@name varchar(20)
AS
	SELECT * from Iteam
	where name = @name
RETURN 0;
