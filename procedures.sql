DELIMITER //

-- 18. Create a stored procedure to add a new client and their first project in one call
CREATE PROCEDURE AddClientAndProject(
    IN clientName VARCHAR(255),
    IN contactName VARCHAR(255),
    IN contactEmail VARCHAR(255),
    IN projectName VARCHAR(255),
    IN requirements TEXT,
    IN deadline DATE
)
BEGIN
    DECLARE new_client_id INT;
    INSERT INTO Clients (client_name, contact_name, contact_email) VALUES (clientName, contactName, contactEmail);
    SET new_client_id = LAST_INSERT_ID();
    INSERT INTO Projects (project_name, client_id, requirements, deadline) VALUES (projectName, new_client_id, requirements, deadline);
END //

-- 19. Create a stored procedure to move completed projects (past deadlines) to an archive table
CREATE TABLE ProjectArchive LIKE Projects;

CREATE PROCEDURE ArchiveCompletedProjects()
BEGIN
    INSERT INTO ProjectArchive SELECT * FROM Projects WHERE deadline < CURDATE();
    DELETE FROM Projects WHERE deadline < CURDATE();
END //

DELIMITER ;
