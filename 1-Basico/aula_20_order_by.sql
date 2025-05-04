select
product_id,
product_category_name
from tb_products
where product_category_name is not null
group by product_id
order by product_category_name

select 
product_category_name,
max(product_weight_g) as maior_peso,
min(product_weight_g) as menor_peso
from tb_products
where product_category_name = 'perfumaria'
group by product_category_name
order by product_weight_g asc

select
product_category_name,
max(product_weight_g) as maior_peso
from tb_products
group by product_category_name
order by product_weight_g desc
limit 5

select
product_category_name,
count(distinct(product_id)) as contagem
from tb_products
where product_category_name is not null
group by product_category_name
order by contagem desc
limit 5


