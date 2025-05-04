with meses as (
select
distinct
strftime('%Y-%m-01', order_approved_at) as mes_referencia,
1 as key
from tb_orders
where mes_referencia is not null
),

sellers as(
select
t1.seller_id,
min(strftime('%Y-%m-01', t2.order_approved_at)) as mes_primeira_venda,
1 as key
from tb_order_items as t1
left join tb_orders as t2
on t1.order_id = t2.order_id
group by 1
)

select
t1.mes_referencia as mes_referencia,
t2.seller_id,
t2.mes_primeira_venda

from meses as t1
left join sellers as t2
on t1.key = t2.key
group by 2, 1

order by seller_id, mes_referencia asc



