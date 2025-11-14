 # Hospital Quality SQL Analysis  
*A data analytics project integrating SQL, healthcare quality metrics, and mission-driven insight.*
---
## 🔎 Table of Contents
- [Overview](#overview)
  
- [Project Objectives](#project-objectives)
  
- [Repository Structure](#repository-structure)
  
- [Visuals](#visuals)
  
- [Technical Skills Demonstrated](#technical-skills-demonstrated)
  
- [Key Insights](#key-insights)
  
- [Values & Purpose](#values--purpose)
  
- [How to Reproduce](#how-to-reproduce-this-analysis)
  
- [Future Enhancements](#future-enhancements)
  
- [About Me](#about-me)
  
- [Thank You](#thank-you)

---

## 📌 Overview

This project analyzes national hospital performance using **Google BigQuery** and **advanced SQL**. It integrates multiple CMS datasets—mortality, readmissions, effective care, patient experience, and hospital profiles—to calculate a combined quality score and benchmark performance nationwide.

This work reflects both technical skill and personal purpose: a commitment to using data to improve transparency, outcomes, and quality of care for families and communities.

---

## 🎯 Project Objectives

- Clean, standardize, and transform hospital quality datasets
  
- Join mortality and readmission data into a unified evaluation model
  
- Compute a **combined quality score** across performance domains
  
- Rank the **Top 10** and **Bottom 10** hospitals nationally
  
- Summarize quality by state
  
- Visualize distribution of hospital performance tiers  

```text
## 📂 Repository Structure

hospital-quality-sql-analysis/
├── sql/
│   ├── 01_cleaning.sql
│   ├── 02_mortality_readmissions_join.sql
│   ├── 03_combined_quality_score.sql
│   ├── 04_rankings_top10.sql
│   ├── 05_rankings_bottom10.sql
│   ├── 06_state_level_summary.sql
│
├── data/
│   ├── hospitals.csv
│   ├── effective_care.csv
│   ├── mortality_measures.csv
│   ├── readmission_measures.csv
│   ├── patient_experience.csv
│
├── charts/
│   ├── Average Combined Quality Score by State.png
│   ├── Top 10 Hospitals by Combined Quality Score.png
│   ├── Bottom 10 Hospitals by Combined Quality Score.png
│   ├── Distribution of Hospitals by Quality Tier.png
│
└── docs/
    └── README.md
```

### ⭐ Top 10 Hospitals by Combined Quality Score
![Top 10 Hospitals](charts/top10hosp.png)

### ⭐ Bottom 10 Hospitals by Combined Quality Score
![Bottom 10 Hospitals](charts/Bot10Hosp.png)

### ⭐ Average Combined Quality Score by State
![Average State Score](charts/Avg%20Qual%20Scr.png)

### ⭐ Hospital Quality Tier Distribution
![Quality Tiers](charts/qual%20tier.png)

  **Insight:** Over 31% of hospitals fall within the “Average” tier, highlighting broad national opportunities for improvement in quality, consistency, and patient outcomes.
---

## 🔍 Key Insights

### ⭐ Wide Middle Tier  
31.3% of hospitals fall into the **C — Average** category, indicating national opportunity for improvement.

### ⭐ High Performers Are Consistent  
Top hospitals show strong alignment across mortality, readmission, and effective care indicators.

### ⭐ Underperformers Show Instability  
Bottom 10 hospitals exhibit scattered, inconsistent metrics that hint at deeper structural challenges.

### ⭐ State Scores Are Close  
Most states fall between **97–102**, meaning small clinical changes create meaningful ranking shifts.

---

## 💛 Values & Purpose

This project reflects my commitment to:  
- **Service** — using data to support patients & families
  
- **Integrity** — transparent healthcare evaluation
  
- **Equity** — identifying disparities in care
  
- **Impact** — driving decisions that improve real lives
  

As someone with experience in caregiving, operations, and educational advocacy, I believe data is a tool for justice and empowerment. This analysis is part of my journey in building a mission-driven analytics career.

---

## 🚀 How to Reproduce This Analysis

### Step 1 — Import CSVs into BigQuery  
Upload all files from the `/data` folder.

### Step 2 — Run SQL Scripts in Order

Run each script sequentially from the `/sql` folder:

1. [`01_cleaning.sql`](sql/01_cleaning.sql)
2. [`02_mortality_readmissions_join.sql`](sql/02_mortality_readmissions_join.sql)
3. [`03_combined_quality_score.sql`](sql/03_combined_quality_score.sql)
4. [`04_rankings_top10.sql`](sql/04_rankings_top10.sql)
5. [`05_rankings_bottom10.sql`](sql/05_rankings_bottom10.sql)
6. [`06_state_level_summary.sql`](sql/06_state_level_summary.sql)


### Step 3 — Export Final Tables  
Use BigQuery → Save Results → Google Sheets.

### Step 4 — Build Charts  
Recreate visuals using Sheets, Tableau, or Excel.

---

## 📘 Future Enhancements

- 📄 Full project PDF with narrative insights
  
- 📊 Interactive Tableau dashboard
  
- 🧠 Feature engineering for advanced quality scores
  
- 🩺 Patient experience + outcome correlation study


---

## 🙋‍♀️ About Me

I’m **Jessica Tolton**, a Data Analytics Fellow passionate about improving systems that care for people.  
With a background in caregiving, operational support, and family advocacy, I bring both analytical skill and human-centered purpose to healthcare analytics.

Connect with me:

- **LinkedIn:** https://www.linkedin.com/in/jessica-tolton  
- **Portfolio:** https://sites.google.com/view/jessica-tolton-data-portfolio  

---

## ⭐ Thank You

Thank you for reviewing my project.  
I hope these insights demonstrate both strong analytical capability and a mission-driven approach to supporting better care for families and communities.

