WITH src_reviews as (

SELECT * from {{source("bigquery",'reviews')}} 

)
select listing_id,
DATE AS review_date,
reviewer_name,
COMMENTS AS review_text,
sentiment as review_sentiment
 from src_reviews