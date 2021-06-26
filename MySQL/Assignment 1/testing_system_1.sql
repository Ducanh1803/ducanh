DROP DATABASE IF EXISTS BAITAP1;
CREATE DATABASE BAITAP1;
USE BAITAP1;
CREATE TABLE Department (
 Department_id INT ( 10 ),
 Department_name VARCHAR ( 255 )
);
CREATE TABLE `Position`( 
	Position_id INT ( 10 ),
 Position_name VARCHAR ( 255 )
);
CREATE TABLE Account( Account_id INT ( 10 ),
	Email VARCHAR ( 255 ),
	Username VARCHAR ( 255 ),
	Fullname VARCHAR ( 255 ),
	Department_id INT ( 10 ),
	Position_id INT ( 10 ),
	create_date  DATE
);
CREATE TABLE tap( 
	Group_id INT ( 10 ), 
	Group_name VARCHAR ( 255 ), 
	Creator_id INT ( 10 ), 
	creator_date DATE 
);

CREATE TABLE GroupAccount(
	Group_id  INT(10),
	Account_id INT(10),
	Jonn_date  DATE
);

CREATE TABLE TypeQuestion(
	type_id  int(10),
	type_name VARCHAR(255)
);

CREATE TABLE CategoryQuestion(
	Category_id INT(10),
	Category_name VARCHAR(25)
);

CREATE TABLE question(
	questione_id INT(10),
	content  VARCHAR(255),
	category_id INT(10),
	type_id  INT(10),
	creator_id INT(10),
	create_date DATE
);

CREATE TABLE Answers(
	Answer_id  INT(10),
	content VARCHAR(25),
	quenstion_id INT(10),
	isconrrect VARCHAR(30)
);

CREATE TABLE Exam(
	Exam_id INT(10),
	`code` VARCHAR(10),
	title VARCHAR(20),
	category_id INT(10),
	duration INT(10),
	creator_id INT(10),
	create_date DATE
);
CREATE TABLE ExamQuestion(
	Exam_id INT(10),
	quenstion_id INT(10)
);