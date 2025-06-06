CREATE TABLE Students (
        student_id INT PRIMARY KEY,
        name VARCHAR(100),
        email VARCHAR(100) UNIQUE,
        phone_number VARCHAR(15),
        date_of_birth DATE,
        gender ENUM('Male', 'Female', 'Other'),
        date_of_admission DATE
    );

CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    room_number VARCHAR2(10) UNIQUE,
    room_type VARCHAR2(10) CHECK (room_type IN ('Single', 'Double', 'Triple')),
    capacity INT,
    rate_per_month NUMBER(10, 2)
);

CREATE TABLE ROOMALLOCATIONS (
    ALLOCATION_ID INT PRIMARY KEY,
    STUDENT_ID INT,
    ROOM_ID INT,
    START_DATE DATE,
    END_DATE DATE,
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTSS(STUDENT_ID),
    FOREIGN KEY (ROOM_ID) REFERENCES ROOMS(ROOM_ID)
);

CREATE TABLE PAYMENTS (
    PAYMENT_ID INT PRIMARY KEY,
    STUDENT_ID INT,
    AMOUNT NUMBER(10, 2),
    PAYMENT_DATE DATE,
    PAYMENT_METHOD VARCHAR2(15) CHECK (PAYMENT_METHOD IN ('Cash', 'Credit Card', 'Debit Card', 'Bank Transfer')),
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTSS(STUDENT_ID)
);

CREATE TABLE Fees (
        fee_id INT PRIMARY KEY,
        student_id INT,
        room_id INT,
        amount DECIMAL(10, 2),
        due_date DATE,
        FOREIGN KEY (student_id) REFERENCES Studentss(student_id),
        FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
    );

CREATE TABLE EXPENSES (
    EXPENSE_ID INT PRIMARY KEY,
    DESCRIPTION VARCHAR2(255),
    AMOUNT NUMBER(10, 2),
    EXPENSE_DATE DATE,
    CATEGORY VARCHAR2(15) CHECK (CATEGORY IN ('Maintenance', 'Utilities', 'Miscellaneous'))
);
