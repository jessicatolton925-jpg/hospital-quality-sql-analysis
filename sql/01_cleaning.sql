-- 01_cleaning.sql
-- Data Cleaning & Preparation for Hospital Quality Analysis
-- Author: Jessica Tolton
-- Description: Standardizes column formats, removes nulls,
--              and prepares clean base tables for downstream joins.

-- 1. Inspect source tables
SELECT * FROM `project.hospital_data` LIMIT 20;
SELECT * FROM `project.mortality_data` LIMIT 20;
SELECT * FROM `project.readmissions_data` LIMIT 20;

-- 2. Remove null or invalid hospital names
CREATE OR REPLACE TABLE `project.cleaned_hospital_data` AS
SELECT *
FROM `project.hospital_data`
WHERE hospital_name IS NOT NULL
  AND TRIM(hospital_name) != "";

-- 3. Standardize state codes to uppercase
CREATE OR REPLACE TABLE `project.cleaned_hospital_data` AS
SELECT
  hospital_name,
  UPPER(state) AS state,
  CAST(mortality_score AS FLOAT64) AS mortality_score,
  CAST(readmission_score AS FLOAT64) AS readmission_score
FROM `project.cleaned_hospital_data`;

-- 4. Remove rows with missing numeric values
CREATE OR REPLACE TABLE `project.cleaned_hospital_data` AS
SELECT *
FROM `project.cleaned_hospital_data`
WHERE mortality_score IS NOT NULL
  AND readmission_score IS NOT NULL;
