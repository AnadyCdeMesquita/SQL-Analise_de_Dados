select
seller_city,
case
  when seller_state = 'SP' then 'sao paulo'
  when seller_state = 'RJ' then 'rio de janeiro'
  when seller_state = 'PR' then 'paraná'
else 'sem nome'
end as nome_estado
from tb_sellers
