INSERT INTO department(department_id, department_name)
VALUES                (1,             'Marketing'), 
                      (2,             'Sale'), 
					  (3,             'Bảo vệ'), 
                      (4,             'Nhân sự'), 
					  (5,             'Kỹ thuật'), 
					  (6,             'Tài chính'), 
                      (7,             'Phó giám đốc'), 
                      (8,             'Giám đốc'), 
					  (9,             'Thư ký'), 
                      (10,            'Bán hàng');

INSERT INTO `position`(position_id, position_name)
VALUES                (1,           'DEV'), 
		              (2,           'Test'), 
                      (3,           'Scrum Master'), 
                      (4,           'PM'); 
                      
INSERT INTO `account`(account_id, email,                username,   fullname,                  department_id, position_id, create_date)
VALUES               (1,          'cattuong@gmail.com', 'cattuong', 'nguyen ngoc cat tuong',   1,             1,           '2010-04-24'), 
		             (2,          'abc@gmail.com',      'abc',      'Dbcnamo',                 1,             2,           '2015-09-15'), 
                     (3,          'dophong@gmail.com',  'dophong',  'nguyen ngoc cat tuong a', 1,             3,           '2018-08-23'), 
                     (4,          'xyz@gmail.com',      'xyz',      'xyzname',                 1,             4,           '2020-04-24'), 
                     (5,          'thanh123@gmail.com', 'thanh123', 'vuthanh',                 5,             1,           '2020-04-24'), 
                     (6,          'ghi@gmail.com',      'ghi',      'ghihoten',                6,             1,           '2015-09-15'), 
                     (7,          'wszd@gmail.com',     'wsz',      'wszname',                 7,             1,           '2018-08-23'), 
                     (8,          'mina@gmail.com',     'mina',     'minami',                  8,             3,           '2020-04-24'), 
                     (9,          'jhdhf@gmail.com',    'jhdhf',    'jhdhfname',               9,             4,           '2015-09-15'), 
                     (10,         'koij@gmail.com',     'koi',      'koiname',                10,             1,           '2018-08-23');

INSERT INTO `group`(group_id, group_name, creator_id, create_date)
VALUES             (1,       'GroupA',    1,         '2019-04-24'), 
                   (2,       'GroupB',    2,         '2013-09-15'), 
                   (3,       'GroupC',    3,         '2016-08-23'); 

INSERT INTO Groupaccount(group_id, account_id, join_date)
VALUES                  (1,        1,         '2022-04-24'),
                        (1,        2,         '2019-10-14'),
                        (3,        3,         '2021-04-08'),
                        (1,        4,         '2021-12-24'),
                        (1,        5,         '2012-12-24'),
						(1,        6,         '2016-09-11'),
                        (3,        7,         '2022-08-24'),
                        (3,        8,         '2021-07-08'),
						(3,        9,         '2019-10-14'),
                        (3,       10,         '2022-08-26');

INSERT INTO TypeQuestion(type_id, type_name)
VALUES                  (101,     'Essay'),
                        (102,     'Multiple-Choice');
					
INSERT INTO CategoryQuestion(category_id, category_name)	
VALUES                      (1,           'JAVA'), 
					        (2,           '.NET'), 
					        (3,           'SQL'), 
						    (4,           'RUBY');                            

INSERT INTO Question(question_id, content,                         category_id, type_id, creator_id, create_date)
VALUES              (1,           'JAVA question content',         1,           101,     1,          '2022-09-05'), 
                    (2,           '.NET question content',         2,           102,     2,          '2022-09-06'), 
                    (3,           'SQL question content',          3,           101,     3,          '2022-09-07'), 
                    (4,           'RUBY question content',         4,           102,     4,          '2022-09-08'),
                    (5,           'JAVA question content 0',       1,           101,     1,          '2022-09-05'),
                    (6,           '.NET question content 1',       2,           102,     2,          '2022-09-06'),
                    (7,           'SQL question content 1',        3,           101,     3,          '2022-09-07'),
                    (8,           'JAVA question content 1',       1,           101,     1,          '2022-09-05'),
                    (9,           'JAVA question content 2',       1,           101,     1,          '2022-09-05'),
                    (10,          'JAVA question content 3',       1,           101,     1,          '2022-09-05'),
                    (11,          'Question content',              1,           102,     3,          '2022-09-08');
                    
INSERT INTO Answer(answer_id, content,                  question_id, isCorrect)
VALUES            (1,         'JAVA answer content',    1,           true), 
                  (2,         '.NET answer content',    2,           false), 
                  (3,         'SQL answer content' ,    3,           true), 
                  (4,         'RUBY answer content',    4,		     false),
                  (5,         'JAVA answer content 0',  5,           true),
                  (6,         '.NET answer content 1',  6,           true),
                  (7,         'SQL answer content 1',   7,           false),
                  (8,         'JAVA answer content 1',  8,           false),
                  (9,         'JAVA answer content 2',  9,           true),
                  (10,        'JAVA answer content 3',  10,          false),
                  (11,        'JAVA answer content',    1,           false),
                  (12,        'JAVA answer content 0',  5,           false),
                  (13,        'SQL answer content 1',   7,           true),
                  (14,        'RUBY answer content',    4,           true),
                  (15,        'JAVA answer content 1',  8,           true),
                  (16,        'JAVA answer content 1',  8,           false),
                  (17,        'JAVA answer content 0',  5,           true),
                  (18,        'JAVA answer content',    1,           false),
                  (19,        'JAVA answer content',    1,           false),
                  (20,        'JAVA answer content',    1,           true);
                  
      
INSERT INTO Exam(exam_id, `code`, title,          category_id, duration, creator_id, create_date)
VALUES          (1,        10101, 'JAVA EXAM',    1,           '01:30',  1,          '2015-09-15'),
                (2,        10102, '.NET EXAM',    2,           '01:30',  2,          '2014-09-15'),
	            (3,        10103, 'SQL EXAM',     3,           '00:45',  3,          '2022-09-15'),
                (4,        10104, 'RUBY EXAM',    4,           '01:30',  4,          '2022-09-15'),
                (5,        10105, 'MIXED EXAM',   5,           '01:30',  5,          '2022-09-16'),
                (6,        10106, 'MIXED EXAM 1', 6,           '01:30',  6,          '2022-09-16');
                
INSERT INTO ExamQuestion(exam_id, question_id)
VALUES                  (1,       1),
                        (1,       5),
                        (1,       8),
                        (1,       9),
                        (1,      10),
                        (2,       2),
                        (2,       6),
                        (3,       3),
                        (3,       7),
                        (4,       4),
                        (5,       1),
                        (5,       2),
                        (5,       3),
                        (5,       4),
                        (5,       5),
                        (5,       6),
                        (5,       7),
                        (5,       8),
                        (5,       9),
                        (5,      10),
                        (6,       1),
                        (6,       6);
