-- Drop table messages
DROP TABLE messages;

-- Create Table Messages
CREATE TABLE messages (
  id_messages   SERIAL primary key,
  message       varchar(100) NOT NULL,
  date          TIMESTAMP,
  id_posts      INT REFERENCES posts 
                ON DELETE CASCADE
                ON UPDATE CASCADE,
  FOREIGN KEY (id_posts) REFERENCES posts(id_posts)
);

-- Create Messages
INSERT INTO messages VALUES (DEFAULT,
'apa maksud postingan ini?',
current_timestamp,
1
);
INSERT INTO messages VALUES (DEFAULT,
'Saya ngefans dengan ronaldo',
current_timestamp,
1
);

INSERT INTO messages VALUES (DEFAULT,
'Kenapa politik bgtu merepotkan?',
current_timestamp,
2
);


-- Get Messages
SELECT * FROM messages;

-- Get message
SELECT * FROM messages where id_messages = 5;
SELECT * FROM messages where id_posts = 1;

-- Delete message
DELETE FROM messages where id_messages = 3;

-- Update message
UPDATE messages SET message='apa maksud postingan ini?, saya pikir saya sudah mengerti' WHERE id_messages = 1;