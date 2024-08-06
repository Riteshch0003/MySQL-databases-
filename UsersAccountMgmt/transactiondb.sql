-- Deactivation of Accounts
-- Start a transaction
START TRANSACTION;

-- Deactivate user account
UPDATE users
SET status = 'Active'
WHERE user_id = 2;

-- Optionally, handle related data (e.g., deactivate user-related records)
UPDATE user_data
SET active = 0
WHERE user_id = 2;

-- Log deactivation
INSERT INTO account_deactivation_log (user_id, deactivation_date)
VALUES (2, NOW());

-- Commit the transaction
COMMIT;
select*from users;
