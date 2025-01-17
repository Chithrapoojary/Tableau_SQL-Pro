create database new_jan_db;

use new_jan_db;

select * from pizza_sales;
select count(pizza_id) from pizza_sales;
select distinct order_id from pizza_sales;
select round(sum(total_price)) as total_revenue from pizza_sales;
select sum(quantity) as total_pizza_sold from pizza_sales;
select count(distinct order_id) as total_distinct_order from pizza_sales;

select (sum(total_price)/count(distinct order_id)) as avg_order_value from pizza_sales;
select hour(order_time) as order_hours,sum(quantity) as total_pizza_sales from pizza_sales
group by hour(order_time) order by hour(order_time);
select pizza_name,sum(quantity) from pizza_sales group by pizza_name;
select pizza_name ,sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by sum(quantity) asc;
select pizza_name,sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by sum(quantity) desc limit 5;
select pizza_name,sum(total_price) as total_revenue from pizza_sales group by pizza_name order by sum(total_price);

select pizza_category ,sum(quantity) as pizzasold from pizza_sales group by pizza_category order by sum(quantity);
select pizza_category,count(pizza_size) as total_pizza_sold from pizza_sales group by pizza_category;
select pizza_size,sum(quantity) as pizza_sold from pizza_sales group by pizza_size order by sum(quantity);
