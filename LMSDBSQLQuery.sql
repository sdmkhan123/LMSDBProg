create database LMSDataBase
use LMSDataBase
--=========================================================
--1.Creates Hired Candidates Table
--=========================================================
CREATE TABLE hired_candidates (
  id int identity(1,1) primary key NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  hired_city varchar(50) NOT NULL,
  degree varchar(100) NOT NULL,
  hired_date datetime NOT NULL,
  mobile_num bigint NOT NULL,
  permanent_pincode int DEFAULT NULL,
  hired_lab varchar(20) DEFAULT NULL,
  attitude_remark varchar(15) DEFAULT NULL,
  communication_remark varchar(15) DEFAULT NULL,
  knowledge_remark varchar(15) DEFAULT NULL,
  aggregate_remark varchar(15) DEFAULT NULL,
  status varchar(20) NOT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--2.Creates Fellowship Candidates table
--=========================================================
CREATE TABLE fellowship_candidates (
  id int identity(1,1) primary key NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  hired_city varchar(50) NOT NULL,
  degree varchar(50) NOT NULL,
  hired_date datetime NOT NULL,
  mobile_num bigint NOT NULL,
  permanent_pincode int DEFAULT NULL,
  hired_lab varchar(20) DEFAULT NULL,
  attitude_remark varchar(15) DEFAULT NULL,
  communication_remark varchar(15) DEFAULT NULL,
  knowledge_remark varchar(15) DEFAULT NULL,
  aggregate_remark varchar(15) DEFAULT NULL,
  birth_date date NOT NULL,
  is_birth_date_verified int DEFAULT 0,
  parent_name varchar(50) DEFAULT NULL,
  parent_occupation varchar(100) NOT NULL,
  parent_mobile_num bigint NOT NULL,
  parent_annual_sal float DEFAULT NULL,
  local_addr varchar(255) NOT NULL,
  permanent_addr varchar(150) DEFAULT NULL,
  photo_path varchar(500) DEFAULT NULL,
  joining_date date DEFAULT NULL,
  candidate_status varchar(20) NOT NULL,
  personal_info_filled int DEFAULT 0,
  bank_info_filled int DEFAULT 0,
  educational_info_filled int DEFAULT 0,
  status varchar(20) DEFAULT NULL,
  remark varchar(150) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--3.Creates Candidate personal details check Table
--=========================================================
CREATE TABLE candidates_personal_det_check (
  id int identity(1,1) primary key NOT NULL,
  candidate_id  int NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
  field_name varchar(255) NOT NULL,
  is_verified int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
--=========================================================
--4.Creates Candidate bank details Table
--=========================================================
CREATE TABLE candidate_bank_det(
  id int identity(1,1) primary key NOT NULL,
  candidate_id int NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
  name varchar(100) NOT NULL,
  account_num bigint NOT NULL,
  is_account_num_verified int DEFAULT 0,
  ifsc_code varchar(20) NOT NULL,
  is_ifsc_code_verified int DEFAULT 0,
  pan_number varchar(10) DEFAULT NULL,
  is_pan_number_verified int DEFAULT 0,
  addhaar_num bigint NOT NULL,
  is_addhaar_num_verified int DEFAULT 0,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--5.Creates Candidate qualification Table
--=========================================================
CREATE TABLE candidate_qualification(
  id int IDENTITY (1,1) PRIMARY KEY NOT NULL,
  candidate_id int NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
  diploma int DEFAULT 0,
  degree_name varchar(10) NOT NULL,
  is_degree_name_verified int DEFAULT 0,
  employee_decipline varchar(100) NOT NULL,
  is_employee_decipline_verified int DEFAULT 0,
  passing_year int NOT NULL,
  is_passing_year_verified int DEFAULT 0,
  aggr_per float DEFAULT NULL,
  final_year_per float DEFAULT NULL,
  is_final_year_per_verified int DEFAULT 0,
  training_institute varchar(20) NOT NULL,
  is_training_institute_verified int DEFAULT 0,
  training_duration_month int DEFAULT NULL,
  is_training_duration_month_verified int DEFAULT 0,
  other_training varchar(255) DEFAULT NULL,
  is_other_training_verified int DEFAULT 0,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
--=========================================================
--6.Creates Candidate education_det_check Table
--=========================================================
CREATE TABLE candidates_education_det_check (
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  candidate_id int  NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
  field_name varchar(255) NOT NULL,
  is_verified int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
--=========================================================
--7.Creates Candidate Documents Table
--=========================================================
CREATE TABLE candidate_docs(
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  candidate_id int  NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
  doc_type varchar(20) DEFAULT NULL,
  doc_path varchar(500) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--8.Creates User Details Table
--=========================================================
CREATE TABLE user_details (
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  email varchar(50) UNIQUE NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  password varchar(15) NOT NULL,
  contact_number bigint NOT NULL,
  verified bit DEFAULT NULL,
)
--=========================================================
--9.Creates User Roles Table
--=========================================================
CREATE TABLE user_roles (
  user_id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  role_name varchar(100)
)
--=========================================================
--10.Creates Company Table
--=========================================================
 CREATE TABLE company(
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name int NOT NULL,
  address varchar(150) DEFAULT NULL,
  location varchar(50) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
--=========================================================
--11.Creates tech stack Table
--=========================================================
CREATE TABLE tech_stack (
  id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  tech_name varchar(50) NOT NULL,
  image_path varchar(500) DEFAULT NULL,
  framework text DEFAULT NULL,
  cur_status char(1) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
--=========================================================
--12.Creates tech type Table
--=========================================================
CREATE TABLE tech_type (
  id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  type_name varchar(50) NOT NULL,
  cur_status char DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)
--=========================================================
--13.Creates maker program Table
--=========================================================
CREATE TABLE maker_program(
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  tech_stack_id int DEFAULT NULL FOREIGN KEY REFERENCES tech_stack(id),
  tech_type_id int NOT NULL FOREIGN KEY REFERENCES tech_type(id),
  program_name varchar(255) NOT NULL,
  program_type varchar(10) DEFAULT NULL,
  program_link text DEFAULT NULL,
  is_program_approved int,
  description varchar(500) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--14.Creates app parameters Table
--=========================================================
CREATE TABLE app_parameters (
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  key_type varchar(20) NOT NULL,
  key_value varchar(20) NOT NULL,
  key_text varchar(80) DEFAULT NULL,
  cur_status char(1) DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
  seq_num int DEFAULT NULL,
)
--=========================================================
--15.Creates lab Table
--=========================================================
CREATE TABLE lab(
  id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name varchar(50) DEFAULT NULL,
  location varchar(50) DEFAULT NULL,
  address  varchar(255) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--16.Creates mentor Table
--=========================================================
CREATE TABLE mentor(
  id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  lab_id int NOT NULL FOREIGN KEY REFERENCES lab(id),
  name varchar(50) DEFAULT NULL,
  mentor_type varchar(20) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)
--=========================================================
--17.Creates mentor ideation map Table
--=========================================================
CREATE TABLE mentor_ideation_map(
  id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  mentor_id int NOT NULL FOREIGN KEY REFERENCES mentor(id),
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
)