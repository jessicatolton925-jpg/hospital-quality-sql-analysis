-- 01_cleaning.sql

-- Clean hospitals table
CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.hospitals_clean` AS
SELECT
  CAST(provider_id AS INT64) AS provider_id,
  hospital_name,
  address,
  city,
  state,
  zip_code,
  hospital_type,
  hospital_ownership
FROM `sql-portfolio-project-478121.healthcare_data.hospitals`;

-- Clean mortality table
CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.mortality_clean` AS
SELECT
  CAST(provider_id AS INT64) AS provider_id,
  measure_name,
  score AS mortality_score
FROM `sql-portfolio-project-478121.healthcare_data.mortality_measures`;

-- Clean readmission table
CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.readmission_clean` AS
SELECT
  CAST(provider_id AS INT64) AS provider_id,
  measure_name,
  score AS readmission_score
FROM `sql-portfolio-project-478121.healthcare_data.readmission_measures`;

-- Clean effective care table
CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.effective_care_clean` AS
SELECT
  CAST(provider_id AS INT64) AS provider_id,
  measure_id,
  score AS effective_care_score
FROM `sql-portfolio-project-478121.healthcare_data.effective_care`;

-- Clean patient experience table
CREATE OR REPLACE TABLE `sql-portfolio-project-478121.healthcare_data.patient_exp_clean` AS
SELECT
  CAST(provider_id AS INT64) AS provider_id,
  score AS patient_exp_score
FROM `sql-portfolio-project-478121.healthcare_data.patient_experience`;
