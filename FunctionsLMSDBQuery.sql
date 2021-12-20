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