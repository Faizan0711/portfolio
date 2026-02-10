# Baseball Player Salary Prediction (Regression)

## Overview
This project builds an end-to-end regression model to predict baseball player salaries using performance statistics.

The primary goal is to identify a **parsimonious model** that:
- generalizes well to unseen data
- avoids overfitting
- uses the fewest meaningful predictors
- remains interpretable

## Dataset
- Player performance statistics (seasonal, career, defensive)
- Target variable: Salary
- Target transformation: log(Salary)

## Modeling Approach
1. Exploratory Data Analysis (EDA)
2. Target transformation to address skewness
3. Baseline Linear Regression
4. Multicollinearity diagnosis using VIF
5. Regularization:
   - Ridge Regression (variance control)
   - Lasso Regression (feature selection)
6. Final parsimonious linear model

## Final Model
- Model: Linear Regression (log-transformed target)
- Features used: 7
- Validation strategy: Train/Test split + Cross-Validation
- No evidence of overfitting

### Selected Features
- CHits
- Years
- Runs
- Hits
- Walks
- PutOuts
- Errors

## Results Summary

| Model | # Features | Test RMSE | Test R² |
|-----|-----------|----------|--------|
| Baseline Linear | ~16 | 0.569 | 0.450 |
| Ridge Regression | ~16 | 0.579 | 0.431 |
| Lasso Regression | 7 | 0.578 | 0.433 |
| **Final Parsimonious Model** | **7** | **0.577** | **0.434** |

## Key Takeaways
- Log-transforming salary significantly improved model stability
- Severe multicollinearity exists among career and season statistics
- Lasso effectively selected a compact, informative feature set
- Final model achieved similar performance with significantly lower complexity

## Limitations & Future Work
- Linear assumptions limit model flexibility
- Interaction effects not explored
- Market and contract-related factors not included

## Tools Used
- Python
- pandas, numpy
- scikit-learn
- statsmodels
