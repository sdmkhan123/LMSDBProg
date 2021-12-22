use LMSDataBase
--================================================================
--1.Forward Only cursor type cursor
--================================================================
declare MyForwardOnlycursorName cursor for select * from hired_candidates
--Opening cursor
open MyForwardOnlycursorName;
--Fetch data
fetch next from MyForwardOnlycursorName
--Closing the cursor
close MyForwardOnlycursorName
--Deallocate the cursor
deallocate MyForwardOnlycursorName
--================================================================
--2.Using Scroll cursor
--================================================================
select * from hired_candidates;
declare MycursorName cursor scroll for select * from hired_candidates
--Opening cursor
open MycursorName;
--Fetch data
fetch first from MycursorName;
fetch next from MycursorName;
fetch last from MycursorName;
fetch prior from MycursorName;
fetch absolute 4 from MycursorName;
fetch relative 2 from MycursorName;
--Closing the cursor
close MycursorName
--Deallocate the cursor
deallocate MycursorName
--================================================================
--3.Using Static Cursor
--================================================================
--Changes made to the original table will not be reflects in the Static Cursor
select * from hired_candidates;
declare MyStaticCursorName cursor
static for
select * from hired_candidates
--Opening cursor
open MyStaticCursorName;
--Fetch data
fetch first from MyStaticCursorName;
fetch next from MyStaticCursorName;
fetch last from MyStaticCursorName;
fetch prior from MyStaticCursorName;
fetch absolute 4 from MyStaticCursorName;
fetch relative 2 from MyStaticCursorName;
--Closing the cursor
close MyStaticCursorName
--Deallocate the cursor
deallocate MyStaticCursorName
--================================================================
--4.Using Dynamic Cursor
--================================================================
--All changes made to the original table will reflects in the Dynamic Cursor
select * from hired_candidates;
declare MyDynamicCursorName cursor
Dynamic for
select * from hired_candidates
--Opening cursor
open MyDynamicCursorName;
--Fetch data
fetch first from MyDynamicCursorName;
fetch next from MyDynamicCursorName;
fetch last from MyDynamicCursorName;
fetch prior from MyDynamicCursorName;
--fetch absolute 2 from MyDynamicCursorName;
fetch relative 2 from MyDynamicCursorName;
--Closing the cursor
close MyDynamicCursorName
--Deallocate the cursor
deallocate MyDynamicCursorName
--================================================================
--5.Using Keyset-driven Cursor
--================================================================
--Every keyset uniquely identifies a single row in the result set.
select * from maker_program;
declare MyKeysetDrivenCursorName cursor
Dynamic for
select * from maker_program
--Opening cursor
open MyKeysetDrivenCursorName;
--Fetch data
fetch first from MyKeysetDrivenCursorName;
fetch next from MyKeysetDrivenCursorName;
--Closing the cursor
close MyKeysetDrivenCursorName
--Deallocate the cursor
deallocate MyKeysetDrivenCursorName