with CTE as (
    select 
    t.*,
    w.*
    from  {{ref('trip_fact') }} t
    LEFT JOIN {{ref ('daily_weather')}} w on t.trip_date = w.dailyweather
     
    order by t.trip_date
)

select * from CTE