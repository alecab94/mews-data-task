with
rates as (
    select
        "RateId" as rate_id,
        "RateName" as rate_name,
        "ShortRateName" as short_rate_name,
        CAST("SettlementAction" as INT) as settlement_action,
        CAST("SettlementTrigger" as INT) as settlement_trigger,
        CAST("SettlementValue" as FLOAT) as settlement_value,
        CAST("SettlementType" as INT) as settlement_type
    from {{ ref('seed_rates') }}
)

select * from rates
