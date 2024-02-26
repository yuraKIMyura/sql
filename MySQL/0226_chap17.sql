CREATE DATABASE chap17;
USE chap17;

create table id_sequence (
	sequence_name varchar(10) not null,
	next_value int not null,
	primary key (sequence_name)
);

insert into id_sequence values ('article', 0);

create table article (
	article_id int not null auto_increment,
	group_id int not null,
	sequence_no char(16) not null,
	posting_date datetime not null,
	read_count int not null,
	writer_name varchar(20) not null,
	password varchar(10),
	title varchar(100),
	content text,
	primary key (article_id),
	index (sequence_no)
);