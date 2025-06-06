# 🏨 Hostel Accounting System
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

A simple SQL-based hostel management database that tracks student details, room allocations, payments, fees, and expenses.

## 📁 Project Structure

- `create_tables.sql`: SQL script to create all necessary tables and sequences.
- `hostel_data.sql`: Contains sample data insertions into the database.
- `queries.sql`: Collection of useful queries to interact with and analyze the hostel database.

## 🧱 Technologies Used

- Oracle SQL / SQL*Plus syntax (some parts use `VARCHAR2`, `NUMBER`, `ENUM`, etc.)
- SQL Joins, Aggregations, Group By, Subqueries

## 📌 Features

- Store student and room data.
- Allocate rooms to students with date ranges.
- Record payments and fees.
- Track hostel expenses by category.
- Run queries for analytics and insights.

## 💻 How to Use

1. Open any SQL environment like Oracle SQL Developer, DBeaver, or MySQL Workbench.
2. Run the `create_tables.sql` script to create the database schema.
3. Run the `hostel_data.sql` script to insert data.
4. Run any query from `queries.sql` to interact with the database.

> Make sure to create the necessary sequences before inserting data where needed.

## 📊 Sample Queries

- Retrieve student info and emails
- Calculate total payments per student
- List room capacity analytics
- Summarize expenses per category
- Revenue analysis from room allocations

## ✨ Future Improvements (Optional Ideas)

- Build a front-end interface (maybe with HTML/PHP or Flask).
- Add triggers and procedures for validations.
- Add login functionality for admins.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙌 Author

Lakshmi Priyanka Kantimahanti
