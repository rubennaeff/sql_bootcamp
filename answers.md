# Exercises


### Extraction

Go to [W3 School's SQL Exercies](http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all).


### Basic SQL retrieval


- Retrieve all columns from the `Customers` table

```sql
SELECT *
FROM Customers
```

- Print all names of customers from the UK.

```sql
SELECT CustomerName
FROM Customers
WHERE Country = 'UK'
```

- Print a list of all countries we have sold to

```sql
SELECT DISTINCT Country
FROM Customers
```

- Print an alphabetically sorted list (by first name) of all contacts from the USA and Canada.

```sql
SELECT ContactName, Country
FROM Customers
WHERE Country = 'USA'
    OR Country = 'Canada'
ORDER BY CustomerName
```

- Which customers have a postal box as address?

```sql
SELECT *
FROM Customers
WHERE Address LIKE "P.O. Box%"
```

- What Employees have BS degrees?
```sql
SELECT * FROM [Employees]
WHERE Notes LIKE "%BS%"
```

- What products cost between $25 and $30?

```sql
SELECT *
FROM Products
WHERE Price > 25
    AND Price < 30
```

- Print a list of the 20 cheapest products

```sql
SELECT ProductName, Price
FROM Products
ORDER BY Price
LIMIT 20
```


### Aggregates


- How many orders were there in July 1996?

```sql
SELECT Count(*)
FROM Orders
WHERE OrderDate LIKE "1996-07%"
```

- How many countries did we sell to?

```sql
SELECT Count(DISTINCT Country)
FROM Customers
```

- Print the minimum, average and maximum price of our assortment

```sql
SELECT
    Round(Min(Price), 2) AS "Lowest price",
    Avg(Price) AS "Average price",
    Max(Price) AS "Highest price"
FROM Products
```


### `GROUP BY`

- How many customers do we have per country?

```sql
SELECT Country, Count(*)
FROM Customers
GROUP BY Country
```

- Create a table with columns 'Country' and 'Number of customers', sorted from most to least number of customers.

```sql
SELECT Country, Count(*) AS "Number of customers"
FROM Customers
GROUP BY Country
ORDER BY "Number of customers" DESC
```

Could also write
```sql
GROUP BY 1
ORDER BY 2 DESC
```

- Give employee IDs for those who sold at least 20 orders.

```sql
SELECT EmployeeID, COUNT(OrderID) AS NumberOfOrders
FROM Orders
GROUP BY EmployeeID
HAVING NumberOfOrders >= 20
```


### `JOIN`


- Which employees sold at least 20 orders?

```sql
SELECT LastName, FirstName, COUNT(OrderID) AS NumberOfOrders
FROM Employees
JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY LastName, FirstName
HAVING NumberOfOrders >= 20
```


- What is the name of the customer who has the most orders?

```sql
SELECT CustomerName, Count(*) AS "Total number of orders"
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY CustomerName
ORDER BY 2 DESC
LIMIT 1
```

- What supplier has the highest average product price?

```sql
SELECT SupplierName, Price
FROM Suppliers
JOIN Products
ON Suppliers.SupplierID = Products.SupplierID
ORDER BY 2 DESC
LIMIT 1
```

- What employee made the most sales (by number of orders)?
```sql
SELECT LastName, FirstName, Count(OrderID)
FROM Employees
JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY LastName, FirstName
ORDER BY 3 DESC
```

- (*) What employee made the most sales (by number of products)?

```sql
SELECT LastName, FirstName, Sum(Quantity)
FROM Employees
JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
GROUP BY LastName, FirstName
ORDER BY 3 DESC
```

- (**) What employee made the most sales (by value of sales)?

```sql
SELECT LastName, FirstName, Round(Sum(Quantity * Price), 2) AS "Sales"
FROM Employees
JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
JOIN Products
ON OrderDetails.ProductID = Products.ProductID
GROUP BY LastName, FirstName
ORDER BY 3 DESC
```



### Various functionality

- List product name, price and column "Affordable" being "expensive" if the price is more than $30, and "cheap" otherwise.

```sql
SELECT
    ProductName,
    Price,
    CASE WHEN Price > 30 THEN "expensive" ELSE "cheap" END AS "Affordable"
FROM [Products]
 ```

- Same list as above, but label products over $100 as "very expensive"

```sql
SELECT
    ProductName,
    Price,
    CASE
       WHEN Price > 100 THEN "very expensive"
       WHEN Price > 30 THEN "expensive"
       ELSE "cheap" END AS pos
FROM [Products]
```

- Produce a list with all full employee names

```sql
SELECT FirstName + " " + LastName AS full_name
FROM Employees
```

This one does not seem to be supported:

```sql
SELECT CONCAT(FirstName, ' ', LastName) AS full_name
FROM Employees
```

- Produce a list with full names from both employees and customer contacts

```sql
SELECT FirstName + " " + LastName AS full_name
FROM Employees
UNION
SELECT ContactName
FROM Customers
```


### Additional exercises (no answers)

- (*) What category has the most orders?

- (**) What supplier has the highest average product price, assuming they have at least 2 products?


## Create, edit and drop

Open your SQL Client to work on the following exercises.


- Create a database called `sql_bootcamp` and show the tables in it.

```sql
CREATE DATABASE sql_bootcamp;
USE sql_bootcamp;
SHOW TABLES
```


- Create a table called `students` and fill it with the first and last names of the students in our class,
as well as their city, state and zip, and favorite colors and numbers.

```sql
CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    city VARCHAR(30),
    state CHAR(2),
    zip CHAR(5),
    favorite_color VARCHAR(10),
    favorite_number INT,
    PRIMARY KEY (id) );

INSERT INTO students (first_name, last_name, city, state, zip)
VALUES
    ("Ruben", "Naeff", "Brooklyn", "NY", "11221"),
    ("John", "Smith", "Astoria", "NY", "11102"),
    ("Mike's", "Coffeeshop", "Brooklyn", "NY", "11205"),
    ("General", "Assembly", "New York", "NY", "10010"),
    ("Ruben", "Naeff", "Brooklyn", "NY", "11221"),
    ("John", "Smith", "Astoria", "NY", "11102"),
    ("Mike's", "Coffeeshop", "Brooklyn", "NY", "11205"),
    ("General", "Assembly", "New York", "NY", "10010"),
    ("Ruben", "Naeff", "Brooklyn", "NY", "11221"),
    ("John", "Smith", "Astoria", "NY", "11102"),
    ("Mike's", "Coffeeshop", "Brooklyn", "NY", "11205"),
    ("General", "Assembly", "New York", "NY", "10010"),
    ("Ruben", "Naeff", "Brooklyn", "NY", "11221"),
    ("John", "Smith", "Astoria", "NY", "11102"),
    ("Mike's", "Coffeeshop", "Brooklyn", "NY", "11205"),
    ("General", "Assembly", "New York", "NY", "10010")
```

- What are the most popular cities/boroughs?

```sql
SELECT city, count(*)
FROM students
GROUP BY city
ORDER BY 2 DESC
```

- Add and populate a column with their counties

```sql
ALTER TABLE students
ADD county VARCHAR(10);
UPDATE students
SET county = 'Kings' WHERE city = 'Brooklyn';
UPDATE students
SET county = 'New York' WHERE city = 'New York';
UPDATE students
SET county = 'Queens' WHERE city NOT IN ('Brooklyn', 'New York')
```

- Remove some column for the table

```sql
ALTER TABLE students
DROP favorite_color
```

- Delete the table and delete the database

```sql
DROP TABLE students
DROP DATABASE sql_bootcamp
```



