select 
cast(payment_installments * payment_value as int64) as total
payment_installments * payment_value
from tb_order_payments

select
round(freight_value, 1) 
from tb_order_items
--diz as casas decimais depois da vírgula