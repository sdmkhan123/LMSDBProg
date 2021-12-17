use LMSDataBase
--=========================================================
--1.Insert data into Hired Candidates Table
--=========================================================
insert into hired_candidates values
('Saddam','','Khan','sdm@gmail.com','Noida','M.Tech','2020-10-07',8896898606,560037, 'SoftwareDeveloper', 'Good', 'Good', 'Good', 'Good', 'Ok', '',1),
('Hanif','','Md','Hanif@gmail.com','Mumbai','M.Tech','2020-08-07',8896998606,560036, 'Testing', 'Good', 'Good', 'Good', 'Good', 'Ok', '',1),
('Rani','','Gupta','Rani@gmail.com','Jharkkhand','B.Tech','2020-09-07',8886898606,20037, 'WebDevloper', 'Good', 'Good', 'Good', 'Good', 'Ok', '',1),
('Kalpesh','','Kumar','Kalpesh@gmail.com','Delhi','M.Sc','2020-08-07',7896898606,55003, 'SoftwareDeveloper', 'Good', 'Good', 'Good', 'Good', 'Ok', '',1),
('Taran','','Singh','Taran@gmail.com','Bangalore','M.Tech','2019-07-07',9896898606,160037, 'Testing', 'Good', 'Good', 'Good', 'Good', 'Ok', '',1)
--=========================================================
--2.Insert data into Fellowship Candidates table
--=========================================================
insert into fellowship_candidates values
('Saddam', null, 'Khan', 'sdm@gmail.com ', 'Latur','M.Tech','2019-12-13', 8956748596,413517, 'Backend',
'Good', 'Good', 'Good', 'Good', '1999-12-13', 1, 'Dnyanoba', 'Farmer', 7584962547, 300000.00, 'Udgir', 'Udgir',
'photo_path.jpg', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
('Rani', null, 'Gupta', 'Rani@gmail.com ', 'Udgir','B.Tech','2018-11-01', 8999772355, 413517, 'Backend',
'Good', 'Good', 'Good', 'Good', '1998-04-27', 1, 'Vasant', 'Army', 7584962547, 300000.00, 'Udgir', 'Udgir',
'photo_path.jpg', '2018-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
('Taran', 'Gill', 'singh', 'singh@gmail.com ', 'Nanded','M.Tech','2017-10-01', 7875965478, 431715, 'Backend',
'Good', 'Good', 'Good', 'Good', '1997-06-05', 1, 'Eknath', 'Farmer', 7584962547, 300000.00, 'Nanded', 'Nanded',
'photo_path.jpg', '2017-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 2),
('Atul', null, 'Shinde', 'atul@gmail.com ', 'Udgir','M.Sc','2019-10-01', 8965741201, 413517, 'Java', 'Good',
'Fine', 'Good', 'Good', '1997-06-05', 1, 'Arvind', 'Teacher', 7584962547, 450000.00, 'Udgir', 'Udgir',
'photo_path.jpg', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 3)
--=========================================================
--3.Insert data into Candidate personal details check Table
--=========================================================
insert into Candidates_Personal_Det_Check values
(1, 'hello', 1,'2020-11-05',1,'',1),
(2, 'hii', 1,'2021-06-05',1,'',1),
(3, 'Hey', 1,'2020-07-15',1,'',1),
(2, 'welcome', 1,'2020-09-05',1,'',1),
(1, 'yes', 0,'2019-01-05',1,'',1)
select * from Candidates_Personal_Det_Check
--=========================================================
--4.Insert data into Candidate bank details check Table
--=========================================================
insert into candidate_bank_det values
(2,'Vikas',075611610021545,1,'BKID002154',1,'CSIPG052J',1,321549874512,1,NULL,1),
(4,'Saddam',845611610021545,1,'PAYTM0021',1,'CSIPG013J',1,681549874512,1,NULL,4),
(3,'Khan',845611610021545,1,'PAYTM0021',1,'CSIPG013J',1,681549874512,1,NULL,4),
(4,'Sdm',845611610021545,1,'PAYTM0021',1,'CSIPG013J',1,681549874512,1,NULL,4),
(2,'Atul',12511610021545,1,'KTK002154',1,'CSING042J',1,681549874512,1,NULL,2)
select * from candidate_bank_det
--=========================================================
--5.Insert data into Candidate qualification Table
--=========================================================
insert into candidate_qualification values
(1,1,'B.Tech',1,'Good',1,2017,1,80.65,88.00,1,'Bridgelabz',1,24,1,1,1,NULL,1),
(3,1,'M.Tech',1,'Good',1,2018,1,79.65,7.00,1,'Bridgelabz',1,24,1,1,1,NULL,1),
(4,1,'MCA',1,'Good',1,2019,1,68.65,68.00,1,'Bridgelabz',1,24,1,1,1,NULL,2),
(1,1,'BCA',1,'Good',1,2020,1,78.65,67.00,1,'Bridgelabz',1,24,1,1,1,NULL,3),
(2,1,'BCOM',1,'Good',1,2015,1,83.65,78.00,1,'Bridgelabz',1,24,1,1,1,NULL,4)
select * from candidate_qualification
--=========================================================
--6.Insert data into Candidate education_det_check Table
--=========================================================
insert into candidates_education_det_check values
(1,'field_name',1,'2020-12-08',2,'',1),
(2,'field_name',1,'2020-12-08',2,'',1),
(3,'field_name',1,'2020-12-08',2,'',1),
(4,'field_name',1,'2020-12-08',2,'',1)
select * from candidates_education_det_check
--=========================================================
--7.Insert data into Candidate Documents Table
--=========================================================
insert into candidate_docs values
(1,'Degree','C:\desktop\docs\a.pdf',1,NULL,1),
(1,'Voterid','C:\desktop\docs\b.pdf',1,NULL,2),
(4,'PAN','C:\desktop\docs\c.pdf',1,NULL,3),
(2,'Adhar','C:\desktop\docs\d.pdf',1,NULL,4),
(3,'Marksheet','C:\desktop\docs\e.pdf',1,NULL,5)
select * from candidate_docs
--=========================================================
--8.Insert data into User Details Table
--=========================================================
insert into user_details values
('sdm@gmail.com', 'Sdm', 'khan', 'sdm@123', 9854124587, 1),
('rani@gmail.com', 'Rani', 'gupta', 'rani@123', 8745962145, 1),
('taran@gmail.com', 'Taran', 'singh', 'taran@123', 7756998001, 1),
('pappu@gmail.com', 'Pappu', 'pandey', 'pappu@123', 7780021540, 1),
('kalpesh@gmail.com', 'Kalpesh', 'kummar', 'kalpesh@123', 7780021540, 1)
--=========================================================
--9. Insert data into User Roles Table
--=========================================================
insert into User_Roles values
('Backend'),
('Fullstack'),
('DevOps'),
('Frontend'),
('Tester')
select * from User_Roles
--=========================================================
--10.Insert data into Company Table
--=========================================================
insert into company values
('KPMG','Hyderabad', 'Andhra', 1,NULL,1),
('Dell','Pune', 'MH', 1,NULL,2),
('Amazon','Mumbai', 'MH', 1,NULL,3),
('Magic','Benglore', 'KA', 1,NULL,4),
('Intel','LK', 'UP', 1,NULL,5)
select * from company
--=========================================================
--11.Insert data into tech stack Table
--=========================================================
insert  into tech_stack values
('C#', null, '.NET', 'T', null, 1),
('C++', null, 'gcc', 'T', null, 1),
('Python', null, 'Pycharm', 'T', null, 1),
('Java', null, 'eclips', 'T', null, 1),
('HTML', null, 'notepad', 'T', null, 1)
select * from tech_stack
--=========================================================
--12.Insert data into tech type Table
--=========================================================
insert  into tech_type values
('java','y','',2),
('dotnet','y','',2),
('python','y','',2),
('AI','y','',2)
select * from tech_type
--=========================================================
--13.Insert data into maker program Table
--=========================================================
insert into Maker_Program values
(1, 2,'program_name','training','program_link', 1,'description',1,null,2),
(2, 1,'program_name','training','program_link', 1,'description',1,null,2),
(3, 2,'program_name','training','program_link', 1,'description',1,null,2),
(5, 4,'program_name','training','program_link', 1,'description',1,null,2)
select * from Maker_Program
--=========================================================
--14.Insert data into app parameters Table
--=========================================================
insert app_parameters values
('Engineer','fine','Execellent','Y',1,null, null,1,1),
('Look','fine','good','Y',1,null, null,1,2),
('Scale','nice','Execellent','Y',1,null, null,1,3),
('Frame','fine','Execellent','Y',1,null, null,1,4)
select * from app_parameters
--=========================================================
--15.Insert data into lab Table
--=========================================================
insert into lab values
('Testing','Mumbai','Bandra',2,null,2),
('Fullstack','Bangalore','Kora',1,null,2),
('Backend','Mumbai','Bandra',1,null,2),
('frontend','Hyderabad','HighTech',0,null,2)
select * from lab
--=========================================================
--16.Insert data into mentor Table
--=========================================================
insert mentor values
(4,'Ahshan','Lead',1,null,1),
(1,'Gunjan','Manager',1,null,1),
(2,'Murli','Mentor',1,null,1),
(4,'Ayshi','Coordinator',1,null,1)
select * from mentor
--=========================================================
--17.Insert data into mentor ideation map Table
--=========================================================
insert mentor_ideation_map values
(1,1,null,2),
(2,1,null,2),
(2,1,null,2),
(5,1,null,2),
(1,1,null,2),
(8,1,null,2),
(2,1,null,2),
(4,1,null,2)
select * from mentor_ideation_map
--=========================================================
--18.Insert data into mentor techstack Table
--=========================================================
insert mentor_techstack values
(1,1,1,null,2),
(2,2,1,null,4),
(1,2,1,null,2),
(4,3,1,null,2)
select * from mentor_techstack
--=========================================================
--19.Insert data into Company Requirement Table
--=========================================================
insert company_requirement values
(4, 1, 'twelve', 'Agra', 1, null, 15, 2, 1, 2, 1, 1, 1, 'good', 1, null, 2),
(2, 3, 'three', 'Bangalore', 1, null, 9, 3, 1, 3, 1, 1, 1, 'good', 1, null, 2),
(3, 4, 'nine', 'Mumbai', 1, null, 35, 2, 1, 4, 1, 1, 1, 'good', 1,null, 2),
(2, 1, 'six', 'Delhi' ,1, null, 5, 2, 1, 2, 1, 1, 1, 'good', 1, null, 2)
select * from company_requirement