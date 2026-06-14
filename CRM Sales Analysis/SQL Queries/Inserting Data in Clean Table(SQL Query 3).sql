--Inserting data in clean tables--
--Table 1 Account_Clean--
INSERT INTO Account_Clean(
Company_name,
Sector,
Year_established,
Revenue,
Employee_Count,
Office_Location
)
SELECT 
account,
sector,
year_established,
revenue,
employees,
office_location
FROM accounts

--Table 2 Product_Clean
INSERT INTO Product_Clean(
Product,
Series,
Price
)
SELECT 
product,
series,
sales_price
FROM products

--Table 3 SalesPipeline_Clean--
select*from sales_pipeline
select * from SalesPipeline_Clean
INSERT INTO SalesPipeline_Clean(
Opportunity_Id,
Sales_agent,
Product,
Company_name,
Deal_stage,
Engage_date,
Close_date,
Revenue
)
SELECT
opportunity_id,
sales_agent,
product,
CASE WHEN account IS NULL THEN 'Unknown'
ELSE account
END AS Company_name,
deal_stage,
engage_date,
close_date,
close_value
FROM sales_pipeline

--Table 4 SalesTeam_Clean--
SELECT * FROM sales_teams
SELECT * FROM SalesTeam_Clean
INSERT INTO SalesTeam_Clean(
Sales_agent,
Manager,
Regional_office
)
SELECT 
sales_agent,
manager,
regional_office
FROM sales_teams

select * from sales_pipeline