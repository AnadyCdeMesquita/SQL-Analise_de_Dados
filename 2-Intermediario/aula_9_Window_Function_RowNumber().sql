with seller as(
select
  seller_id,
  product_id,
  count(distinct(order_id)) as qtde_vendas,
  sum(price) as valor_total
from tb_order_items
group by seller_id, product_id
order by 1
)
select
*,
row_number () over(partition by seller_id order by qtde_vendas desc, valor_total desc) as ranking
from seller