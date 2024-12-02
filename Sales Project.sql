use sales;

/* 1. Find Total Number Of Cusomer */
select * from customers;

/* 2. Check How Many Total Records in Transactions Table */
select count(*) as Total_Records from transactions;


/* 3. Check How Many total Records in Customers Table */
select count(*) as Total_Customers from customers;


/* 4. Check All The Transaction Where The Transaction Market Code is Mar001 */
select * from transactions
where market_code = 'Mark001';


/* 5. Find Distinct Product sale in chenni */
select distinct product_code from transactions
where market_code = 'Mark001';


/* 6. How Many Transation we did in Chennai */
select count(markets_name) from markets
where markets_name = 'Chennai';


/* 7. Show the Transaction date 2022 */
select transactions.*, date.* from transactions
Inner join date on transactions.order_date = date.date
where date.year = 2020;

/* 8.To find transactions where currency is US dollars */
select * from transactions
where currency = 'USD';


/* 9. Total Sales or revenue in 2019 */
select sum(transactions.sales_amount) as Total_Sale from transactions
Inner join date on transactions.order_date = date.date
where date.year = 2019;


/* 10. How Much Business Did in mumbai */
select sum(transactions.sales_amount) as Total_sale from transactions
Inner join date on transactions.order_date = date.date
where date.year = 2020 and transactions.market_code = 'mark002';


/* 11. Which city recorded the highest number of transactions */
select markets_name, count(sales_amount) as transaction_count from transactions
join markets on transactions.sales_amount = markets.markets_name
group by markets_name
order by transaction_count desc
limit 1;


/* 12. What is the trend in monthly sales over the past year 2019 */
select month_name, sum(sales_amount) as Higest_Sale from transactions
join date on transactions.sales_amount = date.year
where year = 2019
group by month_name
order by month_name desc
limit 1;