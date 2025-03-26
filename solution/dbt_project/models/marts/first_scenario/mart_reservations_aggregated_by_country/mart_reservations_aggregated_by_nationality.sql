-- depends_on: {{ ref('stg_reservations') }}

{% set segment_type = var('segment_types')['nationality_code'] %}

{{ aggregate_reservations_by_segment(segment_type) }}