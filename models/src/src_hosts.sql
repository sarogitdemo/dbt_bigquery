WITH src_hosts as (

SELECT * from {{source('bigquery','hosts')}} 

)
Select * from src_hosts