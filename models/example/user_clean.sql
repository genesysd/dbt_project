{{ config(
    materialized='table',
    file_format='delta',
    location_root='dbfs:/user/hive/warehouse/') 
}}

SELECT 
    id as userId, 
    username as userName, 
    company_name as companyName      
FROM {{ source('salesforce_sandbox', 'user') }}