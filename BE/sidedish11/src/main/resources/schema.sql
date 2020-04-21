DROP TABLE IF EXISTS item;

CREATE TABLE item (
  id int primary key auto_increment,
  detail_hash varchar (64),
  image varchar (64),
  alt varchar (64),
  title varchar (64),
  description varchar (64),
  n_price varchar (64),
  p_price varchar (64)
);