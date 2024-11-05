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

## SALES TREND
---
The sales of the store was explored to determine the pattern or trend of sales of the various products. To do this Pivot Tables were used in Excel for Data Aggregation. In addition to this some sql queries were also used in SQL Server for efficient exploration and analysis.

### BY PRODUCT
The store over the period examined had a total sale volume of 68,461. the breakdown of the total sales showed that the store recorded a sales volume of 38,681 in 2023 and 29,780 in the current year. Hat had the highest quantity of sales with 15,929 total sales within the period. This is followed by Shoes which a total sales volume of 14, 402. The least sales was recorded in the quantity of Jackets sold within this period as the product recorded a total sales of 5,452 within the period under review. The other products( Shirts, Gloves and Socks) had total sales record of 12,388, 12,369 and 7,921 respectively. The average sales per product ranges from average Jacket sales of 3.66 being the lowest to 8.33(Gloves and Shirt). 

![SALES PIVOT TABLES](https://github.com/user-attachments/assets/42a74204-a81a-4587-ba97-30b867ca6e95)

### BY MONTHLY SALES
Shirt was the store best performing product in terms of quantity sold Monthly  with an all- time high product sales volume of 5,940  recorded in the  month of July 2023. Gloves and Hat with total sales of 5,928 in the month of March, 2024 and 5, 478 sales in the month of March, 2024 clinched the 2nd and 3rd position as the store's best performing products. Similarly, Jacket with the least sales performance with 994 total sales in the month of May 2023. 

The regional sales analysis revealed that the southern region had the highest sales while the Western Region had the least volume of sales. The average sales per region ranges from 9.80 in the south to 4.60 in the West. Whereas, the overall average sales 6.90

 SAMPLE SQL SERVER SALES QUERY 
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

## *SALES INSIGHTS*
1. TOTAL SALES: **68,461**
2. BEST SELLING PRODUCT: **HAT**
3. MONTH WITH THE OVERALL HIGHEST SALE: **FEBRUARY**
4. MONTH WITH THE HIGHEST SALES 2023: **JULY**
5. MONTH WITH THE HIGHEST SALES 2024: **JUNE**
6. MONTH WITH THE OVERALL LEAST SALE: **MAY**
7. MONTH WITH THE LEAST SALES 2023: **MAY**
8. MONTH WITH THE LEAST SALES 2024: **MAY**
9. BEST PERFORMING REGION : **SOUTH**
10. LEAST PERFORMING REGION : **WEST**

![SALES DATA REPORT DASHBOARD 2](https://github.com/user-attachments/assets/deaa63ea-066a-47e0-a9ac-5aa6626d0adc)

## REVENUE TREND
---
### BY PRODUCTS
The store over the period examined had a total revenue of
![image](https://github.com/user-attachments/assets/80f94050-2ab1-413c-9188-8c64dc2c740c)
The breakdown of the total revenue showed that the store generated N1,105,330  in 2023 and 995,760 in the current year. Shoes had the highest revenue with N613,380  within the period. This is followed by Shirts which generated of N485,600. The least revenue was generated by Socks sales within this period as the product recorded a total revenue of N180,785 acounting for only 8.60% of the total revenue generated in the store within the period under review. The other products( Hat, Gloves and Jackets) generated  N316,195 (15.05%), N296,900(14.13%) and N208,230 (9.91%) as revenue respectively. 
    ![image](https://github.com/user-attachments/assets/c303b1d9-ae9e-47eb-bf49-fb0452c6a7e9)

### BY MONTH and PRODUCTS
Shoes was the store best performing product in terms of revenue generation pulling a total revenue of N613,380(14, 402) with an all- time high sales volume of 4,980 and N298,800 as revenue recorded in the  month of February 2024. Shirts and Hat with total revenue of N485,600 (12,388 Sales)  and 316,195 (15,929 sales) respectively were the store's 2nd and 3rd best performing products in terms of revenue generation. Shirt had a peak monthly revenue of N237300 in July 2023 while Hat had its peak monthly revenue of 174,300 in August 2024.
![Screenshot 2024-11-05 090156](https://github.com/user-attachments/assets/ba2c5058-1124-4c0a-a9a9-8e2bb593ac1a)

![image](https://github.com/user-attachments/assets/be591f0b-466f-4d3d-a489-e45c9d8ac368)


![image](https://github.com/user-attachments/assets/b15c0f9c-d7ba-4dda-966e-79dbad6d9b18)



### BY REGION
![image](https://github.com/user-attachments/assets/c798507f-14c5-4f12-a125-83536bae8ebf)


The regional revenue analysis revealed that the southern region had the highest revenue while the Western Region had the lowest revenue generation. 

Sample SQL Server Query for Regional Revenue Trend
```
select Region, sum(Revenue) * 100.0 / (select sum(Revenue) from [dbo].[LITA Capstone Sales Data 1])as Percentage_of_Total_Revenue
from [dbo].[LITA Capstone Sales Data 1]
group by Region
Order by Percentage_of_Total_Revenue
`````

The store's south region generated a total of N927,820 representing 44.16% of the Store's Total Revenue. Shoes, Gloves and Socks were the product sold in this region with shoe generating the most rvenue among the three (3) products. The least performing region (WEST) contributed a total revenue of N300,345 only. Hat was the product with the highest revenue in the west region contributing N174,300 to the Revenue generation in the region. 

![image](https://github.com/user-attachments/assets/22137ee0-12a5-4d4c-9f98-6238d1406121)


# *INSIGHTS FROM REVENUE GENERATION ANALYSIS*
1. TOTAL REVENUE: **N2,101,090**
2.  2023 TOTAL REVENUE = **N1,105,330**
3.  2924 TOTAL REVENUE = **N995,760** 
4. BEST SELLING PRODUCT BY REVENUE : **SHOES**
5. LEAST PERFORMING PRODUCT BY REVENUE: **SOCKS**
6. MONTH WITH THE OVERALL HIGHEST REVENUE: **FEBRUARY** 
7. MONTH WITH THE HIGHEST REVENUE 2023: **FEBRUARY** (N247,500)
8. MONTH WITH THE HIGHEST REVENUE 2024: **FEBRUARY** (N298,800)
9. MONTH WITH THE CUMMULATIVE LEAST REVENUE: **SEPTEMBER**
10. MONTH WITH THE LEAST REVENUE 2023: **APRIL** (7,425)
11. MONTH WITH THE LEAST SALES 2024: **JULY** (N37,200)
12. BEST PERFORMING REGION : **SOUTH**
13. LEAST PERFORMING REGION : **WEST**


https://github.com/user-attachments/assets/1d56558b-66b1-45da-a19f-6d7e2cb68fbe

## CONCLUSION AND RECOMMENDATIONS
Insights from the exploratory analysis reveals that shoe is the most lucrative products sold by the retail store while it could be concluded that the store's south region contributed the most to the revenue of the store. Hence, it is recommended that the staffers in the south region store be encouraged for better performance.
Similarly, the store may wish to investigate the reasons for the low sales and revenue in the west taking steps appropriate steps to improve revenue and sales from this region.
