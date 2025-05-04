--A cláusula GROUP BY em SQL é usada para agrupar linhas com valores idênticos em uma ou mais colunas, criando grupos de linhas com valores correspondentes. Isso permite que você trabalhe com os grupos resultantes, como se fossem uma única linha, e é frequentemente utilizada em conjunto com funções de agregação (como COUNT, SUM, AVG, MAX, MIN) para realizar cálculos nos grupos. 
--Em resumo, a GROUP BY divide seus dados em grupos baseados nos valores de uma ou mais colunas, facilitando a análise e o resumo de informações. 

-- select
-- seller_state,
-- count(DISTINCT(seller_city))
-- from tb_sellers
-- group by seller_state

select
customer_state,
count(DISTINCT(customer_city)) as cidade
from tb_customers
group by customer_state

SELECT
* FROM tb_customers

