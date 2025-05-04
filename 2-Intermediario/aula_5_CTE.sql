with sellers as(
select
  seller_id,
  seller_state
from tb_sellers
),

pedidos as (
select
  seller_id,
  order_id,
  count(distinct(order_id)) as qtde_pedidos,
  sum(price) as vendas_totais,
  sum(freight_value) as frete_total,
  sum(price) + sum(freight_value) as total
from tb_order_items
group by 1, 2
),

tipo_pagamento as(
select 
  order_id,
  case when payment_type = 'credit_card' then sum(payment_value) end as cartao_credito,
  case when payment_type = 'boleto' then sum(payment_value) end as boleto,
  case when payment_type = 'voucher' then sum(payment_value) end as voucher,
case when payment_type = 'debit_card' then sum(payment_value) end as cartao_debito
from tb_order_payments
group by order_id
)
select
  t1.seller_id,
  t1.seller_state,
  sum(t2.qtde_pedidos) as qtde_pedidos,
  sum(t2.vendas_totais) as vendas_totais,
  sum(t2.frete_total) as frete_total,
  sum(t2.total) as total,
  coalesce(sum(t3.cartao_credito),0) as cartao_credito,
  coalesce(sum(t3.boleto),0) as boleto,
  coalesce(sum(t3.voucher), 0) as voucher,
  coalesce(sum(t3.cartao_debito), 0) as cartao_debito
from sellers as t1
left join pedidos as t2
on t1.seller_id = t2.seller_id

left join tipo_pagamento as t3
on t2.order_id = t3.order_id

group by 1, 2