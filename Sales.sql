	/* JOINING TRANSACTIONS AND DATE TABLE TO LOOK FOR 2020 TRANSACTIONS*/  
SELECT sales.transactions.*, sales.date.* FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year = 2020

   /*sum of sales transaction in year 2019*/  
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year = 2019

 /*sum of sales transaction in year 2020*/  
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year = 2020

 /*how much business was done in chennai ?*/  
 SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year = 2020 and sales.transactions.market_code="Mark001";

/*distinct producst sold in chennai */  
SELECT distinct product_code FROM sales.transactions where market_code="Mark001"