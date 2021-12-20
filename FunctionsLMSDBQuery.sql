use LMSDataBase
--=============================================================
--User Defined Scalar Function
--=============================================================
--Create function to get Candidate full name and pincode
Create function GetCandidatFullName
(
@first_name varchar(100),
@last_name varchar(100)
)
returns varchar(201)
As
Begin return (Select @first_name + ' '+ @last_name);
end
--Calling the above created function
Select dbo.GetCandidatFullName(first_name,last_name) as Name, permanent_pincode from fellowship_candidates

--=============================================================
--User Defined Inline Table-Valued Function
--=============================================================
--Create function to get Fellowship Candidates table
Create function GetCandidatTable()
returns Table
As
return (Select * from fellowship_candidates)
--Now we call the above created function
Select * from GetCandidatTable()