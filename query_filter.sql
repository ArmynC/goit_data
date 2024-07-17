SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
LIMIT 100;

-- first query
--SELECT MAX(refresh_date) as max_date, min(refresh_date) as min_date
SELECT MAX(week) as max_week
FROM bigquery-public-data.google_trends.international_top_terms
LIMIT 100;

-- unique countries query
SELECT DISTINCT country_name
FROM bigquery-public-data.google_trends.international_top_terms;

SELECT DISTINCT region_name
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = 'Romania';

SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = 'Romania'
AND refresh_date = '2024-07-16'
AND region_name = 'Bucharest'
AND week = '2024-07-14'
LIMIT 100;
