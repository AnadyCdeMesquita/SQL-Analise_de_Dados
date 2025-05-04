select
product_category_name,
max(product_photos_qty) as maximo_fotos,
min(product_photos_qty) as minimo_fotos
from tb_products
where product_category_name is not null
group by product_category_name

select 
payment_type,
max(payment_value) as maximo,
min(payment_value) as maximo
from tb_order_payments
where payment_type = 'not_defined' <> 1
group by payment_type