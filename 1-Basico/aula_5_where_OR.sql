select * from tb_customers
where customer_city = 'sao paulo' or customer_city = 'rio de janeiro'

select * from tb_order_reviews
where review_score = 4 or review_score =  5 and review_comment_title = 'recomendo'
