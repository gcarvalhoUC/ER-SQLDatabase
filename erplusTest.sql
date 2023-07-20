CREATE TABLE IF NOT EXISTS parts (
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

CREATE TABLE IF NOT EXISTS suppliers (
	suppkey bigint AUTO_INCREMENT,
	name	 text,
	address	varchar(40),
	phone	 text,
	accbal	 double precision,
	comment varchar(101),
	PRIMARY KEY(suppkey)
);
