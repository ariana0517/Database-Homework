--1
SELECT DISTINCT first_name
FROM restStaff T1
INNER JOIN restBill T2
ON T1.staff_no = T2.waiter_no
WHERE cust_name = "Tanya Singh"

--2
SELECT room_date
FROM restRoom_management T1 
INNER JOIN restStaff T2
ON T1.headwaiter = T2.staff_no
WHERE room_name = "Green" AND (room_date >=160201 and room_date <=160228) AND first_name = "Charles"

--3
SELECT first_name, surname
FROM restStaff
WHERE headwaiter = (
    SELECT headwaiter
    FROM restStaff
    WHERE first_name = 'Zoe' AND surname = 'Ball'
) AND staff_no != (
    SELECT staff_no
    FROM restStaff
    WHERE first_name = 'Zoe' AND surname = 'Ball'
);

--4
SELECT cust_name,bill_total,first_name
FROM restBill T1
INNER JOIN restStaff T2
ON T2.waiter_no = T1.staff_no
ORDER BY bill_total DESC;

--5
SELECT first_name
FROM restStaff T1
INNER JOIN restBill T2
ON T2.waiter_no = T1.staff_no
WHERE bill_no = (00014 and 00017)

--6
SELECT DISTINCT first_name, surname
FROM restStaff M
INNER JOIN restBill N
ON M.staff_no = N.waiter_no
INNER JOIN restRest_table O
ON N.table_no = O.table_no
INNER JOIN restRoom_management P
ON O.room_name = P.room_name
WHERE P.room_name = "Blue" AND room_date =160312