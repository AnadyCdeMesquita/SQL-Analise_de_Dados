select
  order_id,
  count(product_id) as produtos_vendidos,
  sum(price) as valor_total,
  sum(price)/count(product_id) as media
from tb_order_items
--where order_id = '0016dfedd97fc2950e388d2971d718c7'	
group by order_id

SELECT
*
FROM tb_order_items