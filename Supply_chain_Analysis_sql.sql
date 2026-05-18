-- | ----------------------------- Supply Chain Analysis---------------------------------------|

CREATE DATABASE Supply_Chain;
use Supply_Chain;
select * from supply_chain;

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN Type IS NULL THEN 1 ELSE 0 END) AS Type_nulls,
    SUM(CASE WHEN `Days for shipping (real)` IS NULL THEN 1 ELSE 0 END) AS Days_shipping_real_nulls,
    SUM(CASE WHEN `Days for shipment (scheduled)` IS NULL THEN 1 ELSE 0 END) AS Days_shipment_scheduled_nulls,
    SUM(CASE WHEN `Benefit per order` IS NULL THEN 1 ELSE 0 END) AS Benefit_per_order_nulls,
    SUM(CASE WHEN `Sales per customer` IS NULL THEN 1 ELSE 0 END) AS Sales_per_customer_nulls,
    SUM(CASE WHEN `Delivery Status` IS NULL THEN 1 ELSE 0 END) AS Delivery_Status_nulls,
    SUM(CASE WHEN Late_delivery_risk IS NULL THEN 1 ELSE 0 END) AS Late_delivery_risk_nulls,
    SUM(CASE WHEN `Category Id` IS NULL THEN 1 ELSE 0 END) AS Category_Id_nulls,
    SUM(CASE WHEN `Category Name` IS NULL THEN 1 ELSE 0 END) AS Category_Name_nulls,
    SUM(CASE WHEN `Customer City` IS NULL THEN 1 ELSE 0 END) AS Customer_City_nulls,
    SUM(CASE WHEN `Customer Country` IS NULL THEN 1 ELSE 0 END) AS Customer_Country_nulls,
    SUM(CASE WHEN `Customer Fname` IS NULL THEN 1 ELSE 0 END) AS Customer_Fname_nulls,
    SUM(CASE WHEN `Customer Id` IS NULL THEN 1 ELSE 0 END) AS Customer_Id_nulls,
    SUM(CASE WHEN `Customer Lname` IS NULL THEN 1 ELSE 0 END) AS Customer_Lname_nulls,
    SUM(CASE WHEN `Customer Segment` IS NULL THEN 1 ELSE 0 END) AS Customer_Segment_nulls,
    SUM(CASE WHEN `Customer State` IS NULL THEN 1 ELSE 0 END) AS Customer_State_nulls,
    SUM(CASE WHEN `Customer Street` IS NULL THEN 1 ELSE 0 END) AS Customer_Street_nulls,
    SUM(CASE WHEN `Customer Zipcode` IS NULL THEN 1 ELSE 0 END) AS Customer_Zipcode_nulls,
    SUM(CASE WHEN `Department Id` IS NULL THEN 1 ELSE 0 END) AS Department_Id_nulls,
    SUM(CASE WHEN `Department Name` IS NULL THEN 1 ELSE 0 END) AS Department_Name_nulls,
    SUM(CASE WHEN Latitude IS NULL THEN 1 ELSE 0 END) AS Latitude_nulls,
    SUM(CASE WHEN Longitude IS NULL THEN 1 ELSE 0 END) AS Longitude_nulls,
    SUM(CASE WHEN Market IS NULL THEN 1 ELSE 0 END) AS Market_nulls,
    SUM(CASE WHEN `Order City` IS NULL THEN 1 ELSE 0 END) AS Order_City_nulls,
    SUM(CASE WHEN `Order Country` IS NULL THEN 1 ELSE 0 END) AS Order_Country_nulls,
    SUM(CASE WHEN `Order Customer Id` IS NULL THEN 1 ELSE 0 END) AS Order_Customer_Id_nulls,
    SUM(CASE WHEN `Order Date` IS NULL THEN 1 ELSE 0 END) AS Order_Date_nulls,
    SUM(CASE WHEN `Order Id` IS NULL THEN 1 ELSE 0 END) AS Order_Id_nulls,
    SUM(CASE WHEN `Order Item Cardprod Id` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Cardprod_Id_nulls,
    SUM(CASE WHEN `Order Item Discount` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Discount_nulls,
    SUM(CASE WHEN `Order Item Discount Rate` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Discount_Rate_nulls,
    SUM(CASE WHEN `Order Item Id` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Id_nulls,
    SUM(CASE WHEN `Order Item Product Price` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Product_Price_nulls,
    SUM(CASE WHEN `Order Item Profit Ratio` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Profit_Ratio_nulls,
    SUM(CASE WHEN `Order Item Quantity` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Quantity_nulls,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Sales_nulls,
    SUM(CASE WHEN `Order Item Total` IS NULL THEN 1 ELSE 0 END) AS Order_Item_Total_nulls,
    SUM(CASE WHEN `Order Profit Per Order` IS NULL THEN 1 ELSE 0 END) AS Order_Profit_Per_Order_nulls,
    SUM(CASE WHEN `Order Region` IS NULL THEN 1 ELSE 0 END) AS Order_Region_nulls,
    SUM(CASE WHEN `Order State` IS NULL THEN 1 ELSE 0 END) AS Order_State_nulls,
    SUM(CASE WHEN `Order Status` IS NULL THEN 1 ELSE 0 END) AS Order_Status_nulls,
    SUM(CASE WHEN `Product Card Id` IS NULL THEN 1 ELSE 0 END) AS Product_Card_Id_nulls,
    SUM(CASE WHEN `Product Category Id` IS NULL THEN 1 ELSE 0 END) AS Product_Category_Id_nulls,
    SUM(CASE WHEN `Product Name` IS NULL THEN 1 ELSE 0 END) AS Product_Name_nulls,
    SUM(CASE WHEN `Product Price` IS NULL THEN 1 ELSE 0 END) AS Product_Price_nulls,
    SUM(CASE WHEN `Shipping Date` IS NULL THEN 1 ELSE 0 END) AS Shipping_Date_nulls,
    SUM(CASE WHEN `Shipping Mode` IS NULL THEN 1 ELSE 0 END) AS Shipping_Mode_nulls,
    SUM(CASE WHEN `Shipping Delay (days)` IS NULL THEN 1 ELSE 0 END) AS Shipping_Delay_days_nulls

FROM supply_chain;

ALTER TABLE supply_chain
    RENAME COLUMN `Type` TO `type`,
    RENAME COLUMN `Days for shipping (real)` TO `days_for_shipping_real`,
    RENAME COLUMN `Days for shipment (scheduled)` TO `days_for_shipment_scheduled`,
    RENAME COLUMN `Benefit per order` TO `benefit_per_order`,
    RENAME COLUMN `Sales per customer` TO `sales_per_customer`,
    RENAME COLUMN `Delivery Status` TO `delivery_status`,
    RENAME COLUMN `Late_delivery_risk` TO `late_delivery_risk`,
    RENAME COLUMN `Category Id` TO `category_id`,
    RENAME COLUMN `Category Name` TO `category_name`,
    RENAME COLUMN `Customer City` TO `customer_city`,
    RENAME COLUMN `Customer Country` TO `customer_country`,
    RENAME COLUMN `Customer Fname` TO `customer_fname`,
    RENAME COLUMN `Customer Id` TO `customer_id`,
    RENAME COLUMN `Customer Lname` TO `customer_lname`,
    RENAME COLUMN `Customer Segment` TO `customer_segment`,
    RENAME COLUMN `Customer State` TO `customer_state`,
    RENAME COLUMN `Customer Street` TO `customer_street`,
    RENAME COLUMN `Customer Zipcode` TO `customer_zipcode`,
    RENAME COLUMN `Department Id` TO `department_id`,
    RENAME COLUMN `Department Name` TO `department_name`,
    RENAME COLUMN `Latitude` TO `latitude`,
    RENAME COLUMN `Longitude` TO `longitude`,
    RENAME COLUMN `Market` TO `market`,
    RENAME COLUMN `Order City` TO `order_city`,
    RENAME COLUMN `Order Country` TO `order_country`,
    RENAME COLUMN `Order Customer Id` TO `order_customer_id`,
    RENAME COLUMN `Order Date` TO `order_date`,
    RENAME COLUMN `Order Id` TO `order_id`,
    RENAME COLUMN `Order Item Cardprod Id` TO `order_item_cardprod_id`,
    RENAME COLUMN `Order Item Discount` TO `order_item_discount`,
    RENAME COLUMN `Order Item Discount Rate` TO `order_item_discount_rate`,
    RENAME COLUMN `Order Item Id` TO `order_item_id`,
    RENAME COLUMN `Order Item Product Price` TO `order_item_product_price`,
    RENAME COLUMN `Order Item Profit Ratio` TO `order_item_profit_ratio`,
    RENAME COLUMN `Order Item Quantity` TO `order_item_quantity`,
    RENAME COLUMN `Sales` TO `sales`,
    RENAME COLUMN `Order Item Total` TO `order_item_total`,
    RENAME COLUMN `Order Profit Per Order` TO `order_profit_per_order`,
    RENAME COLUMN `Order Region` TO `order_region`,
    RENAME COLUMN `Order State` TO `order_state`,
    RENAME COLUMN `Order Status` TO `order_status`,
    RENAME COLUMN `Product Card Id` TO `product_card_id`,
    RENAME COLUMN `Product Category Id` TO `product_category_id`,
    RENAME COLUMN `Product Name` TO `product_name`,
    RENAME COLUMN `Product Price` TO `product_price`,
    RENAME COLUMN `Shipping Date` TO `shipping_date`,
    RENAME COLUMN `Shipping Mode` TO `shipping_mode`,
    RENAME COLUMN `Shipping Delay (days)` TO `shipping_delay_days`;
    
    select * from supply_chain;
    
    -- ------------------- Business Insights-------------------
 -- --------KPI's-----------
 -- Total Orders
 select count(*) as Total_orders from  supply_chain; -- Total Orders   180519
 
 -- Total Revenue-- 
 select round(sum(sales)/1000000,2) as  Total_revenue_Mn From supply_chain; -- Total Revenue = $36.78 Mn
 
 -- Total Profit
 select round(sum(Order_Profit_Per_Order)/1000000,2) as  Total_profit_Mn From supply_chain;  -- Total Profit= $3.97 Mn
 
 -- Profit Margin %
  select Round(sum(Order_Profit_Per_Order)*100/sum(sales),2) as  profit_margin From supply_chain; -- Profit Margin % =10.78%
  
--   On-Time Delivery Rate
 SELECT 
    ROUND(
        SUM(CASE WHEN delivery_status IN ('Shipping on time', 'Advance shipping') THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 2
    ) AS on_time_delivery_rate
FROM supply_chain; --  On-Time Delivery Rate =40.88%

-- # Late Delivery Rate
 SELECT 
    ROUND(
        SUM(CASE WHEN delivery_status = "Late delivery" THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 2
    ) AS Late_Delivery_Rate; --  Late Delivery Rate=54.83%
    
    
-- Average Shipping Delay 
select round(avg(shipping_delay_days),2) as Average_Shipping_Delay_Days 
FROM supply_chain;

-- Orders at a Loss
SELECT
    ROUND(
        SUM(CASE WHEN order_profit_per_order < 0 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*), 2
    ) AS orders_at_loss
FROM supply_chain; -- Orders at a Loss: 18.71%

-- Average Order Value
SELECT
    ROUND(AVG(order_total_sales), 2) AS avg_order_value
FROM (
    SELECT
        order_id,
        SUM(sales) AS order_total_sales
    FROM supply_chain
    GROUP BY order_id
) AS order_summary;

-- Order Fulfillment Rate
 SELECT
    ROUND(
        SUM(CASE WHEN order_status IN ('COMPLETE', 'CLOSED') THEN 1 ELSE 0 END) * 100.0
        / COUNT(*), 2
    ) AS order_fulfillment_rate
FROM supply_chain; -- Order Fulfillment Rate =43.82 %

-- Avg Items per Order
SELECT
    ROUND(AVG(total_items), 2) AS avg_items_per_order
FROM (
    SELECT
        order_id,
        SUM(order_item_quantity) AS total_items
    FROM supply_chain
    GROUP BY order_id
) AS order_summary; --   Avg Items per Order : 5.84
 
-- Avg Discount Rate
select round(avg(order_item_discount_rate)*100,2) as avg_order_discount_rate  from supply_chain;
-- Avg Discount Rate: 10.17%

-- Avg Profit Ratio per Item
 select round(avg(order_item_profit_ratio)*100,2) as Avg_Profit_Ratio_per_Item from supply_chain;
--  Avg Profit Ratio per Item : 12.06 %

-- ---------- DELIVERY & SHIPPING ANALYSIS----------------------
-- Delivery Status Distribution 
select Delivery_status, count(*) as orders from supply_chain 
group by  Delivery_status order by orders desc;

# Shipping delay stats 
SELECT
    ROUND(AVG(shipping_delay_days), 2) AS mean_delay,
    MAX(shipping_delay_days)           AS max_delay,
    ROUND(AVG(CASE WHEN shipping_delay_days > 0 THEN 1.0 ELSE 0.0 END) * 100, 1) AS pct_with_delay,
    ROUND((
        SELECT AVG(shipping_delay_days)
        FROM (
            SELECT shipping_delay_days,
                   ROW_NUMBER() OVER (ORDER BY shipping_delay_days) AS row_num,
                   COUNT(*)     OVER ()                             AS total_rows
            FROM supply_chain
        ) AS ranked
        WHERE row_num IN (
            FLOOR((total_rows + 1) / 2),
            CEIL((total_rows + 1) / 2)
        )
    ), 2) AS median_delay
FROM supply_chain;

# Shipping mode performance
select shipping_mode, round(avg(shipping_delay_days),2) as avg_shipping_delay_days from supply_chain
group by shipping_mode order by avg_shipping_delay_days desc;

-- ------------------------ Sales & profit Analysis-----------------------
-- Total Revenue and Avg Sales  
select round(sum(sales)/1000000,2) as Total_Revenue_Mn,round(avg(sales),2)
 as avg_revenue from supply_chain; 

--   Total Profit  and avg Profit
select round(sum(order_profit_per_order)/1000000,2) as Total_Profit_Mn ,
round(avg(order_profit_per_order),2) as  avg_profit_$ from supply_chain;

-- Order By loss
SELECT 
ROUND(
    (COUNT(CASE WHEN order_profit_per_order < 0 THEN 1 END) * 100.0) 
    / COUNT(*), 
2
) AS order_at_loss
FROM supply_chain; --  Order At loss : 18.71%

-- top 5 Profitable Category
select category_name,round(sum(order_profit_per_order),2) as  Profit from supply_chain 
group by category_name 
order by profit  desc limit 5;  

-- Sales by Customer Segment
select customer_segment,round(sum(sales),2) as  Revenue from supply_chain 
group by customer_segment 
order by revenue desc ; 

--  --------------GEOGRAPHIC ANALYSIS------------------------

-- Orders by Market 
select market ,count(order_id) as orders from supply_chain
group by market order by  orders desc ;

--   Top 5 Regions by Sales

select order_region,round(sum(sales),2) as Revenue from supply_chain
group by order_region 
order by revenue desc limit 5;

-- ------------------------ PRODUCT ANALYSIS----------------------
-- Top 10 Products by Quantity Sold
select product_name ,sum(order_item_quantity) as Total_order_quantity from supply_chain 
group by product_name
 order by total_order_quantity 
 desc limit 10; 

-- Sales by Department
select department_name ,round(sum(sales)) as Revenue from supply_chain 
group by department_name 
order by revenue desc ; 

--   Delivery Status
select delivery_status ,count(order_id) as Total_orders from supply_chain 
group by delivery_status
order by Total_orders desc;

-- Monthly, weekday, Quarterly, and yearly trend 
-- Yearly Trend 
select year(order_date) as Year, round(sum(sales),2) as Revenue
 from supply_chain 
 group by year order by year ;
 
 --   Late delivery Status year  Wise
 SELECT 
    Delivery_Status,
    COUNT(CASE WHEN year(order_date) = 2015 THEN 1 END) AS y2015,
    COUNT(CASE WHEN year(order_date) = 2016 THEN 1 END) AS y2016,
    COUNT(CASE WHEN year(order_date)  = 2017 THEN 1 END) AS y2017,
    COUNT(CASE WHEN year(order_date) THEN 1 END) AS y2018
FROM supply_chain
GROUP BY Delivery_Status
ORDER BY Delivery_Status;

--  Monthly Trand 
SELECT 
    MONTHNAME(order_date) AS Month_name,
    ROUND(SUM(sales)/1000000, 2) AS Revenue_Mn
FROM supply_chain
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY MONTH(order_date);

-- Weekly Trand 
SELECT
    DAYNAME(order_date)                                          AS day,
    ROUND(SUM(sales), 2)                                         AS Revenue,
    ROUND(SUM(order_profit_per_order), 2)                        AS Profit,
    ROUND(SUM(order_profit_per_order) / SUM(sales) * 100, 2)    AS Profit_margin
FROM supply_chain
GROUP BY day, DAYOFWEEK(order_date)
ORDER BY DAYOFWEEK(order_date);

-- Delivery Status in weekly 
SELECT
    delivery_status,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Sunday'    THEN 1 END) AS Sunday,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Monday'    THEN 1 END) AS Monday,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Tuesday'   THEN 1 END) AS Tuesday,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Wednesday' THEN 1 END) AS Wednesday,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Thursday'  THEN 1 END) AS Thursday,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Friday'    THEN 1 END) AS Friday,
    COUNT(CASE WHEN DAYNAME(order_date) = 'Saturday'  THEN 1 END) AS Saturday
FROM supply_chain
GROUP BY delivery_status
ORDER BY delivery_status; 

-- Top 10 Categtory Wise Profit 
select Category_name,round(sum(order_profit_per_order),2) as  profit from supply_chain group by category_name
order by profit  desc limit 10;



-- | ----------------------- thankyou  and Happy learning ------------------------------------------------------|