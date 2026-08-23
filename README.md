# Bank Loan Analysis Dashboard

Power BI portfolio project for analyzing loan performance, risk, borrower behavior, and portfolio trends across time, geography, and loan segments.

## Why this project matters

This project is strongest when it shows more than visuals. To impress recruiters, it should demonstrate:

- Clean data modeling and reusable DAX
- Clear business storytelling from KPIs to insights
- Strong report navigation and user experience
- Real portfolio, risk, and borrower segmentation analysis
- Professional documentation and presentation

## Power BI skills demonstrated

| Skill area | What to show |
|---|---|
| **Data modeling** | Proper relationships, date table, and star-schema style design |
| **DAX** | Named measures for KPIs, ratio calculations, trend measures, and segmentation logic |
| **Visual design** | Consistent theme, aligned layout, readable KPI cards, and purposeful color choices |
| **UX** | Drillthrough, tooltips, bookmarks, navigation buttons, and page flow |
| **Analytics** | Good vs bad loans, trend analysis, borrower profiling, and risk monitoring |
| **Performance** | Efficient measures, reduced visual clutter, and optimized summary tables |
| **Documentation** | Clear README, data dictionary, measure list, and insight notes |

## Report pages

| Page | Purpose |
|---|---|
| **Summary** | High-level KPI cards and good/bad loan split |
| **Overview** *(spelled `Overveiw` in the PBIX)* | Portfolio analysis by month, state, term, employment length, purpose, and home ownership |
| **Details** | Record-level table with filters for deep inspection |

## KPI logic

The report is based on the query document included in this repo and uses measures such as:

- Total Loan Applications
- Total Funded Amount
- Total Amount Received
- Average Interest Rate
- Average DTI
- Good Loan Percentage / Bad Loan Percentage
- Good Loan Applications / Bad Loan Applications
- Good Loan Funded Amount / Bad Loan Funded Amount
- Good Loan Amount Received / Bad Loan Amount Received

## Data dimensions used

- Loan status
- Issue date
- State
- Term
- Employment length
- Purpose
- Home ownership

## Design notes

- Dark dashboard theme for a premium finance-style look
- Fluent 2 theme package
- USA state shape map for geography analysis
- Slicers and drill-friendly report structure

##[TODO] What to improve

| Area | Improvement to add |
|---|---|
| **Modeling** | Add a proper calendar table and use it for month-to-date, year-to-date, and trend logic |
| **Measures** | Move all KPI logic into explicit DAX measures instead of relying on visual-level calculations |
| **Navigation** | Add a home page, page navigator, and bookmark-driven buttons |
| **Insights** | Add a dedicated insights page with short written takeaways from the visuals |
| **Risk analysis** | Add delinquency, charge-off, collection-rate, and risk banding KPIs |
| **Borrower analysis** | Add income band, grade/subgrade, and ownership segmentation |
| **Interactivity** | Add drillthrough, custom tooltips, and a few what-if parameters |
| **Documentation** | Add a data dictionary, measure glossary, and a short methodology section |

##[TODO] Best portfolio upgrades to add next

1. Add a **Home** page with navigation buttons and a project summary.
2. Create a **Date table** and use it for all time intelligence.
3. Build a **Measures table** and move KPI logic into reusable DAX measures.
4. Add **Drillthrough** pages for borrower and loan-level analysis.
5. Add **Tooltips** that show extra context for charts and maps.
6. Create an **Insights** page with 5-7 business conclusions.
7. Add a **Risk** page with delinquency and collection metrics.
8. Add a **Data Dictionary** so recruiters can see your modeling discipline.

## Repository content

```text
README.md
project_images/screenshots/
├── summary-page.svg
├── overview-page.svg
├── details-page.svg
├── risk-analysis.svg
├── insights-page.svg
└── README.md
power_bi_code/
├── bank loan data-dashboard.pbix
└── BANK LOAN REPORT - QUERY DOCUMENT.docx
```

## How to use

1. Open `power_bi_code/bank loan data-dashboard.pbix` in **Power BI Desktop**
2. Review `power_bi_code/BANK LOAN REPORT - QUERY DOCUMENT.docx` for the KPI logic and groupings
3. Refresh or replace the dataset if needed
4. Export dashboard screenshots and replace the placeholder files in `project_images/screenshots/`
5. Keep the same screenshot names so the README preview links stay valid

## Dashboard preview

Replace the placeholder files below with your real dashboard screenshots:

![Summary](project_images/screenshots/summary-page.svg)
![Overview](project_images/screenshots/overview-page.svg)
![Details](project_images/screenshots/details-page.svg)
![Risk Analysis](project_images/screenshots/risk-analysis.svg)
![Insights](project_images/screenshots/insights-page.svg)

## Suggested GitHub presentation

Present the project like a product page:

**Bank Loan Analysis Dashboard**  
Power BI analytics project for portfolio monitoring, loan quality tracking, and borrower segmentation.

Add these sections near the top of your repo:

1. Short project summary
2. Dashboard preview images
3. Business questions answered
4. KPI / measure logic
5. Report page breakdown
6. How to open and use the PBIX file
7. What Power BI skills this project demonstrates

## What to replace

- Replace each `.svg` placeholder in `project_images/screenshots/` with a `.png` export from Power BI
- Keep the same base filenames if you want the README links to remain unchanged
- If you prefer, you can keep the `.svg` placeholders and simply add your final screenshots alongside them

## Business questions answered

- How many loan applications were received?
- How much capital was funded and how much was collected?
- What portion of loans are good vs bad?
- Which states generate the most loan activity?
- How do term, purpose, and employment length affect loan behavior?

## Future enhancements

- Add monthly and year-over-year comparison
- Add borrower segmentation by income band and credit risk
- Add a dedicated insights page with written findings
- Add exported dashboard images to the repo for a stronger GitHub landing page
- Add a data dictionary and measure glossary
- Add drillthrough, tooltips, and bookmark navigation

## Extra pages I would add

1. **Insights** — executive takeaways and anomalies.
2. **Risk Analysis** — delinquency, charge-off, and portfolio quality trends.
3. **Borrower Profile** — income, grade, employment, and home ownership breakdowns.
4. **Collections** — payment behavior, recovery, and monthly collection rate.
5. **Data Dictionary** — column definitions and KPI formulas.
