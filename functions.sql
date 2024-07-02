DELIMITER //

-- 16. Create a function to calculate the number of days remaining until a project deadline
CREATE FUNCTION DaysUntilDeadline(projectId INT) RETURNS INT
    READS SQL DATA
BEGIN
    DECLARE days_remaining INT;
    SELECT DATEDIFF(deadline, CURDATE()) INTO days_remaining FROM Projects WHERE project_id = projectId;
    RETURN days_remaining;
END //

-- 17. Create a function to calculate the number of days a project is overdue
CREATE FUNCTION DaysOverdue(projectId INT) RETURNS INT
    READS SQL DATA
BEGIN
    DECLARE days_overdue INT;
    SELECT DATEDIFF(CURDATE(), deadline) INTO days_overdue FROM Projects WHERE project_id = projectId AND deadline < CURDATE();
    RETURN days_overdue;
END //

DELIMITER ;
