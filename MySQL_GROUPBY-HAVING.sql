use company;

create table sales (
saleID int ,
productID int,
coustomerID int,
saledate date,
quantity int, 
unitprice int,
region varchar(20));
	
insert into sales(saleID , productID , coustomerID , saledate , quantity ,unitprice , region) 
values(1 , 101 , 1001  , "2024-01-05" , 5 , 200 , "north"),
(2 ,102, 1002 , "2024-01-10" , 10 , 150, "east"),
(3, 103 , 1003 , "2024-02-15" , 2 ,300 ,"north"),
(4 , 104 , 1001 , "2024-02-20" , 7 , 250 , "west" ),
(5 , 101 , 1004 , "2024-03-04 ", 1 , 200 , "nort");

select * from sales;

#Write a query to calculate the total sales (Quantity * UnitPrice) for each product.

select productID,sum(quantity * unitprice)  from sales group by productID;

#Write a query to find the total number of products sold in each region. 

select region , sum(quantity) from sales group by region;

#Write a query to get the average sales amount per product. 

select productID , avg(quantity * unitprice) from sales group by productID;

#Find the regions where total sales are more than 3000. 

select region , sum(quantity * unitprice) from sales group by region having sum(quantity * unitprice)>3000;

#Write a query to get the maximum quantity sold for each product. 

select productID , max(quantity) from sales group by productID;

#Write a query to calculate the average quantity of products sold per region. 

select region , avg(quantity) from sales group by region ;

#Find the product IDs that have generated a total sales amount of more than 1000.  

select productID ,  (quantity * unitprice) as totalsales from sales where (quantity * unitprice) >1000;

#Write a query to get the total number of sales (rows) made for each customer. 

select coustomerID , sum(quantity * unitprice) from sales group by coustomerID ;

#Find the products for which the average quantity sold is less than 5. \

select productID , avg(quantity) from sales group by productID having avg(quantity)<5;

#Write a query to find the sum of total sales for each customer in each region.

 select coustomerID , sum(quantity * unitprice) , region from sales group by coustomerID ,region ;

#Write a query to calculate the total sales for each month. 

Select monthname(SaleDate), sum(Quantity*UnitPrice) AS "Total Sales" from sales group by monthname(SaleDate);

#Find the regions where the average unit price is more than 200. 

Select region ,avg(unitPrice) from sales group by region having avg(unitPrice)>200;

#Write a query to get the minimum and maximum quantity sold per region.  

select region, Max(quantity) AS "Max. Quantity Sold",Min(quantity) AS "Min. Quantity Sold" from sales group by region;

#Find the customers who have made more than 2 purchases.  

Select coustomerID, quantity as Purchase from sales where quantity > 2;

#Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.  

Select productID, sum(quantity*unitPrice) As "Total Sales" from sales group by productID having sum(quantity*unitPrice)>1500;
