select
*,
product_description_lenght,
product_height_cm,
product_width_cm,
product_description_lenght * product_description_lenght as resultado_final,
product_height_cm + product_width_cm as somando_tabelas 
from tb_products
