{% set reservation_limit = 50 %}
{% set number_of_booking_rates = 3 %}
WITH 

    reservations_by_nationality as (
        select * from {{ ref('mart_reservations_aggregated_by_nationality') }}
    ),

    country_totals AS (
        SELECT 
            nationality_code, 
            SUM(number_of_reservations) AS total_reservations
        FROM reservations_by_nationality
        GROUP BY nationality_code
        HAVING SUM(number_of_reservations) >= {{ reservation_limit }}
    ),

    top_booking_rates AS (
        SELECT 
            m.nationality_code, 
            m.rate_name, 
            m.number_of_reservations, 
            m.relative_pct_num_of_reservations_by_nationality_code,
            ROW_NUMBER() OVER (
                PARTITION BY m.nationality_code 
                ORDER BY m.number_of_reservations DESC
            ) AS rn
        FROM reservations_by_nationality m
        JOIN country_totals c ON m.nationality_code = c.nationality_code
    )

SELECT *
FROM top_booking_rates
WHERE rn <= {{ number_of_booking_rates }}
ORDER BY nationality_code, number_of_reservations DESC