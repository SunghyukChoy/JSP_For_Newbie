drop table member;

CREATE TABLE IF NOT EXISTS member(
   id VARCHAR(20) NOT NULL,
   passwd  VARCHAR(20),
   name VARCHAR(30),    
   PRIMARY KEY (id)
);

insert into member values('1', '1234', '고길동');
insert into member values('2', '1235', '윤길동');


select * from member;
