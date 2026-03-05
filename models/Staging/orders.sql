{{ config(materialized='table') }}

WITH tbl AS (

SELECT
    id ,
    user_id,
    order_date,
    status 
FROM {{ source('source_table_name','RAW_ORDERS_DATA') }}

)

SELECT * FROM tbl