-- insert sample data for recieving the output
-- INSERT INTO employees
INSERT INTO employees
(first_name, last_name, email, phone_number, hire_date, position, department_id, salary, status) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '2020-06-01', 'Software Engineer', 1, 60000.00, 'Active'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2019-03-15', 'HR Manager', 2, 75000.00, 'Active');

-- INSERT INTO promotion_log
INSERT INTO promotion_log (employee_id, old_position, new_position, promotion_date, reason) VALUES
(1, 'Junior Software Engineer', 'Software Engineer', '2023-01-01', 'Promotion after successful project completion'),
(2, 'HR Manager','Administrative','2023-03-03','Manage the requirements of employee');

-- INSERT INTO departments
INSERT INTO departments (department_name, manager_id) VALUES
('Engineering', 1),
('Human Resources', 2);

-- INSERT INTO attendance
INSERT INTO attendance (employee_id, date, status) VALUES
(1, '2024-08-05', 'Present'),
(2, '2024-08-05', 'Absent');

-- INSERT INTO payroll
INSERT INTO payroll (employee_id, salary_month, base_salary, bonuses, deductions, net_salary) VALUES
(1, '2024-08-01', 60000.00, 500.00, 100.00, 59500.00),
(2, '2024-08-01', 75000.00, 700.00, 200.00, 74700.00);

-- INSERT INTO training_programs
INSERT INTO training_programs (program_name, description, start_date, end_date, trainer_id) VALUES
('Advanced SQL Training', 'Deep dive into SQL queries and performance tuning.', '2024-08-10', '2024-08-20', 1);










