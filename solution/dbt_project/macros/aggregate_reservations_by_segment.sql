{% macro aggregate_reservations_by_segment(segment_type) %}
    WITH
        reservations as (
            SELECT
                {{ segment_type }},
                rate_name,
                total_night_cost,
                number_of_nights,
                rate_id,
                night_cost_per_unit_capacity,
                cancellation_reason,
                is_online_checkin
            FROM {{ ref('int_reservations_enriched') }}
        ),


        aggregation_by_segment as (
            SELECT
                {{ segment_type }},
                rate_name,
                COUNT(*) AS number_of_reservations,
                ROUND((COUNT(*)::numeric / NULLIF(SUM(COUNT(*)) OVER (PARTITION BY {{ segment_type }}), 0)) * 100, 2) AS relative_pct_num_of_reservations_by_{{ segment_type }},
                SUM(number_of_nights) as number_of_nights,
                ROUND((SUM(number_of_nights) / NULLIF(SUM(SUM(number_of_nights)) OVER (PARTITION BY {{ segment_type }}), 0)) * 100, 2) AS relative_pct_num_of_nights_by_{{ segment_type }},
                ROUND(SUM(total_night_cost)::numeric, 2) AS total_night_cost,
                ROUND((SUM(total_night_cost)::numeric / NULLIF(SUM(SUM(total_night_cost)::numeric) OVER (PARTITION BY {{ segment_type }}), 0)) * 100, 2) AS relative_pct_total_night_cost_by_{{ segment_type }},
                ROUND(AVG(total_night_cost)::numeric, 2) AS avg_total_night_cost,
                ROUND((SUM(total_night_cost) / NULLIF(SUM(number_of_nights), 0))::numeric, 2) AS cost_per_night,
                ROUND(AVG(night_cost_per_unit_capacity)::numeric, 2) as avg_night_cost_per_unit_capacity,
                SUM(CASE WHEN cancellation_reason is null THEN 1 ELSE 0 END) as number_of_cancellations,
                ROUND(AVG(CASE WHEN cancellation_reason is null THEN night_cost_per_unit_capacity END)::numeric, 2) AS avg_night_revenue_per_unit_capacity,
                SUM(CASE WHEN is_online_checkin = 1 THEN 1 ELSE 0 END) AS number_of_online_checkin,
                ROUND((SUM(CASE WHEN is_online_checkin = 1 THEN 1 ELSE 0 END)::numeric / NULLIF(COUNT(*), 0)) * 100, 2) AS relative_pct_of_online_checkin
            FROM reservations
            GROUP BY
                rate_name,
                {{ segment_type }}
            ORDER BY
                {{ segment_type }},
                number_of_nights
        )

    SELECT * FROM aggregation_by_segment
{% endmacro %}
