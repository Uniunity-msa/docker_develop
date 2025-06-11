-- 데이터베이스 생성 및 사용
SET character_set_client = utf8mb4;
SET character_set_connection = utf8mb4;
SET character_set_results = utf8mb4;
SET character_set_database = utf8mb4;
SET character_set_server = utf8mb4;

CREATE DATABASE IF NOT EXISTS start_service_db;
USE start_service_db;
CREATE TABLE IF NOT EXISTS Council (
    council_id int not null auto_increment Primary key,
    council_name varchar(20) null,
    university_id int null,
    university_name varchar(20) null
);

-- (확인용 임시 테이블)University 테이블 생성
CREATE TABLE IF NOT EXISTS University (
    university_id INT AUTO_INCREMENT PRIMARY KEY,
    university_name VARCHAR(100),
    university_url VARCHAR(255) UNIQUE,
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    council_id INT
);

INSERT INTO Council (council_name, university_id, university_name) VALUES ("성신총학", 1, "성신여자대학교");
INSERT INTO Council (council_name, university_id, university_name) VALUES ("건국총학", 2, "건국대학교");

INSERT INTO University (university_name, university_url, latitude, longitude, council_id)
VALUES ('성신여자대학교', 'sungshin', 37.592, 127.016, 1);
INSERT INTO University (university_name, university_url, latitude, longitude, council_id)
VALUES ('건국대학교', 'konkuk', 37.542, 127.075, 2);
INSERT INTO University (university_name, university_url, latitude, longitude, council_id)
VALUES ('숙명여자대학교', 'sookmyung', 37.546, 126.964, 3);
