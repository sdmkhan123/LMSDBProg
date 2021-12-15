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
  field_name int NOT NULL,
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
  account_num int NOT NULL,
  is_account_num_verified int DEFAULT 0,
  ifsc_code varchar(20) NOT NULL,
  is_ifsc_code_verified int DEFAULT 0,
  pan_number varchar(10) DEFAULT NULL,
  is_pan_number_verified int DEFAULT 0,
  addhaar_num int NOT NULL,
  is_addhaar_num_verified int DEFAULT 0,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
)