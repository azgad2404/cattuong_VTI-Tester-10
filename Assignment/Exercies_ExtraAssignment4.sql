-- Question 3: Query all Employee (include: name) who has JAVA skill instruction: Using UNION
SELECT et.employee_number, et.employee_name, est.skill_code
FROM   employee_table et
JOIN   employee_skill_table est ON et.employee_number = est.employee_number
GROUP BY et.employee_number
HAVING   est.skill_code = 'JAVA';

-- Question 4: Query all department which has more than 3 employee
SELECT   d.department_number, d.department_name, count(et.department_number) AS so_luong_nhan_vien
FROM     department d
JOIN     employee_table et ON d.department_number = et.department_number
GROUP BY d.department_number
HAVING   count(et.department_number) > 2;

-- Question 5: Query all employee of each department. Instruction: Using group by
SELECT   d.department_number, d.department_name, et.employee_name
FROM     employee_table et
JOIN     department d ON d.department_number = et.department_number;

-- Question 6: Query all employee (include:name) who has more than 1 skill. Instruction: using distinct
SELECT   et.employee_number, et.employee_name, count(est.skill_code) AS so_luong_skillcode
FROM     employee_table et
JOIN     employee_skill_table est ON et.employee_number = est.employee_number
GROUP BY et.employee_number
HAVING   count(est.skill_code) > 1;

