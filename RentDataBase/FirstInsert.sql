CREATE PROCEDURE [dbo].[FirstInsert]
as
begin
set NOCOUNT ON;

Insert into Position (Name)
values ('kierownik'), 
('programista'),
('grafik'), 
('księgowy'), 
('konsultant')	

END
GO




