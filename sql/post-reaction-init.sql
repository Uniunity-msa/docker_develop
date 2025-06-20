SET character_set_client = utf8mb4;
SET character_set_connection = utf8mb4;
SET character_set_results = utf8mb4;


CREATE DATABASE IF NOT EXISTS post_reaction_service_db;
USE post_reaction_service_db;

CREATE TABLE Comment (
  comment_id INT auto_increment PRIMARY KEY NOT NULL,
  comment_content TEXT NOT NULL,
  comment_date VARCHAR(255) NOT NULL,
  like_count_comment INT NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  post_id INT NOT NULL
);

CREATE TABLE Heart (
  heart_id INT auto_increment PRIMARY KEY NOT NULL,
  created_at VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  post_id INT  NOT NULL
);

CREATE TABLE Scrap (
  scrap_id INT auto_increment PRIMARY KEY NOT NULL,
  created_at VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  post_id INT NOT NULL
);

ALTER TABLE Heart MODIFY COLUMN created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE Scrap MODIFY COLUMN created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- 예시 추가
Insert into Comment (comment_id,comment_content, comment_date, like_count_comment, user_email, post_id)
values
('1', '첫 번째 댓글','2025-04-28', 1, 'student@sungshin.ac.kr', 1),
('2', '두 번째 댓글','2025-04-29', 2, 'student@sungshin.ac.kr', 2);

-- 예시 추가 
Insert into Heart (heart_id, created_at, user_email, post_id)
values
('1', '2025-04-28', '20211138@sungshin.ac.kr', 1),
('2', '2025-04-29', '20211138@sungshin.ac.kr', 2);

-- 예시 추가 
Insert into Scrap (scrap_id,created_at, user_email, post_id)
values
('1', '2025-04-28', '20211138@sungshin.ac.kr', 1),
('2', '2025-04-29', '20211138@sungshin.ac.kr', 2);
~                                                     
