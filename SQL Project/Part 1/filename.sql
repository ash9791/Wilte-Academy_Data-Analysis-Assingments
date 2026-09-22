SELECT 'Products' AS TableName, COUNT(*) AS Records FROM Products UNION ALL
SELECT 'Customers', COUNT(*) FROM Customers UNION ALL SELECT 'Sales',
COUNT(*) FROM Sales UNION ALL SELECT 'CustomerFeedback', COUNT(*) FROM
CustomerFeedback;

---- Part 1
--- 1.1 Product Catalog
Select productid, productname, unitprice
From Products
where category = 'Electronics'
order by unitprice DESC

--- 1.2 Customer Count
select region, count(region) as CustomerCount
from customers
group by region

--- 1.3 Recent Order
select OrderID, OrderDate, TotalSales
From Sales 
Order by orderdate desc
limit 10

--- 1.4 Affordable Products
select productname, category, unitprice
from Products
where unitprice < 1000

--- 1.5 Customer Satisfaction Summary
select satisfaction, count (*) as Count
from Customerfeedback
Group by satisfaction
Order by count desc
