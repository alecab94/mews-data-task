{% macro aggregate_reservation_checkin_by_segment(segment, by_week_day) %}

{% set types_of_checkin = {
    'online': 1,
    'offline': 0
} %}

WITH aggregated_reservations AS (
    SELECT
        {% if by_week_day %}
            creation_week_day,
        {% endif %}
        {{ segment }},
        COUNT(*) AS total_reservations,
        {% for checkin, value in types_of_checkin.items() %}
            SUM(CASE WHEN is_online_checkin = {{ value }} THEN 1 ELSE 0 END) AS number_of_{{ checkin }}_checkin,
            ROUND(100.0 * SUM(CASE WHEN is_online_checkin = {{ value }} THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_of_{{ checkin }}_checkin {% if not loop.last %},{% endif %}
        {% endfor %}
    FROM {{ ref('int_reservations_enriched') }}
    GROUP BY
        {% if by_week_day %}
            creation_week_day,
        {% endif %}
        {{ segment }}
)

SELECT * FROM aggregated_reservations
ORDER BY {% if by_week_day %} creation_week_day, {% endif %} pct_of_online_checkin desc

{% endmacro %}
