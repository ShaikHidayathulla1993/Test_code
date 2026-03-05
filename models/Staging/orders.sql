{{ config(materialized='table') }}

WITH tbl AS (

SELECT
    id INT,
    user_id INT,
    order_date DATE,
    status STRING
FROM {{ source('source_table_name','RAW_ORDERS_DATA') }}

)

SELECT * FROM tbl