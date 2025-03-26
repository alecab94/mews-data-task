{% macro aggregate_reservations_by_segment(segment_type) %}
    WITH
        reservations as (
            SELECT
                {{ segment_type }},
                total_night_cost,
                number_of_nights,
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
                res.{{ segment_type }},
                rate.rate_name,
                COUNT(*) AS number_of_reservations,
                ROUND(
                    (COUNT(*)::numeric / NULLIF(
                        SUM(COUNT(*)) OVER (PARTITION BY res.{{ segment_type }}), 0
                    )) * 100, 2
                ) AS relative_pct_num_of_reservations_by_{{ segment_type }},
                SUM(res.number_of_nights) as number_of_nights,
                ROUND(
                    (SUM(res.number_of_nights) / NULLIF(
                        SUM(SUM(res.number_of_nights)) OVER (PARTITION BY res.{{ segment_type }}), 0
                    )) * 100, 2
                ) AS relative_pct_num_of_nights_by_{{ segment_type }},
                ROUND(SUM(res.total_night_cost)::numeric, 2) AS total_night_cost,
                ROUND(
                    (SUM(res.total_night_cost)::numeric / NULLIF(
                        SUM(SUM(res.total_night_cost)::numeric) OVER (PARTITION BY res.{{ segment_type }}), 0
                    )) * 100, 2
                ) AS relative_pct_total_night_cost_by_{{ segment_type }},
                ROUND(AVG(res.total_night_cost)::numeric, 2) AS avg_total_night_cost,
                ROUND((SUM(res.total_night_cost) / NULLIF(SUM(res.number_of_nights), 0))::numeric, 2) AS cost_per_night
            FROM reservations res
            JOIN rates rate ON res.rate_id = rate.rate_id
            GROUP BY 
                rate.rate_name,
                res.{{ segment_type }}
            ORDER BY
                res.{{ segment_type }},
                number_of_nights
        )

    SELECT * FROM join_rates_to_reservations
{% endmacro %}
