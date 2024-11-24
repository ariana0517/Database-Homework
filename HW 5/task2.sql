--1
SELECT bill_total AS Income
FROM restBill

--2
SELECT bill_total AS Feb Income
FROM restBill
WHERE bill_date >= 160201 AND bill_date <= 160229

--3
SELECT AVG (bill_total)
FROM restBill
WHERE table_no = 2

--4
SELECT MIN(no_of_seats) AS Min
FROM restRest_table
WHERE room_name ='Blue'

SELECT MAX(no_of_seats) AS Max
FROM restRest_table
WHERE room_name ='Blue'

SELECT AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name ='Blue'

--5
SELECT COUNT(DISTINCT table_no)
FROM restBill
WHERE waiter_no IN (004, 002)