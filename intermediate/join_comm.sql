select * from customers;
select * from orders;

-- left join
select 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
left join orders
on id = customer_id; 

-- left anti join
select 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
left join orders
on id = customer_id
where orders.order_id is null; 

-- full anti join
select
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
full join orders
on id = customer_id
where orders.order_id is null or customers.id is null;

-- Task: select customers that place orders but w/o use inner join
select
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
left join orders
on id = customer_id
where orders.order_id is not null;

-- cross join: combines every rows from left & right 
-- => all possible combinations (row A x row B)
select
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
cross join orders;

