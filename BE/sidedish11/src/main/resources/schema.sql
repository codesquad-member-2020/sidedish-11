DROP TABLE IF EXISTS item;

CREATE TABLE item (
  id int primary key auto_increment,
  detail_hash varchar (32),
  image varchar (256),
  alt varchar (128),
  title varchar (128),
  description varchar (256),
  n_price varchar (32),
  p_price varchar (32)
);