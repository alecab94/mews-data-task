-- depends_on: {{ ref('int_reservations_enriched') }}

{% set segment_type = var('segment_types')['nationality_code'] %}
{% set by_week_day = false %}

{{ aggregate_reservation_checkin_by_segment(segment_type, by_week_day) }}
