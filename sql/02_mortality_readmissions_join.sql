-- 02_mortality_readmissions_join.sql

CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.mortality_readmissions_join` AS
SELECT
  m.provider_id,
  AVG(m.mortality_score) AS avg_mortality_score,
  AVG(r.readmission_score) AS avg_readmission_score
FROM `sql-portfolio-project-478121.healthcare_data.mortality_clean` m
LEFT JOIN `sql-portfolio-project-478121.healthcare_data.readmission_clean` r
ON m.provider_id = r.provider_id
GROUP BY m.provider_id;
