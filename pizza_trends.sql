-- KPIs: 
/*TOTAL REVENUE
select sum(total_price) as total_revenue from pizza_sales;

TOTAL ORDERS
select sum(total_price) / count(distinct order_id) as Avg_order_value from pizza_sales;

AVG ORDER VALUE
select sum(quantity) as total_pizza_sold from pizza_sales;

TOTAL QUANTITY SOLD
select count(distinct order_id) as total_orders from pizza_sales;

AVG PIZZA UNIT PER ORDER
select sum(quantity)/count(distinct order_id) as avg_pizza_order from pizza_sales;
*/

-- CHARTS:

/*
DAYWISE ANALYSIS
SELECT DAYNAME(order_date) AS day,
COUNT(DISTINCT order_id) AS orders
FROM pizza_sales
GROUP BY DAYNAME(order_date);
select * from pizza_sales;

% of total sales by pizza category
select pizza_category  ,sum(total_price) as pizza_sales, 
sum( total_price)*100/ (select sum(total_price) from pizza_sales) as ratio_by_category
from pizza_sales
group by  pizza_category;

% of total sales by pizza category
select pizza_size  ,sum(total_price) as pizza_sales, 
sum( total_price)*100/ (select sum(total_price) from pizza_sales where month(order_date)=1) as ratio_by_category
from pizza_sales
where month(order_date)=1
group by  pizza_size;

top 5 selling pizza
select pizza_name , count(distinct order_id) as sold_piece from pizza_sales 
group by pizza_name 
order by sold_piece desc
limit 5 ;

bottom 5 selling pizza
select pizza_name , count(quantity) as sold_piece from pizza_sales 
group by pizza_name 
order by sold_piece desc 
limit 5;

