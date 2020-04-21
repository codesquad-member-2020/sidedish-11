-- DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS item;

-- CREATE TABLE category (
--     id int primary key auto_increment,
--     name varchar (64)
-- )

CREATE TABLE item (
    id int primary key auto_increment,
--     detail_hash varchar (16),
    image varchar (256),
    alt varchar (256),
    title varchar (256),
    description varchar (256)
--     n_price varchar (64),
--     p_price varchar (64),
--     category int references category(id),
--     category_key int
)
