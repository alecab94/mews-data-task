with

reservations as (
    select *
    from {{ ref('int_reservations_enriched') }}
),

online_reservation_aggr as (
    select
        date_trunc('month', start_datetime_utc) as month_date,
        count(*) as total_reservations,
        sum(total_night_cost) as total_night_cost,
        count(*) filter (where is_online_checkin = 0) as number_of_offline_checkin,
        coalesce(sum(total_night_cost::numeric) filter (where is_online_checkin = 0), 0) as total_cost_of_offline_checkin_reservations,
        count(*) filter (where is_online_checkin = 1) as number_of_online_checkin,
        coalesce(sum(total_night_cost::numeric) filter (where is_online_checkin = 1), 0) as total_cost_of_online_checkin_reservations
    from reservations
    where cancellation_reason is null
    group by date_trunc('month', start_datetime_utc)
    order by month_date
)

select * from online_reservation_aggr
