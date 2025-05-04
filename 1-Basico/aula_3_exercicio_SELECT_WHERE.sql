--exercicio 1
select * from tb_orders 
where order_status = 'delivered'

--exercicio 2
select * from tb_customers
where customer_city = 'sao paulo'
--exercicio 3

select * from tb_order_payments
where payment_type = 'credit_card'