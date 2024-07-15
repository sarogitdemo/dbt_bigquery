WITH src_hosts AS (
 SELECT
 *
 FROM
 {{ ref('src_hosts') }}
)
SELECT
 id as host_id,
 IFNULL(
 name,
 'Anonymous'
 ) AS host_name,
 is_superhost,
 created_at,
 updated_at
FROM
 src_hosts