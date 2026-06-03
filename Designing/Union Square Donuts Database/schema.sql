-- ==================================================
-- Union Square Donuts Database
-- Author: Caroline Mildred Gomes
-- CS50 SQL - Problem Set 2 (Donuts)
-- ==================================================

-- ----------------------------
-- Ingredients
-- ----------------------------
CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    cost_per_unit DECIMAL(10,2) NOT NULL
);

-- ----------------------------
-- Donuts
-- ----------------------------
CREATE TABLE donuts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    gluten_free INTEGER NOT NULL CHECK(gluten_free IN (0,1)),
    price DECIMAL(10,2) NOT NULL
);

-- ----------------------------
-- Donut Ingredients
-- Many-to-Many
-- ----------------------------
CREATE TABLE donut_ingredients (
    donut_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,

    PRIMARY KEY (donut_id, ingredient_id),

    FOREIGN KEY (donut_id)
        REFERENCES donuts(id),

    FOREIGN KEY (ingredient_id)
        REFERENCES ingredients(id)
);

-- ----------------------------
-- Customers
-- ----------------------------
CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

-- ----------------------------
-- Orders
-- ----------------------------
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_number INTEGER NOT NULL UNIQUE,
    customer_id INTEGER NOT NULL,

    FOREIGN KEY (customer_id)
        REFERENCES customers(id)
);

-- ----------------------------
-- Order Items
-- Many-to-Many
-- ----------------------------
CREATE TABLE order_items (
    order_id INTEGER NOT NULL,
    donut_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK(quantity > 0),

    PRIMARY KEY (order_id, donut_id),

    FOREIGN KEY (order_id)
        REFERENCES orders(id),

    FOREIGN KEY (donut_id)
        REFERENCES donuts(id)
);
