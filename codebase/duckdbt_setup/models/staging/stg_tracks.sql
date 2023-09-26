{{ config(materialized='external', location='s3://jigsaw-labs-student/tracks.parquet') }}

WITH tracks as (
  SELECT * FROM {{ source('s3', 'netflix') }} 
)

SELECT * FROM tracks