--Total Sales by Product Category
Select Product, Sum(Sales) as Total_Sales
From SalesData
Group by Product
Order by Total_Sales desc


--Total  of sales transactions in each region
Select Region, Sum(Sales) as Total_Sales
From SalesData
Group by Region
Order by Total_Sales desc

--Highest-selling product by Total sales 
Select Top 1 Product, Sum(Quantity) as Total_Sales_Count
From SalesData
Group by Product
Order by Total_Sales_Count desc

--Monthly sales total for the current year
Select Month(OrderDate)as Month, Sum(Sales) as Monthly_Sales_total
From SalesData
Where Year(OrderDate)=2024
group by Month(orderDate)
Order by Monthly_Sales_total desc

--Top 5 customers by total purchase amount
Select Top 5 Customer_Id, Sum(Sales) as Total_Purchase
From SalesData
Group By Customer_Id
Order by Total_Purchase desc


--Percentage of total sales contributed by each region
Select Region, Sum(Sales) as Region_Sales, Round(Sum(Sales)*100/(Select Sum(Sales)
From SalesData),2) as Percentage_of_total
From SalesData
Group by Region
Order by Percentage_of_Total desc


--Products with no sales in the last quarter
Select Product, Sum(Sales) as Total_Sales
From SalesData
Where OrderDate Between '2024-07-01' and '2024-09-30'
Group by Product


