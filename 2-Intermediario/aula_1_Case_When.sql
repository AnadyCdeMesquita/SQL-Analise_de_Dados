
--SELECT 
--coluna1,
--coluna2,
--CASE
    --WHEN condition1 THEN result1
    --WHEN condition2 THEN result2
    --WHEN conditionN THEN resultN
    --ELSE result
--END AS nome da coluna;
--from tabela_geral

select
review_id,
review_score,
case
when review_score = 1 or review_score = 2 then 'ruim'
-- when review_score >= 1 and review_score <= 2 then 'ruim'
-- when review_score in (1,2) then 'ruim'
when review_score = 3 then 'neutro'
when review_score = 4 or review_score = 5 then 'otimo'
else 'sem escore'
end as review_quali
from tb_order_reviews

select
    case
        when product_category_name like '%construcao%' then 'construcao'
        when product_category_name like '%agro%' then 'agro'
        when product_category_name like '%moveis%' then 'moveis'
        else product_category_name
    end as nova_tabela       
from tb_products
where product_category_name is not null
