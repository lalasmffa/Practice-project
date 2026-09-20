--------------------------------------------------------------------------------------------------------
----creating customert table----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS customer(
		c_id integer PRIMARY KEY ,
		c_name	varchar(100),
		c_location	varchar(100),
		c_phoneno varchar(30)
);

select * from customer;

INSERT INTO customer (c_id, c_name, c_location, c_phoneno)
VALUES  ('1111','Nisha','kerala','8392320'),
	    ('1212','Oliver','kerala','4353891'),
		('1216','Nila','delhi','3323242'),
		('1246','Vignesh','chennai','1111212'),
		('1313','shiny','Maharastra','5454543'),
		('1910','Mohan','mumbai','9023941'),
		('2123','Biyush','Bombay','1253358'),
		('3452','Alexander','West Bengal','1212134'),
		('3921','Mukesh','Manipur','4232321'),
		('5334','Christy','pakistan','2311111'),
		('9021','Rithika','Kashmir','1121344'),
		('9212','Jessica','banglore','1233435'),
		('9875','Stephen','chennai','1212133');


-----------------------------------------------------------------------------------------------------------
---creating product table----------------------------------------------------------------------------------

 CREATE TABLE IF NOT EXISTS product(
		 p_code	integer PRIMARY KEY ,
		 p_name	varchar(100),
		 price	integer,
		 stock	integer,
		 category varchar(50)
 );
 
---next step import data from csv file, click tables and refresh, click product table, import data
 
  select * from product;
  
------------------------------------------------------------------------------------------------------------ 
----creating sales table------------------------------------------------------------------------------------

  CREATE TABLE IF NOT EXISTS sales(
		order_date	date,
		order_no varchar(30) PRIMARY key,
		c_id integer References customer(c_id),
		c_name	varchar(100),
		s_code	integer references product(p_code),
		p_name	varchar(100),
		qty	integer,
		price integer
);

--select * from sales;
---next step import data from csv file, click tables and refresh, click sales table, import data



---Write a query to display the order ID, customer ID, order date, price, and quantity columns of the sales table

select order_no , c_id, order_date, price, qty as quantity 
from sales;


---Write a query to show details from the product table where the category is stationary

select * 
from product 
where category = 'Stationary';

---Write a query to display the unique categories in the product table

select distinct category 
from product 
order by category desc;

---Write a query to display the product details in descending order of price

select * 
from product 
order by price desc;


