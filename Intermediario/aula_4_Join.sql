select
t1.product_id as id_produto,
t1.product_category_name as nome_categoria
t2.price as preco
t3.vendas_estado
from tb_products as t1
left join tb_order_items = t2
on t1.product_id = t2.product_id

--caso haja tabela 3 e não há chave de cruzamento diretamente com t1, pode haver cruzamento entre t2 e t3 pela chave de cruzamento comum

left join tabela3 as t3
on t2.vendedores = t3.vendedores
