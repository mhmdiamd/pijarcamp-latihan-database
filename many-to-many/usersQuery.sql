-- Drop table users
DROP TABLE users;

-- Create Table Users
CREATE TABLE users (
  id_users  SERIAL primary key,
  name      varchar(100) NOT NULL,
  email     varchar(100) NOT NULL UNIQUE,
  password  text NOT NULL
);

-- Create Users
INSERT INTO users VALUES (DEFAULT,
'Muhamad Ilham Darmawan',
'darmawanilham34@gmail.com',
crypt('password', gen_salt('bf'))
);

INSERT INTO users VALUES (DEFAULT,
'Muhamad farhan',
'hahahan@gmail.com@gmail.com',
crypt('password', gen_salt('bf'))
);

INSERT INTO users VALUES (DEFAULT,
'Muhamad Hendri',
'hendri@gmail.com',
crypt('password', gen_salt('bf'))
);

-- Get Users
SELECT * FROM users;

-- Get User
SELECT * FROM users where id_users = 2;
SELECT * FROM users where password = crypt('password', password);

-- Delete User
DELETE FROM users where id_users = 3;

-- Update User
UPDATE users SET name='Muhamad Ilham Update' WHERE email='darmawanilham34@gmail.com';