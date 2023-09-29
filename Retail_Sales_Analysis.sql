--performing data wrangling and cleaning to transform the dataset
SELECT *
FROM daily_sales_data;

--removing rows with null values that are irrelevant to the analysis
SELECT *
FROM daily_sales_data
WHERE daily_sales is null;

DELETE FROM daily_sales_data
WHERE daily_sales is null;

--daily sales spanning through six months
SELECT *
FROM daily_sales_data;

--monthly sales accumulated based on product types
SELECT *
FROM monthly_sales_data
ORDER BY total_sales DESC;

--top products with highest sales
SELECT 
	DISTINCT ON (products) products, 
	total_sales
FROM monthly_sales_data
WHERE total_sales >=13000
ORDER BY products, total_sales DESC;

--calculating the total sales for the top five products with higher demands
SELECT
	SUM(total_sales) as Total_Beans_Sales
FROM monthly_sales_data
WHERE products = 'Beans';

SELECT
	SUM(total_sales) as Total_Rice_Sales
FROM monthly_sales_data
WHERE products = 'Rice';

SELECT
	SUM(total_sales) as Total_RedOil_Sales
FROM monthly_sales_data
WHERE products = 'Red Oil';

SELECT
	SUM(total_sales) as Total_Garri_Sales
FROM monthly_sales_data
WHERE products = 'Garri';

SELECT
	SUM(total_sales) as Total_GnutOil_Sales
FROM monthly_sales_data
WHERE products = 'Groundnut Oil';

--Revenues generated per month
SELECT  
	SUM(daily_sales) as July_Revenue
FROM daily_sales_data
GROUP BY months
HAVING months = 'July';

SELECT  
	SUM(daily_sales) as August_Revenue
FROM daily_sales_data
GROUP BY months
HAVING months = 'August';

SELECT  
	SUM(daily_sales) as September_Revenue
FROM daily_sales_data
GROUP BY months
HAVING months = 'September';

SELECT  
	SUM(daily_sales) as October_Revenue
FROM daily_sales_data
GROUP BY months
HAVING months = 'October';

SELECT  
	SUM(daily_sales) as November_Revenue
FROM daily_sales_data
GROUP BY months
HAVING months = 'November';

SELECT  
	SUM(daily_sales) as December_Revenue
FROM daily_sales_data
GROUP BY months
HAVING months = 'December';

--Total revenue generated from daily sales spanning July to December
SELECT 
	SUM(daily_sales) as Total_Revenue
FROM daily_sales_data;