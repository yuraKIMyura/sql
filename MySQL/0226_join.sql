CREATE DATABASE test;
USE TEST;

#1대다 관계 (master:member, detail:board)
#master table(member) 없이 detail table(board) 만들 수 없음
create table member (
  memberno int auto_increment primary key,
  id varchar(20) unique,
  email varchar(40) not null,
  name varchar(20) not null
);

create table board (
  num int auto_increment primary key,
  title varchar(100) not null,
  content text,
  regtime date not null,
  hits int not null,
  memberno int,
  FOREIGN KEY (memberno) REFERENCES member(memberno)
);

DROP TABLE member;
DROP TABLE board;
COMMIT;
