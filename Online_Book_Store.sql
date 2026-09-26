--created the table Books--
create table Books(
 Book_ID serial primary key,
 Title varchar(100),
 Author varchar(100),
 Genre varchar(100),
 Published_Year int,
 Price int,
stock int
);
--created the table Customers--
create table Customers(
Customer_ID serial primary key,
Name varchar(100),
email varchar(100),
Phone varchar(20),
City varchar(50),
Country varchar(150)
);
--created the table Orders--
create table Orders(
Order_ID serial primary key,
Customer_ID int references Customers(Customer_ID),
Book_ID int references Books(Book_ID),
Order_Date date,
Quantity int,
Total_Amount numeric(10,2)
);
--retrieve all books in the "fiction" genre--
select * from Books where  Genre='Fiction';
--find books published after year 1950--
select * from Books where Published_Year>1950;
--list Customer from Canada--
select * from Customers where Country='Canada'; 
--Show orders placed in November 2023--
select * from Orders where Order_date between '2023-11-01' and '2023-11-30';
--Retrieve total stock of books availabe--
select sum(Stock) as stock_detail from Books;
--Find details of most expensive book--
select * from Books order by price desc limit 1;
--show all customers who ordereed more than 1 quantity of book--
select * from Orders where Quantity>1;
--Retrieve all orders where total amount exceeds $20--
select * from Orders where total_amount>20;
--List all genres available--
select distinct genre from Books;
--Find book with lolwest stock--
select * from Books order by stock limit 1;
--Calculate total revenue--
select sum(total_amount) as revenue from Orders;
--Retrieve total no. of books sold for each genre--
select b.Genre,sum(o.Quantity) as total_sold
from Books b
join Orders o
on b.Book_id=o.Book_id
group by b.Genre;
--Find average price of book in 'Fantasy' genre--
select avg(price) as avg_price
from Books where Genre='Fantasy';
--List customers who placed at least 2 orders--
select Customer_id,count(Order_id)
from Orders group by Customer_id
having count(Order_id)>=2;
--Find most frequently ordered book--
select b.title,o.Book_id,count(o.Order_id) as order_count
from Orders o
join Books b
on b.Book_id=o.Book_id
group by o.Book_id,b.title
order by Order_count desc limit 1;
--Select Top 3 most expensive book of 'Fantasy' genre--
select * from Books where genre='Fantasy' order by price desc limit 3;
--Retrieve the total quantity of books sold by each author--
select b.Author,sum(o.quantity)
from Books b
join Orders o
on b.Book_id=o.Book_id
group by b.Author;
--List cities where customers who spend over $30 are located--
select distinct c.city,o.total_amount from Customers c
join Orders o
on c.Customer_id=o.Customer_id 
where o.total_amount>=30;
--Find customers who spend most on orders--
select c.Name,sum(o.Total_amount) as total_spend from Customers c
join Orders o on c.Customer_id=o.Customer_id
group by c.name order by total_spend desc limit 1;
--Calculate stock remaining after fulfilling all orders--
select b.Book_id,b.Title,b.Stock,coalesce(sum(o.quantity),0) as order_quantity,
b.stock-coalesce(sum(o.quantity),0) as remaining_quantity
from Books b
left join orders o on b.book_id=o.book_id
group by b.book_id;