{{ config(
    materialized='table',
    file_format='delta',
    alias='product',
    location_root='dbfs:/user/hive/warehouse/') 
}}

SELECT
    apn_number_c AS apn_id,
    name AS product_name,
    description_c AS product_desc,
    product_line_c AS product_line_name,
    product_subcategory_c AS product_subcategory_name,
    product_category_1_c AS product_category_name,
    taxonomy_platform_c AS taxonomy_platform_name,
    type_c AS product_type_name,
    offering_type_c AS offering_type_name,
    unit_of_measure_c AS unit_of_measure_desc,
    charge_type_c AS charge_type_name,
    billing_ramp_policy_c AS billling_ramp_policy_desc,
    seasonal_licensing_eligible_c AS seasonal_licensing_eligible_flag
FROM salesforce_raw.product_2