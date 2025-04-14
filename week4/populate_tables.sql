-- Clear existing data if needed
TRUNCATE sale CASCADE;
TRUNCATE customer CASCADE;
TRUNCATE item CASCADE;

-- Reset sequences
ALTER SEQUENCE customer_customer_id_seq RESTART WITH 1;
ALTER SEQUENCE item_item_id_seq RESTART WITH 1;
ALTER SEQUENCE sale_order_id_seq RESTART WITH 1;

-- Insert data into customer table
INSERT INTO customer (first_name, last_name, address)
VALUES
  ('John', 'Smith', '123 Main St, Boston, MA'),
  ('Emily', 'Johnson', '456 Oak Ave, Chicago, IL'),
  ('Michael', 'Williams', '789 Pine Rd, San Francisco, CA'),
  ('Sarah', 'Brown', '101 Maple Dr, New York, NY'),
  ('James', 'Jones', '202 Cedar Ln, Seattle, WA'),
  ('Jessica', 'Garcia', '303 Birch Blvd, Miami, FL'),
  ('David', 'Miller', '404 Elm St, Austin, TX'),
  ('Jennifer', 'Davis', '505 Walnut Ave, Denver, CO'),
  ('Robert', 'Rodriguez', '606 Cherry St, Phoenix, AZ'),
  ('Lisa', 'Martinez', '707 Spruce Rd, Portland, OR');

-- Insert data into item table
INSERT INTO item (item_name, price, department)
VALUES
  ('Laptop', 999.99, 'Electronics'),
  ('Smartphone', 699.99, 'Electronics'),
  ('Coffee Maker', 49.99, 'Kitchen'),
  ('Blender', 79.99, 'Kitchen'),
  ('Running Shoes', 89.99, 'Sports'),
  ('Yoga Mat', 24.99, 'Sports'),
  ('Fiction Book', 14.99, 'Books'),
  ('Non-Fiction Book', 19.99, 'Books'),
  ('T-Shirt', 19.99, 'Clothing'),
  ('Jeans', 39.99, 'Clothing'),
  ('Headphones', 149.99, 'Electronics'),
  ('Backpack', 59.99, 'Accessories');

-- Insert data into sale table with data spanning multiple months
INSERT INTO sale (date, item_id, customer_id, quantity, revenue)
VALUES
  -- January sales
  ('2023-01-05', 1, 3, 1, 999.99),
  ('2023-01-10', 2, 5, 1, 699.99),
  ('2023-01-15', 3, 2, 2, 99.98),
  ('2023-01-20', 5, 7, 1, 89.99),
  ('2023-01-25', 7, 1, 3, 44.97),
  
  -- February sales
  ('2023-02-03', 4, 4, 1, 79.99),
  ('2023-02-08', 6, 6, 2, 49.98),
  ('2023-02-12', 8, 8, 1, 19.99),
  ('2023-02-18', 10, 10, 1, 39.99),
  ('2023-02-24', 11, 9, 1, 149.99),
  
  -- March sales
  ('2023-03-02', 12, 1, 1, 59.99),
  ('2023-03-07', 9, 3, 2, 39.98),
  ('2023-03-14', 2, 5, 1, 699.99),
  ('2023-03-19', 1, 2, 1, 999.99),
  ('2023-03-25', 3, 7, 1, 49.99),
  
  -- April sales
  ('2023-04-04', 5, 4, 2, 179.98),
  ('2023-04-10', 7, 6, 1, 14.99),
  ('2023-04-15', 11, 8, 1, 149.99),
  ('2023-04-22', 9, 10, 3, 59.97),
  ('2023-04-28', 12, 9, 1, 59.99),
  
  -- May sales
  ('2023-05-03', 10, 1, 2, 79.98),
  ('2023-05-09', 8, 3, 1, 19.99),
  ('2023-05-16', 6, 5, 3, 74.97),
  ('2023-05-21', 4, 2, 1, 79.99),
  ('2023-05-27', 2, 7, 1, 699.99),
  
  -- June sales
  ('2023-06-05', 3, 4, 2, 99.98),
  ('2023-06-11', 1, 6, 1, 999.99),
  ('2023-06-18', 5, 8, 1, 89.99),
  ('2023-06-24', 7, 10, 2, 29.98),
  ('2023-06-30', 9, 9, 1, 19.99);

-- Verify data was inserted correctly
SELECT 'Customer count: ' || COUNT(*) FROM customer;
SELECT 'Item count: ' || COUNT(*) FROM item;
SELECT 'Sale count: ' || COUNT(*) FROM sale;

