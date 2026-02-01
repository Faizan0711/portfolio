# Model Risk Report – Credit Risk Monitoring
## Summary
- Latest batch: **batch_5**
- ROC-AUC: **0.727** | F1: **0.748**
- Mean predicted risk: **0.637** | 95th pct risk: **0.893**

## Drift Findings (PSI)
- **LIMIT_BAL**: PSI=0.103 → **moderate**
- **AGE**: PSI=0.018 → **low**
- **UTILIZATION_RATE**: PSI=0.634 → **high**
- **PAY_DELAY_MONTHS**: PSI=0.147 → **moderate**

## Statistical Shift (KS test p-values)
- **LIMIT_BAL**: p-value=0.0012
- **AGE**: p-value=0.9816
- **UTILIZATION_RATE**: p-value=0.0000
- **PAY_DELAY_MONTHS**: p-value=0.0000

## Recommended Action
- **Investigate & monitor**: high drift detected, but performance impact unclear.
