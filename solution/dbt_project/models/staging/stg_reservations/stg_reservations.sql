with reservations as (
    select
        "TravelAgency" as travel_agency,
        "NationalityCode" as nationality_code,
        "BusinessSegment" as business_segment,
        "RateId" as rate_id,
        CAST("StartUtc" as timestamptz) as start_datetime_utc,
        CAST("EndUtc" as timestamptz) as end_datetime_utc,
        CAST("CreatedUtc" as timestamptz) as creation_datetime_utc,
        CAST("NightCount" as int) as number_of_nights,
        CAST("NightCost_Sum" as float) as total_night_cost,
        CAST("OccupiedSpace_Sum" as int) as total_space_capacity,
        CAST("GuestCount_Sum" as int) as number_of_guests,
        CAST("LeadTime" as int) as lead_time_days,
        CAST("StayLength" as int) as stay_length_days,
        CAST("CancellationReason" as int) as cancellation_reason,
        CAST("SettlementType" as int) as settlement_type,
        CAST("ReservationState" as int) as reservation_state,
        CAST("Origin" as int) as origin,
        CAST("CommanderOrigin" as int) as commander_origin,
        CAST("IsOnlineCheckin" as int) as is_online_checkin,
        CAST("Gender" as int) as gender,
        CAST("Classification" as int) as classification,
        CAST("AgeGroup" as int) as age_group,
        CAST("HasEmail" as int) as has_email,
        CAST("EnterpriseTimeZone" as int) as enterprise_time_zone,
        CAST("Tier" as int) as tier
    from {{ ref('seed_reservations') }}
)

select * from reservations
