CREATE TABLE parts (
	partkey	 BIGSERIAL,
	name	 VARCHAR(55),
	mfgr	 TEXT,
	brand	 TEXT,
	type	 VARCHAR(25),
	size	 INTEGER,
	container	 TEXT,
	retailprice DOUBLE PRECISION,
	comment	 VARCHAR(23),
	PRIMARY KEY(partkey)
);

CREATE TABLE suppliers (
	suppkey BIGSERIAL,
	name	 TEXT,
	address VARCHAR(40),
	phone	 TEXT,
	accbal	 DOUBLE PRECISION,
	comment VARCHAR(101),
	PRIMARY KEY(suppkey)
);

CREATE TABLE partsupp (
	availqty		 INTEGER,
	supplycost	 DOUBLE PRECISION,
	comment		 VARCHAR(199),
	suppliers_suppkey BIGINT,
	parts_partkey	 BIGINT,
	PRIMARY KEY(suppliers_suppkey,parts_partkey)
);

CREATE TABLE customers (
	custkey	 BIGSERIAL,
	name	 VARCHAR(25),
	address	 VARCHAR(40),
	phone	 TEXT,
	accbal	 DOUBLE PRECISION,
	mktsegment TEXT,
	comment	 VARCHAR(117),
	PRIMARY KEY(custkey)
);

CREATE TABLE orders (
	orderkey		 BIGSERIAL,
	orderstatus	 TEXT,
	totalprice	 DOUBLE PRECISION,
	orderdate	 DATE,
	orderpriority	 TEXT,
	clerk		 TEXT,
	shippriority	 INTEGER,
	comment		 VARCHAR(79),
	customers_custkey BIGINT NOT NULL,
	PRIMARY KEY(orderkey)
);

CREATE TABLE lineitems (
	linenumber		 INTEGER,
	quantity			 DOUBLE PRECISION,
	extendedprice		 DOUBLE PRECISION,
	discount			 DOUBLE PRECISION,
	tax			 DOUBLE PRECISION,
	returnflag		 TEXT,
	linestatus		 TEXT,
	shipdate			 DATE,
	commitdate		 DATE,
	receiptdate		 DATE,
	shipinstruct		 TEXT,
	shipmode			 TEXT,
	comment			 VARCHAR(44),
	orders_orderkey		 BIGINT,
	partsupp_suppliers_suppkey BIGINT,
	partsupp_parts_partkey	 BIGINT,
	PRIMARY KEY(orders_orderkey,partsupp_suppliers_suppkey,partsupp_parts_partkey)
);

ALTER TABLE partsupp ADD CONSTRAINT partsupp_fk1 FOREIGN KEY (suppliers_suppkey) REFERENCES suppliers(suppkey);
ALTER TABLE partsupp ADD CONSTRAINT partsupp_fk2 FOREIGN KEY (parts_partkey) REFERENCES parts(partkey);
ALTER TABLE orders ADD CONSTRAINT orders_fk1 FOREIGN KEY (customers_custkey) REFERENCES customers(custkey);
ALTER TABLE lineitems ADD CONSTRAINT lineitems_fk1 FOREIGN KEY (orders_orderkey) REFERENCES orders(orderkey);
ALTER TABLE lineitems ADD CONSTRAINT lineitems_fk2 FOREIGN KEY (partsupp_suppliers_suppkey, partsupp_parts_partkey) REFERENCES partsupp(suppliers_suppkey, parts_partkey);

