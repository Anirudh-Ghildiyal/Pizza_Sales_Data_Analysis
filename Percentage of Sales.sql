select * from pizza_sales;
SELECT 
    pizza_category as Category, 
    SUM(total_price) AS Total_Sales, 
    (SUM(total_price) * 100) / (
        SELECT SUM(total_price) 
        FROM pizza_sales 
        WHERE MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1
    ) AS PCT 
FROM 
    pizza_sales
WHERE 
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1
GROUP BY 
    pizza_category;

SELECT 
    pizza_size as Size, 
    SUM(total_price) AS Total_Sales, 
    cast((SUM(total_price) * 100) / (
        SELECT SUM(total_price) 
        FROM pizza_sales 
        WHERE MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1
    ) as decimal (10,2)) AS PCT 
FROM 
    pizza_sales
WHERE 
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1
GROUP BY 
    Size
order by PCT desc;
