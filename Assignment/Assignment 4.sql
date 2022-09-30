SELECT * 
FROM 	`account` a
JOIN `group` g on a.account_id = g.creator_id;

SELECT *
FROM `account` a
LEFT JOIN  department d on a.department_id = d.department_id;
-- nếu dùng join thì chỉ lấy trừ các giá trị null

-- Question 1: Lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT *
FROM `account` a
JOIN department d on a.department_id = d.department_id;

-- QUestion 2: Lấy ra thông tin các account được tạo sau ngày 20/12/2020
SELECT *
FROM `account` 
WHERE create_date >= '2010-12-20';

-- Question 3: Lấy ra tất cả các Developer
SELECT *
FROM `account` a JOIN `position` p ON a.position_id = p.position_id
WHERE p.position_name = 'DEV';

-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có > 3 nhân viên
SELECT   d.department_id, d.department_name, count(account_id) as soluongAC -- Các cột chọn ra để làm bảng thống kê
FROM     `account` a 
JOIN     department d ON a.department_id = d.department_id
GROUP BY a.department_id
HAVING   count(account_id) > 3;

-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT   *
FROM     Question q
JOIN     ExamQuestion eq ON eq.question_id = q.question_id
GROUP BY eq.question_id
HAVING   count(eq.question_id) = (SELECT max(so_luong)
                                  FROM   (SELECT   count(question_id) as so_luong
                                          FROM     ExamQuestion
                                          GROUP BY question_id
										  HAVING   count(exam_id)) as question);
                                          
-- Question 6: Thống kê mỗi category Question được sử dụng trong bao nhiêu Question
SELECT   cq.category_id, cq.category_name, q.content, COUNT(q.category_id) AS so_luong_categoryquestion
FROM     CategoryQuestion cq
JOIN     Question q ON cq.category_id = q.category_id
GROUP BY cq.category_id;

-- Question 7: Thống kê mỗi Question được sử dụng trong bao nhiêu Exam
SELECT    eq.exam_id, e.title, q.content, count(eq.question_id) AS so_luong_question
FROM      ExamQuestion eq
JOIN      Question q ON q.question_id = eq.question_id
JOIN      Exam e ON e.exam_id = eq.exam_id
GROUP BY  q.question_id;

-- Question 8: Lấy ra Question có nhiều câu trả lời nhất
SELECT *, count(q.question_id) AS so_luong_traloimax
FROM   Question q
JOIN   Answer an ON q.question_id = an.question_id 
GROUP BY an.question_id
HAVING  (count(q.question_id)) = (SELECT max(so_luong)
                                   FROM (SELECT (count(an.question_id)) AS so_luong
						           FROM   Answer an
                                   GROUP BY an.question_id) AS so_luong_answermax); -- phai dinh nghia moi cot count ten la gi neu khong se bao loi invalid group function

-- Question 9: Thống kê số lượng account trong mỗi group
SELECT g.group_id, g.group_name, count(ga.account_id) AS so_luong_account
FROM `group` g
JOIN GroupAccount ga ON g.group_id = ga.group_id
GROUP BY ga.group_id;

-- Question 10: Tìm chức vụ có ít người nhất
SELECT  p.position_id, p.position_name, count(a.position_id) AS so_nguoi_it_nhat
FROM   `position` p
JOIN   `account` a ON p.position_id = a.position_id
GROUP BY a.position_id
HAVING (count(a.position_id)) =  (SELECT min(so_luong)
                                  FROM   (SELECT   count(a.position_id) AS so_luong
							              FROM     `account` a
                                          GROUP BY  a.position_id) AS `min`);
									   
-- Question 11: THống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM
SELECT   d.department_id, d.department_name, p.position_name, count(a.account_id) AS so_luong_nhan_vien
FROM     `account` a
JOIN     department d ON d.department_id = a.department_id
JOIN     `position` p ON p.position_id = a.position_id
GROUP BY a.department_id;

-- Question 12: Lấy thông tin chi tiết của câu hỏi bao gồm thông tin cơ bản của question, loại câu hỏi, ai là người tạo ra loại câu hỏi, câu trả lời là gì...
SELECT *
FROM  Question q;

-- Question 13: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm
SELECT tq.type_id, tq.type_name, count(q.type_id) AS so_luong_cau_hoi
FROM TypeQuestion tq
JOIN Question q ON tq.type_id = q.type_id
GROUP BY q.type_id;

-- Question 14: Lấy ra group không có account nào
SELECT    g.group_id, g.group_name, count(ga.account_id) AS so_luong_account
FROM      `group` g
LEFT JOIN Groupaccount ga ON g.group_id = ga.group_id
GROUP BY  g.group_id
HAVING    count(ga.account_id) = 0;

-- Question 15: Lấy ra group không có account nào
SELECT    g.group_id, g.group_name, count(ga.account_id) AS so_luong_account
FROM      `group` g
LEFT JOIN Groupaccount ga ON g.group_id = ga.group_id
GROUP BY  g.group_id
HAVING    count(ga.account_id) = 0;

-- Question 16: Lấy ra question không có answer nào
SELECT    q.question_id, q.content, count(an.question_id) AS so_luong_question
FROM      Question q
LEFT JOIN Answer an ON q.question_id = an.question_id
GROUP BY  q.question_id
HAVING    count(an.question_id) = 0;

-- Question 17:
-- a Lấy các account thuộc nhóm thứ 1
-- b Lấy các account thuộc nhóm thứ 2
-- c Ghép 2 kết quả từ câu a và câu b sao cho không có record nào trùng nhau
SELECT  a.account_id, a.fullname, ga.group_id
FROM    Groupaccount ga
JOIN    `account` a on a.account_id = ga.account_id
WHERE   ga.group_id = 1
UNION 
SELECT  a.account_id, a.fullname, ga.group_id
FROM    Groupaccount ga
JOIN    `account` a on a.account_id = ga.account_id
WHERE   ga.group_id = 2;

-- Question 18:
SELECT  *, count(ga.account_id) AS so_luong
FROM    `group` g 
JOIN     Groupaccount ga ON g.group_id = ga.group_id
GROUP BY ga.group_id 
HAVING   count(ga.account_id) >= 2
UNION
SELECT   *, count(ga.account_id) As so_luong
FROM     `group` g
JOIN     Groupaccount ga ON g.group_id = ga.group_id
GROUP BY ga.group_id 
HAVING   count(ga.account_id) < 3;



