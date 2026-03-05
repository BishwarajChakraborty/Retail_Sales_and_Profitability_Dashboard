create database retail_analysis;
select * from retails_table;

-- 1. Total Revenue and Profit (shows overall business performance.)
select round(SUM(Sales), 4) AS total_revenue, round(SUM(Profit), 4) AS total_profit
from retails_table;

-- 2. Sales and Profit by Region
SELECT Region, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM retails_table
GROUP BY Region
ORDER BY total_sales DESC;

-- 3. Category Performance
SELECT Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM retails_table
GROUP BY Category;

-- 4. Top 10 Customers by Revenue
SELECT Customer_ID, SUM(Sales) AS total_sales
FROM retails_table
GROUP BY Customer_ID
ORDER BY total_sales DESC
LIMIT 10;

-- 5. Loss-Making Products
SELECT Sub_Category, SUM(Profit) AS total_profit
FROM retails_table
GROUP BY Sub_Category
ORDER BY total_profit;

-- 6. Monthly Sales Trend
SELECT DATE_FORMAT(Order_Date,'%Y-%m') AS month, sum(sales) as monthly_sales
FROM retails_table
group by DATE_FORMAT(Order_Date,'%Y-%m')
order by DATE_FORMAT(Order_Date,'%Y-%m');

-- 7. Customer Segment Performance
SELECT Segment, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM retails_table
GROUP BY Segment;

-- 8. Average Order Value
SELECT SUM(Sales) / COUNT(DISTINCT Order_ID) AS avg_order_value
FROM retails_table;

-- 9. Sales by Product Category and Region
SELECT Region, Category, SUM(Sales) AS total_sales
FROM retails_table
GROUP BY Region, Category
ORDER BY Region;

-- 10. Impact of Discounts (Whether higher discounts reduce profit)
SELECT Discount, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM retails_table
GROUP BY Discount
ORDER BY Discount;

-- 11. Top 3 Products in Each Category
SELECT *
FROM (
    SELECT 
        Category,
        Sub_Category,
        SUM(Sales) AS total_sales,
        DENSE_RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS sales_rank
    FROM retails_table
    GROUP BY Category, Sub_Category
) ranked
WHERE sales_rank <= 3;

-- 12. Running Total of Monthly Sales
SELECT DATE_FORMAT(Order_Date,'%Y-%m') AS month, SUM(Sales) AS monthly_sales,
	SUM(SUM(Sales)) OVER (ORDER BY DATE_FORMAT(Order_Date,'%Y-%m')) AS running_total
FROM retails_table
GROUP BY DATE_FORMAT(Order_Date,'%Y-%m')
ORDER BY DATE_FORMAT(Order_Date,'%Y-%m');

-- 13. Contribution of Each Category to Total Revenue
SELECT Category, SUM(Sales) AS category_sales,
    ROUND(SUM(Sales) * 100 / SUM(SUM(Sales)) OVER(), 2)AS revenue_percentage
FROM retails_table
GROUP BY Category;

-- 14. Detect Loss-Making Transactions
SELECT Order_ID, Customer_ID, Sales, Cost, Profit
FROM retails_table
WHERE Profit < 0;

-- 15. Average Order Value by Customer Segment
SELECT Segment, AVG(Sales) AS avg_order_value
FROM retails_table
GROUP BY Segment;


