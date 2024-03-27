CREATE TABLE member (
    memberno NUMBER PRIMARY KEY,
    role NUMBER DEFAULT 0 NOT NULL,
    id VARCHAR2(20) UNIQUE NOT NULL,
    email VARCHAR2(60) UNIQUE NOT NULL,
    name VARCHAR2(30) NOT NULL,
    question VARCHAR2(200) NOT NULL,
    answer VARCHAR2(200) NOT NULL
);

CREATE SEQUENCE member_seq START WITH 1;

INSERT INTO member VALUES (member_seq.NEXTVAL, 1, 'admin', 'admin@gmail.com', '������', '������', '������');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'yura', 'yura@gmail.com', '������', '���� ��¥��?', '24�� 3�� 1��');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'renee', 'renee@gmail.com', 'Ren?e Champs-du-Boisi?re', 'mon s?jour', '? S?oul');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'naoko', 'naoko@gmail.com', '�����ߡ��ʪ���', '��ΫګëȪ�٣���', '���');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'xiaoping', 'xiaoping@gmail.com', '?���', '�������٣��?', '��������');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'june', 'june@gmail.com', '����', '�� ������?', '�������');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'lca', 'choongang@gmail.com', '���߾�', '�п� ��ġ��?', '�̴뿪');
INSERT INTO member VALUES (member_seq.NEXTVAL, 0, 'kingdna', 'kingdna@gmail.com', '�Ҽ���', 'am I destined to be a king?', 'but I am already a king');



CREATE TABLE board (
    boardno NUMBER PRIMARY KEY,
    memberno NUMBER NOT NULL,
    
    type VARCHAR2(10) NOT NULL,
    regtime DATE NOT NULL,
    hits NUMBER DEFAULT 0 NOT NULL,
    recommends NUMBER DEFAULT 0 NOT NULL,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000),
    
    FOREIGN KEY (memberno) REFERENCES member(memberno) ON DELETE CASCADE
);

CREATE SEQUENCE board_seq START WITH 1;


CREATE TABLE recommend(
    serialno NUMBER PRIMARY KEY,
    boardno NUMBER NOT NULL,
    memberno NUMBER NOT NULL,
    
    FOREIGN KEY (boardno) REFERENCES board(boardno) ON DELETE CASCADE,
    FOREIGN KEY (memberno) REFERENCES member(memberno),
    
    CONSTRAINT unique_recommend_constraint UNIQUE (boardno, memberno)
);

CREATE SEQUENCE recommend_seq START WITH 1;

COMMIT;


drop table recommend;
drop table board;
drop table member;
drop sequence recommend_seq;
drop sequence member_seq;
drop sequence board_seq;
commit;