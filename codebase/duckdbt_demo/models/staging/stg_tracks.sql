WITH tracks as (
  SELECT * FROM {{ source('s3', 'netflix') }} 
)

SELECT * FROM tracks