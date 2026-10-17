with CTE as(
select 
to_timestamp(started_at) as started_at,
date(to_timestamp(started_at)) as date_started_at,
hour(to_timestamp(started_at)) as hour_started_at,
case
when month(to_timestamp(started_at)) in(12,1,2)
then 'Winter'
when month(to_timestamp(started_at)) in(3,4,5)
then 'Spring'
when month(to_timestamp(started_at)) in(6,7,8)
then 'Summer'
else 'Autumn'
end as Stationofyear,
case 
when dayname(to_timestamp(started_at)) in ('sat','sun') 
then 'Weekend' 
else 'Bussinessday'
end as Daytype
from 
{{ source('Demo', 'Bike') }}
where started_at != 'started_at'
)

select * from CTE