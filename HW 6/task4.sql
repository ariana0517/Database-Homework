--1
SELECT DISTINCT(cust_name)
FROM restBill
WHERE bill_total IN
(SELECT DISTINCT(bill_total)
FROM restBill
WHERE bill_total >= 450.00 )
AND headwaiter =(
    SELECT headwaiter
    FROM restStaff
    WHERE first_name = "Charles"
)

--2
SELECT first_name,surname
FROM restStaff
WHERE staff_no IN(
    SELECT waiter_no
    FROM restBill
    WHERE bill_date = 160111
    AND cust_name = 'Nerida Smith'
)

--3
SELECT cust_name
FROM restBill
WHERE bill_total IN
(SELECT MIN(bill_total) 
FROM restBill)


--4
SELECT first_name
FROM restStaff
WHERE staff_no NOT IN
(SELECT waiter_no
FROM restBill)


