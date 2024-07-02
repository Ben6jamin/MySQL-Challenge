-- Table for Clients
CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(255) NOT NULL,
    contact_name VARCHAR(255),
    contact_email VARCHAR(255)
);

-- Table for Projects
CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    client_id INT,
    requirements TEXT,
    deadline DATE,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

-- Table for Employees
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL
);

-- Junction Table for Team Members
CREATE TABLE TeamMembers (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Table for Project Teams
CREATE TABLE ProjectTeams (
    project_id INT,
    employee_id INT,
    team_lead BOOLEAN,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Table for Project Log (for triggers)
CREATE TABLE ProjectLog (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    action VARCHAR(255),
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);
