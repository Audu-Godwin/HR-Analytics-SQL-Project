# HR Analytics SQL Project

## Project Overview
This project demonstrates the use of SQL to analyze Human Resources (HR) data using MySQL Workbench. The dataset contains employee information such as demographics, salaries, departments, recruitment sources, performance scores, employee satisfaction, and attendance records.
The objective of this project is to answer key HR business questions using SQL and generate insights that support workforce planning and decision-making.

## Objectives
- Analyze employee demographics.
- Evaluate salary distribution across departments.
- Measure employee performance and satisfaction.
- Analyze recruitment sources.
- Identify attendance patterns.
- Apply SQL techniques to solve business problems.

## Dataset
The dataset contains **303 employee records** with the following fields:
- Employee Name
- Department
- Position
- Salary
- Gender
- Marital Status
- Employment Status
- Recruitment Source
- Performance Score
- Employee Satisfaction
- Engagement Survey
- Absences
- Days Late (Last 30 Days)
- Date of Hire

## SQL Concepts Used
- Database Creation
- Data Exploration
- Aggregate Functions
- GROUP BY
- ORDER BY
- HAVING
- CASE Statements
- Date Functions
- Common Table Expressions (CTEs)
- Subqueries
- Window Functions (`RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`)
- Views

## Business Questions Answered
1. Total number of employees.
2. Number of departments.
3. Employee distribution by department.
4. Gender distribution.
5. Marital status distribution.
6. Average employee salary.
7. Top 10 highest-paid employees.
8. Top 10 lowest-paid employees.
9. Average salary by department.
10. Highest salary by department.
11. Employee satisfaction by department.
12. Performance score distribution.
13. Recruitment source analysis.
14. Employees with the highest absences.
15. Employees with the most late arrivals.
16. Average salary by gender.
17. Employment status distribution.
18. Earliest hired employees.
19. Salary categorization using CASE.
20. Departments with more than 20 employees.
21. Salary ranking within departments.
22. Employees earning above the company average salary.
23. High Salary Employees View.
24. Recruitment source salary analysis.
25. Department HR performance summary.
26. Employees earning above their department average.
27. Dense salary ranking.
28. Row numbering by department.
29. Department salary statistics.
30. Unique employee performance ratings.

# Project Preview
### Employee Distribution by Department
![Department Distribution](screenshots/Department_Distribution.png)

### Average Salary by Department
![Average Salary](screenshots/Average_Salary_By_Department.png)

### Top 10 Highest Paid Employees
![Top 10 Highest Paid](screenshots/Top_10_Highest_Paid.png)


### Recruitment Source Analysis
![Recruitment Source](screenshots/Recruitment_Source_Analysis.png)

### Salary Ranking by Department
![Salary Ranking](screenshots/Salary_Ranking.png)

## Key Insights
- The workforce is distributed across multiple departments with varying employee counts.
- Salary levels differ significantly across departments.
- Recruitment sources contribute differently to employee hiring.
- Employee satisfaction and engagement vary between departments.
- Window functions and CTEs provide powerful methods for ranking employees and comparing salaries.
- SQL can transform raw HR data into meaningful business insights for informed decision-making.

## Repository Structure
HR-Analytics-SQL-Project/
│
├── HR_Analytics_SQL_Project.sql
├── HR_Dataset.csv
├── README.md
└── screenshots/
    ├── Department_Distribution.png
    ├── Average_Salary_By_Department.png
    ├── Top_10_Highest_Paid.png
    ├── Recruitment_Source_Analysis.png
    └── Salary_Ranking.png

## Tools Used
- MySQL Workbench 8.0
- SQL
## Author
**Audu Godwin**

**Data Analyst | Business Intelligence**

- **LinkedIn:** https://www.linkedin.com/in/godwin-audu-0885a9122
- **GitHub:** https://github.com/Audu-Godwin

## Acknowledgements
This project was completed as part of my Data Analytics training and demonstrates practical SQL skills for data exploration, business analysis, reporting, and HR analytics.
