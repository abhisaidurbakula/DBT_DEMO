with Bike as (
select 
RIDE_ID,
Replace(STARTED_AT,'"','') as started_at,
Replace(ENDED_AT,'"','') as ended_at,
	START_STATION_NAME,
	START_STATIO_ID,
	END_STATION_NAME,
	END_STATION_ID,
	START_LAT,
	START_LNG,
	END_LAT,
	END_LNG,
	MEMBER_CSUAL
    from {{source ('Demo', 'Bike')}}
    where Ride_id !='bikeid'and started_at != 'starttime' and started_at !='"starttime"'
)

select * from Bike
