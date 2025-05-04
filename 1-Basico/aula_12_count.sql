
select
count(review_score) as revisao_escore
from tb_order_reviews
where review_score >= 4

select
count (product_id) as id_produto
from tb_products
where product_category_name like '%construção' and product_weight_g	 > 350