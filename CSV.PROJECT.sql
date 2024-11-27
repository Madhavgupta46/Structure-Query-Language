SELECT * FROM aaft.csv_table;

use aaft;
select count(distinct(product_id)) from csv_table;

### 1) Find the total quantity sold for each product###
select product_id,sum(quantity) as "total_quantity"
from csv_table
group by product_id;

### 2) Find average price of each product###
select product_name,avg(price) as "average price"
from csv_table
group by product_name;

### 3) get total number of sales(sale_id,count) for each region####
select region,count(sales_id) as "total sales"
from csv_table
group by region;

### 4) Find total quantity sold for each region####
select region,sum(quantity) as " total quantity"
from csv_table
group by region;

### 5) find the region where more than 10 items have been sold
select region,sum(quantity) as "total quantity"
from csv_table
group by region
having sum(quantity)>10;
 
 ### 6)find total sales amount for each product 
 select product_name,sum(sales) as "total sales"
 from csv_table
 group by product_name
 having sum(sales);
 ### 7)Find the regions where total sales amount exceeds 5000
select region,sum(price*quantity) as "total sales"
 from csv_table
 group by region
 having sum(price*quantity)>5000;
 ###8) find the avg quantity sold for each product and only shows product with an avg quantity greater than 4
   select product_name,avg(quantity) as "avg quantity"
 from csv_table
 group by product_name;
 select product_name,avg(quantity) as "avg quantity"
 from csv_table
 group by product_name
 having avg(quantity)>4;
 ###9) get the number of different product sold in each region 
select region,count(product_name) as "product_count"
 from csv_table
 group by region;
 ### 10) find the product with highest total sales amount
  select product_name,sum(price*quantity) as "total sales"
 from csv_table 
 group by product_name
 order by sum(price*quantity) desc limit 1;  
