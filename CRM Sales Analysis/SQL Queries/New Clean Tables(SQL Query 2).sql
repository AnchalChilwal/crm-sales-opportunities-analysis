--Creating cleaned table for each table--
--Table 1 Account_Clean--

DROP TABLE IF EXISTS Account_Clean
GO

CREATE TABLE Account_Clean(
Company_name VARCHAR(50) PRIMARY KEY,
Sector VARCHAR(50),
Year_established INT,
Revenue DECIMAL(20,2),
Employee_Count INT,
Office_location VARCHAR(50)
)

--Table 2 Product_Clean--
DROP TABLE IF EXISTS Product_Clean
GO
CREATE TABLE Product_Clean(
Product VARCHAR(50) PRIMARY KEY,
Series VARCHAR(10),
Price INT
)

--Table 3 SalesPipeline_Clean--
DROP TABLE IF EXISTS SalesPipeline_Clean
GO
CREATE TABLE SalesPipeline_Clean(
Opportunity_Id VARCHAR(50) PRIMARY KEY,
Sales_agent VARCHAR(50),
Product VARCHAR(50),
Company_name VARCHAR(50),
Deal_stage VARCHAR(50),
Engage_date DATE,
Close_date DATE,
Revenue INT
)

--Table 4 SalesTeam_Clean--
DROP TABLE IF EXISTS SalesTeam_Clean
GO
CREATE TABLE SalesTeam_Clean(
Sales_agent VARCHAR(50) PRIMARY KEY,
Manager VARCHAR(50),
Regional_office VARCHAR(50)
)














