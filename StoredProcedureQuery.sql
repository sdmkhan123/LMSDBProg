--=================================================================================
--Shows the table detail of fellowship_candidates table
--=================================================================================
CREATE PROCEDURE SelectFirstName
@first_name nvarchar(100)
AS
SELECT * FROM fellowship_candidates
GO;

EXEC SelectFirstName @first_name = 'Saddam';
--=================================================================================
--Store procedure for Add a new user detail and show user table detail
--=================================================================================
CREATE PROCEDURE InsertAndShowCreateUser(
@email varchar(50),
@first_name varchar(100),
@last_name varchar(100),
@password varchar(15),
@contact_number bigint,
@verified bit
)
AS
BEGIN
	BEGIN TRY
		INSERt INTO user_details VALUES(@email,@first_name,@last_name,@password,@contact_number,@verified);
		SELECT * FROM user_details;
	END TRY
	BEGIN CATCH
		SELECT  
			ERROR_NUMBER() AS ErrorNumber  
			,ERROR_SEVERITY() AS ErrorSeverity  
			,ERROR_STATE() AS ErrorState  
			,ERROR_PROCEDURE() AS ErrorProcedure  
			,ERROR_LINE() AS ErrorLine  
			,ERROR_MESSAGE() AS ErrorMessage; 
	END CATCH
END
EXEC InsertAndShowCreateUser 'sdmkhan@gmail.com','sdmkhan','khan','sdmkhan@123',889689606,1;