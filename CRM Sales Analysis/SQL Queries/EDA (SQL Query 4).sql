--Exploratory  Data Analysis--
--Key Metrics--
--1.Account & Company Overview
--Total Companies--
SELECT COUNT(*) AS Total_Comapnies
FROM Account_Clean

--Total Sector--
SELECT COUNT(DISTINCT(Sector))AS Total_Sectors
FROM Account_Clean

--Companies by sector--
SELECT Sector,
COUNT(Company_name) AS Total_Companies
FROM Account_Clean
GROUP BY Sector
ORDER BY Total_Companies DESC

--Oldest and latest year--
SELECT MAX(Year_established) AS Latest_Year,MIN(Year_established) AS Oldest_Year
FROM Account_Clean

--2.Revenue Overview(Accounts)
--Total Revenue--
SELECT SUM(Revenue) As Total_Revenue
FROM Account_Clean

--Total Revenue by sector--
SELECT Sector,
SUM(Revenue) AS Total_Revenue
FROM Account_Clean
GROUP BY Sector
ORDER BY Total_Revenue DESC

--Average Revenue--
SELECT AVG(Revenue) AS Avg_Revenue
FROM Account_Clean

--Average Revenue by sector--
SELECT Sector,
AVG(Revenue) AS Avg_Revenue
FROM Account_Clean
GROUP BY Sector
ORDER BY Avg_Revenue DESC

--Revenue by location--
SELECT Office_location,
SUM(Revenue) AS Total_Revenue
FROM Account_Clean
GROUP BY Office_location
ORDER BY Total_Revenue DESC

--3.Employee Overview--
--Total Employees--
SELECT SUM(Employee_Count) AS Total_Employees
FROM Account_Clean

--Average Empolyees--
SELECT AVG(Employee_Count) AS Avg_Employees
FROM Account_Clean

--Employees distribution by sector--
SELECT Sector,SUM(Employee_Count) AS Total_Employees
FROM Account_Clean
GROUP BY Sector
ORDER BY Total_Employees DESC

--Employee distribution by office location--
SELECT Office_location,
SUM(Employee_Count) AS Total_Employees
FROM Account_Clean
GROUP BY Office_location


--4.Product Overview--
--Total Products--
SELECT COUNT(Product) AS Total_Products
FROM Product_Clean

--5.SalesPipeline Overview--
--Total Opportunities--
SELECT COUNT(Opportunity_Id) AS Total
FROM SalesPipeline_Clean

--Total Salesagents--
SELECT COUNT(DISTINCT(Sales_agent)) AS Totalagents
FROM SalesPipeline_Clean
 
--Total Opportunity Revenue--
SELECT SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean

--Average Opportunity Revenue--
SELECT AVG(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean

--Sales agent generating highest revenue--
SELECT Sales_agent,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
GROUP BY Sales_agent
ORDER BY Total_Revenue DESC

--Which sales person selling which product--
SELECT Sales_agent,
Product,
COUNT(*) AS Total_deals
FROM SalesPipeline_Clean
GROUP BY Sales_agent,Product
ORDER BY Sales_agent,Product


--6.Sales Team Overview--
--Total Sales Agents--
SELECT COUNT(DISTINCT(Sales_agent)) AS Total_Sales_agent
FROM SalesTeam_Clean

--Total Managers--
 SELECT COUNT(DISTINCT(Manager)) AS Total_Managers
 FROM SalesTeam_Clean

--Sales_agent and their manager--
 SELECT Manager,
 COUNT(DISTINCT Sales_agent) AS Total_Agents
FROM SalesTeam_Clean
GROUP BY Manager
ORDER BY Total_Agents DESC

 --Sales agent and their product sold--
SELECT Sales_agent,Product,
COUNT(*) AS Total_Deals
FROM SalesPipeline_Clean
GROUP BY Sales_agent, Product
ORDER BY Sales_agent, Product

--7. Pipeline Deal Stage Overview--
 --Won Deals--
 SELECT COUNT(Deal_stage) AS Total_WonCount
 FROM SalesPipeline_Clean
 WHERE Deal_stage='Won'

--Lost Deals--
 SELECT COUNT(Deal_stage) AS Total_LostCount
 FROM SalesPipeline_Clean
 WHERE Deal_stage='Lost'

 --Prospecting Deals--
 SELECT COUNT(Deal_stage) AS Total_ProspectingCount
 FROM SalesPipeline_Clean
 WHERE Deal_stage='Prospecting'

 --Engaging Deals--
 SELECT COUNT(Deal_stage) AS Total_EngagingCount
 FROM SalesPipeline_Clean
 WHERE Deal_stage='Engaging'

 --8.Revenue by Deal Stage and Product--
 --Revenue by product--
SELECT Product,
SUM(Revenue) as Total_Revenue
FROM SalesPipeline_Clean
GROUP BY Product
ORDER BY Total_Revenue DESC

 --Revenue by won count--
SELECT Product,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
WHERE Deal_stage ='Won'
GROUP BY Product
ORDER BY Total_Revenue DESC

--Revenue by lost count--
SELECT Product,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
WHERE Deal_stage ='Lost'
GROUP BY Product
ORDER BY Total_Revenue DESC

 --Revenue by prospecting count--
SELECT Product,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
WHERE Deal_stage ='Prospecting'
GROUP BY Product
ORDER BY Total_Revenue DESC

--Revenue by engaging count--
SELECT Product,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
WHERE Deal_stage ='Engaging'
GROUP BY Product
ORDER BY Total_Revenue DESC

--OBJECTIVE ANALYSIS--
--1.How is each sales team performing compared to the rest?--
--Revenue by Manager--
 SELECT t.Manager,
SUM(s.Revenue) AS Total_Revenue
FROM SalesPipeline_Clean s
INNER JOIN SalesTeam_Clean t
ON s.Sales_agent=t.Sales_agent
GROUP BY t.Manager
ORDER BY Total_Revenue DESC

--Won deal count--
SELECT t.Manager,
COUNT(*) AS Won_Count
FROM SalesPipeline_Clean s
INNER JOIN  SalesTeam_Clean t
ON s.Sales_agent=t.Sales_agent
WHERE s.Deal_stage='Won'
GROUP BY t.Manager
ORDER BY Won_Count DESC

--Revenue for Won deal--
SELECT t.Manager,
SUM(Revenue) AS Won_Revenue
FROM SalesPipeline_Clean s
INNER JOIN SalesTeam_Clean t
ON s.Sales_agent=t.Sales_agent
WHERE s.Deal_stage='Won'
GROUP BY t.Manager 
ORDER BY Won_Revenue DESC

--Manager Win Rate--
SELECT t.Manager,
COUNT(*) AS Total_deals,
SUM(CASE WHEN s.Deal_stage ='Won' THEN 1 ELSE 0 END) AS Won_Count,
CONCAT(CAST(SUM(CASE WHEN s.Deal_stage ='Won' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS DECIMAL(10,2)),'%') AS Win_Rate
FROM SalesPipeline_Clean s
INNER JOIN SalesTeam_Clean t
ON s.Sales_agent=t.Sales_agent
GROUP BY t.Manager
ORDER BY Win_Rate DESC

--Lost deal count--
SELECT t.Manager,
COUNT(*) AS Lost_Count
FROM SalesPipeline_Clean s
INNER JOIN SalesTeam_Clean t
ON s.Sales_agent=t.Sales_agent
WHERE s.Deal_stage='Lost'
GROUP BY t.Manager
ORDER BY Lost_Count DESC

--Avg deal closure days by Manager--
SELECT t.Manager,
AVG(CAST(DATEDIFF(day, Engage_date, Close_date) AS DECIMAL(10,2))) AS Deal_days
FROM SalesPipeline_Clean s
INNER JOIN SalesTeam_Clean t
ON s.Sales_agent=t.Sales_agent
GROUP BY t.Manager
ORDER BY Deal_days DESC

--2.Are any sales agents lagging behind?--
--Revenue by sale agent--
SELECT Sales_agent,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
GROUP BY Sales_agent
ORDER BY Total_Revenue DESC

--Won Count by sales agent--
SELECT Sales_agent,
COUNT(*) AS Won_Count
FROM SalesPipeline_Clean
WHERE Deal_stage='Won'
GROUP BY Sales_agent
ORDER BY Won_Count DESC

--Revenue by won count--
SELECT Sales_agent,
SUM(Revenue) AS Won_Revenue
FROM SalesPipeline_Clean
WHERE Deal_stage='Won'
GROUP BY Sales_agent
ORDER BY Won_Revenue DESC

--Lost deal count--
SELECT Sales_agent,
COUNT(*) AS Lost_Count
FROM SalesPipeline_Clean
WHERE Deal_stage='Lost'
GROUP BY Sales_agent
ORDER BY Lost_Count DESC

--Sales agent Win Rate--
SELECT Sales_agent,
COUNT(*) AS Total_deals,
SUM(CASE WHEN Deal_stage='Won' THEN 1 ELSE 0 END) AS Won_Count,
CONCAT(CAST(SUM(CASE WHEN Deal_stage='Won' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS DECIMAL(10,2)),'%') AS Win_Rate
FROM SalesPipeline_Clean 
GROUP BY  Sales_agent
ORDER BY Win_Rate DESC

--Average deal closure days by sales agent--
SELECT Sales_agent,AVG(CAST(DATEDIFF(day, Engage_date, Close_date) AS DECIMAL(10,2))) AS Deal_days
FROM SalesPipeline_Clean
GROUP BY Sales_agent
ORDER BY Deal_days DESC

--3.Are there any quarter-over-quarter trends?--
--Revenue by quarter--
SELECT 
DATEPART(Year, Close_date) AS Year,
DATEPART(Quarter,Close_date) AS Quarter,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
GROUP BY DATEPART(Year,Close_date),DATEPART(Quarter,Close_date)
ORDER BY Total_Revenue DESC

--Won Count by quarter--
SELECT DATEPART(Year, Close_date) AS Year,
DATEPART(Quarter,Close_date) AS Quarter,
COUNT(*) AS Won_Count
FROM SalesPipeline_Clean
WHERE Deal_stage='Won'
GROUP BY DATEPART(Year,Close_date),DATEPART(Quarter,Close_date)
ORDER BY Won_Count DESC

--Won Revenue--
SELECT DATEPART(Year, Close_date) AS Year,
DATEPART(Quarter,Close_date) AS Quarter,
SUM(Revenue) AS Total_Revenue
FROM SalesPipeline_Clean
WHERE Deal_stage='Won'
GROUP BY DATEPART(Year,Close_date),DATEPART(Quarter,Close_date)
ORDER BY Total_Revenue DESC

-- Quarterly Win Rate--
SELECT  DATEPART(Year, Close_date) AS Year,
DATEPART(Quarter,Close_date) AS Quarter,
CONCAT(CAST(SUM(CASE WHEN Deal_stage='Won' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS DECIMAL(10,2)),'%') AS Win_Rate
FROM SalesPipeline_Clean 
GROUP BY  DATEPART(Year, Close_date),
DATEPART(Quarter,Close_date)
ORDER BY Win_Rate DESC

--Lost count by quarter--
SELECT DATEPART(Year, Close_date) AS Year,
DATEPART(Quarter,Close_date) AS Quarter,
COUNT(*) AS Lost_Count
FROM SalesPipeline_Clean
WHERE Deal_stage='Lost'
GROUP BY DATEPART(Year,Close_date),DATEPART(Quarter,Close_date)
ORDER BY Lost_Count DESC

--4.Do any products have better win rates?--
--Won Count--
SELECT Product,
COUNT(*) AS Lost_Count
FROM SalesPipeline_Clean
WHERE Deal_stage='Won'
GROUP BY Product
ORDER BY Lost_Count DESC

--Lost Count--
SELECT Product,
COUNT(*) AS Lost_Count
FROM SalesPipeline_Clean
WHERE Deal_stage='Lost'
GROUP BY Product
ORDER BY Lost_Count DESC

--Win Rate by Products--
SELECT Product,
COUNT(*) AS Total_deals,
SUM(CASE WHEN Deal_stage='Won' THEN 1 ELSE 0 END) AS Won_deals,
CONCAT(CAST(SUM(CASE WHEN Deal_stage='Won' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS DECIMAL(10,2)),'%') AS Win_Rate
FROM SalesPipeline_Clean
GROUP BY Product
ORDER BY Win_Rate DESC

--Product Prices--
SELECT  Product,Price
FROM Product_Clean
ORDER BY Price DESC

--Further Analysis--
--Win rate by sector--
SELECT a.Sector,
COUNT(*) AS Total_deals,
SUM(CASE WHEN s.Deal_stage='Won' THEN 1 ELSE 0 END) AS Won_Count,
CONCAT(CAST(SUM(CASE WHEN Deal_stage='Won' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS DECIMAL(10,2)),'%') AS Win_Rate
FROM Account_Clean a
INNER JOIN SalesPipeline_Clean s
ON a.Company_name=s.Company_name
GROUP BY a.Sector
ORDER BY Win_Rate DESC

--Lost rate by sector--
SELECT a.Sector,
COUNT(*) AS Total_deals,
SUM(CASE WHEN s.Deal_stage='Lost' THEN 1 ELSE 0 END) AS Lost_Count,
CONCAT(CAST(SUM(CASE WHEN Deal_stage='Lost' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS DECIMAL(10,2)),'%') AS Lost_Rate
FROM Account_Clean a
INNER JOIN SalesPipeline_Clean s
ON a.Company_name=s.Company_name
GROUP BY a.Sector
ORDER BY Lost_Rate DESC


