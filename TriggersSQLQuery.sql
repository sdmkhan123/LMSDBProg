use LMSDataBase
--===================================================================================
--1.Write a simple query for creates DDL Trigger
--===================================================================================
CREATE TRIGGER DdlTriggerName
on database
for
create_table,alter_table,drop_table
as
print'you can not create ,drop and alter table in this database'
rollback;
--===================================================================================
--2.Write a simple query for creates DML Trigger
--===================================================================================
create trigger DmlTriggerName
on hired_candidates
for
insert,update,delete
as
print'you can not insert,update and delete this table i'
rollback;
--===================================================================================
--3.Write a simple query for creates Trigger using Begin-End and Try-Catch block
--===================================================================================
Create TRIGGER insertTrigger
on hired_candidates
for
insert,update,delete
AS
BEGIN
	Begin try
		print 'This is trigger call successfully'
	End try
	Begin Catch
		Select ERROR_MESSAGE() As [Error Message];
	End Catch
End