# Data

This folder contains the CSV source used for data ingestion in the Power BI project.

## Ingestion file

| File | Purpose |
|---|---|
| `financial_loan_data.csv` | Main source file used to load and transform the loan dataset in Power BI |

## Data flow

1. Load `financial_loan_data.csv` into Power BI.
2. Clean and type the columns during Power Query ingestion.
3. Build the semantic model with the loan fact table, calendar table, and measures.
4. Use the model to power the summary, overview, and details pages.

## Folder structure

```text
data/
├── README.md
└── financial_loan_data.csv
```

## Core fields in the CSV

| Field | Meaning |
|---|---|
| `id` | Loan record identifier |
| `member_id` | Borrower identifier |
| `issue_date` | Loan issue date |
| `loan_status` | Current loan outcome |
| `purpose` | Loan purpose category |
| `grade` / `sub_grade` | Risk grade classification |
| `term` | Loan term length |
| `annual_income` | Borrower income |
| `dti` | Debt-to-income ratio |
| `int_rate` | Interest rate |
| `loan_amount` | Funded loan amount |
| `total_payment` | Total amount received |

## Supporting analysis columns

| Field | Meaning |
|---|---|
| `address_state` | Borrower state |
| `home_ownership` | Housing status |
| `emp_length` | Employment length |
| `emp_title` | Employment title |
| `verification_status` | Income verification flag |
| `total_acc` | Total credit accounts |
| `installment` | Monthly installment |
| `last_payment_date` | Last payment date |
| `next_payment_date` | Next expected payment date |
| `last_credit_pull_date` | Latest credit pull date |

## How this folder is used

The CSV in this folder is the starting point for the report model, DAX measures, and loan portfolio analysis.
