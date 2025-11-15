-- 03_combined_quality_score.sql

CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.combined_quality_scores` AS
SELECT
  h.provider_id,
  h.hospital_name,
  h.city,
  h.state,
  mrj.avg_mortality_score,
  mrj.avg_readmission_score,
  ec.effective_care_score,
  pe.patient_exp_score,

  -- Weighted quality score model
  (
    (mrj.avg_mortality_score * 0.35) +
    (mrj.avg_readmission_score * 0.35) +
    (ec.effective_care_score * 0.20) +
    (pe.patient_exp_score * 0.10)
  ) AS combined_quality_score

FROM `sql-portfolio-project-478121.healthcare_data.hospitals_clean` h
LEFT JOIN `sql-portfolio-project-478121.healthcare_data.mortality_readmissions_join` mrj
  ON h.provider_id = mrj.provider_id
LEFT JOIN `sql-portfolio-project-478121.healthcare_data.effective_care_clean` ec
  ON h.provider_id = ec.provider_id
LEFT JOIN `sql-portfolio-project-478121.healthcare_data.patient_exp_clean` pe
  ON h.provider_id = pe.provider_id;
