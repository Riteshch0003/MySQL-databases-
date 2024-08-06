CREATE DATABASE UserAccountManagement;
USE UserAccountManagement;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    country VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,
    status ENUM('Active', 'Inactive', 'Suspended') DEFAULT 'Active'
);
CREATE TABLE user_data (
    user_id INT,
    active BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE account_deactivation_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    deactivation_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);





CREATE TABLE user_roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT
);


CREATE TABLE user_role_assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (role_id) REFERENCES user_roles(role_id)
);


CREATE TABLE userdata (
    user_data_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other') NULL,
    profile_picture_url VARCHAR(255),
    preferred_language VARCHAR(50),
    timezone VARCHAR(50),
    notifications_enabled BOOLEAN DEFAULT TRUE,
    privacy_settings TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);




