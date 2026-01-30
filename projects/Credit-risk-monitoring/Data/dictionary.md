# 📘 Data Dictionary – Credit Risk Dataset

## Overview
This dataset represents anonymized credit card customer information used to predict **default risk**.  
It is designed to support **model training, monitoring, drift detection, and risk reporting** workflows.

---

## Target Variable

| Column Name | Type | Description |
|-----------|------|------------|
| `default` | Binary (0/1) | Indicates whether the customer defaulted on payment in the following month (1 = Default, 0 = No Default) |

---

## Feature Definitions

### Customer Demographics

| Column Name | Type | Description |
|-----------|------|------------|
| `AGE` | Integer | Age of the customer in years |
| `SEX` | Categorical | Gender of the customer (1 = Male, 2 = Female) |
| `EDUCATION` | Categorical | Education level (1 = Graduate, 2 = University, 3 = High School, 4 = Other) |
| `MARRIAGE` | Categorical | Marital status (1 = Married, 2 = Single, 3 = Other) |

---

### Credit & Financial Behavior

| Column Name | Type | Description |
|-----------|------|------------|
| `LIMIT_BAL` | Numeric | Credit limit assigned to the customer |
| `UTILIZATION_RATE` | Numeric (0–1) | Ratio of used credit to available credit |
| `PAY_DELAY_MONTHS` | Integer | Average number of months payment is delayed |

---

## Data Quality Notes
- No personally identifiable information (PII) is included
- Distributions are designed to reflect realistic financial behavior
- Dataset includes both numerical and categorical variables for modeling and monitoring
- Suitable for logistic regression and tree-based models

---

## Intended Use
This dataset is intended for:
- Credit risk modeling
- Model performance monitoring
- Data drift detection (PSI, KS tests)
- Fairness and compliance analysis
- Model risk reporting

---

## Limitations
- Does not include external economic factors
- Does not include transaction-level history

---


