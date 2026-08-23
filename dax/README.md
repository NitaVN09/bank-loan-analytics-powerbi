# DAX

This folder contains the reusable DAX measures that power the report KPIs, loan-quality logic, and time intelligence.

## File included

| File | Purpose |
|---|---|
| `Power_BI_Measures.dax` | Core measure export for portfolio KPIs, loan-quality analysis, and monthly comparisons |

## What this file includes

| Measure | Purpose |
|---|---|
| `Total Applications` | Counts total loan applications |
| `Total Funded Amount` | Sums funded loan amount |
| `Total Amount Received` | Sums repayment received |
| `Average Interest Rate` | Calculates average loan interest rate |
| `Average DTI` | Calculates average debt-to-income ratio |
| `Good Loan Applications` | Counts loans with `Fully Paid` or `Current` status |
| `Bad Loan Applications` | Counts loans with `Charged Off` status |
| `Good Loan %` | Measures the share of good loans |
| `Bad Loan %` | Measures the share of bad loans |
| `MTD Total Funded Amount` | Month-to-date funded amount using the calendar table |
| `PMTD Total Funded Amount` | Previous-month funded amount for comparison |

## What this folder shows

- A measure-driven design instead of visual-level calculations
- Loan-quality classification built directly into DAX
- Time-intelligence logic using a dedicated `Calendar` table
- A clean export of the main calculations used by the Power BI report

## Modeling dependency

These measures depend on the report model having:

- A `bank_loan_data` fact table
- A `Calendar` date table
- A relationship between `bank_loan_data[issue_date]` and `Calendar[Date]`
