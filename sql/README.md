# SQL

This folder contains SQL validation queries used to check the ingested loan data before it is modeled in Power BI.

## File included

| File | Purpose |
|---|---|
| `Data_Validation_Queries.sql` | Validation queries for loan status, purpose, term, and monthly funded amount |

## What the SQL file does

The query file is used to verify the raw loan dataset before it is loaded into the report model.

### Queries included

| Query | Purpose |
|---|---|
| `GROUP BY loan_status` | Counts loans by status for Good vs Bad loan validation |
| `GROUP BY purpose` | Checks application counts by loan purpose |
| `AVG(int_rate) BY term` | Compares interest-rate behavior across loan terms |
| `SUM(loan_amount) BY month` | Validates monthly funded amount trends |

## How this supports the Power BI project

- Confirms that the CSV ingestion data is structurally sound
- Helps compare SQL totals with Power BI measures
- Supports KPI trust before building visuals
- Connects raw data inspection with the semantic model

## Suggested workflow

1. Load the CSV source into the data layer.
2. Run these SQL validation queries.
3. Check the output against Power BI totals.
4. Use the verified data in the report model and DAX measures.
