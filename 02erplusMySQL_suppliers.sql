CREATE TABLE suppliers (
  suppkey bigint NOT NULL AUTO_INCREMENT,
  name varchar(150) ,
  address varchar(40),
  phone varchar(150) ,
  accbal double,
  comment varchar(101),
  PRIMARY KEY (suppkey)
);