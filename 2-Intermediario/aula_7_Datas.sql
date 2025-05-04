select
order_id,
strftime('%Y-%m-%d', order_approved_at) as data
from tb_orders