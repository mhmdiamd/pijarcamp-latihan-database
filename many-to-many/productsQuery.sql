-- Drop table products
DROP TABLE products;

-- Create Table Products
CREATE TABLE products (
  id_product    SERIAL primary key,
  name_product  varchar(100) NOT NULL,
  price         int NOT NULL
);

-- Create Products
INSERT INTO products VALUES (DEFAULT,
'Baju lengan panjang',
20000
);

INSERT INTO products VALUES (DEFAULT,
'Baju lengan pendek',
30000
);

INSERT INTO products VALUES (DEFAULT,
'Baju lengan Oversized',
50000
);

-- Get Products
SELECT * FROM products;

-- Get Product
SELECT * FROM products where id_product = 2;
SELECT * FROM products where price > 25000;

-- Delete Product
DELETE FROM products where id_product = 3;

-- Update Product
UPDATE products SET name_product='baju lengan panjang updated' WHERE name_product='Baju lengan panjang';