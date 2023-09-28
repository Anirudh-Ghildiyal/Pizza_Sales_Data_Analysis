select * from pizza_sales;
SELECT DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS Order_Day, 
       COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales GROUP BY Order_Day order by Total_Orders DESC;
SELECT MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS Order_Month, 
       COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales 
GROUP BY Order_Month order by Total_Orders DESC;