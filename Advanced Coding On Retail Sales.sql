-- Databricks notebook source
-- DBTITLE 1,ail_
USE `bright-learn`.data;

SELECT *
FROM retail_sales_dataset;

 



-- 1. Which product categories generated more than 150,000 in total sales? 

   SELECT `Product Category`,
          SUM(`Total Amount`) AS Total_sales
  FROM  retail_sales_dataset
  GROUP BY   `Product category`
  HAVING total_sales > 150000;  

 

-- 2. Which genders generated an average transaction value above 300?

SELECT Gender, 
     AVG(`Total Amount`) AS average_transact
     FROM retail_sales_dataset
     GROUP BY Gender 
     HAVING average_transact > 300;



-- 3. Find the top 5 customers with the highest total spending.


 SELECT `Customer ID`,
   SUM(`Total Amount`) AS Total_Spending
FROM retail_sales_dataset
GROUP BY `Customer ID`
ORDER BY Total_spending DESC
LIMIT 5;
                                                                                                                                                                    



-- 4. Which product categories have more than 300 transactions?
SELECT `Product Category`,
      COUNT(`Transaction ID`) AS Total_transact
 FROM retail_sales_dataset
 GROUP BY `Product Category` 
 HAVING Total_transact > 300;   


-- 5. What is the highest sale amount recorded for each product category?
SELECT `Product Category`,
      MIN(`Total Amount`) AS Sale_amount
FROM retail_sales_dataset
GROUP BY `Product Category`;

      



-- 6. Find the minimum sale amount for each gender. 
SELECT Gender,
     Max(`Total Amount`) AS Sale_amount
FROM retail_sales_dataset
GROUP BY Gender;


-- 7. Show categories where the average quantity sold is greater than 2. 
SELECT `Product Category`,
      AVG(Quantity) AS Average_quantity
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING Average_quantity > 2



-- 8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.


-- 9. Which product categories have a maximum sale amount greater than 1000? 


-- 10. Show the top 3 categories by average sales value, excluding customers under 25.
