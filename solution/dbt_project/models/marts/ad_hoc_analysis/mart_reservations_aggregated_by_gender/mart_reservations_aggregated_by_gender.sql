-- depends_on: {{ ref('int_reservations_enriched') }}

{% set segment_type = var('segment_types')['gender'] %}

{{ aggregate_reservations_by_segment(segment_type) }}
