Create database "Capstone_DB" 

Select * From[dbo].[LITA Capstone Sales Data 1]


----- 1. Retrieve Total sales for each Product Category-----

Select [Product],Sum(Quantity) as Total_Sales from [dbo].[LITA Capstone Sales Data 1]
Group by [Product]

Select [Product],Sum(Revenue) as Total_Revenue from [dbo].[LITA Capstone Sales Data 1]
Group by [Product]

--- 2. Find the highest-selling product by total sales value.

SELECT  Product, SUM(Quantity) as Total_Sales FROM [dbo].[LITA Capstone Sales Data 1]
GROUP BY Product
Order By Total_Sales Desc

------3. Number of sales Transactions in each Region---

Select Region,Sum(Quantity) as Regional_Total_Sales from [dbo].[LITA Capstone Sales Data 1]
Group by Region


---4. Total Revenue by Product-----

Select [Product],Sum(Quantity*[UnitPrice]) as Total_Revenue from [dbo].[LITA Capstone Sales Data 1]
Group by [Product]
Order by Total_Revenue Desc

---Creating additional column---
ALTER TABLE [dbo].[LITA Capstone Sales Data 1]
ADD OrderMonth nvarchar(50)
UPDATE [dbo].[LITA Capstone Sales Data 1]
SET OrderMonth = DATENAME(MONTH, OrderDate)

ALTER TABLE [dbo].[LITA Capstone Sales Data 1]
ADD OrderYear int

UPDATE [dbo].[LITA Capstone Sales Data 1]
SET OrderYear = Year(OrderDate)


--- 5. Monthly sales totals for the current year(2024)--

SELECT  OrderMonth, 
 SUM(Quantity) as Total_Sales
FROM [dbo].[LITA Capstone Sales Data 1]
WHERE OrderYear = 2024
GROUP BY OrderMonth

---Monthly Revenue 2024

SELECT OrderMonth, 
 SUM(Revenue) as Total_Revenue
FROM [dbo].[LITA Capstone Sales Data 1]
WHERE OrderYear = 2024
GROUP BY OrderMonth
Order by Total_Revenue Desc

--- 6. Top 5 Customers by total purchase amount

SELECT  Top 5 Customer_Id,SUM(Revenue) AS Total_Purchase
FROM [dbo].[LITA Capstone Sales Data 1]
GROUP BY Customer_Id
ORDER BY Total_Purchase DESC

---7.  percentage of total sales/Revenue contributed by each region.

select Region, sum(Revenue) * 100.0 / (select sum(Revenue) from [dbo].[LITA Capstone Sales Data 1])as Percentage_of_Total_Revenue
from [dbo].[LITA Capstone Sales Data 1]
group by Region
Order by Percentage_of_Total_Revenue

select Region, sum(Quantity) * 100.0 / (select sum(Quantity) from [dbo].[LITA Capstone Sales Data 1]) as Percentage_of_Total_Sales
from [dbo].[LITA Capstone Sales Data 1]
group by Region
Order by Percentage_of_Total_Sales

-----Percentage Revenue by Products----

select [Product], sum(Revenue) * 100.0 / (select sum(Revenue) from [dbo].[LITA Capstone Sales Data 1])as Percentage_of_Total_Revenue
from [dbo].[LITA Capstone Sales Data 1]
group by [Product]
order by Percentage_of_Total_Revenue


---8. Products with no sales in the last quarter

SELECT [Product],SUM(Quantity) AS Zero_Sales
FROM [dbo].[LITA Capstone Sales Data 1]
WHERE OrderYear = 2024 
AND OrderMonth BETWEEN 'July' AND 'September' 
GROUP BY [Product]
HAVING SUM(Quantity)= 0


SELECT [Product],SUM(Quantity) AS Sales
FROM [dbo].[LITA Capstone Sales Data 1]
WHERE MONTH(OrderDate) BETWEEN 10 AND 12  -- Months 10, 11, and 12 (October to December)
GROUP BY [Product]
HAVING SUM(Quantity)=0

Select * From[dbo].[LITA Capstone Sales Data 1]
