1. Retrieve all students' names and their respective email addresses. 

SELECT name, email FROM Studentss;


2. Get the total number of students. 

SELECT COUNT(*) AS total_students FROM Studentss;


3. Find the room number and type for each student. 

SELECT s.name, r.room_number, r.room_type
FROM Studentss s
INNER JOIN RoomAllocations ra ON s.student_id = ra.student_id
INNER JOIN Rooms r ON ra.room_id = r.room_id;


4. Calculate the total amount paid by each student. 

SELECT s.name, SUM(p.amount) AS total_paid
FROM Studentss s
INNER JOIN Payments p ON s.student_id = p.student_id
GROUP BY s.name;


5. List the students who paid with cash. 

SELECT s.name
FROM Studentss s
INNER JOIN Payments p ON s.student_id = p.student_id
WHERE p.payment_method = 'Cash';

6. Retrieve the names and email addresses of all female students 
   
SELECT name, email FROM Studentss WHERE gender = 'Female';


7. Retrieve the names of students who haven't paid their fees yet. 

SELECT s.name
FROM Studentss s
LEFT JOIN Payments p ON s.student_id = p.student_id
WHERE p.student_id IS NULL;


8. Find the rooms with a capacity of more than 2.

SELECT *
FROM Rooms
WHERE capacity > 2;


9. List the students who were admitted in 2020. 

SELECT name
FROM Studentss
WHERE EXTRACT(YEAR FROM date_of_admission) = 2020;


10. Calculate the total revenue generated from payments. 

SELECT SUM(amount) AS total_revenue
FROM Payments;

11. Retrieve the total amount spent on each category of expenses. 

SELECT category, SUM(amount) AS total_spent
FROM Expenses
GROUP BY category;


12. Calculate the total number of rooms allocated for each student 
SELECT s.name, COUNT(ra.room_id) AS total_rooms_allocated
FROM Studentss s
JOIN RoomAllocations ra ON s.student_id = ra.student_id
GROUP BY s.name;


13. Find the students who are staying in rooms with a capacity of more than 2. 

SELECT s.name, r.room_number, r.capacity
FROM Studentss s
INNER JOIN RoomAllocations ra ON s.student_id = ra.student_id
INNER JOIN Rooms r ON ra.room_id = r.room_id
WHERE r.capacity > 2;


14. List the expenses incurred in the year 2021. 

SELECT description, amount, expense_date, category
FROM Expenses
WHERE EXTRACT(YEAR FROM expense_date) = 2021;


15. Calculate the total amount of fees due for rooms with a capacity of 1. 

SELECT SUM(f.amount) AS total_fees_due
FROM Fees f
INNER JOIN Rooms r ON f.room_id = r.room_id
WHERE r.capacity = 1;

16. Find the average monthly payment made by students. 

SELECT AVG(amount) AS avg_monthly_payment
FROM Payments;


17. Find the students who were admitted before a specific date, along with their room details 

SELECT s.name, s.date_of_admission, r.room_number, r.room_type
   FROM Studentss s
   INNER JOIN Rooms r ON s.student_id = r.room_id
   WHERE s.date_of_admission < '01-jan-2020';


18. Get the count of male and female students. 

SELECT gender, COUNT(*) AS count
FROM Studentss
GROUP BY gender;


19. Find the student who paid the highest amount.

SELECT s.name, p.amount AS highest_payment
FROM Studentss s
INNER JOIN Payments p ON s.student_id = p.student_id
WHERE p.amount = (
    SELECT MAX(amount)
    FROM Payments
);


20. Get the list of room details of having double room_type 

Select * from rooms where room_type='Double';

21. Retrieve the total number of students in each room type 

SELECT r.room_type, COUNT(ra.student_id) AS total_students
FROM Rooms r
LEFT JOIN RoomAllocations ra ON r.room_id = ra.room_id
GROUP BY r.room_type;

22. Retrieve the total revenue generated from room allocations: 

SELECT SUM(((MONTHS_BETWEEN(ra.end_date, ra.start_date) + 1) * r.rate_per_month)) AS total_revenue
FROM RoomAllocations ra
JOIN Rooms r ON ra.room_id = r.room_id;

23. Get the details of the room with the highest capacity 

SELECT * FROM Rooms ORDER BY capacity DESC FETCH FIRST 1 ROWS ONLY;


24. Retrieve the room number and total amount paid for each room 

SELECT r.room_number, COALESCE(SUM(p.amount), 0) AS total_paid
FROM Rooms r
LEFT JOIN RoomAllocations ra ON r.room_id = ra.room_id
LEFT JOIN Payments p ON ra.student_id = p.student_id
GROUP BY r.room_number;

25. Retrieve the room types with the average rate per month: 

SELECT room_type, AVG(rate_per_month) AS average_rate
FROM Rooms
GROUP BY room_type;