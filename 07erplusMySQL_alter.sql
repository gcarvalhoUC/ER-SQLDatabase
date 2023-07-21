ALTER TABLE partsupp ADD CONSTRAINT partsupp_fk1 FOREIGN KEY (suppliers_suppkey) REFERENCES suppliers(suppkey)
ALTER TABLE partsupp ADD CONSTRAINT partsupp_fk2 FOREIGN KEY (parts_partkey) REFERENCES parts(partkey)
ALTER TABLE orders ADD CONSTRAINT orders_fk1 FOREIGN KEY (customers_custkey) REFERENCES customers(custkey)
ALTER TABLE lineitems ADD CONSTRAINT lineitems_fk1 FOREIGN KEY (orders_orderkey) REFERENCES orders(orderkey)
ALTER TABLE lineitems ADD CONSTRAINT lineitems_fk2 FOREIGN KEY (partsupp_suppliers_suppkey, partsupp_parts_partkey) REFERENCES partsupp(suppliers_suppkey, parts_partkey);