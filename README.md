# CRM Sales Opportunities Analysis
## Brief Summary
CRM Sales Analysis is a comprehensive data analytics project in which raw sales data was cleaned, processed, transformed, and analyzed using SQL Server. The insights were then visualized through interactive dashboards built in Power BI to support data-driven decision-making.

## Problem Statement
* How is each sales team performing compared to the rest?
* Are any sales agents lagging behind?
* Are there any quarter-over-quarter trends?
* Do any products have better win rates?.

## Dataset
* Source: Maven Analytics-CRM Sales Opportunities.
* The data  holds informaation about B2B sales pipeline data from a fictitious company that sells computer hardware, including information on accounts, products, sales teams, and sales opportunities.

## Tools & Technologies
* SQL Server
* Power BI

## Methods
* Data Prepartaion & Data Quality Assessment.
* Exploratory Data Analysis (EDA).
* Derived Key metrics.
* Sales Team Analysis.
* Quarter and Product Analysis.
* Dashboard Development.

## Key Insights
### Executive Summary
* The dataset contains four tables with a total of **8,800 records**.
* Account Overview: Total companies are **85**, and total sectors are **10**, total annual revenue $ **169543.80** .
* Product Overview: Total products are **7**, total series are **3**, and the average price is **$6,023.57**.
* Sales Pipeline Overview: Total opportunities are **8,800**, total deals are **8,800**, and total sales agents are **30**.
* Sales Team Analysis: Win rate is **48.16%**, and lost rate is **28.10%**.
* Kan-code is the highest revenue-generating company with **$3,441,455**, followed by Konex with **$269,245**.
* The Software sector is the highest revenue-generating sector with **$30,950**.
* Kan-code has an employee distribution count of **34,288**.
* The Software sector has an employee distribution count of **79,950**.

### Sales Team Analysis
*  Manager **Melvin Marxen** generated the highest revenue of **$2,251,930** with **882 won deals**.
*  Manager **Rocco Neubert** has a win rate of **52.07%** and the least average deal closure time of **45.84 days**.
*  Sales agent **Darcel Schlecht** generated the highest revenue of **$1,153,214** and has the highest number of won deals at **349**.
*  Sales agent **Reed Clapper** has the highest win rate of **65.40%**.
*  Sales agent **Cecily Lapkin** has the least average deal closure time of **38.74 days**.

### Quarter and Product Analysis
* Q1 revenue is **$1,134,672**, with **531 won deals**, **116 lost deals**, and a win rate of **82.07%**.
* Q2 revenue is **$3,086,111**, with **1,254 won deals**, **778 lost deals**, and a win rate of **61.71%**.
* Q3 revenue is **$2,982,255**, with **1,257 won deals**, **790 lost deals**, and a win rate of **61.41%**.
* Q4 revenue is **$2,802,496**, with **1,196 won deals**, **789 lost deals**, and a win rate of **60.25%**.
* MG Special revenue is **$43,768**, with **793 won deals**, **430 lost deals**, and a win rate of **48.03%**.
* GTK 500 revenue is **$400,612**, with **15 won deals**, **10 lost deals**, and a win rate of **37.50%**.
* MG Advanced revenue is **$2,216,387**, with **654 won deals**, **430 lost deals**, and a win rate of **46.32%**.
* GTX Plus Pro revenue is **$2,629,651**, with **479 won deals**, **266 lost deals**, and a win rate of **49.48%**.
* GTX Basic revenue is **$2,499,263**, with **915 won deals**, **521 lost deals**, and a win rate of **49.04%**.
* GTX Plus Basic revenue is **$705,275**, with **653 won deals**, **398 lost deals**, and a win rate of **47.22%**.

## SQL Queries
- [Data Preparation & Data Quality Assessment](CRM%20Sales%20Analysis/SQL%20Queries/Data%20Preparation%20%26%20Data%20Quality%20Assessment(%20SQL%20Query%201).sql)
- [New Clean Tables](CRM%20Sales%20Analysis/SQL%20Queries/New%20Clean%20Tables(SQL%20Query%202).sql)
- [Inserting Data in Clean Tables](CRM%20Sales%20Analysis/SQL%20Queries/Inserting%20Data%20in%20Clean%20Table(SQL%20Query%203).sql)
- [EDA](CRM%20Sales%20Analysis/SQL%20Queries/EDA%20(SQL%20Query%204).sql)

## Dashboard
![Executive Summary](CRM%20Sales%20Analysis/Dashboard/Executive%20Summary(Page%201).png)
![Sales Team Analysis](CRM%20Sales%20Analysis/Dashboard/Sales%20Team%20Analysis(Page%202).png)
![Quarter and Product Analysis](CRM%20Sales%20Analysis/Dashboard/Quarter%20%26%20Product%20Analysis(Page%203).png)

## PowerBI 
![Dashboard](CRM%20Sales%20Analysis/CRM%20Sales/CRM%20Sales.pbix)

### Recommendations
* Diversify revenue sources by increaing dependency on low revenue producing companies to minimize business risk.
* Standardize sales team performance strategy by aligning revenue generation, win rate, and deal closure speed across all agents, and using top performers as benchmarks for training.
* Improve quarterly consistency by analyzing Q1’s strong performance and replicating the same sales strategies across rest of the quarters.
* Optimize product performance by improving underperforming products through better targeting or pricing strategies, while scaling high-performing GTX series products. 
* Strengthen sales team efficiency balance by bridging the gap between high-volume performers and high-conversion performers to create a more balanced sales force.

  
## Author
**ANCHAL CHILWAL**

## Contact Info
* LinkedIn:(https://linkedin.com/in/anchal-chilwal-30b359408)
* GitHub:(https://github.com/AnchalChilwal)



