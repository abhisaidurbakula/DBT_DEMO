with trips as (
select
RIDE_ID,
RIDEABLE_TYPE,
Date(to_timestamp(STARTED_AT)) as trip_date,
START_STATIO_ID as start_station_id,
END_STATION_ID,
MEMBER_CSUAL as member_causal,
TIMESTAMPDIFF(SECOND,to_timestamp(STARTED_AT),to_timestamp(ENDED_AT)) AS TIME_DURATION_SECONDS,
from {{source ('Demo', 'Bike')}}
where Ride_id != 'Ride_id'
limit 10

)

select * from trips