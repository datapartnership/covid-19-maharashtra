SELECT 
district,
location_dt,
carrier,
count(1)
FROM
"geocoded_mh_outlogic_v1" 
group by
district,
location_dt,
carrier
order by
district,
location_dt,
carrier
