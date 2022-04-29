{{ config(
    materialized='table',
    file_format='delta',
    location_root='dbfs:/user/hive/warehouse/') 
}}

SELECT
    apn_number_c AS apn_num,
    name AS product_name,
    description_c AS product_desc,
    product_line_c AS product_line,
    product_subcategory_c AS product_subcategory,
    product_category_1_c AS product_category,
    taxonomy_platform_c AS taxonomy_platform,
    type_c AS product_type,
    offering_type_c AS offering_type,
    unit_of_measure_c AS unit_of_measure,
    charge_type_c AS charge_type,
    billing_ramp_policy_c AS billling_ramp_policy,
    seasonal_licensing_eligible_c AS seasonal_licensing_eligible_flag
FROM salesforce_raw.product_2