CREATE TABLE parts (
	partkey	 bigint AUTO_INCREMENT,
	name	 varchar(55),
	mfgr	 text,
	brand	 text,
	type	 varchar(25),
	size	 int,
	container	 text,
	retailprice double precision,
	comment	 varchar(23),
	PRIMARY KEY(partkey)
);