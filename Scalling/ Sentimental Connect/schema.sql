CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL
);

CREATE TABLE schools (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    school_type ENUM(
        'Primary',
        'Secondary',
        'Higher Education'
    ) NOT NULL,
    location VARCHAR(100) NOT NULL,
    founded_year YEAR NOT NULL
);

CREATE TABLE companies (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    industry ENUM(
        'Technology',
        'Education',
        'Business'
    ) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE connections (
    user_id INT UNSIGNED NOT NULL,
    connected_user_id INT UNSIGNED NOT NULL,

    PRIMARY KEY (
        user_id,
        connected_user_id
    ),

    FOREIGN KEY (user_id)
        REFERENCES users(id),

    FOREIGN KEY (connected_user_id)
        REFERENCES users(id)
);

CREATE TABLE school_affiliations (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    user_id INT UNSIGNED NOT NULL,
    school_id INT UNSIGNED NOT NULL,

    degree VARCHAR(50),

    start_date DATE NOT NULL,
    end_date DATE,

    FOREIGN KEY (user_id)
        REFERENCES users(id),

    FOREIGN KEY (school_id)
        REFERENCES schools(id)
);

CREATE TABLE company_affiliations (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    user_id INT UNSIGNED NOT NULL,
    company_id INT UNSIGNED NOT NULL,

    title VARCHAR(100),

    start_date DATE NOT NULL,
    end_date DATE,

    FOREIGN KEY (user_id)
        REFERENCES users(id),

    FOREIGN KEY (company_id)
        REFERENCES companies(id)
);
