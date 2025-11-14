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

- Rank hospitals nationally
- Rank hospitals by state
- Generate tier categories:
- A = High Performing
- B = Above Average
- C = Average
- D = Below Average
- F = Poor

## 4. Visualization
Google Sheets charts produced:
- Top 10 hospitals
- Bottom 10 hospitals
- State-level average quality score
- Quality tier distribution

## 5. Documentation
All code, charts, datasets, and analysis are saved in organized GitHub folders.

  
