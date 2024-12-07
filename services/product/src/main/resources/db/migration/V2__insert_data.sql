-- Insert categories with auto-generated IDs using the sequence
INSERT INTO category (id, name, description)
VALUES
    (nextval('category_seq'), 'Electronics', 'Electronic devices and gadgets'),
    (nextval('category_seq'), 'Books', 'Books across various genres'),
    (nextval('category_seq'), 'Clothing', 'Apparel for men, women, and children'),
    (nextval('category_seq'), 'Furniture', 'Home and office furniture'),
    (nextval('category_seq'), 'Toys', 'Toys and games for children of all ages'),
    (nextval('category_seq'), 'Beauty', 'Beauty and personal care products'),
    (nextval('category_seq'), 'Sports', 'Sports equipment and accessories'),
    (nextval('category_seq'), 'Groceries', 'Everyday grocery and household items');

-- Insert products with auto-generated IDs using the sequence
-- Note: Ensure the `category_id` values match valid `id` values from the `category` table.
INSERT INTO product (id, name, description, available_quantity, price, category_id)
VALUES
    (nextval('product_seq'), 'Smartphone', 'Latest model smartphone with advanced features', 100, 699.99, (SELECT id FROM category WHERE name = 'Electronics')), -- Electronics
    (nextval('product_seq'), 'Laptop', 'High-performance laptop for professionals', 50, 1200.00, (SELECT id FROM category WHERE name = 'Electronics')),           -- Electronics
    (nextval('product_seq'), 'Fantasy Novel', 'A captivating fantasy adventure', 200, 14.99, (SELECT id FROM category WHERE name = 'Books')),              -- Books
    (nextval('product_seq'), 'T-Shirt', 'Comfortable cotton T-shirt', 500, 9.99, (SELECT id FROM category WHERE name = 'Clothing')),                          -- Clothing
    (nextval('product_seq'), 'Jeans', 'Denim jeans for everyday wear', 300, 29.99, (SELECT id FROM category WHERE name = 'Clothing')),                        -- Clothing
    -- Electronics (Category ID: 1)
    (nextval('product_seq'), 'Tablet', 'Portable tablet with a high-resolution display', 150, 399.99, (SELECT id FROM category WHERE name = 'Electronics')),
    (nextval('product_seq'), 'Headphones', 'Noise-canceling wireless headphones', 300, 199.99, (SELECT id FROM category WHERE name = 'Electronics')),

    -- Books (Category ID: 2)
    (nextval('product_seq'), 'Mystery Novel', 'A gripping mystery with unexpected twists', 180, 18.99, (SELECT id FROM category WHERE name = 'Books')),
    (nextval('product_seq'), 'Cookbook', 'Delicious recipes from around the world', 120, 24.99, (SELECT id FROM category WHERE name = 'Books')),

    -- Clothing (Category ID: 3)
    (nextval('product_seq'), 'Hoodie', 'Warm and comfortable hoodie', 400, 19.99, (SELECT id FROM category WHERE name = 'Clothing')),
    (nextval('product_seq'), 'Jacket', 'Stylish and durable jacket', 100, 49.99, (SELECT id FROM category WHERE name = 'Clothing')),

    -- Furniture (Category ID: 4)
    (nextval('product_seq'), 'Office Chair', 'Ergonomic office chair with adjustable height', 80, 129.99, (SELECT id FROM category WHERE name = 'Furniture')),
    (nextval('product_seq'), 'Dining Table', 'Wooden dining table for six people', 30, 399.99, (SELECT id FROM category WHERE name = 'Furniture')),

    -- Toys (Category ID: 5)
    (nextval('product_seq'), 'Building Blocks', 'Colorful building blocks for kids', 250, 14.99, (SELECT id FROM category WHERE name = 'Toys')),
    (nextval('product_seq'), 'Action Figure', 'Superhero action figure for imaginative play', 400, 12.99, (SELECT id FROM category WHERE name = 'Toys')),

    -- Beauty (Category ID: 6)
    (nextval('product_seq'), 'Face Cream', 'Hydrating face cream for daily use', 200, 29.99, (SELECT id FROM category WHERE name = 'Beauty')),
    (nextval('product_seq'), 'Shampoo', 'Gentle shampoo with natural ingredients', 300, 9.99, (SELECT id FROM category WHERE name = 'Beauty')),

    -- Sports (Category ID: 7)
    (nextval('product_seq'), 'Tennis Racket', 'High-performance tennis racket', 50, 89.99, (SELECT id FROM category WHERE name = 'Sports')),
    (nextval('product_seq'), 'Yoga Mat', 'Eco-friendly yoga mat for comfortable workouts', 100, 19.99, (SELECT id FROM category WHERE name = 'Sports')),

    -- Groceries (Category ID: 8)
    (nextval('product_seq'), 'Organic Apples', 'Fresh organic apples', 500, 3.99, (SELECT id FROM category WHERE name = 'Groceries')),
    (nextval('product_seq'), 'Milk', '1-liter carton of fresh milk', 800, 1.49, (SELECT id FROM category WHERE name = 'Groceries'));