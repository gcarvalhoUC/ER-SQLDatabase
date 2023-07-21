CREATE TABLE IF NOT EXISTS orders (
	orderkey bigint NOT NULL AUTO_INCREMENT,
	orderstatus	 varchar(150),
	totalprice	 double,
	orderdate	 date,
	orderpriority	 varchar(150),
	clerk		 varchar(150),
	shippriority	 int,
	comment		 varchar(79),
	customers_custkey bigint NOT NULL,
	PRIMARY KEY(orderkey)
);