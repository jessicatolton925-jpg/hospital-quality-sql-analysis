-- 05_rankings_bottom10.sql
-- Author: Jessica Tolton
-- Description: Returns the 10 lowest-performing hospitals by quality score.

CREATE OR REPLACE TABLE `project.bottom_10_hospitals` AS
SELECT
  hospital_name,
  state,
  combined_quality_score
FROM `project.hospital_quality_scored`
ORDER BY combined_quality_score ASC
LIMIT 10;

SELECT * FROM `project.bottom_10_hospitals`;
