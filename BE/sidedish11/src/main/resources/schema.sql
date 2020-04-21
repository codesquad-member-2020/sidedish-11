DROP TABLE IF EXISTS category;

CREATE TABLE category  (
  id int primary key auto_increment,
  name varchar(64),
  deleted boolean
);