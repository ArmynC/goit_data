-- international_top_terms

SELECT country_name, term
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = 'Romania'
LIMIT 100;

SELECT
  country_name,
  term,
  region_name,
  refresh_date,
  rank,
  score,
  week
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = 'Romania'
LIMIT 100;

SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
LIMIT 100;

-- top_terms

SELECT dma_name, term, refresh_date, rank, score, week
FROM bigquery-public-data.google_trends.top_terms
WHERE dma_name = 'Romania'
LIMIT 100;

SELECT *
FROM bigquery-public-data.google_trends.top_terms
LIMIT 100;
