-- 1. How many employees are currently in the company?
SELECT COUNT(*) AS total_employees
FROM employee_attrition;

-- 2. What percentage of employees have left the company?
SELECT "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Attrition";

-- 3. Which job roles have the highest employee attrition?
SELECT "Job Role",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Job Role", "Attrition"
ORDER BY "Job Role";

-- 4. Does overtime increase the likelihood of employee attrition?
SELECT "Overtime",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Overtime", "Attrition";

-- 5. Does job satisfaction influence employee attrition?
SELECT "Job Satisfaction",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Job Satisfaction", "Attrition";

-- 6. Does work-life balance affect employee attrition?
SELECT "Work-Life Balance",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Work-Life Balance", "Attrition";

-- 7. Which education level experiences the highest attrition?
SELECT "Education Level",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Education Level", "Attrition";

-- 8. Does gender have any impact on employee attrition?
SELECT "Gender",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Gender", "Attrition";

-- 9. Which job level has the highest average salary?
SELECT "Job Level",
       ROUND(AVG("Monthly Income"), 2) AS average_salary
FROM employee_attrition
GROUP BY "Job Level"
ORDER BY average_salary DESC;

-- 10. Which job roles receive the highest average monthly income?
SELECT "Job Role",
       ROUND(AVG("Monthly Income"), 2) AS average_salary
FROM employee_attrition
GROUP BY "Job Role"
ORDER BY average_salary DESC;

-- 11. Are employees with longer tenure less likely to leave?
SELECT "Attrition",
       ROUND(AVG("Years at Company"), 2) AS average_years_at_company
FROM employee_attrition
GROUP BY "Attrition";

-- 12. Does remote work reduce employee attrition?
SELECT "Remote Work",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Remote Work", "Attrition";

-- 13. Does employee recognition improve retention?
SELECT "Employee Recognition",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Employee Recognition", "Attrition";

-- 14. Does company reputation influence employee attrition?
SELECT "Company Reputation",
       "Attrition",
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY "Company Reputation", "Attrition";

-- 15. Which employees earn the highest monthly income?
SELECT "Employee ID",
       "Job Role",
       "Monthly Income"
FROM employee_attrition
ORDER BY "Monthly Income" DESC
LIMIT 10;