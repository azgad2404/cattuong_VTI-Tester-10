DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE department(
department_id					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- primary key
department_name					VARCHAR(50) UNIQUE KEY
);

CREATE TABLE `position`(
position_id						INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- primary key
position_name					ENUM('DEV','TEST','SCRUM MASTER','PM')
);

CREATE TABLE `account`(
account_id						INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- primary key
email							VARCHAR(50) UNIQUE KEY,  -- unique key
username						VARCHAR(50) UNIQUE KEY,  -- unique key
fullname						VARCHAR(50),
department_id					INT UNSIGNED , -- foreign key
position_id						INT UNSIGNED, -- foreign key 
create_date						DATE,
FOREIGN KEY (department_id) REFERENCES department(department_id),
FOREIGN KEY (position_id)   REFERENCES `position`(position_id)
);

CREATE TABLE `group`(
group_id						INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- primary key
group_name						VARCHAR(50),
creator_id						INT UNSIGNED,  -- foreign key, la account_id
create_date						DATE,
FOREIGN KEY (creator_id) REFERENCES `account`(account_id)
);

CREATE TABLE Groupaccount(
group_id						INT UNSIGNED, 
account_id						INT UNSIGNED,
join_date						DATE,
PRIMARY KEY (group_id, account_id),
FOREIGN KEY (group_id)   REFERENCES `group`(group_id),
FOREIGN KEY (account_id) REFERENCES `account`(account_id)
);

CREATE TABLE TypeQuestion(
type_id							INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name						ENUM('ESSAY','MULTIPLE-CHOICE')
);

CREATE TABLE CategoryQuestion(
category_id						INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_name					VARCHAR(50)
);

CREATE TABLE Question(
question_id						INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content							VARCHAR(50),
category_id						INT UNSIGNED,
type_id							INT UNSIGNED,
creator_id						INT UNSIGNED,
create_date						DATE,
FOREIGN KEY (category_id) REFERENCES CategoryQuestion(category_id),
FOREIGN KEY (type_id)     REFERENCES TypeQuestion(type_id),
FOREIGN KEY (creator_id)  REFERENCES `account`(account_id)
);

CREATE TABLE Answer(
answer_id						INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content							VARCHAR(50),
question_id						INT UNSIGNED,
isCorrect						BOOLEAN, -- co the dung ENUM('true','false')
FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

CREATE TABLE Exam(
exam_id							INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
`code`							INT UNSIGNED,
title							VARCHAR(50),
category_id						INT UNSIGNED,
duration						TIME,
creator_id						INT UNSIGNED,
create_date						DATE,
FOREIGN KEY (category_id) REFERENCES CategoryQuestion(category_id),
FOREIGN KEY (creator_id)  REFERENCES `account`(account_id)
);

CREATE TABLE ExamQuestion(
exam_id							INT UNSIGNED, 
question_id						INT UNSIGNED, 
PRIMARY KEY (exam_id, question_id),
FOREIGN KEY (exam_id)     REFERENCES Exam(exam_id),
FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

