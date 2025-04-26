
  select
    order_id,
    sum(price) as valor_total
  from tb_order_items
  group by order_id
  having valor_total >=5000
  order by valor_total desc

