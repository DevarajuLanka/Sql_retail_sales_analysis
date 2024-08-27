      

	  select * from retail_sales

    --Dta cleaning

	  select * from retail_sales
	  where  
	        transactions_id is null 
			or 
			sale_date is null 
			or 
			sale_time is null 
			or 
			customer_id is null 
			or 
			gender is null
			or 
			age is null
			or 
			category is null
			or
			quantiy is null
			or 
		    price_per_unit is null
			or 
			cogs is null
			or
			total_sale is null

			delete from retail_sales
			where 
			       transactions_id is null 
			or 
			sale_date is null 
			or 
			sale_time is null 
			or 
			customer_id is null 
			or 
			gender is null
			or 
			age is null
			or 
			category is null
			or
			quantiy is null
			or 
		    price_per_unit is null
			or 
			cogs is null
			or
			total_sale is null
	
	  --Data validation 
	        
			--How many sales we have?
		   select count(*) as total_sales from retail_sales
		   
		   --How many unique customers we have? select * from retail_sales

		   select count(distinct customer_id) as unique_customers from retail_sales

		   select distinct category from retail_sales

		   -- Data analysis & business key problems & answers 

		   -- My Analysis & Findings
   -- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
   -- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
   -- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
   -- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
   -- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
   -- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
   -- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
   -- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
   -- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
   -- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

       -- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05' select * from retail_sales
	     
		 select * from retail_sales
		 where sale_date = '2022-11-05'

	   -- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 5 in the month of Nov-2022

	     select * from  retail_sales
		 where category = 'clothing' and  sale_date between '2022-11-01' and '2022-11-30' and quantiy > = 4
		

	   -- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

	     select category, sum (total_sale) as sum_of_sale,count(*) as category_count
		 from retail_sales
		 group by  category

	   -- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

	     select category,avg(age) as avg_age
		 from retail_sales
		 where category = 'beauty'
		 group by category

	   -- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

	     select * from retail_sales
		 where total_sale > = 1000
		 
	   -- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

	     select count(*)as total_transactions,gender,category from retail_sales
		 group by category,gender

	   -- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
	     
		 select sale_date
	     select top 3 datepart(month,sale_date ) as month_sale, datepart(year,sale_date ) as year_sale,round(avg(total_sale),2) as total_sales ,
		 rank () over ( partition by datepart(month,sale_date ),datepart(year,sale_date ) order by round(avg(total_sale),2)) as rn 
		 from retail_sales
		 group by datepart(month,sale_date ) , datepart ( year,sale_date )
		 order by total_sales desc 
		 
	   -- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales  

	     select top 5 customer_id, sum(total_sale ) as sum_of_sales 
		 from retail_sales
		 group by customer_id
		 order by sum_of_sales desc 

	   -- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

	     select category,count ( distinct customer_id ) as unique_customers
		 from retail_sales
		 group by category
	 
	   -- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

	    with cte as (
	     select *,
		  case when datepart (hour,sale_time )<=  12 then 'Morning'
		       when datepart (hour,sale_time) between 12 and 17 then 'Afternoon' else 'Evening' end as 'Shift'
			   from retail_sales )
			   select shift,count(*) as total_orders
			   from cte 
			   group by shift 
		
		-- End project 