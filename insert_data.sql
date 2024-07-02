-- Insert data into Clients Table
INSERT INTO Clients (client_name, contact_name, contact_email) VALUES
('Big Retail Inc.', 'John Smith', 'john.smith@bigretail.com'),
('EduTech Solutions', 'Jane Doe', 'jane.doe@edutech.com');

-- Insert data into Projects Table
INSERT INTO Projects (project_name, client_id, requirements, deadline) VALUES
('Mobile App for Learning', 2, 'App requirements...', '2024-11-15'),
('Inventory Management System', 1, 'System requirements...', '2024-10-30');

-- Insert data into Employees Table
INSERT INTO Employees (employee_name) VALUES
('David Lee'),
('Sarah Connor'),
('Alice Johnson');

-- Insert data into TeamMembers Table
INSERT INTO TeamMembers (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3);

-- Insert data into ProjectTeams Table
INSERT INTO ProjectTeams (project_id, employee_id, team_lead) VALUES
(1, 2, TRUE),
(2, 3, TRUE);
