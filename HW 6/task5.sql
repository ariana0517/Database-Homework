--1
SELECT first_name,surname,bill_date, COUNT(bill_no)
FROM restStaff T1
INNER JOIN restBill T2
ON T1.staff_no = T2.waiter_no
GROUP BY first_name,surname,bill_date,staff_no
HAVING COUNT(bill_no) >= 2

--2
SELECT DISTINCT room_name, COUNT(*) AS Number_of_Tables
FROM restRest_table
WHERE no_of_seats >6
GROUP BY room_name

--3
SELECT room_name, SUM(bill_total)
FROM restRest_table T2
INNER JOIN restBill T1
ON T1.table_no = T2.table_no
GROUP BY room_name

1.	List the headwaiter’s name and surname and the total bill amount their waiters have taken. 
Order the list by total bill amount, largest first.
--5
SELECT cust_name, AVG(bill_total)
FROM restBill
GROUP BY cust_name
HAVING  AVG(bill_total)> 400

--6
SELECT first_name,surname,bill_date, COUNT(bill_no)
FROM restStaff T1
INNER JOIN restBill T2
ON T1.staff_no = T2.waiter_no
GROUP BY first_name,surname,bill_date,staff_no
HAVING COUNT(bill_no) >= 3