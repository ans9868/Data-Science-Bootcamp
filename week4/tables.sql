-- costumer table
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address TEXT
);

-- item table
CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    department VARCHAR(50)
);

-- sale table with foreign keys
CREATE TABLE sale (
    order_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    item_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    revenue DECIMAL(10, 2) NOT NULL,
    -- foreign keys 
    FOREIGN KEY (item_id) REFERENCES item(item_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

