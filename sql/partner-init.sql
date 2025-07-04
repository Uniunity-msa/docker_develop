-- 데이터베이스 생성 및 사용
SET character_set_client = utf8mb4;
SET character_set_connection = utf8mb4;
SET character_set_results = utf8mb4;
SET character_set_database = utf8mb4;
SET character_set_server = utf8mb4;

CREATE DATABASE IF NOT EXISTS partner_service_db;
USE partner_service_db;
CREATE TABLE Partner(
    partner_id INT PRIMARY KEY NOT NULL auto_increment,
    partner_name VARCHAR(255) DEFAULT NULL,
    content VARCHAR(100) DEFAULT NULL,
    start_period DATE DEFAULT NULL,
    end_period DATE DEFAULT NULL,
    address VARCHAR(255) DEFAULT NULL,
    university_id INT DEFAULT NULL,
    latitude DECIMAL(10,6) DEFAULT NULL,
    longitude DECIMAL(10,6) DEFAULT NULL
);


INSERT INTO Partner (partner_name, content, start_period, end_period, address, university_id, latitude, longitude
) VALUES('론도', '성신여대 학생증 제시 시 모든 음료 10% 할인', '2025-03-01', '2025-06-21', '서울 성북구 보문로30나길 36 1층', 1, 37.5909535130802, 127.020505314838);

INSERT INTO Partner (partner_name, content, start_period, end_period, address, university_id, latitude, longitude
) VALUES('하이플레이스', '성신여대 학생 및 교직원 10% 할인', '2025-05-12', '2025-12-23', '서울 성북구 보문로34길 72-3 1층', 1, 37.5910563047166, 127.019510528369);

INSERT INTO Partner (partner_name, content, start_period, end_period, address, university_id, latitude, longitude
) VALUES('트라타 건대점', '건국대 학생 15% 할인(주류제외)', '2025-04-28', '2025-11-20', '서울 광진구 아차산로 297 1층', 2, 37.5385484727146, 127.076244195728);
