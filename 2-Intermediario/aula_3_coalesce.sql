--coalesce = substitui valores nulos por algo que vc queira
--quando não for nulo, ele irá retornar o valores já preenchidos originalmente
select
DISTINCT
coalesce(product_category_name, 'valores anulados') 
from tb_products

--OUTRO EXEMPLO

coalesce (tel, tel2, tel3, phone, zap, 'telefone não informado') as telefones_informados
--só será preenchido por telefone não informado se o campo não tiver sido informado
