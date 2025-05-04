--sempre que o utilzar o where com and e or, deve se colocar as chaves

select * from tb_products
where product_weight_g >= 600 and (product_category_name = 'perfumaria' or product_category_name = 'artes')

