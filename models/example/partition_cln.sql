{{ config(
    materialized='table',
    location_root='dbfs:/user/hive/warehouse/',
    partition_by=['call_date_c']
)}}

SELECT
    call_id_c AS call_id,
    company_id_c AS company_id,
    date_last_modified_c AS date_last_modified_utc_ts,
    _fivetran_deleted AS _fivetran_deleted_flag,
    call_date_c
FROM {{ source('netsuite_suiteanalytics_2', 'calls_test') }}