START TRANSACTION;

-- Update employee salary and title
UPDATE employees
SET salary = salary * 1.10, position = 'Senior Developer'
WHERE employee_id = '1';

-- Log the promotion
INSERT INTO promotion_log (employee_id, old_position, new_position, promotion_date)
VALUES ('1', 'Software Engineer', 'Senior Developer','2024-08-06');

INSERT INTO promotion_log (employee_id, old_position, new_position, promotion_date)
VALUES ('2', 'HR Manager', 'Administrative', '2024-08-06');


-- Commit the transaction
COMMIT;
