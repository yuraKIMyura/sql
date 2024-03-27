CREATE DATABASE project2;
USE project2;

CREATE TABLE member (
	memberno INT AUTO_INCREMENT PRIMARY KEY,
	id VARCHAR(20) UNIQUE,
    pw VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL
);

INSERT INTO member (id, pw, name) VALUES ('admin', '1234', '관리자');
INSERT INTO member (id, pw, name) VALUES ('hong1', 'abcd', '홍길동');

CREATE TABLE board (
	num INT AUTO_INCREMENT PRIMARY KEY,
	writer VARCHAR(20),
    title VARCHAR(20),
    content text,
    regtime VARCHAR(20),
    hits INT,
    memberno INT
);

INSERT INTO board (memberno, writer, title, content, regtime, hits) VALUES (1, '홍길동', '글1', '글의 내용1', '2017-07-30 10:11:11', 0);
INSERT INTO board (memberno, writer, title, content, regtime, hits) VALUES (2, '이순신', '글2', '글의 내용2', '2017-07-30 10:12:12', 0);
INSERT INTO board (memberno, writer, title, content, regtime, hits) VALUES (3, '강감찬', '글3', '글의 내용3', '2017-07-30 10:13:13', 0);