-- 1-VC seleciona tabelas dentro de tabela
select
  customer_city,
  customer_id
from tb_customers

-- 2- VC seleciona  todas tabelas dentro da tabela maior
select
*
from tb_orders

select
*
from tb_order_items
--VC limita a quantidade de linhas dentro da tabela que vai aparecer *limit*
select
*
from tb_geolocation
limit 5

