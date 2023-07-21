CREATE TABLE parts (
	partkey	 bigint NOT NULL AUTO_INCREMENT,
	name	 varchar(55),
	mfgr	 varchar(150),
	brand	 varchar(150),
	type	 varchar(25),
	size	 int,
	container	 varchar(150),
	retailprice double,
	comment	 varchar(23),
	PRIMARY KEY(partkey)
);