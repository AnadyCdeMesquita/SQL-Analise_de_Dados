select * from tb_products
where product_category_name in ('perfumaria', 'artes')


select * from tb_customers
where customer_city in ('sao paulo', 'rio de janeiro')

select * from tb_order_reviews
where review_score in (3, 4, 5)

-- OU---

select * from tb_order_reviews
where review_score >= 3 or review_score <= 5
