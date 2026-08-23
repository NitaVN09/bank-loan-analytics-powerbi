-- Sample validation queries for portfolio analysis

SELECT loan_status, COUNT(*) AS loan_count
FROM bank_loan_data
GROUP BY loan_status
ORDER BY loan_count DESC;

SELECT purpose, COUNT(*) AS application_count
FROM bank_loan_data
GROUP BY purpose
ORDER BY application_count DESC;

SELECT term, AVG(int_rate) AS avg_interest_rate
FROM bank_loan_data
GROUP BY term
ORDER BY term;

SELECT strftime('%Y-%m', issue_date) AS issue_month, SUM(loan_amount) AS funded_amount
FROM bank_loan_data
GROUP BY strftime('%Y-%m', issue_date)
ORDER BY issue_month;
