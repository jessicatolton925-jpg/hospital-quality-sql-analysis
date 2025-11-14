-- 02_mortality_readmissions_join.sql
-- Author: Jessica Tolton
-- Description: Joins hospital data with mortality and readmission datasets
--              to create a unified quality evaluation table.

CREATE OR REPLACE TABLE `project.hospital_quality_joined` AS
SELECT
  h.hospital_name,
  h.state,
  m.mortality_score,
  r.readmission_score
FROM `project.cleaned_hospital_data` h
LEFT JOIN `project.mortality_data` m
    ON h.hospital_name = m.hospital_name
LEFT JOIN `project.readmissions_data` r
    ON h.hospital_name = r.hospital_name;
