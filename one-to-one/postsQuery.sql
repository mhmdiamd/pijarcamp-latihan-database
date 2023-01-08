-- Drop table posts
DROP TABLE posts;

-- Create Table Posts
CREATE TABLE posts (
  id_posts    SERIAL primary key,
  title       varchar(100) NOT NULL,
  description TEXT,
  id_categories INT, 
  CONSTRAINT fk_categories
    FOREIGN KEY (id_categories)
      REFERENCES categories(id_categories)
);

-- Create Posts
INSERT INTO posts VALUES (DEFAULT,
'Ronaldo masuk liga arab',
'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using',
1
);

INSERT INTO posts VALUES (DEFAULT,
'Pemilu 2024',
'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using',
3
);


-- Get Posts
SELECT * FROM posts;

-- Get Post
SELECT * FROM posts where id_posts = 1;
SELECT * FROM posts where id_categories = 3;

-- Delete Post
DELETE FROM posts where id_posts = 3;

-- Update Post
UPDATE posts SET title='Rondaldo Update' WHERE id_posts=1;