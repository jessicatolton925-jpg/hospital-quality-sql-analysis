-- 03_combined_quality_score.sql
-- Author: Jessica Tolton
-- Description: Creates a combined quality score based on mortality + readmission metrics.

-- Weighted formula (example):
-- combined_quality_score = (mortality_score * 0.6) + (readmission_score * 0.4)

CREATE OR REPLACE TABLE `project.hospital_quality_scored` AS
SELECT
  hospital_name,
  state,
  mortality_score,
  readmission_score,
  ROUND((mortality_score * 0.6) + (readmission_score * 0.4), 2)
    AS combined_quality_score
FROM `project.hospital_quality_joined`;
