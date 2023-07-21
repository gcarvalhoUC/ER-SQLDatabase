CREATE TABLE IF NOT EXISTS lineitems (
	linenumber		 int,
	quantity double,
	extendedprice		 double,
	discount			 double,
	tax			 double,
	returnflag		 varchar(150),
	linestatus		 varchar(150),
	shipdate			 date,
	commitdate		 date,
	receiptdate		 date,
	shipinstruct		 varchar(150),
	shipmode			 varchar(150),
	comment			 varchar(44),
	orders_orderkey		 bigint,
	partsupp_suppliers_suppkey bigint,
	partsupp_parts_partkey	 bigint,
	PRIMARY KEY(orders_orderkey,partsupp_suppliers_suppkey,partsupp_parts_partkey)
);