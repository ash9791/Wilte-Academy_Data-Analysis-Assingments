---- Part 4
--- 4.1 Customer Satisfaction vs. Repeat Purchases
with customer_orders as (select c.customerid, c.Rating, count(s.orderid) AS number_of_orders
from customerfeedback c
inner join sales s
on c.customerid = s.customerid
group by c.customerid, c.Rating)
select case when Rating >= 4 then 'Highly Satisfied'
when Rating <= 3 then 'Less Satisfied'end as SatisfactionLevel,
round(avg(number_of_orders), 2) as AvgNumberofOrders, count(customerid) as TotalCustomers
from customer_orders
group by case
when Rating >= 4 then 'Highly Satisfied'
when Rating <= 3 then 'Less Satisfied'
end
order by AvgNumberofOrders desc

--- By looking at the data it is clear that the customers that have left 4-5 star ratings do return and make repeat purchases due to the average number of orders being higher than the less satisfied customers.

--- 4.2 Discount Effectiveness
with DiscountBands as 
(SELECT CASE
WHEN discountpercent = 0 THEN '0%'
WHEN discountpercent > 0 AND discountpercent <= 10 THEN '1-10%'
WHEN discountpercent > 10 AND discountpercent <= 20 THEN '11-20%'
WHEN discountpercent > 20 AND discountpercent <= 30 THEN '21-30%'
END AS DiscountBands,totalsales,profit
FROM sales)

SELECT DiscountBands,ROUND(SUM(totalsales), 2) AS TotalSales,ROUND(SUM(profit), 2) AS TotalProfit,ROUND((SUM(profit) / SUM(totalsales)) * 100, 2) AS ProfitMargin
FROM DiscountBands
WHERE DiscountBands IS NOT NULL
GROUP BY DiscountBands
ORDER BY CASE DiscountBands
WHEN '0%' THEN 1
WHEN '1-10%' THEN 2
WHEN '11-20%' THEN 3
WHEN '21-30%' THEN 4
END

--- From the provided data we can see that the higher the discount, the lower the profit margin. I would advise to try and keep discounts between 1-10% in order to keep customer loyalty and profits up. 

--- 4.3 Product Portfolio Optimization
