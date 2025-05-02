with data_limite as(
select
  order_id,
  strftime('%Y-%m-%d',shipping_limit_date) as data_limite
from tb_order_items
),
data_entrega as(
select
  order_id,
  strftime('%Y-%m-%d', order_delivered_customer_date) as data_entrega
from tb_orders
)
select 
  t1.order_id,
  t1.data_limite,
  t2.data_entrega
from data_limite as t1

left join data_entrega as t2
on t1.order_id = t2.order_id and t1.data_limite >= t2.data_entrega

where data_entrega is not null


