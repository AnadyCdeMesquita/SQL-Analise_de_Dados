--exercicio 1

select
  product_id,
  count(product_id) as total_produtos
from tb_products
where product_category_name = 'artes'

--exercicio 2
select
  product_id,
  product_category_name,
  (product_length_cm	* product_height_cm * product_width_cm)/1000 as volume
from tb_products
where (product_length_cm	* product_height_cm * product_width_cm)/1000 >= 5 and product_category_name = 'beleza_saude'
-- ou where volume >=5

--exercicio 3
select
  product_category_name,
  max(product_description_lenght) as desc_max,
  min(product_description_lenght) as desc_min,
  avg(product_description_lenght) as desc_media
from tb_products
where product_category_name is not null and product_description_lenght > 100
group by product_category_name
having  desc_media > 500
