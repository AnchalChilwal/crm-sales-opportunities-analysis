--DATA PREPARATION & DATA QUALITY ASSESSMENT--
--TABLE 1-Accounts--
--Data Overview--
SELECT * FROM accounts

--Primary Key Check--
SELECT account,
COUNT(*) AS Total
FROM accounts
GROUP BY account
HAVING COUNT(*) >1

--Null Check(Primary Key)--
SELECT * FROM accounts
WHERE account IS NULL

--Column Profiling--
--Finding distinct values and nulls in sector column--
SELECT DISTINCT(sector) AS Unique_sectors
FROM accounts

--Finding distinct values and nulls for year column--
SELECT DISTINCT(year_established) AS Unique_years
FROM accounts

--Rounding revenue to 2 decimal places for consistency--
SELECT ROUND(revenue,2) AS revenue
FROM accounts

--Finding distinct office locations--
SELECT DISTINCT(office_location) AS office_location
FROM accounts

--Finding distinct values in subsidiary column--
SELECT DISTINCT(subsidiary_of) AS Unique_subsidiary
FROM accounts

--Finding how many rows have null--
SELECT COUNT(*) AS Total
FROM accounts
WHERE Subsidiary_of IS NULL

--TABLE 2-Products--
--Data Overview--
SELECT * FROM products

--Table 3-Sales_Pipeline--
--Data Overview--
SELECT *FROM sales_Pipeline

--Primary Kry Check--
SELECT opportunity_id,
COUNT(*) AS Total
FROM Sales_Pipeline
GROUP BY opportunity_id
HAVING COUNT(*)>1

--Null Check(Primary Key)--
SELECT opportunity_id
FROM Sales_Pipeline
WHERE opportunity_id IS NULL

--Identifying distinct values and nulls in sales_agent column--
SELECT DISTINCT(sales_agent)
FROM Sales_Pipeline

--Identifying distinct values and nulls in product column--
SELECT DISTINCT(product)
FROM Sales_Pipeline

--Column Profiling--
--Identifying distinct values in account column--
SELECT DISTINCT(account)
FROM Sales_Pipeline

--Finding null counts for account column--
SELECT COUNT(*) AS NullCounts
FROM Sales_Pipeline
WHERE account IS NULL

--Identifying distinct values in deal stage column--
SELECT DISTINCT(deal_stage)
FROM Sales_Pipeline

--Identifying nullcount in date column--
SELECT COUNT(*) AS NullCount
FROM Sales_Pipeline
WHERE engage_date IS NULL

--Identifying nullcount in close_date column--
SELECT COUNT(*) AS NullCount
FROM Sales_Pipeline
WHERE close_date IS NULL

--Identifying nullcount in close_value column--
SELECT COUNT(*) AS NullCount
FROM Sales_Pipeline
WHERE close_value IS NULL

--Table 4 Sales_Team
--Data Overview--
SELECT * FROM sales_teams

--Primary Key Check--
SELECT sales_agent,
COUNT(*) AS Total
FROM sales_teams
GROUP BY sales_agent
HAVING COUNT(*)>1

--Null Check(Primary Key)--
SELECT *
FROM sales_teams
WHERE sales_agent IS NULL

--Column Profiling--
--Identifying distinct managers in manager column--
SELECT DISTINCT(manager) AS distinct_managers
FROM sales_teams

--Identifying distinct location in regional office  column--
SELECT DISTINCT(regional_office) AS distinct_regions
FROM sales_teams






