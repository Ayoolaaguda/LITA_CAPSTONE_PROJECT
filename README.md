# LITA CAPSTONE PROJECT 

This repository contains my capstone with the incubator hub where I worked on two data sets:
1. SalesData.csv: this contained ABC clothing store's sales of six(6) clothing products (Shirt, shoes, Hat, Socks, Gloves, and Jackets) from 4 regions (North, South, East and West) from January 2023- August 2024.
2. Customerdata.csv: this contains subcription data from a telecoms company which offers Three(3) subscriptions types(Basic, Standard, Premium) in the four regions of Nigeria (North, South, East and West) from the January 2022 - August 2024. 

## TOOLS USED
- Excel: For data cleaning, analysis and visualization 
- Sql: Structured Query Language for Exploartory Data Analysis
- Power Bi: Analysis and Visualization 



## Exploratory Data Analysis
### Sales data
#### Excel: 
I carried out data inspection and cleaning, removed duplicate values, created a new column to calculate Total sales/Revenue.
I used pivot tables to summarize total sales by product, region, and month, average sales per product, quantity sold by product, total sales by product by year.
Lastly I created an interactive dashboard 

#### SQL:
I used sql queries to:
- Calculate the total sales for each product,  
- Find the number of sales transactions in each region
- Retrieve the top-selling product by total revenue,
- Calculate monthly sales totals for the current year
- Find the top 5 customers by their total purchase amount
- Calculate the percentage of total sales contributed by each region
- Identify products with no sales in the last quarter. 


```SQL CODES
--Total Sales by Product Category
Select Product, Sum(Sales) as Total_Sales
From SalesData
Group by Product
Order by Total_Sales desc

--Monthly sales total for the current year
Select Month(OrderDate)as Month, Sum(Sales) as Monthly_Sales_total
From SalesData
Where Year(OrderDate)=2024
group by Month(orderDate)
Order by Monthly_Sales_total desc
```

#### Power BI 
I created an interactive report showing:
- The total revenue
- Total number of customers
- Total revenue by product
- Total quantity sold by product 

### Customer Data
#### Excel: 
I carried out data inspection and cleaning, removed duplicate values, created a new column to calculate the subscription duration.
I used pivot table to analyze customer data to find subscription patterns such as revenue by subscription type, 
revenue by region, total active and cancelled subscription, average subcription duration, most popular subscription type. 

#### SQL
I used SQL to retrieve key insights such as 
- Total number of customers from each region
- Most popular subscription type by the number of customers
- Customers who canceled their subscription within 6 months
- Average subscription duration for all customers
- Customers with subscriptions longer than 12 months
- Total revenue by subscription type
- Top 3 regions by subscription cancellations
- Total number of active and canceled subscriptions 

```SQL CODES
--Total Number of Customers from each Region.
Select Region, Count(CustomerID) as Number_Of_Customers
From CustomerData
Group by Region
Order by Number_Of_Customers desc


--Most popular subscription type by the number of customers
Select SubscriptionType, Count(CustomerID) as NO_of_Customers
From CustomerData
Group by SubscriptionType
Order by NO_of_Customers desc
```


#### Power BI
I used Power BI to create an interactive report showing valuable inside such as
- No of Active and Cancelled subscriptions
- Subcription type by region
- Total number of Customers
- Total revenue by Subcription type


## KEY INSIGHTS
### Sales data:
- Shoes brought in the highest revenue (613,380) followed by Shirt (485,600) then Hat (316,195). However, based on popular product based on quantity sold Hat lead by 15,929 units at 15naira per unit followed by shoes 14,403 at 50naira per unit then Shirt 12,388 at 20naira per unit.
This makes Hats the highest selling product. 

- The South contributed 44%, East 23%, North 18% and West 14% to percentage total of the revenue generated. 

- Highest sales were seen the the months of February(298,800)and January (198,400) while the lowest sales were seen the months of April (39,440) and July (37,200) 

### Customer Data 

- Basic subscription brought in the highest revenue of 33,776,735, followed by Premium 16,899,064 then standard 16,864,376 

- Basic has a total of 16,921 subcription of which 5,067 have been cancelled and 11,854 are still active.
- Premium has  3,382 active subscriptions and 5,064 cancelled subscriptions making a total of 8,446 subscriptions 
- Standard has 3,376 active subcriptions and 5,044 cancelled subscriptions making a total of 8,420.
- Overall the total of Active subscription is 18,613 and 15,275 cancelled subcription 

- Subscription type by region
  1. South: Premium only
  2. North: Basic only
  3. East: Basic only
  4. West: Standard only 
- There is no significant difference in revenue generated across the regions 

## RECOMMENDATIONS
### Sales Data
1. To increase revenue in the least months generating revenue, running discounts on the top selling products can help boost sales on theses months 

2. Running sales incentives like combo packages that include the least performing products (Socks, jackets and gloves) and top performing products (hats, shirts and shoes) to help boost sales of the least preforming products. 

3. Location specific sales marketing strategies can be developed by the marketing team to boost sales in the North and West 

### Customer Data
Marketing strategies to upsell and cross-sell subcription plans in the various regions. For instance, upgrade to Premium and get the first two months extra for free
