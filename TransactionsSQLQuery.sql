Use LMSDataBase
--===========================================================================
-- 1.Create a simple transaction Query and update the Data in table
--===========================================================================
Begin Transaction;
update hired_candidates set first_name = 'Kalpesh', last_name = 'Kumar' where id = 4;
Commit Transaction;
Rollback Transaction;
--===========================================================================
-- 2.Create a simple transaction Query with try-catch block
--===========================================================================
Begin
	Begin Try
		Begin Transaction
			Insert Into hired_candidates values('Jk',null,'Khan','jk@gmail.com','Noida','M.Tech','2020-10-07',8896898606,560037, 'SoftwareDeveloper', 'Good', 'Good', 'Good', 'Good', 'Ok', '',1);
		Commit Transaction --permanent data save
		Print 'Transaction Successfully Committed !!';
	End try
	Begin Catch
		Rollback Transaction
		Print 'Transaction Failed and Rollback';
		Select ERROR_MESSAGE() As [Error Message];
	End Catch
End
Select * From hired_candidates;
--===========================================================================
-- 3.Create a transaction Query with input parameter and try-catch block
--===========================================================================
Create PROCEDURE TncUserDocuments(
@creator_user int,
@field_name varchar(25),
@candidate_id int
)AS
BEGIN
	Begin Try
		Begin Transaction
		INSERT INTO candidates_personal_det_check(candidate_id,field_name,creator_user) Values(@candidate_id,@field_name,@creator_user);
		UPDATE fellowship_candidates SET personal_info_filled = 1 WHERE id = @candidate_id
		COMMIT Transaction;
	End Try
	BEGIN CATCH
        IF (XACT_STATE()) = -1 
        BEGIN  
            PRINT  N'The transaction is in an uncommittable state.' + 'Rolling back transaction.'  
            ROLLBACK TRANSACTION;  
        END;
        -- Test if the transaction is committable.  
        IF (XACT_STATE()) = 1  
        BEGIN  
            PRINT N'The transaction is committable.' + 'Committing transaction.'  
            COMMIT TRANSACTION;    
        END;
	END CATCH
END
EXEC TncUserDocuments 5,'UID',19
--===========================================================================
-- 4.Create a transaction Nested Query using In OR operator and Aggregate Max fun
--===========================================================================
Begin
	BEGIN TRY
		BEGIN TRANSACTION; 
--Find the maxmum salary from Fellowship_Candidates
			select * from Fellowship_Candidates
			where parent_annual_sal=(select max(parent_annual_sal)from fellowship_candidates);
--nested quaries
			select * from hired_candidates
			where hired_city in (select hired_city from hired_candidates
								 where first_name='Saddam' or first_name='Rani');
--Using In operator
			select * from hired_candidates
			where hired_city in (select hired_city from hired_candidates
								 where first_name in('Saddam','Rani'));
		COMMIT TRANSACTION;
		Print 'Trasaction successfully done';
	End Try
	Begin Catch
		Rollback TRANSACTION;
		Select
				ERROR_MESSAGE() AS ErrorMessage;
	End Catch
End