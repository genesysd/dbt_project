{{ config(
    materialized='view',
    file_format='delta',
    alias= 'sellable_item_product',
    location_root='dbfs:/user/hive/warehouse/') 
}}

SELECT
    incomeaccount_c AS income_account,
    income_account_lu_c AS income_account_lu,
    contract_asset_account_c AS contract_asset_account,
    contract_impairment_account_c AS contract_impairment_account,
    deferred_revenue_account_c AS deferred_revenue_account,
    deferred_revenue_account_lu_c AS deferred_revenue_account_lu,
    lt_contract_asset_account_c AS lt_contract_asset_account,
    lt_contract_liability_account_c AS lt_contract_liability_account,
    unbilled_ar_account_c AS unbilled_ar_account,
    status_c AS sellable_item_product_status,
    availability_c AS sellable_item_product_availability
FROM salesforce_raw.sellable_item_product_c
