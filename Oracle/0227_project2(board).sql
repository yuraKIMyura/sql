CREATE TABLE board (
    num NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000),
    regtime DATE NOT NULL,
    hits NUMBER NOT NULL,
    memberno NUMBER,
    FOREIGN KEY (memberno) REFERENCES member(memberno)
);

DROP TABLE board;

CREATE SEQUENCE seq_board START WITH 1;
DROP SEQUENCE seq_board;

COMMIT;