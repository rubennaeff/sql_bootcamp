# Exercises


### Extraction

Go to [W3 School's SQL Exercies](http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all).


### Basic SQL retrieval


- Retrieve all columns from the `Customers` table
- Print all names of customers from the UK.
- Print a list of all countries we have sold to
- Print an alphabetically sorted list (by first name) of all contacts from the USA and Canada.
- Which customers have a postal box as address?
- What Employees have BS degrees?
- What products cost between $25 and $30?
- Print a list of the 20 cheapest products


### Aggregates


- How many orders were there in July 1996?
- How many countries did we sell to?
- Print the minimum, average and maximum price of our assortment


### `GROUP BY`

- How many customers do we have per country?
- Create a table with columns 'Country' and 'Number of customers', sorted from most to least number of customers.
- Which employees sold at least 20 orders?


### `JOIN`


- What is the name of the customer who has the most orders?
- What supplier has the highest average product price?
- What employee made the most sales (by number of orders)?
- (*) What employee made the most sales (by number of products)?
- (**) What employee made the most sales (by value of sales)?


### Various functionality

- List product name, price and column "Affordable" being "expensive" if the price is more than $30, and "cheap" otherwise.
- Same list as above, but label products over $100 as "very expensive"


### Additional exercises (no answers)

- (*) What category has the most orders?
- (**) What supplier has the highest average product price, assuming they have at least 2 products?



## Create, edit and drop

Open your SQL Client to work on the following exercises.


- Create a database called `sql_bootcamp` and show the tables in it.
- Create a table called `students` and fill it with the first and last names of the students in our class,
as well as their city, state and zip, and favorite colors and numbers.
- What are the most popular cities/boroughs?
- Add and populate a column with their counties
- Remove some column for the table
- Delete the table and delete the database
