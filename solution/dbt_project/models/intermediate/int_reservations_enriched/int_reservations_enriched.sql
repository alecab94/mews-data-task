with
reservations as (
    select
        start_datetime_utc,
        end_datetime_utc,
        creation_datetime_utc,
        number_of_nights,
        total_night_cost,
        total_space_capacity,
        number_of_guests,
        lead_time_days,
        stay_length_days,
        cancellation_reason,
        settlement_type,
        reservation_state,
        origin,
        commander_origin,
        travel_agency,
        is_online_checkin,
        nationality_code,
        gender,
        classification,
        age_group,
        has_email,
        enterprise_time_zone,
        business_segment,
        tier,
        rate_id
    from {{ ref('stg_reservations') }}
),

rates as (
    select
        rate_id,
        rate_name
    from {{ ref('stg_rates') }}
),

calculate_reservation_metrics as (
    select
        *,
        total_night_cost / number_of_nights as cost_per_night,
        case
            when total_space_capacity = 0 then total_night_cost / (number_of_nights * number_of_guests)
            else total_night_cost / (number_of_nights * total_space_capacity)
        end as night_cost_per_unit_capacity,
        case
            when total_space_capacity = 0 then 1
            else ROUND(number_of_guests::numeric / total_space_capacity::numeric, 2)
        end as occupancy_rate,
        TRIM(TO_CHAR(creation_datetime_utc, 'Day')) as creation_week_day
    from reservations
),

join_rates_to_reservations as (
    select
        res.*,
        rate.rate_name
    from calculate_reservation_metrics as res
    inner join rates as rate on res.rate_id = rate.rate_id

)

select * from join_rates_to_reservations
