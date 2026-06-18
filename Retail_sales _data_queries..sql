-- Databricks notebook source
SELECT * 
FROM `bright-learn`.data.retail_sales_dataset

 --Display transations where the quantity purchased is 3 or more

 SELECT*
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE Quantity >=3;

 --Display beauty products sales where the total amount is greater than 100
 SELECT*
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE `Product category`= 'Beauty' and `Total amount` > 100;


$0

 --Display only the customer ID and the product category column
 SELECT `Customer ID`,
        `Product category`
 FROM   `bright-learn`.data.retail_sales_dataset; 


 --Display all the electronics sales transactions
 SELECT*
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE `Product category`= 'Electronics';
  

 --Display customers who are older than 40
 SELECT *
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE Age > 40; 

 --Display transations where the quantity purchased is 3 or more
 SELECT*
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE Quantity >=3;

 --Display beauty products sales where the total amount is greater than 100
 SELECT*
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE `Product category`= 'Beauty' and `Total amount` > 100;

 --Display customers whose ages are between 25 and 35
 SELECT*
 FROM `bright-learn`.data.retail_sales_dataset
 WHERE Age BETWEEN 25 AND 35;

 --Calculate the total sales amount for all transactions
 SELECT SUM (`TOTAL AMOUNT`) AS `total-revenue`
 FROM  `bright-learn`.data.retail_sales_dataset;

 


 

   
 
 
 

 


