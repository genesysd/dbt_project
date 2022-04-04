{{ config(
    materialized='table',
    file_format='delta',
    location_root='s3://gen-philtest-fivetran/netsuite_suiteanalytics_2/') 
}}

SELECT 
    call_id as callID, 
    contact_id as contactId, 
    note as issue, 
    subject, 
    date_last_modified, 
    status  
FROM {{ source('netsuite_suiteanalytics_2', 'calls') }}