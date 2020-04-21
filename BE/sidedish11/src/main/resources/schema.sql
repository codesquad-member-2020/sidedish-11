DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS item;

CREATE TABLE category (
    id int primary key auto_increment,
    name varchar (32)
);

CREATE TABLE item (
  id int primary key auto_increment,
  detail_hash varchar (32),
  image varchar (256),
  alt varchar (128),
  title varchar (128),
  description varchar (256),
  n_price varchar (32),
  s_price varchar (32),
  category int references category(id),
  category_key varchar (32)
);