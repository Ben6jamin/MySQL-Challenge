-- 11. Create a view to simplify retrieving client contact
CREATE VIEW ClientContact AS
SELECT client_name, contact_name, contact_email FROM Clients;

-- 12. Create a view to show only ongoing projects (not yet completed)
CREATE VIEW OngoingProjects AS
SELECT * FROM Projects WHERE deadline >= CURDATE();

-- 13. Create a view to display project information along with assigned team leads
CREATE VIEW ProjectTeamLeads AS
SELECT p.project_name, e.employee_name AS team_lead
FROM Projects p
JOIN ProjectTeams pt ON p.project_id = pt.project_id
JOIN Employees e ON pt.employee_id = e.employee_id
WHERE pt.team_lead = TRUE;

-- 14. Create a view to show project names and client contact information for projects with a deadline in November 2024
CREATE VIEW Nov2024Projects AS
SELECT p.project_name, c.contact_name, c.contact_email
FROM Projects p
JOIN Clients c ON p.client_id = c.client_id
WHERE p.deadline BETWEEN '2024-11-01' AND '2024-11-30';

-- 15. Create a view to display the total number of projects assigned to each employee
CREATE VIEW EmployeeProjectCount AS
SELECT e.employee_name, COUNT(tm.project_id) AS project_count
FROM Employees e
JOIN TeamMembers tm ON e.employee_id = tm.employee_id
GROUP BY e.employee_name;
