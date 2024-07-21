SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = 'Romania'
AND refresh_date = '2024-07-16'
AND region_name = 'Bucharest'
-- AND week = '2024-07-14'
AND term = "Final Euro 2024"
order by week
LIMIT 100;

-- word search
SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = 'Romania'
AND refresh_date = '2024-07-16'
AND region_name LIKE `%B`
AND term LIKE `%24%`
order by week
LIMIT 100;