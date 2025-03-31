-- This is the default template for models

WITH 

    reservations AS (
        SELECT *
        FROM {{ ref('int_reservations_enriched') }}
    ),

    online_reservation_aggr as (
        SELECT 
        date_trunc('month', start_datetime_utc) AS month_date,
        COUNT(*) AS total_reservations,
        sum(total_night_cost) as total_night_cost,
        COUNT(*) FILTER (WHERE is_online_checkin = 0) AS offline_reservations,
        COALESCE(SUM(total_night_cost::numeric) FILTER (WHERE is_online_checkin = 0), 0) AS offline_reservations_cost,
        COUNT(*) FILTER (WHERE is_online_checkin = 1) AS online_reservations,
        COALESCE(SUM(total_night_cost::numeric) FILTER (WHERE is_online_checkin = 1), 0) AS online_reservations_cost
    FROM reservations
    where cancellation_reason is null
    GROUP BY date_trunc('month', start_datetime_utc)
    ORDER BY month_date
    )

SELECT * FROM online_reservation_aggr
