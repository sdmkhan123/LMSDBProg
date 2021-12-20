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
--=============================================================
--User Defined Multi-Statement Table-Valued Function
--=============================================================
--Create function for CandidateId,first_name, last_name, mobile_num and permanent_pincode of fellowship_candidates
Create function GetMulCandidate()
returns @Candidae Table
(
Id int, 
first_name varchar(100),
last_name varchar(100),
mobile_num bigint,
permanent_pincode int
)
As
begin
Insert into @Candidae
Select c.id, c.first_name, c.last_name, c.mobile_num, c.permanent_pincode
From fellowship_candidates c
--Now update pincode of first candidate
update @Candidae
	set permanent_pincode=25000 
	where id=1
return
end
--Now call the above created function
Select * from GetMulCandidate() 