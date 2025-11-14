-- 06_state_level_summary.sql
-- Author: Jessica Tolton
-- Description: Produces state-level summary metrics, including:
--              - Average combined quality score
--              - Hospital count per state

CREATE OR REPLACE TABLE `project.state_level_summary` AS
SELECT
  state,
  ROUND(AVG(combined_quality_score), 2) AS avg_quality_score,
  COUNT(*) AS hospitals_in_state
FROM `project.hospital_quality_scored`
GROUP BY state
ORDER BY avg_quality_score DESC;

SELECT * FROM `project.state_level_summary`;
