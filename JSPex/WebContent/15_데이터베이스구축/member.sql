USE JSPexDB;

CREATE TABLE IF NOT EXISTS member(
	id int NOT NULL AUTO_INCREMENT,
	passwd varchar(20),
	name varchar(30),
	primary key(id)	
);