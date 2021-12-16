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
--3.Insert data into Candidate bank details check Table
--=========================================================
insert into candidate_bank_det values
(2,'Vikas',075611610021545,1,'BKID002154',1,'CSIPG052J',1,321549874512,1,NULL,1),
(4,'Saddam',845611610021545,1,'PAYTM0021',1,'CSIPG013J',1,681549874512,1,NULL,4),
(3,'Khan',845611610021545,1,'PAYTM0021',1,'CSIPG013J',1,681549874512,1,NULL,4),
(4,'Sdm',845611610021545,1,'PAYTM0021',1,'CSIPG013J',1,681549874512,1,NULL,4),
(2,'Atul',12511610021545,1,'KTK002154',1,'CSING042J',1,681549874512,1,NULL,2)