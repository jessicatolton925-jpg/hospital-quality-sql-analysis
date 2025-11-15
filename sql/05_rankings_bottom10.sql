-- 05_rankings_bottom10.sql

CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.bottom10_hospitals` AS
SELECT *
FROM `sql-portfolio-project-478121.healthcare_data.combined_quality_scores`
ORDER BY combined_quality_score ASC
LIMIT 10;
