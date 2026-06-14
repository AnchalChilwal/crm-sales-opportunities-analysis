# CRM Sales Opportinities Analysis
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
* The dataset contains four tables with total records of 8800.
* Account Overview-Total Companies are 85,total Sectors 10, total Annual Revenue
* Product Overview-Total Products-7,Total Series-3,Average price $6023.57.
* Sales Pipeline Overview-Total Opportunities-8800,Total Deals-8800,Total Sales Agent-30.
* Sales Team Analysis-Win Rate-48.16%,Lost Rate-28.10%.
* Kan-code Company is generating the highest revenue $3,441,455,followed by Konex with a revenue of $2,69,245.
* Software Sector is generating the highest revenue $30,950.
* Kan-code is having employee distribution count 34288.
* Software Sector is having employee distribution count 79950.
 

### Sales Team Analysis
* Inactive customers have a higher churn rate (26.85%) compared to active customers.

### Quarter and Product Analysis


## SQL Queries
- [Data Preparation & Data Quality Assessment](CRM%20Sales%20Analysis/SQL%20Queries/Data%20Preparation%20%26%20Data%20Quality%20Assessment(%20SQL%20Query%201).sql)
- [New Clean Tables](CRM%20Sales%20Analysis/SQL%20Queries/New%20Clean%20Tables(SQL%20Query%202).sql)
- [Inserting Data in Clean Tables](CRM%20Sales%20Analysis/SQL%20Queries/New%20Clean%20Tables(SQL%20Query%202).sql)
- [EDA](CRM%20Sales%20Analysis/SQL%20Queries/EDA%20(SQL%20Query%204).sql)

## Dashboard
![Executive Summary](CRM%20Sales%20Analysis/Dashboard/Executive%20Summary(Page%201).png)
![Sales Team Analysis](CRM%20Sales%20Analysis/Dashboard/Sales%20Team%20Analysis(Page%202).png)
![Quarter and Product Analysis](CRM%20Sales%20Analysis/Dashboard/Quarter%20%26%20Product%20Analysis(Page%203).png)


## PowerBI 
![Dashboard](CRM%20Sales%20Analysis/CRM%20Sales/CRM%20Sales.pbix)

## Results & Conclusion

* Customer churn is mainly driven my inactivity,age, low engagement(low service count) as well as geography.So these can be considered the primary factors causing churn.
* In contrast,factors like salary segemnt,credit card count and credit score have less impact on customer churn.



### Recommendations

* Increase engagement initiatives for inactive customers.
* Develop targeted retention programs for mature customers.
* Some geography-specific strategies should be taken.
* Promote additional banking products to high-balance customers.
* Implement personalized retention strategies for high-value customer segments.
* Most customers have higher credit score means bank is serving premium customers,so reward such as offers or premium services should be given so that they don't leave the bank.
* Most of the customers have credit cards which can be the  major factor contributing to revenue generation got bank,so credit cards with additional offers should be introduced.
* Further customer feedbacks should be taken timely to avoid churn.

## Author
**ANCHAL CHILWAL**

## Contact Info
* LinkedIn:(https://linkedin.com/in/anchal-chilwal-30b359408)
* GitHub:(https://github.com/AnchalChilwal)



