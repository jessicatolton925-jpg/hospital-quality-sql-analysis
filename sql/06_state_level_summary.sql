-- 06_state_level_summary.sql

CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.state_quality_scores` AS
SELECT
  state,
  ROUND(AVG(combined_quality_score), 2) AS avg_state_quality_score
FROM `sql-portfolio-project-478121.healthcare_data.combined_quality_scores`
GROUP BY state
ORDER BY avg_state_quality_score DESC;
