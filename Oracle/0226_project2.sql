CREATE TABLE member(
    memberno NUMBER PRIMARY KEY,
    id varchar2(20) UNIQUE NOT NULL,
    email varchar2(40) NOT NULL,
    name varchar2(20) NOT NULL
);

CREATE SEQUENCE seq_member START WITH 1;

INSERT INTO member (memberno, id, email, name) VALUES (seq_member.NEXTVAL, 'gildong', 'gildong@example.com', 'ȫ�浿');
INSERT INTO member (memberno, id, email, name) VALUES (seq_member.NEXTVAL, 'soonshin', 'soonshin@example.com', '�̼���');
INSERT INTO member (memberno, id, email, name) VALUES (seq_member.NEXTVAL, 'yura', 'yura@example.com', '������');

COMMIT;

drop table member;
drop sequence memberno;