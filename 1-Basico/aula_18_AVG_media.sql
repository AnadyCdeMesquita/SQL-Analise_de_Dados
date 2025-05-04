select
product_category_name,
avg(product_weight_g) as media
from tb_products
where product_category_name = 'perfumaria'
group by product_category_name
