select * from Pizza_sales;

select pizza_name, sum(quantity) 
as Total_Quantity 
from pizza_sales
group by pizza_name
order by Total_Quantity desc
limit 5;

select pizza_name, sum(quantity) 
as Total_Quantity 
from pizza_sales
group by pizza_name
order by Total_Quantity
limit 5;

select pizza_name, count(distinct order_id) 
as Total_Orders 
from pizza_sales
group by pizza_name
order by Total_Orders desc
limit 5;

select pizza_name, count(distinct order_id) 
as Total_Orders 
from pizza_sales
group by pizza_name
order by Total_Orders
limit 5;