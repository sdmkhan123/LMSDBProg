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