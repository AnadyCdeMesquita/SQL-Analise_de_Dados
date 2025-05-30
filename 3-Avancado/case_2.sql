with consumidor as(
select
t1.customer_unique_id,
t4.product_category_name,
count(t2.order_id) as quantidade,
sum(t3.price) as valor_total
from tb_customers as t1

left join tb_orders as t2
on t1.customer_id = t2.customer_id

left join tb_order_items as t3
on t2.order_id = t3.order_id

left join tb_products as t4
on t3.product_id = t4.product_id

group by 1, 2
order by customer_unique_id, quantidade desc
),

ranking as(
select
*,
row_number() over(partition by customer_unique_id order by quantidade desc, valor_total desc) as rank
from consumidor
)

select
*
from ranking
where rank = 1