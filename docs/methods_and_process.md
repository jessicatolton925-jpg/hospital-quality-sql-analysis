# Methods & Data Process

This project follows a structured analytical workflow designed for healthcare quality evaluation.

## 1. Data Ingestion
Datasets imported into BigQuery:
- `hospitals.csv`
- `mortality_measures.csv`
- `readmission_measures.csv`
- `effective_care.csv`
- `patient_experience.csv`

## 2. Data Cleaning
Actions applied:
- Standardized hospital names and IDs
- Removed facilities with missing quality indicators
- Converted text ratings to numeric scales
- Filtered out specialty-only hospitals
- Removed unused columns

## 3. SQL Transformations
A series of SQL queries were used to:
- Merge datasets using hospital ID
- Convert quality ratings into numeric scores
- Compute a combined quality score:
  
