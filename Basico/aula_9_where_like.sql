--select
*
from tb_products
where product_category_name like '%construcao%'

select
*
from tb_order_reviews
where review_comment_message like 'parabéns%'
--where review_comment_message like '%parabéns%' 
--%% no começo e fim, vem palavras antes e depois
--só no começo vem palavras antes