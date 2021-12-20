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
Select * From GetMulCandidate() 

--=============================================================
--System Defined Scalar Function
--=============================================================
Select Upper(first_name) as FirstName From fellowship_candidates
Select Lower(first_name) as FirstName From fellowship_candidates
Select Len(first_name) as FirstName From fellowship_candidates
Select Substring(first_name,2,4)as SubStrings From fellowship_candidates
--=============================================================
--System Defined Aggregate Function
--=============================================================
Select Avg(parent_annual_sal) as Salary From fellowship_candidates
Select Min(parent_annual_sal) as Salary From fellowship_candidates
Select Max(parent_annual_sal) as Salary From fellowship_candidates
Select Sum(parent_annual_sal) as Salary From fellowship_candidates
Select Count(parent_annual_sal) as Salary From fellowship_candidates

--Mathematical function to print the number
Create Function fun_PrintNumber()  
Returns Decimal(7,2)  
As
Begin  
Return 1000.13
End
Print dbo.fun_PrintNumber()

--Mathematical function to create a two-number addition.
Create Function Fun_Addition(@Num1 Decimal(7,2),@Num2 Decimal(7,2))  
Return Decimal(7,2)  
Begin  
Declare @Result Decimal(7,2)  
set @Result = @Num1 + @Num2  
Return @Result  
End
Print dbo.Fun_Addition(12.254,13.1546) 