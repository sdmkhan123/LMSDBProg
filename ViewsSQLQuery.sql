use LMSDataBase
--======================================================================
--1.Writing a query to creates a Simple View Virtual Table
--======================================================================
Create View ViewTableForInsertion as
select * from user_roles;
select role_name from ViewTableForInsertion
where user_id = 2;
--insert into ViewTableForInsertion values('Clang');
select * from ViewTableForInsertion;
DROP VIEW ViewTableForInsertion;
--======================================================================
--2.Writing a Simple View query to creates Virtual Table of user_roles 
--======================================================================
CREATE VIEW user_rolesViewTable AS
select * from user_roles;
SELECT role_name
FROM user_rolesViewTable
WHERE user_id < 5;
DROP VIEW user_rolesViewTable;
--======================================================================
--Writing a View query to creates Virtual Table of fellowship_candidates 
--======================================================================
CREATE VIEW CandidateViewTable AS SELECT * FROM fellowship_candidates;
SELECT * FROM CandidateViewTable
SELECT * from fellowship_candidates
--Inserting data into CandidateViewTable virtual table
INSERT CandidateViewTable VALUES
('Raj', 'Kumar', 'Yadav', 'raj@gmail.com ', 'Agra','B.Sc','2018-12-13', 8885699650, 413517, 'Frontend', 'Good',
'Nice', 'Good', 'Good', '2000-12-13', 1, 'Dnyanoba', 'Farmer',8220145875, 200000.00, 'Nanded', 'Nanded',
'photo_path.jpg', '2019-05-13', 'Nice', 0, 0, 0, 'Correct', 'Good', null, 4);
--Update the data into CandidateViewTable tbale
UPDATE CandidateViewTable 
SET hired_lab = 'Angular'
WHERE id = 5
DELETE CandidateViewTable WHERE id = 5
DROP VIEW CandidateViewTable;
--======================================================================
--write join query on view virtual table
--======================================================================
CREATE VIEW viewTableOfCandidates AS
SELECT c.first_name,c.last_name,b.account_num,b.ifsc_code FROM fellowship_candidates c
LEFT OUTER JOIN candidate_bank_det b
ON c.id = b.candidate_id;
SELECT * FROM viewTableOfCandidates
DROP VIEW viewTableOfCandidates;