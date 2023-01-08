-- Drop table categories
DROP TABLE categories;

-- Create Table Categories
CREATE TABLE categories (
  id_categories   SERIAL primary key,
  name_categories varchar(100) NOT NULL,
  description     TEXT
);

-- Create Categories
INSERT INTO categories VALUES (DEFAULT,
'Sport',
'Sport adalah category untuk postingan mengenai olahraga dan semacamnya'
);

INSERT INTO categories VALUES (DEFAULT,
'Politic',
'Politic adalah category untuk postingan mengenai politik dan semacamnya'
);


-- Get Categories
SELECT * FROM categories;

-- Get User
SELECT * FROM categories where id_categories = 2;
SELECT * FROM categories where name_categories = 'Politic';

-- Delete User
DELETE FROM categories where id_categories = 3;

-- Update User
UPDATE categories SET name_categories='Sport Update' WHERE name_categories='Sport';