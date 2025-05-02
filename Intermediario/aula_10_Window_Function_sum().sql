
with vendas as(
select
  t1.seller_id,
  strftime('%Y-%m-%d', t2.order_approved_at) as data_venda,
  sum(t1.price) as valor_vendas
from tb_order_items as t1

left join tb_orders as t2
on t1.order_id = t2.order_id
group by 1, 2
order by 1, 2 asc
)
select
*,
sum(valor_vendas) over (partition by seller_id order by data_venda)
from vendas