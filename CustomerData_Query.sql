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

--Customers who canceled their subscription within 6 months.
Select CustomerID, CustomerName
From CustomerData
Where Canceled = 'TRUE' and Datediff(Month, SubscriptionStart, SubscriptionEnd)<=6

--Average subscription duration for all customers
Select AVG(DateDiff(Day, 
SubscriptionStart, SubscriptionEnd)) 
as Average_Subscription_Duration
From CustomerData

--Customers with subscriptions longer than 12 months.
Select CustomerID, CustomerName
From CustomerData
Where Datediff(Month, SubscriptionStart, SubscriptionEnd)>12

--Calculate total revenue by subscription type.
Select SubscriptionType, Sum(Revenue) as Total_Revenue
From CustomerData
Group by SubscriptionType

--Top 3 regions by subscription cancellations.
Select Top 3 Region, Count(Canceled) as Cancellations
From CustomerData
Where Canceled='True'
Group by Region
Order by Cancellations desc

--Total number of active and canceled subscriptions
Select Case When Canceled = 1 Then 'True'
When Canceled = 0 Then 'False'
End As Scubcription_Status,
Count(Canceled) Total_Subcriptions
From CustomerData
Group by Canceled