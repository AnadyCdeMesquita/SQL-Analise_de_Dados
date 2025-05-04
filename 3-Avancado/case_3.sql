with vendas as(
select
  seller_id,
  order_id,
  sum(price) + sum(freight_value) as valor_total
  from tb_order_items 
  group by 1
),
tipo_pagamento as (
select
  order_id,
  payment_type,
  sum(payment_value) as valor_pago
  from tb_order_payments
  group by 1, 2

),
cruzamento as(
select
  t1.seller_id,
  t1.valor_total,
  t2.payment_type
  from vendas as t1

  left join tipo_pagamento as t2
  on t1.order_id = t2.order_id
  group by 1
),
tratamento as(
select
  seller_id,
  sum(valor_total) as valor_total,
  case when payment_type = 'credit_card' then  sum(valor_total) end as cartao_credito,
  case when payment_type = 'boleto' then sum(valor_total) end as boleto,
  case when payment_type = 'voucher' then  sum(valor_total) end as voucher,
  case when payment_type = 'debit_card' then sum(valor_total) end as debito_card
from cruzamento 

  group by seller_id, payment_type
)

select
  seller_id,
  sum(valor_total) as valor_total,
  sum(cartao_credito) / sum(valor_total) as cartao_credito,
  sum(boleto)/sum(valor_total) as boleto,
  sum(voucher)/sum(valor_total) as voucher,
  sum(debito_card)/sum(valor_total) as debito_card
from tratamento
  group by seller_id


