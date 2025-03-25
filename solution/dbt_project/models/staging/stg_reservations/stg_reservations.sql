WITH reservations AS (
    SELECT
        CAST("StartUtc" AS timestamptz) AS start_datetime_utc,
        CAST("EndUtc" AS timestamptz) AS end_datetime_utc,
        CAST("CreatedUtc" AS timestamptz) AS creation_datetime_utc,
        CAST("NightCount" AS INT) AS number_of_nights,
        CAST("NightCost_Sum" AS FLOAT) AS total_night_cost,
        CAST("OccupiedSpace_Sum" AS INT) AS total_space_capacity,
        CAST("GuestCount_Sum" AS INT) AS number_of_guests,
        CAST("LeadTime" AS INT) AS lead_time_days,
        CAST("StayLength" AS INT) AS stay_length_days,
        CAST("CancellationReason" AS INT) AS cancellation_reason,
        CAST("SettlementType" AS INT) AS settlement_type,
        CAST("ReservationState" AS INT) AS reservation_state,
        CAST("Origin" AS INT) AS origin,
        CAST("CommanderOrigin" AS INT) AS commander_origin,
        "TravelAgency" AS travel_agency,
        CAST("IsOnlineCheckin" AS INT) as is_online_checkin,
        "NationalityCode" AS nationality_code,
        CAST("Gender" AS INT) AS gender,
        CAST("Classification" AS INT) AS classification,
        CAST("AgeGroup" AS INT) AS age_group,
        CAST("HasEmail" AS INT) AS has_email,
        CAST("EnterpriseTimeZone" AS INT) AS enterprise_time_zone,
        "BusinessSegment" AS business_segment,
        CAST("Tier" AS INT) AS tier,
        "RateId" AS rate_id
    FROM {{ ref('seed_reservations') }}
)

SELECT * FROM reservations
