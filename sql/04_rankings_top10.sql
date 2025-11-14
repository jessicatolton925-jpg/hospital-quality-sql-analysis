-- 04_rankings_top10.sql
-- Author: Jessica Tolton
-- Description: Ranks hospitals by combined quality score and returns the top 10.

CREATE OR REPLACE TABLE `project.top_10_hospitals` AS
SELECT
  hospital_name,
  state,
  combined_quality_score
FROM `project.hospital_quality_scored`
ORDER BY combined_quality_score DESC
LIMIT 10;

SELECT * FROM `project.top_10_hospitals`;
