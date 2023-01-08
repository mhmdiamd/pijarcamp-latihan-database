-- Drop table carts
DROP TABLE carts;

-- Create Table Carts
CREATE TABLE carts (
  id_cart    SERIAL PRIMARY KEY,
  id_product  INT,
  id_user     INT,
  quantity    INT DEFAULT 1,
  CONSTRAINT fk_product
    FOREIGN KEY (id_product)
      REFERENCES products(id_product),
  CONSTRAINT fk_user
    FOREIGN KEY (id_user)
      REFERENCES users(id_user)
);

-- Create Carts
INSERT INTO carts VALUES (DEFAULT,
1,2
);

INSERT INTO carts VALUES (DEFAULT,
1,1,2
);


-- Get Carts
SELECT * FROM carts;

-- Get Cart
SELECT * FROM carts where id_user = 2;
SELECT * FROM carts where quantity > 2;

-- Delete Cart
DELETE FROM carts where id_cart = 1;
DELETE FROM carts where id_user = 2;

-- Update Cart
UPDATE carts SET quantity=carts.quantity + 1 WHERE id_cart=2;