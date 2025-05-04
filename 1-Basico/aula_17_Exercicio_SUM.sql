select
payment_type,
sum(payment_value) as valor_total
from tb_order_payments
group by payment_type

select
*
from tb_order_payments


select
payment_type,
sum(payment_installments) as total_parcela,
sum(payment_value) as total_pago,
sum(payment_installments) / sum(payment_value) as media
from tb_order_payments
where payment_type = 'credit_card'
group by payment_type
