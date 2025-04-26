--utiliado para where quando
--for uma coluna criada or sum, media, max, min
select
*
from(
  select
    order_id,
    sum(price) as valor_total
  from tb_order_items
  group by order_id
  order by valor_total desc
)
where valor total >= 5000