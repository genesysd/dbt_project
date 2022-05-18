{{ config(
    materialized='table',
    file_format='delta',
    alias= 'sellable_item_product',
    location_root='s3://gen-salesforce-dev-503733548004-cln/salesforce_cln/') 
}}

SELECT
    incomeaccount_c AS income_account_name,
    income_account_lu_c AS income_account_id,
    contract_asset_account_c AS contract_asset_account_id,
    contract_impairment_account_c AS contract_impairment_account_id,
    deferred_revenue_account_c AS deferred_revenue_account_name,
    deferred_revenue_account_lu_c AS deferred_revenue_account_id,
    lt_contract_asset_account_c AS it_contract_asset_account_id,
    lt_contract_liability_account_c AS it_contract_liability_account_id,
    unbilled_ar_account_c AS unbilled_account_id,
    status_c AS status_desc,
    availability_c AS availability_desc
FROM salesforce_raw.sellable_item_product_c
