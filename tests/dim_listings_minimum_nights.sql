select * from {{ref("dim_listings_cleansed")}}
where minimum_nights < 0 
limit 2