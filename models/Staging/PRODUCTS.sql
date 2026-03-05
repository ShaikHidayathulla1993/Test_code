{{ config(materialized='table') }}

WITH tbl AS (

SELECT 
    product_id,
    product_name,
    price
FROM {{ source('source_table_name','RAW_PRODUCTS_DATA') }}

)

SELECT * FROM tbl