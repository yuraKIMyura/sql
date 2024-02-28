CREATE TABLE member(
    memberno NUMBER PRIMARY KEY,
    id varchar2(20) UNIQUE NOT NULL,
    email varchar2(40) NOT NULL,
    name varchar2(20) NOT NULL
);

CREATE SEQUENCE seq_member START WITH 1;

INSERT INTO member (memberno, id, email, name) VALUES (seq_member.NEXTVAL, 'gildong', 'gildong@example.com', 'È«±æµ¿');
INSERT INTO member (memberno, id, email, name) VALUES (seq_member.NEXTVAL, 'soonshin', 'soonshin@example.com', 'ÀÌ¼ø½Å');
INSERT INTO member (memberno, id, email, name) VALUES (seq_member.NEXTVAL, 'yura', 'yura@example.com', '±èÀ¯¶ó');

COMMIT;

drop table member;
drop sequence memberno;