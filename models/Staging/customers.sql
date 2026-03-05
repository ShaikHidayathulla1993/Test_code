{{ config(materialized='table') }}

WITH tbl AS (

SELECT
    id,
    first_name,
    last_name
FROM {{ source('source_table_name','RAW_CUSTOMERS_DATA') }}

)

SELECT * FROM tbl