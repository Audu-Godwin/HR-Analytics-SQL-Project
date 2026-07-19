CREATE DATABASE  hr_analytics_db;

USE hr_analytics_db;

DESCRIBE hrdataset_sql;

SHOW TABLES;

SELECT COUNT(*)
FROM hrdataset_sql; 

SELECT * FROM hrdataset_sql
limit 10;

SELECT COUNT(*) As Total_Employees
FROM hrdataset_sql;

SELECT COUNT(DISTINCT Department) AS Total_Departments
FROM hrdataset_sql; 

SELECT Department, COUNT(*) AS Employees
FROM hrdataset_sql
GROUP BY Department
ORDER BY Employees DESC;

SELECT Sex, COUNT(*) AS Total
FROM hrdataset_sql
GROUP BY Sex; 

SELECT MaritalDesc,
COUNT(*) AS Total
FROM hrdataset_sql
GROUP BY MaritalDesc
ORDER BY Total DESC;

SELECT ROUND(AVG(Salary),2) AS Average_Salary
FROM hrdataset_sql;

SELECT Employee_Name, Position, Salary
FROM hrdataset_sql
ORDER BY Salary DESC
LIMIT 10;

SELECT Employee_Name, Position, Salary
FROM hrdataset_sql
ORDER BY Salary ASC
LIMIT 10;

SELECT Department,
ROUND(AVG(Salary),2) AS Average_Salary
FROM hrdataset_sql
GROUP BY Department
ORDER BY Average_Salary DESC;

SELECT Department,
MAX(Salary) AS Highest_Salary
FROM hrdataset_sql
GROUP BY Department
ORDER BY Highest_Salary DESC;

SELECT Department,
ROUND(AVG(EmpSatisfaction),2) AS Avg_Satisfaction
FROM hrdataset_sql
GROUP BY Department
ORDER BY Avg_Satisfaction DESC;

SELECT PerformanceScore,
COUNT(*) AS Total_Employees
FROM hrdataset_sql
GROUP BY PerformanceScore
ORDER BY Total_Employees DESC;

SELECT RecruitmentSource,
COUNT(*) AS Employees_Hired
FROM hrdataset_sql
GROUP BY RecruitmentSource
ORDER BY Employees_Hired DESC;

SELECT Employee_Name,
Department,
Absences
FROM hrdataset_sql
ORDER BY Absences DESC
LIMIT 10;

SELECT Employee_Name,
Department,
DaysLateLast30
FROM hrdataset_sql
ORDER BY DaysLateLast30 DESC
LIMIT 10;

SELECT Sex,
ROUND(AVG(Salary),2) AS Average_Salary
FROM hrdataset_sql
GROUP BY Sex;

SELECT EmploymentStatus,
COUNT(*) AS Total_Employees
FROM hrdataset_sql
GROUP BY EmploymentStatus
ORDER BY Total_Employees DESC;

SELECT Employee_Name,
Position,
DateofHire
FROM hrdataset_sql
ORDER BY STR_TO_DATE(DateofHire,'%m/%d/%Y') ASC
LIMIT 10;

SELECT Employee_Name,
Salary,
CASE
WHEN Salary >= 80000 THEN 'High Salary'
WHEN Salary >= 50000 THEN 'Medium Salary'
ELSE 'Low Salary'
END AS Salary_Category
FROM hrdataset_sql;

SELECT Department,
COUNT(*) AS Total_Employees
FROM hrdataset_sql
GROUP BY Department
HAVING COUNT(*) > 20
ORDER BY Total_Employees DESC;

SELECT Employee_Name,
department,
Salary,
RANK()
OVER(PARTITION BY Department
ORDER BY Salary DESC) AS Salary_Rank
FROM hrdataset_sql;

WITH AverageSalary AS
(SELECT AVG(Salary) AS AvgSalary
FROM hrdataset_sql)
SELECT Employee_Name,
Department,
Salary
FROM hrdataset_sql, AverageSalary
WHERE Salary > AvgSalary;

CREATE VIEW High_Salary_Employees AS
SELECT Employee_Name,
Department,
Position,
Salary
FROM hrdataset_sql
WHERE Salary >= 80000;
SELECT *
FROM High_Salary_Employees;

SELECT RecruitmentSource,
COUNT(*) AS Employees_Hired,
ROUND(AVG(Salary),2) AS Average_Salary
FROM hrdataset_sql
GROUP BY RecruitmentSource
ORDER BY Employees_Hired DESC;

SELECT Department,
COUNT(*) AS Employees,
ROUND(AVG(Salary),2) AS Average_Salary,
ROUND(AVG(EmpSatisfaction),2) AS Avg_Satisfaction,
ROUND(AVG(EngagementSurvey),2) AS Avg_Engagement
FROM hrdataset_sql
GROUP BY Department
ORDER BY Average_Salary DESC;

SELECT Employee_Name,
Department,
Salary
FROM hrdataset_sql h1
WHERE Salary >
(SELECT AVG(Salary)
FROM hrdataset_sql h2
WHERE h1.Department = h2.Department);

SELECT Employee_Name,
Department,
Salary,
DENSE_RANK() OVER
(PARTITION BY Department
ORDER BY Salary DESC) AS Salary_Rank
FROM hrdataset_sql;

SELECT Employee_Name,
Department,
Salary,
ROW_NUMBER() OVER
(PARTITION BY Department
ORDER BY Salary DESC) AS Row_Num
FROM hrdataset_sql;

SELECT Department,
COUNT(*) AS Total_Employees,
MIN(Salary) AS Minimum_Salary,
MAX(Salary) AS Maximum_Salary,
ROUND(AVG(Salary),2) AS Average_Salary,
SUM(Salary) AS Total_Department_Salary
FROM hrdataset_sql
GROUP BY Department
ORDER BY Average_Salary DESC;

SELECT DISTINCT PerformanceScore
FROM hrdataset_sql;