--EXERCÍCIO 1
-- select
--   t1.seller_state as estado,
--   sum(t2.price) as preco_total,
--   t3.product_category_name as categoria
-- from tb_sellers as t1
-- left join tb_order_items as t2
-- on t1.seller_id = t2.seller_id
-- left join tb_products as t3
-- on t2.product_id = t3.product_id
-- where t3.product_category_name = 'perfumaria'
-- group by seller_state
-- order by estado desc

--EXERCÍCIO 2

select
t1.customer_state,
sum(t3.price)
from tb_customers as t1
left join tb_orders as t2
on t1.customer_id = t2.customer_id
left join tb_order_items as t3
on t2.order_id = t3.order_id
left join tb_products as t4
on t3.product_id = t4.product_id
where t4.product_category_name = 'perfumaria'
group by t1.customer_state
order by 2 desc


tb_customers as t2
select
*
from tb_order_items

select
*
from tb_products


select
*
from tb_customers
select
t1.seller_state as vendas_estado,
sum(t2.price) as preco
from tb_sellers as t1
left join tb_order_items as t2
on t1.seller_id = t2.seller_id
left join tb_order_reviews as t3
on t2.order_id = t3.order_id
where t3.review_score >= 4
group by 1
order by 2 desc


select
count(distinct(seller_id)) as total
from tb_sellers

