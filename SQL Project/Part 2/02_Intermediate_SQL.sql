---- Part 2

--- 2.1 Sales by Category
select category, sum(profit) as TotalProfit, sum(totalsales) as TotalRevenue
from products
inner join Sales
on products.productid = sales.productid
group by category
order by totalRevenue desc

--- 2.2 Top Customers
select customers.customerid, concat(firstname, ' ', lastname) as full_name, sales.totalsales
from customers
inner join Sales
on customers.customerid = sales.customerid
order by totalsales DESC
limit 5

--- 2.3 Monthly Sales Trend
select date_trunc('month',orderdate) as month, round (sum (totalsales),2) as TotalSales
from sales
where date (orderdate) >= '2024-01-01'
Group by date_trunc('month',orderdate)
order by month

--- 2.4 Channel Performance
select channel,round(avg (totalsales),2),sum(quantity) as NumberOfOrders, round(sum(profit),2) as TotalRevenue
from sales
group by channel

--- 2.5 Product Performance with Ratings
select productcategory as Category,round(avg(rating),2) as AverageRating,count(feedbackid) as NumberofReviews
from customerfeedback
group by productcategory




