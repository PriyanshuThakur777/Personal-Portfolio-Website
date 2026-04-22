CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

CREATE TABLE IF NOT EXISTS introductions (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL,
    role_title VARCHAR(255) NOT NULL,
    bio TEXT,
    location VARCHAR(255),
    profile_image_url VARCHAR(500),
    github_url VARCHAR(500),
    linkedin_url VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS contacts (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(100),
    website VARCHAR(500),
    address VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS contact_messages (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    submitted_at DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS skills (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS projects (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    tech_stack VARCHAR(500),
    project_url VARCHAR(500),
    source_code_url VARCHAR(500),
    featured BOOLEAN
);

CREATE TABLE IF NOT EXISTS certifications (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    issuer VARCHAR(255),
    issue_date VARCHAR(50),
    credential_id VARCHAR(255),
    credential_url VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS education (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    institution VARCHAR(255) NOT NULL,
    degree VARCHAR(255),
    field_of_study VARCHAR(255),
    start_year VARCHAR(50),
    end_year VARCHAR(50),
    score VARCHAR(100),
    summary TEXT
);
