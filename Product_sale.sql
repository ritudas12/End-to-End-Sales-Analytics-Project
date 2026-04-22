USE Product_sales;
SELECT * FROM discount_data;
SELECT * FROM Product_data;
SELECT * FROM product_sales;

SELECT * ,
(Sale_Price*Units_Sold) AS Revenue,
(Cost_Price*Units_Sold) AS Total_cost,
FORMAT(date,'MMMM') AS Month,
FORMAT(date,'yyyy') AS Year
FROM Product_data a
JOIN product_sales b
ON a.Product_ID = b.Product;

WITH cte AS(
SELECT
a.Product,
a.Category,
a.Brand,
a.Description,
a.Sale_Price,
a.Cost_Price,
a.Image_url,
b.Date,
b.Customer_Type,
b.Discount_Band,
Units_Sold,
(Sale_Price*Units_Sold) AS Revenue,
(Cost_Price*Units_Sold) AS Total_cost,
FORMAT(date,'MMMM') AS Month,
FORMAT(date,'yyyy') AS Year
FROM Product_data a
JOIN product_sales b
ON a.Product_ID = b.Product)

SELECT *,
(1-discount*1.0/100)* Revenue AS discount_revenue
FROM cte a
JOIN discount_data b
ON a.Discount_Band=b.Discount_Band AND a.Month =b.Month;
