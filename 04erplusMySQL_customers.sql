CREATE TABLE IF NOT EXISTS customers (
	custkey	 bigint NOT NULL AUTO_INCREMENT,
	name	 varchar(25),
	address	 varchar(40),
	phone	 varchar(150),
	accbal	 double,
	mktsegment varchar(150),
	comment	 varchar(117),
	PRIMARY KEY(custkey)
);