WITH 
    rates AS (
        SELECT
            "RateId" as rate_id,
            "RateName" as rate_name,
            "ShortRateName" as short_rate_name,
            CAST("SettlementAction" AS INT) as settlement_action,
            CAST("SettlementTrigger" AS INT) as settlement_trigger,
            CAST("SettlementValue" AS FLOAT) as settlement_value,
            CAST("SettlementType" AS INT) as settlement_type
        FROM {{ ref('seed_rates') }}
    )

SELECT * FROM rates
