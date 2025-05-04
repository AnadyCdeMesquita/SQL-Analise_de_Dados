select
seller_id,
count(distinct(order_id)) as qtde_pedidos,
sum(price) as vendas_totais,
sum(freight_value) as frete_total,
sum(price) + sum(freight_value) as total
from tb_order_items
group by 1

select 
order_id,
case when payment_type = 'credit_card' then sum(payment_value) end as cartao_credito,
case when payment_type = 'boleto' then sum(payment_value) end as boleto,
case when payment_type = 'voucher' then sum(payment_value) end as voucher,
case when payment_type = 'debit_card' then sum(payment_value) end as cartao_debito
from tb_order_payments
group by order_id
