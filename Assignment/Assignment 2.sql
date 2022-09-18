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
                      (4,           'PM'), 
                      (5,           'DEV'), 
                      (6,           'Scrum Master'), 
                      (7,           'Test'), 
		      (8,           'DEV'), 
		      (9,           'PM'), 
                      (10,          'Test');	

INSERT INTO `account`(account_id, email, username, fullname, department_id, position_id, create_date)
VALUES               (1, 'cattuong@gmail.com', 'cattuong', 'nguyen ngoc cat tuong', 1,  1,  '2020-04-24'), 
		     (2, 'abc@gmail.com',      'abc',      'abcname',               2,  2,  '2015-09-15'), 
                     (3, 'dophong@gmail.com',  'dophong',  'do lap phong',          3,  3,  '2018-08-23'), 
                     (4, 'xyz@gmail.com',      'xyz',      'xyzname',               4,  4,  '2020-04-24'), 
                     (5, 'thanh123@gmail.com', 'thanh123', 'vuthanh',               5,  5,  '2020-04-24'), 
                     (6, 'ghi@gmail.com',      'ghi',      'ghihoten',              6,  6,  '2015-09-15'), 
                     (7, 'wszd@gmail.com',     'wsz',      'wszname',               7,  7,  '2018-08-23'), 
                     (8, 'mina@gmail.com',     'mina',     'minami',                8,  8,  '2020-04-24'), 
                     (9, 'jhdhf@gmail.com',    'jhdhf',    'jhdhfname',             9,  9,  '2015-09-15'), 
                     (10,'koij@gmail.com',     'koi',      'koiname',               10, 10, '2018-08-23');

INSERT INTO `group`(group_id, group_name, creator_id, create_date)
VALUES             (1,       'GroupA',    1,         '2019-04-24'), 
                   (2,       'GroupB',    2,         '2013-09-15'), 
                   (3,       'GroupC',    3,         '2016-08-23'), 
	           (4,       'GroupA',    4,         '2019-04-24'), 
                   (5,       'GroupA',    5,         '2019-04-24'), 
                   (6,       'GroupB',    6,         '2013-09-15'), 
                   (7,       'GroupC',    7,         '2016-08-23'), 
                   (8,       'GroupA',    8,         '2019-04-24'), 
                   (9,       'GroupB',    9,         '2013-09-15'), 
                   (10,      'GroupC',   10,         '2016-08-23');

INSERT INTO Groupaccount(group_id, account_id, join_date)
VALUES                  (1,        1,         '2022-04-24'),
                        (2,        2,         '2019-10-14'),
                        (3,        3,         '2021-04-08'),
                        (4,        4,         '2021-12-24'),
                        (5,        5,         '2012-12-24'),
			(6,        6,         '2016-09-11'),
                        (7,        7,         '2022-08-24'),
                        (8,        8,         '2021-07-08'),
			(9,        9,         '2019-10-14'),
                        (10,      10,         '2022-08-26');

INSERT INTO TypeQuestion(type_id, type_name)
VALUES                  (101,     'Essay'),
			(102,     'Essay'),
                        (103,     'Multiple-Choice'),
                        (104,     'Essay'),
                        (105,     'Multiple-Choice'),
                        (106,     'Essay'),
                        (107,     'Essay'),
                        (108,     'Multiple-Choice'),
                        (109,     'Essay'),
                        (110,     'Multiple-Choice');

INSERT INTO CategoryQuestion(category_id, category_name)	
VALUES                      (1,           'JAVA'), 
                            (2,           '.NET'), 
                            (3,           'SQL'), 
                            (4,           'RUBY'),
                            (5,           'Visual Basic'),
                            (6,           'C++'),
                            (7,           'Python'),
                            (8,           'Swift'),
                            (9,           'C'),
                            (10,          'PHP');

INSERT INTO Question(question_id, content, category_id, type_id, creator_id, create_date)
VALUES              (1,  'What is JAVA?',         1,  101, 1,  '2022-09-05'), 
                    (2,  'What is .NET?',         2,  102, 2,  '2022-09-06'), 
                    (3,  'What is SQL?',          3,  103, 3,  '2022-09-07'), 
                    (4,  'What is RUBY?',         4,  104, 4,  '2022-09-08'),
                    (5,  'What is Visual Basic?', 5,  105, 5,  '2022-09-09'),
                    (6,  'What is C++?',          6,  106, 6,  '2022-09-10'),
                    (7,  'What is Python?',       7,  107, 7,  '2022-09-11'),
                    (8,  'What is Swift?',        8,  108, 8,  '2022-09-12'),
                    (9,  'What is C?',            9,  109, 9,  '2022-09-13'),
                    (10, 'What is PHP?',          10, 110, 10, '2022-09-14');

INSERT INTO Answer(answer_id, content, question_id, isCorrect)
VALUES            (1, 'JAVA is ...',         1,     TRUE), 
                  (2, '.NET is ...',         2,     FALSE), 
                  (3, 'SQL is ...' ,         3,     TRUE), 
                  (4, 'RUBY is ...',         4,		FALSE),
                  (5, 'Visual Basic is ...', 5,     TRUE),
                  (6, 'C++ is ...',          6,     TRUE),
                  (7,'Python is ...',        7,     FALSE),
                  (8,'Swift is ...',         8,     FALSE),
                  (9,'C is ...',             9,     TRUE),
                  (10,'PHP is ...',          10,    FALSE);

INSERT INTO Exam(exam_id, `code`, title, category_id, duration, creator_id, create_date)
VALUES          (1,  10101, 'JAVA EXAM',         1,  '01:30', 1,  '2022-09-15'),
                (2,  10102, '.NET EXAM',         2,  '01:30', 2,  '2022-09-15'),
	        (3,  10103, 'SQL EXAM',          3,  '00:45', 3,  '2022-09-15'),
                (4,  10104, 'RUBY EXAM',         4,  '01:30', 4,  '2022-09-15'),
                (5,  10105, 'Visual Basic EXAM', 5,  '00:45', 5,  '2022-09-15'),
	        (6,  10106, 'C++ EXAM',          6,  '01:30', 6,  '2022-09-15'),
                (7,  10107, 'Python EXAM',       7,  '01:30', 7,  '2022-09-15'),
	        (8,  10108, 'Swift EXAM',        8,  '00:45', 8,  '2022-09-15'),
                (9,  10109, 'C EXAM',            9,  '01:30', 9,  '2022-09-15'),
                (10, 10110, 'PHP EXAM',          10, '00:45', 10, '2022-09-15');

INSERT INTO ExamQuestion(exam_id,question_id)
VALUES                  (1,1),
                        (2,2),
                        (3,3),
                        (4,4),
                        (5,5),
                        (6,6),
                        (7,7),
                        (8,8),
                        (9,9),
                        (10,10);
