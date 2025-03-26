WITH
    reservations as (
        SELECT
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
        FROM {{ ref('stg_reservations') }}
    ),

    rates as (
        SELECT
            rate_id,
            rate_name
        FROM {{ ref('stg_rates') }}
    ),

    join_rates_to_reservations as (
        SELECT 
            res.*,
            rate.rate_name
        FROM reservations res
        JOIN rates rate ON res.rate_id = rate.rate_id

    )

SELECT * FROM join_rates_to_reservations