--1
SELECT bill_date, bill_total
FROM restBill
WHERE cust_name = 'Bob Crow'

--2
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '%Smith'
ORDER BY cust_name DESC

--3
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE "%C%";

--4
SELECT first_name,surname
FROM restStaff
WHERE headwaiter

--5
SELECT *
FROM restBill
WHERE bill_date >= 160201 AND bill_date <= 160229

--6
SELECT DISTINCT bill_date 
FROM restBill
WHERE (bill_date>=150101 and bill_date<=151231)
ORDER BY bill_date ASC