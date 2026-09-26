# Online Book Store SQL Project
## 📚 Project Overview
This project is a simple SQL database project based on an online bookstore.
The project uses SQL queries to create tables and analyze information about books, customers, and orders.
It was created as a learning project to practice SQL and database concepts using PostgreSQL.
## 🛠️ Tools & Technologies
* PostgreSQL
* SQL
* pgAdmin
## 🗂️ Database Tables
The project contains three main tables:
### Books
Stores information about books such as:
* Book ID
* Title
* Author
* Genre
* Published Year
* Price
### Customer
Stores customer information such as:
* Customer ID
* Name
* Email
* Phone
* City
* Country
### Orders
Stores order information such as:
* Order ID
* Customer ID
* Book ID
* Order Date
* Quantity
* Total Amount
## 🔍 SQL Concepts Used
This project includes examples of:
* CREATE TABLE
* SELECT
* WHERE
* BETWEEN
* DISTINCT
* ORDER BY
* LIMIT
* SUM()
* AVG()
* COUNT()
* GROUP BY
* HAVING
* JOIN
* LEFT JOIN
* COALESCE()
* Aggregate functions
* Foreign keys
## 📊 Example Analysis
The queries are used to answer questions such as:
* Find books from a particular genre
* Find books published after a specific year
* Find customers from a particular country
* Find orders placed during a specific period
* Find the most expensive book
* Find orders with quantity greater than 1
* Calculate total revenue
* Calculate average book price
* Find customers with at least two orders
* Find the most frequently ordered book
* Find the top 3 most expensive fantasy books
* Calculate books sold by each author
* Find the customer with the highest total spending
## 📁 Project Structure
online-book-store-sql/
│
├── README.md
│
└── sql/
    └── online_book_store.sql
## 🚀 How to Run
1. Install PostgreSQL and pgAdmin.
2. Create a new database.
3. Open the SQL Query Tool in pgAdmin.
4. Open `sql/online_book_store.sql`.
5. Execute the SQL statements.
6. Review the query results.
## 📌 Note
This is a beginner-level SQL learning project.
Some queries in the current SQL file may require adjustment before execution because of differences between table/column names used in different queries.
The project is mainly intended to demonstrate SQL practice and database concepts.
## 👩‍💻 Author
Shruti Oza
BSc Computer Science | MSc Data Science
