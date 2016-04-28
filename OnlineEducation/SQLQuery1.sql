/*select  EMAIL FROM REGISTRATION WHERE USERNAME='iliqn';
select * from REGISTRATION
delete   from REGISTRATION where ID_USER=12 */
/*Create procedure prUserNameExists 'admin'
@USERNAME  varchar(30)
as 
begin 

	declare @Count int 
	select @Count =  COUNT(ID_USER) from REGISTRATION
	where USERNAME= @USERNAME
	IF(@Count>0)
		Select 1 as UserNameExists
	ELSE
		Select 0 as UserNameNotExists
end */