# COVID-19 Screening Model – Logistic Regression with False Negative Optimization

## 📌 Project Overview
This project presents an end-to-end machine learning pipeline for **COVID-19 screening**, built using **logistic regression** and optimized to **minimize false negatives**.

In healthcare screening scenarios, missing a COVID-positive patient can have severe public health consequences. Therefore, this model prioritizes **high sensitivity (recall)** over overall accuracy, explicitly trading off false positives to eliminate missed infections.

---

## 🎯 Objectives
- Predict COVID-19 test outcomes (Positive / Negative)
- Minimize **false negatives**
- Demonstrate **cost-sensitive classification**
- Showcase **threshold tuning** as a business decision
- Follow **industry-level ML best practices**

---

## 🗂 Dataset
- **Source:** Hospital Israelita Albert Einstein (Brazil)
- **Type:** Clinical laboratory test results
- **Target Variable:** `SARS-Cov-2 exam result`
- **Class Imbalance:** ~10% positive, ~90% negative

---

## 🧠 Key Methodology
- Leakage audit to remove post-diagnosis variables (ICU / ward admission)
- Missing-data strategy with explicit `not_tested` encoding
- Stratified **Train / Validation / Test** split
- Logistic Regression with **class weighting**
- Threshold sensitivity analysis to control false negatives

---

## 📊 Final Test Set Results (Selected Threshold = 0.15)

| Metric | Value |
|------|------|
| Recall (Positive) | **1.00** |
| False Negatives | **0** |
| Precision (Positive) | ~0.10 |
| PR-AUC | 0.18 |

> The model successfully eliminated false negatives on the test set, demonstrating suitability as a **screening or triage support tool**.

---

## 📈 Threshold Sensitivity
Thresholds between **0.05 and 0.20** maintained perfect recall while steadily reducing false positives, allowing operational flexibility depending on hospital capacity.

---

## 📁 Repository Contents
- `notebooks/` → End-to-end modeling notebook
- `reports/` → Model card, data dictionary, and findings
- `requirements.txt` → Python dependencies

---

## ⚠️ Limitations
- High false-positive rate (expected for screening models)
- Single-institution dataset
- Not intended as a standalone diagnostic system

---

## 🚀 Future Improvements
- Probability calibration
- Two-stage screening pipeline
- External validation on multi-hospital data
- Cost-based threshold optimization

---

## 👤 Author
**Mohamed Ali Faizan Syed**  
Data Analytics & Machine Learning  
📍 Canada

