create database LMSDataBase
use LMSDataBase
--=========================================================
--Creates Hired Candidates Table
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