select
customer_id,
c.nation_id as nation_id,
c.name as name,
n.name as nation,
address,
phone_number,
account_balance,
market_segment,
r.name as region,
c.comment
from {{ ref('stg_customers')}} as c
join {{ ref('stg_nations')}} as n on c.nation_id = n.nation_id
join {{ ref('stg_regions')}} as r on n.region_id = r.region_id
