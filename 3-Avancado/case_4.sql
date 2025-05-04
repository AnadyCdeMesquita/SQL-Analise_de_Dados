with sellers as (
select
t1.seller_id,
t2.product_category_name,
sum(t1.price) + sum(t1.freight_value) as valor_total
from tb_order_items as t1
left join tb_products as t2
on t1.product_id = t2.product_id
group by 1, 2
),
tratamento as (
select
seller_id, 
case when product_category_name like '%alimentos%' then sum(valor_total) end as alimentos,
case when product_category_name like '%construcao%' then sum(valor_total) end as construcao,
case when product_category_name like 'eletrodomestico' then sum(valor_total) end as eletrodomestico,
case when product_category_name like 'fashion' then sum(valor_total) end as fashion,
case when product_category_name like 'livros' then sum(valor_total) end as livros,
case when product_category_name like 'moveis' then sum(valor_total) end as moveis, 
case when product_category_name like 'telefonia' then sum(valor_total) end as telefonia,
case when product_category_name not like '%alimentos%'
      and product_category_name not like '%construcao%'
      and product_category_name not like '%eletrodomestico%'
      and product_category_name not like '%fashion%'
      and product_category_name not like '%livros%'
      and product_category_name not like '%moveis%'
      and product_category_name not like '%telefonia%'
  then sum(valor_total)
  end as outros
from sellers
group by seller_id, product_category_name

),

valor_total as (
select
  seller_id,
  sum(valor_total) as valor_total
from sellers
group by 1
)

select 
t1.seller_id,
t2.valor_total,
sum(t1.alimentos)/t2.valor_total as alimentos,
sum(t1.construcao)/t2.valor_total as construcao,
sum(t1.eletrodomestico)/t2.valor_total as eletrodomestico,
sum(t1.fashion)/t2.valor_total as fashion, 
sum(t1.livros)/t2.valor_total as livros, 
sum(t1.moveis)/t2.valor_total as moveis,
sum(t1.telefonia)/t2.valor_total as telefonia,
sum(t1.outros)/t2.valor_total as outros
from tratamento as t1
left join valor_total as t2
on t1.seller_id = t2.seller_id
group by 1



