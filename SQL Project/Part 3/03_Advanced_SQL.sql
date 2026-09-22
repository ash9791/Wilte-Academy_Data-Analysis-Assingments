---- Part 3

--- 3.1 Best Selling Product per Category
Select Category, ProductName, TotalRevenue
from (select category, productname, round(sum(totalsales),2) as TotalRevenue, rank() over(Partition by category order by sum(totalsales)desc)as rank
from products
inner join Sales
on products.productid = sales.productid
group by category, productname) ranked
where rank = 1
order by category

--- 3.2 Customer Lifetime Value
select customers.customerid as Customers, 
round(sum(Totalsales),2) CustomerTotalPurchases,
round(avg(totalsales),2) as CustomerAverageValue, region, sales.channel, count(sales.orderid) as NumberofOrders
from customers
inner join Sales
on customers.customerid = sales.customerid
group by customers.customerid, region, sales.channel
having count(sales.orderid) >3
order by CustomerTotalPurchases desc

--- 3.3 Profit Margin Analysis
select p.category as Category, p.productname as ProductName, round(sum(s.totalsales),2) as TotalSales, round(sum(s.profit),2) as TotalProfit, round((sum(s.profit) / sum(s.totalsales)) * 100, 2) as ProfitMargin
from products p
inner join Sales s
on p.productid = s.productid
Group by p.Category, p.ProductName
Order by ProfitMargin desc

--- 3.4 Year-over-Year Growth
with yearly_sales as (select year(orderdate) as year,sum(totalsales)as TotalSales
from sales
where year(orderdate) in (2023, 2024)
group by year(orderdate))
select
round(max(case when year = 2023 then totalsales end),2) as Sales2023,
round(max(case when year = 2024 then totalsales end),2) as Sales2024,
round((max(case when year = 2024 then totalsales end)
-max(case when year = 2023 then totalsales end))
/ max(case when year = 2023 then totalsales end)* 100,2) as GrowthPercentage
from yearly_sales;

--- 3.5 Regional Performance Ranking
select c.region as Region, round(sum(s.totalsales),2) as TotalSales, rank() over (order by sum(s.totalsales) desc) as RegionRank
from customers c
inner join Sales s
on c.customerid = s.customerid
group by c.region
order by regionrank
