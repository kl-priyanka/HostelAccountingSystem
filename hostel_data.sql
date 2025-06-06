INSERT INTO Studentss (student_id, name, email, phone_number, date_of_birth, gender, date_of_admission) VALUES
(1, 'Steve Jobs', 'steve.jobs@gmail.com', '1234567890', '12-apr-2000', 'Male', '15-aug-2019'),
(2, 'Taylor Swift', 'taylor.swift@gmail.com', '0987654321', '23-nov-1999', 'Female', '01-sep-2019'),
(3, 'Charlie Puth', 'charlie.puth@gmail.com', '5678901234', '04-mar-2001', 'Male', '22-jan-2020'),
(4, 'David Warner', 'david.warner@gmail.com', '2345678901', '19-jul-1998', 'Male', '20-aug-2020'),
(5, 'Emma Watson', 'emma.watson@gmail.com', '3456789012', '28-feb-2000', 'Female', '05-sep-2019'),
(6, 'Selena Gomez', 'selena.gomez@gmail.com', '4567890123', '05-june-1999', 'Female', '12-nov-2018'),
(7, 'Hannah Bahng', 'hannah.bangh@gmail.com', '5678901234', '30-aug-2001', 'Female', '10-feb-2020'),
(8, 'Jack Ma', 'jack.ma@gmail.com', '6789012345', '12-sep-1998', 'Male', '25-july-2017'),
(9, 'Isabella Martinez', 'isabella.martinez@gmail.com', '7890123456', '14-mar-2000', 'Female', '10-jan-2019'),
(10, 'Michael Jackson', 'michael.jackson@gmail.com', '8901234567', '12-dec-1999', 'Male', '10-oct-2018');


INSERT INTO ROOMS (room_id, room_number, room_type, capacity, rate_per_month)
VALUES
(1, '101', 'Single', 1, 5000.00),
(2, '102', 'Double', 2, 8000.00),
(3, '103', 'Triple', 3, 12000.00),
(4, '104', 'Single', 1, 5200.00),
(5, '105', 'Double', 2, 8500.00),
(6, '106', 'Triple', 3, 12500.00),
(7, '107', 'Single', 1, 5100.00),
(8, '108', 'Double', 2, 8100.00),
(9, '109', 'Triple', 3, 12100.00),
(10, '110', 'Single', 1, 5150.00);

sequence for room allocations

CREATE SEQUENCE ROOMALLOCATIONS_SEQ
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOMINVALUE
NOCYCLE
NOCACHE;

INSERT INTO ROOMALLOCATIONS (student_id, room_id, start_date, end_date)
VALUES
(1, 1, '01-sep-2021', '31-may-2022'),
(2, 2, '15-aug-2021', '15-jun-2022'),
(3, 3, '20-jan-2022', '20-dec-2022'),
(4, 4, '05-sep-2021', '15-may-2022'),
(5, 5, '10-sep-2021', '10-jun-2022'),
(6, 6, '05-feb-2022', '05-dec-2022'),
(7, 7, '15-nov-2021', '15-sep-2022'),
(8, 8, '10-mar-2022', '10-dec-2022'),
(9, 9, '20-feb-2022', '20-feb-2023'),
(10, 10, '05-jan-2022', '05-dec-2022');

sequence for payments:

CREATE SEQUENCE payment_id_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO Payments (student_id, amount, payment_date, payment_method)
VALUES
(1, 5000.00, '01-Oct-2021', 'Cash'),
(2, 8000.00, '15-Sep-2021', 'Bank Transfer'),
(3, 12000.00, '01-Feb-2022', 'Credit Card'),
(4, 5200.00, '05-Nov-2021', 'Cash'),
(5, 8500.00, '25-Sep-2021', 'Bank Transfer'),
(6, 12500.00, '15-Mar-2022', 'Credit Card'),
(7, 5100.00, '25-Nov-2021', 'Cash'),
(8, 8100.00, '15-Jan-2022', 'Bank Transfer'),
(9, 12100.00, '20-Feb-2022', 'Credit Card'),
(10, 5150.00, '15-Oct-2021', 'Bank Transfer');

sequence for fees:

CREATE SEQUENCE fee_id_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE;

INSERT INTO Fees (student_id, room_id, amount, due_date)
VALUES
(1, 1, 5000.00, '01-Oct-2021'),
(2, 2, 8000.00, '15-Sep-2021'),
(3, 3, 12000.00, '01-Feb-2022'),
(4, 4, 5200.00, '05-Nov-2021'),
(5, 5, 8500.00, '25-Sep-2021'),
(6, 6, 12500.00, '15-Mar-2022'),
(7, 7, 5100.00, '25-Nov-2021'),
(8, 8, 8100.00, '15-Jan-2022'),
(9, 9, 12100.00, '20-Feb-2022'),
(10, 10, 5150.00, '15-Oct-2021');

sequence for expenses:

CREATE SEQUENCE expense_id_seq
START WITH 1
INCREMENT BY 1
CACHE 20;

INSERT INTO Expenses (description, amount, expense_date, category)
VALUES
('Plumbing repairs', 200.00, '2021-11-05', 'Maintenance'),
('Electricity bill', 150.00, '2021-12-01', 'Utilities'),
('Miscellaneous supplies', 100.00, '2022-01-15', 'Miscellaneous'),
('Furniture replacement', 300.00, '2021-10-20', 'Maintenance'),
('Water bill', 80.00, '2021-11-10', 'Utilities'),
('Cleaning services', 90.00, '2021-11-25', 'Miscellaneous'),
('Painting', 250.00, '2022-02-10', 'Maintenance'),
('Gas bill', 120.00, '2022-01-05', 'Utilities'),
('Office supplies', 60.00, '2021-12-15', 'Miscellaneous'),
('Carpeting', 280.00, '2021-10-30', 'Maintenance');

