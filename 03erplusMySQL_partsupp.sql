CREATE TABLE IF NOT EXISTS partsupp (
	availqty		 int,
	supplycost	 double,
	comment		 varchar(199),
	suppliers_suppkey bigint,
	parts_partkey	 bigint,
	PRIMARY KEY(suppliers_suppkey,parts_partkey)
);