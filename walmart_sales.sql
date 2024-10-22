SELECT * FROM walmart_sales LIMIT 10;

SELECT SUM(weekly_sales) FROM walmart_sales;

SELECT store, SUM(weekly_sales) FROM walmart_sales
GROUP BY store;

SELECT store, MAX(total_weekly_sales) 
FROM (SELECT store, SUM(weekly_sales) AS total_weekly_sales 
      FROM walmart_sales 
      GROUP BY store) AS subquery_alias
GROUP BY store;

SELECT date, weekly_sales
FROM walmart_sales
WHERE weekly_sales = (SELECT MAX(weekly_sales) FROM walmart_sales);


