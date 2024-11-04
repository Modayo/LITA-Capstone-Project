# LITA-Capstone-Project: SALES DATA REPORT
This project is one of the data analysis project submitted as one of the requirements for successful completion of a ten week data analytic training programme organized by The Incubator Hub-Ladies in Tech Africa.(https://www.linkedin.com/company/theincubatorng/) 

## **PROJECT OVERVIEW**
---

This project requires an in-depth study of sales and revenue generation pattern by region and product to draw insightful conclusion on the various categories of product.
The retail store needs an insight into their top performing products and region. Similarly, the store is interested in their monthly sales performance vis-a-viz quantity and the attendant revenue generation per product and Region. It is expected that an interactive power BI dashboard will be produced for the store.

## **OBJECTIVES**
---

The objective of this project is to:
-  determine the regional sales and revenue trend
-  determine the total revenue of the retail store
-  identify the best selling product of the store
-  identify the months with the highest sales and revenue generation
-  identify any other useful insight for the retail store


## **Data Analysis Tools**
---
The data analysis tools used for the project are
1.  Microsoft Excel
    -  For Data Cleaning
    -  For Data Exploration and initial analysis
2.  SQL Server:
    -  SQL Queries for Exploratory Analysis.
3.  Microsoft Power Bi
    -  For Visualization and Report

## Data Cleaning and Preparations
---
The data was checked for entry errors and missing information. Initial Cleaning and Exploration of data were carried out in Microsoft Excel. Duplicate data were cleaned out at the initial stage.
Similarly, necessary columns for indepth analysis were created e.g Revenue Column was created in excel using the product function in Excel (= Product (Quantity, Unit Price)) to aid the achievement of the objectives earlier set out.

## **EXPLORATORY ANALYSIS**
---
### SALES TREND
The sales of the store was explored to determine the pattern or trend of sales of the various products. To do this Pivot Tables were used in Excel for Data Aggregation. In addition to this some sql queries were also used in SQL Server for efficient exploration and analysis.

The store over the period examined had a total sale volume of 68,461. the breakdown of the total sales showed that the store recorded a sales volume of 38,681 in 2023 and 29,780 in the current year. Hat had the highest quantity of sales with 15,929 total sales within the period. This is followed by Shoes which a total sales volume of 14, 402. The least sales was recorded in the quantity of Jackets sold within this period as the product recorded a total sales of 5,452 within the period under review. The other products( Shirts, Gloves and Socks) had total sales record of 12,388, 12,369 and 7,921 respectively. The average sales per product ranges from average Jacket sales of 3.66 being the lowest to 8.33(Gloves and Shirt). 

Shirt was the store best performing product in terms of quantity sold  with an all- time high product sales volume of 5,940  recorded in the  month of July 2023. Gloves and Hat with total sales of 5,928 in the month of March, 2024 and 5, 478 sales in the month of March, 2024 clinched the 2nd and 3rd position as the store's best performing products. Similarly, Jacket with the least sales performance with 994 total sales in the month of May 2023. 

The regional sales analysis revealed that the southern region had the highest sales while the Western Region had the least volume of sales. The average sales per region ranges from 9.80 in the south to 4.60 in the West. Whereas, the overall average sales 6.90

SQL SERVER SALES QUERY 
```
----- 1. Retrieve Total sales for each Product Category-----
Select [Product],Sum(Quantity) as Total_Sales from [dbo].[LITA Capstone Sales Data 1]
Group by [Product]

--- 2. Find the highest-selling product by total sales value.
SELECT  Product, SUM(Quantity) as Total_Sales FROM [dbo].[LITA Capstone Sales Data 1]
GROUP BY Product
Order By Total_Sales Desc

------3. Number of sales Transactions in each Region---
Select Region,Sum(Quantity) as Regional_Total_Sales from [dbo].[LITA Capstone Sales Data 1]
Group by Region

```
![SALES DATA REPORT DASHBOARD 2](https://github.com/user-attachments/assets/07e4595a-3b4a-4d20-88b9-46f0d3a0c59c)



![SALES DATA REPORT DASHBOARD 1](https://github.com/user-attachments/assets/934bd90f-3a63-467b-a213-671868ce5d92)
![SALES DATA REPORT REVENUE TRENDS (INTERACTIVE)](https://github.com/user-attachments/assets/e1a2b64f-2d61-4cf7-9def-c4bc101e66f4)!
[SALES DATA REVENUE TRENDS DASHBOARD](https://github.com/user-attachments/assets/6b3d10cd-d336-4367-8ec9-5fbd3928bfc1)





https://github.com/user-attachments/assets/f5850b67-cdc2-44ce-a3a0-f46a32afa149
