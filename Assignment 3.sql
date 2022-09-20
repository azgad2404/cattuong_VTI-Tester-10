-- Question 2 
SELECT  *-- Nếu lấy tất cả thông tin từ bảng thì dùng dấu *
FROM department;

-- Question 3 
SELECT department_id
FROM department
WHERE department_name = 'Sale';

-- Question 4
SELECT *
FROM `account`
WHERE char_length(fullname) = (SELECT(max(char_length(fullname))) FROM `account`)
ORDER BY fullname DESC;

-- Question 5
SELECT *
FROM `account`
WHERE char_length(fullname) = (SELECT(max(char_length(fullname))) FROM `account`) and department_id = 3;

-- Question 6
SELECT *
FROM `group`
WHERE create_date <= '2019-12-20';

-- Question 7
SELECT question_id, count(answer_id)
FROM answer
GROUP BY question_id HAVING count(answer_id) >= 4;

-- Question 8
SELECT *
FROM Exam
WHERE duration >= '00:60' and create_date <= '2019-12-20';

-- Question 9
SELECT *
FROM `group`
ORDER BY create_date DESC
LIMIT 5;

-- Question 10
SELECT count(account_id) AS so_luong_nhan_vien
FROM `account`
WHERE (department_id) = 2;

-- Question 11
SELECT *
FROM `account`
WHERE fullname LIKE 'D%' AND fullname LIKE '%o';

-- Question 12
DELETE 
FROM Exam
WHERE create_date <= '2019-12-20';

-- Question 13
DELETE
FROM Question
WHERE content LIKE 'câu hỏi %';

-- Question 14
UPDATE `account`
SET     fullname = 'Nguyễn Bá Lộc',
        email = 'loc.nguyenba@vti.com.vn'
WHERE   account_id = 5 ;

-- Question 15
UPDATE `account`
SET     department_id = 4
WHERE   account_id = 4;