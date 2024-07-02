DELIMITER //

-- 20. Create a trigger to log any updates made to project records in a separate table for auditing purposes
CREATE TRIGGER after_project_update
AFTER UPDATE ON Projects
FOR EACH ROW
BEGIN
    INSERT INTO ProjectLog (project_id, action) VALUES (NEW.project_id, 'Project Updated');
END //

-- 21. Create a trigger to ensure a team lead assigned to a project is a valid employee
CREATE TRIGGER validate_team_lead
BEFORE INSERT ON ProjectTeams
FOR EACH ROW
BEGIN
    DECLARE valid_employee INT;
    SELECT COUNT(*) INTO valid_employee FROM Employees WHERE employee_id = NEW.employee_id;
    IF valid_employee = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid team lead: employee does not exist';
    END IF;
END //

-- 22. Create a trigger to prevent deleting a project that still has assigned team members
CREATE TRIGGER prevent_project_deletion
BEFORE DELETE ON Projects
FOR EACH ROW
BEGIN
    DECLARE member_count INT;
    SELECT COUNT(*) INTO member_count FROM TeamMembers WHERE project_id = OLD.project_id;
    IF member_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete project with assigned team members';
    END IF;
END //

DELIMITER ;
