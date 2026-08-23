# Bank Loan Analysis Dashboard

Power BI portfolio case study for monitoring loan issuance, portfolio risk, borrower behavior, and collections performance.

## Executive summary

This project should show recruiters that you can do more than build visuals. It should demonstrate business thinking, model design, DAX depth, and polished report UX.

### What the dashboard answers

- How much capital was funded and collected?
- How many loans are good vs bad?
- Which borrower segments drive the portfolio?
- How do term, purpose, and geography affect risk?

## Sample business insights

Use the following as portfolio-style insights and replace them with your exact values from the report if needed:

- **86.18%** of issued loans are **Good Loans** (Fully Paid / Current), representing about **$370M** in funded capital.
- **Debt Consolidation** accounts for more than **47%** of total loan applications.
- **60-month** loans carry a higher average interest rate than **36-month** loans.
- Loan quality, term length, and purpose distribution together tell a clear risk story for the portfolio.

## Power BI skills demonstrated

| Skill area | What this project should show |
|---|---|
| **Data modeling** | Star-schema style design, clean relationships, and a calendar table |
| **DAX** | Reusable measures, time intelligence, and conditional logic |
| **Visual design** | Consistent theme, aligned layout, and clear KPI hierarchy |
| **UX** | Drillthrough, bookmarks, tooltips, and navigation buttons |
| **Analytics** | Good vs bad loans, trends, borrower segments, and risk views |
| **Documentation** | Data dictionary, measure catalog, and insight summary |
| **Version control** | PBIP-style file structure for Git-friendly development |

## Advanced DAX and data architecture

Keep all measures in a dedicated `_Measures` table and use a proper `Calendar` table for time intelligence.

```dax
Total Applications =
COUNTROWS(bank_loan_data)
```

```dax
MTD Total Funded Amount =
CALCULATE(
    SUM(bank_loan_data[loan_amount]),
    DATESMTD('Calendar'[Date])
)
```

```dax
Good Loan % =
DIVIDE(
    CALCULATE(
        [Total Applications],
        bank_loan_data[loan_status] IN {"Fully Paid", "Current"}
    ),
    [Total Applications]
)
```

```dax
PMTD Total Funded Amount =
CALCULATE(
    [Total Funded Amount],
    DATEADD('Calendar'[Date], -1, MONTH)
)
```

## Report pages

| Page | Purpose |
|---|---|
| **Summary** | KPI cards, good vs bad loan split, headline portfolio metrics |
| **Overview** | Monthly trends, geography, purpose, term, and employment analysis |
| **Details** | Record-level table with filters for deep inspection |

## What to improve to look senior-level

1. Add a **Home** page with navigation buttons.
2. Add a **Calendar** table and use it for all time intelligence.
3. Move all metrics into a dedicated **_Measures** table.
4. Add **Drillthrough** pages for loan and borrower analysis.
5. Add **Tooltips** for state, purpose, and risk visuals.
6. Create an **Insights** page with 5 to 7 written takeaways.
7. Add **Collections** and **Risk** views with delinquency-style metrics.
8. Include a **Data Dictionary** and a **Measure Glossary**.

## Recommended portfolio folder structure

| Folder / file | Purpose |
|---|---|
| `project_images/screenshots/` | Current dashboard screenshots used in the README |
| `assets/` | High-res screenshots, GIF walkthroughs, and final presentation media |
| `data/` | Data dictionary and sample source extracts |
| `dax/` | Plain-text export of core DAX measures |
| `sql/` | Data validation and reconciliation queries |
| `power_bi_code/` | Existing PBIX file and query document |

## How to use

1. Open `power_bi_code/bank loan data-dashboard.pbix` in **Power BI Desktop**.
2. Review `power_bi_code/BANK LOAN REPORT - QUERY DOCUMENT.docx` for the current logic.
3. Export final screenshots into `project_images/screenshots/` or `assets/`.
4. Replace the sample DAX and SQL files with your own exported logic if available.
5. If you migrate to **PBIP**, keep the project in a Git-friendly folder structure.

## LinkedIn post structure

1. **Headline:** Automating Financial Risk & Loan Portfolio Tracking with Power BI and DAX
2. **Problem:** Manual portfolio tracking makes risk and MTD monitoring slow.
3. **Solution:** Star schema model, DAX time intelligence, and interactive report navigation.
4. **Media:** Add a short screen recording showing slicers, map selection, and drillthrough.
5. **CTA:** Link directly to your GitHub repository.

## Future enhancements

- Add a dedicated **Insights** page
- Add **borrower segmentation** by income band and credit risk
- Add **monthly and year-over-year** comparisons
- Add **exported screenshots** and a short GIF walkthrough in `assets/`
- Add a **PBIP** version of the project for modern version control
