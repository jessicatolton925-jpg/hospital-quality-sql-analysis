-- 04_rankings_top10.sql

CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.top10_hospitals` AS
SELECT *
FROM `sql-portfolio-project-478121.healthcare_data.combined_quality_scores`
ORDER BY combined_quality_score DESC
LIMIT 10;
