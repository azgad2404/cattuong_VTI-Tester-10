-- This is a file which contains data for Extra Assignment 4 exercise
-- Question 2: Add at least 10 records into created table
INSERT INTO department(department_number, department_name)
VALUES                (1,                 'TECH DEPARTMENT 1'),
					  (2,                 'SALES DEPARTMENT 2'),
                      (3,                 'WAREHOUSE'),
                      (4,                 'ACCOUNTANT DEPARTMENT'),
                      (5,                 'TRADING DEPARTMENT'),
                      (6,                 'QUALITY CONTROL DEPARTMENT'),
                      (7,                 'QUALITY ASSURANCE DEPARTMENT'),
                      (8,                 'TESTER'),
                      (9,                 'PRESIDENT'),
                      (10,                'SECURITY DEPARTMENT');
                      
INSERT INTO employee_table(employee_number, employee_name,           department_number)
VALUES                    (101,             'NGUYEN NGOC CAT TUONG', 1),
						  (102,             'VO DUC SANG',           1),
                          (103,             'TRINH VAN NAM',         1),
                          (104,             'DO VAN TUAN',           1),
                          (105,             'DO LAP PHONG',          3),
                          (106,             'DO TUAN ANH',           3),
                          (107,             'HA VIET DUY',           2),
                          (108,             'HA KIM THANH VY',       2),
                          (109,             'MAI HOANG ANH',         6),
                          (110,             'VU DANH TAN',           7),
                          (111,             'NGUYEN VAN A',          8),
                          (112,             'CHU BA',                10),
                          (113,             'LE THI THU THUY',       4),
                          (114,             'BUI THI THANH NGAN',    2),
                          (115,             'VO PHUONG TRINH',       9),
                          (116,             'NGUYEN DUONG DUONG',    6),
                          (117,             'DANG TRUNG HIEU',       6),
                          (118,             'TONG THI UYEN THANH',   2),
                          (119,             'NGUYEN VAN TUAN',       3),
                          (120,             'NGHIEM THI HONG XUYEN', 5);
                          
INSERT INTO employee_skill_table(employee_number, skill_code, date_registered)
VALUES                          (101,             'JAVA',     '2022-04-05'),
                                (102,             '.NET',     '2021-10-01'),
                                (103,             'SQL',      '2020-11-09'),
								(104,             'SWIFT',    '2015-04-10'),
                                (104,             'HTML',     '2015-04-10'),
                                (105,              NULL,      '2019-11-01'),
                                (106,             'C++',      '2019-11-01'),
								(107,             'JAVA',     '2022-04-05'),
                                (108,             '.NET',     '2021-10-01'),
                                (109,             'SQL',      '2020-11-09'),
								(110,             'SWIFT',    '2015-04-10'),
                                (111,             'PYTHON',   '2015-04-10'),
                                (112,              NULL,      '2019-11-01'),
                                (113,              NULL,      '2019-11-01'),
                                (114,             'C++',      '2019-11-01'),
								(115,             'JAVA',     '2022-04-05'),
                                (116,             '.NET',     '2021-10-01'),
                                (117,             'SQL',      '2020-11-09'),
								(118,             'SWIFT',    '2015-04-10'),
                                (119,             'PYTHON',   '2015-04-10'),
                                (120,              NULL,      '2019-11-01');
                                
                                
                      