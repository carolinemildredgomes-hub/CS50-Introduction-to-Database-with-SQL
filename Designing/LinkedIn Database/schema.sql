-- ==================================================
-- LinkedIn Database
-- Author: Caroline Mildred Gomes
-- CS50 SQL - Problem Set 2 (Connect)
-- ==================================================

-- ----------------------------
-- Users
-- ----------------------------
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

-- ----------------------------
-- Schools
-- ----------------------------
CREATE TABLE schools (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    school_type TEXT NOT NULL,
    location TEXT NOT NULL,
    founded_year INTEGER NOT NULL
);

-- ----------------------------
-- Companies
-- ----------------------------
CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    industry TEXT NOT NULL,
    location TEXT NOT NULL
);

-- ----------------------------
-- User Connections
-- ----------------------------
CREATE TABLE connections (
    user1_id INTEGER NOT NULL,
    user2_id INTEGER NOT NULL,

    PRIMARY KEY(user1_id, user2_id),

    FOREIGN KEY(user1_id)
        REFERENCES users(id),

    FOREIGN KEY(user2_id)
        REFERENCES users(id)
);

-- ----------------------------
-- Education
-- ----------------------------
CREATE TABLE education (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,

    start_date DATE NOT NULL,
    end_date DATE,

    degree TEXT,

    FOREIGN KEY(user_id)
        REFERENCES users(id),

    FOREIGN KEY(school_id)
        REFERENCES schools(id)
);

-- ----------------------------
-- Employment
-- ----------------------------
CREATE TABLE employment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id INTEGER NOT NULL,
    company_id INTEGER NOT NULL,

    start_date DATE NOT NULL,
    end_date DATE,

    title TEXT NOT NULL,

    FOREIGN KEY(user_id)
        REFERENCES users(id),

    FOREIGN KEY(company_id)
        REFERENCES companies(id)
);
