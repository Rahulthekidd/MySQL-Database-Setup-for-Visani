-- Create database
CREATE DATABASE IF NOT EXISTS Visani;
USE Visani;

-- Drop table if exists
DROP TABLE IF EXISTS Users;

-- Create Users table
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(255) NOT NULL,
    l_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    gender VARCHAR(255),
    age INT
);

-- Create Address table
CREATE TABLE Address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    zipCode INT NOT NULL,
    user_id INT, -- Assuming a foreign key relationship with Users table
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Create Pay_info table
CREATE TABLE Pay_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cardNumber INT NOT NULL,
    cardHolderName VARCHAR(255) NOT NULL,
    expiry INT NOT NULL,
    cardDate DATE NOT NULL,
    cvv INT NOT NULL,
    user_id INT, -- Assuming a foreign key relationship with Users table
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Insert some sample data into Users table
INSERT INTO Users (f_name, l_name, email, password, gender, age)
VALUES
    ('John', 'Doe', 'john.doe@example.com', 'password123', 'Male', 30),
    ('Jane', 'Doe', 'jane.doe@example.com', 'securepwd456', 'Female', 25);

-- Select all records from Users table
SELECT * FROM Users;
