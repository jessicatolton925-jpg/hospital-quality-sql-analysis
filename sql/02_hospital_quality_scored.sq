-- 02_hospital_quality_scored.sql
-- Join cleaned measure tables and calculate combined quality score

CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.hospital_quality_scored` AS
SELECT
  h.provider_id,
  h.hospital_name,
  h.state,
  CAST(m.score  AS FLOAT64) AS mortality_score,
  CAST(r.score  AS FLOAT64) AS readmission_score,
  CAST(pe.score AS FLOAT64) AS patient_experience_score,
  CAST(s.score  AS FLOAT64) AS safety_score,
  ROUND(
    (CAST(m.score  AS FLOAT64) +
     CAST(r.score  AS FLOAT64) +
     CAST(pe.score AS FLOAT64) +
     CAST(s.score  AS FLOAT64)) / 4,
    3
  ) AS combined_quality_score
FROM `sql-portfolio-project-478121.healthcare_data.hospitals_clean`           AS h
JOIN `sql-portfolio-project-478121.healthcare_data.mortality_clean`          AS m  USING (provider_id)
JOIN `sql-portfolio-project-478121.healthcare_data.readmission_clean`        AS r  USING (provider_id)
JOIN `sql-portfolio-project-478121.healthcare_data.patient_experience_clean` AS pe USING (provider_id)
JOIN `sql-portfolio-project-478121.healthcare_data.safety_clean`             AS s  USING (provider_id);
