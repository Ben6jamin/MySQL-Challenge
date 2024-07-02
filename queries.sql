-- 1. Find all projects with a deadline before December 1st, 2024
SELECT * FROM Projects WHERE deadline < '2024-12-01';

-- 2. List all projects for "Big Retail Inc." ordered by deadline
SELECT p.* FROM Projects p
JOIN Clients c ON p.client_id = c.client_id
WHERE c.client_name = 'Big Retail Inc.'
ORDER BY p.deadline;

-- 3. Find the team lead for the "Mobile App for Learning" project
SELECT e.employee_name FROM Employees e
JOIN ProjectTeams pt ON e.employee_id = pt.employee_id
JOIN Projects p ON pt.project_id = p.project_id
WHERE p.project_name = 'Mobile App for Learning' AND pt.team_lead = TRUE;

-- 4. Find projects containing "Management" in the name
SELECT * FROM Projects WHERE project_name LIKE '%Management%';

-- 5. Count the number of projects assigned to David Lee
SELECT COUNT(*) FROM Projects p
JOIN TeamMembers tm ON p.project_id = tm.project_id
JOIN Employees e ON tm.employee_id = e.employee_id
WHERE e.employee_name = 'David Lee';

-- 6. Find the total number of employees working on each project
SELECT p.project_name, COUNT(tm.employee_id) AS total_employees
FROM Projects p
JOIN TeamMembers tm ON p.project_id = tm.project_id
GROUP BY p.project_name;

-- 7. Find all clients with projects having a deadline after October 31st, 2024
SELECT DISTINCT c.* FROM Clients c
JOIN Projects p ON c.client_id = p.client_id
WHERE p.deadline > '2024-10-31';

-- 8. List employees who are not currently team leads on any project
SELECT e.* FROM Employees e
LEFT JOIN ProjectTeams pt ON e.employee_id = pt.employee_id AND pt.team_lead = TRUE
WHERE pt.employee_id IS NULL;

-- 9. Combine a list of projects with deadlines before December 1st and another list with "Management" in the project name
(SELECT * FROM Projects WHERE deadline < '2024-12-01')
UNION
(SELECT * FROM Projects WHERE project_name LIKE '%Management%');

-- 10. Display a message indicating if a project is overdue (deadline passed)
SELECT project_name,
CASE
    WHEN deadline < CURDATE() THEN 'Overdue'
    ELSE 'On time'
END AS status
FROM Projects;
