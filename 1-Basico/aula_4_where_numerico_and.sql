select * from tb_geolocation
where geolocation_zip_code_prefix < 1037

select * from tb_order_payments
where payment_installments >= 3 and payment_type = 'credit_card' and payment_value >= 99.33

select * from tb_products
where product_category_name = 'perfumaria' and product_weight_g > 100

select * from tb_order_items
where price > 50 and freight_value > 15
