with Bike as (
select distinct
START_STATIO_ID as station_id,
START_STATION_NAME as station_name,
START_LAT,
START_LNG
from {{source ('Demo', 'Bike')}}
where Ride_id != 'Ride_id'


)

select * from Bike