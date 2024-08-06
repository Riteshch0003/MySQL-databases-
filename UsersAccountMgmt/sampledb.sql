
-- INSERT INTO users
INSERT INTO users (username, email, password_hash, first_name, last_name, phone_number, address, city, state, zip_code, country, status) VALUES
('john_doe', 'john.doe@example.com', 'hashed_password1', 'John', 'Doe', '555-1234', '123 Elm Street', 'Springfield', 'IL', '62701', 'USA', 'Active'),
('jane_smith', 'jane.smith@example.com', 'hashed_password2', 'Jane', 'Smith', '555-5678', '456 Oak Avenue', 'Metropolis', 'NY', '10001', 'USA', 'Active');

-- INSERT INTO account_deactivation
INSERT INTO account_deactivation (user_id, deactivation_date, reason, status) VALUES
(1, '2024-08-01 12:00:00', 'User requested deactivation', 'Completed'),
(2, '2024-08-02 14:00:00', 'Account suspended due to policy violation', 'Requested');

-- INSERT INTO user_activity_log
INSERT INTO user_activity_log (user_id, activity_type, activity_timestamp, description) VALUES
(1, 'Login', '2024-08-05 08:00:00', 'User logged in successfully.'),
(2, 'Password Change', '2024-08-06 09:00:00', 'User changed their password.');


-- INSERT INTO user_roles
INSERT INTO user_roles (role_name, description) VALUES
('Admin', 'Administrator with full access rights.'),
('User', 'Regular user with limited access rights.');

-- INSERT INTO user_role_assignments
INSERT INTO user_role_assignments (user_id, role_id, assigned_at) VALUES
(1, 1, '2024-08-01 10:00:00'),  -- User ID 1 assigned Admin role
(2, 2, '2024-08-02 11:00:00');  -- User ID 2 assigned User role

