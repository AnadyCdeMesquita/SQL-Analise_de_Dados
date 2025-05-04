with vendas as (
select
  t1.seller_id,
  t1.product_id,
  t2.product_category_name,
  count(distinct(t1.order_id)) as quantidade,
  sum(t1.price) as preco
from tb_order_items as t1

  left join tb_products as t2
  on t1.product_id = t2.product_id 

  group by 1, 2, 3 
),

rankeamento as(
select
*,
row_number() over(partition by seller_id order by quantidade desc, preco desc) as rank
from vendas
)

select
*
from rankeamento

where rank = 1




