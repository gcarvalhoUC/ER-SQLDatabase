CREATE TABLE parts (
	partkey	 bigint NOT NULL AUTO_INCREMENT,
	name	 varchar(55),
	mfgr	 TEXT,
	brand	 TEXT,
	type	 varchar(25),
	size	 int,
	container	 TEXT,
	retailprice double,
	comment	 varchar(23),
	PRIMARY KEY(partkey)
);

CREATE TABLE suppliers (
  suppkey bigint NOT NULL AUTO_INCREMENT,
  name TEXT,
  address varchar(40),
  phone TEXT,
  accbal double,
  comment varchar(101),
  PRIMARY KEY (suppkey)
);

CREATE TABLE partsupp (
	availqty		 int,
	supplycost	 double,
	comment		 varchar(199),
	suppliers_suppkey bigint,
	parts_partkey	 bigint,
	PRIMARY KEY(suppliers_suppkey,parts_partkey)
);

CREATE TABLE customers (
	custkey	 bigint NOT NULL AUTO_INCREMENT,
	name	 varchar(25),
	address	 varchar(40),
	phone	 TEXT,
	accbal	 double,
	mktsegment TEXT,
	comment	 varchar(117),
	PRIMARY KEY(custkey)
);

CREATE TABLE orders (
	orderkey bigint NOT NULL AUTO_INCREMENT,
	orderstatus	 TEXT,
	totalprice	 double,
	orderdate	 date,
	orderpriority	 TEXT,
	clerk		 TEXT,
	shippriority	 int,
	comment		 varchar(79),
	customers_custkey bigint NOT NULL,
	PRIMARY KEY(orderkey)
);

CREATE TABLE lineitems (
	linenumber		 int,
	quantity double,
	extendedprice		 double,
	discount			 double,
	tax			 double,
	returnflag		 TEXT,
	linestatus		 TEXT,
	shipdate			 date,
	commitdate		 date,
	receiptdate		 date,
	shipinstruct		 TEXT,
	shipmode			 TEXT,
	comment			 varchar(44),
	orders_orderkey		 bigint,
	partsupp_suppliers_suppkey bigint,
	partsupp_parts_partkey	 bigint,
	PRIMARY KEY(orders_orderkey,partsupp_suppliers_suppkey,partsupp_parts_partkey)
);

ALTER TABLE partsupp ADD CONSTRAINT partsupp_fk1 FOREIGN KEY (suppliers_suppkey) REFERENCES suppliers(suppkey);
ALTER TABLE partsupp ADD CONSTRAINT partsupp_fk2 FOREIGN KEY (parts_partkey) REFERENCES parts(partkey);
ALTER TABLE orders ADD CONSTRAINT orders_fk1 FOREIGN KEY (customers_custkey) REFERENCES customers(custkey);
ALTER TABLE lineitems ADD CONSTRAINT lineitems_fk1 FOREIGN KEY (orders_orderkey) REFERENCES orders(orderkey);
ALTER TABLE lineitems ADD CONSTRAINT lineitems_fk2 FOREIGN KEY (partsupp_suppliers_suppkey, partsupp_parts_partkey) REFERENCES partsupp(suppliers_suppkey, parts_partkey);

