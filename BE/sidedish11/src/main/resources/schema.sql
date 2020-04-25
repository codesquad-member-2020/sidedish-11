DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS badge;
DROP TABLE IF EXISTS delivery_type;
DROP TABLE IF EXISTS thumb_image;
DROP TABLE IF EXISTS detail_section;

CREATE TABLE IF NOT EXISTS category (
    id int primary key auto_increment,
    title varchar (32) not null,
    name varchar (32) not null,
    description varchar (64) not null
);

CREATE TABLE IF NOT EXISTS item (
    id int primary key auto_increment,
    hash varchar (32) not null unique,
    image varchar (256),
    title varchar (128) not null,
    description varchar (256) not null,
    normal_price varchar (32) not null,
    sale_price varchar (32),
    point varchar (32),
    delivery_info varchar (128),
    delivery_fee varchar (128),
    stock int not null,
    category int references category(id)
);

CREATE TABLE IF NOT EXISTS badge (
    id int primary key auto_increment,
    name varchar (32) not null,
    item int references item(id)
);

CREATE TABLE IF NOT EXISTS delivery_type (
    id int primary key auto_increment,
    name varchar (32) not null,
    item int references item(id)
);

CREATE TABLE IF NOT EXISTS thumb_image (
    id int primary key auto_increment,
    name varchar (256) not null,
    item int references item(id),
    item_key int
);

CREATE TABLE IF NOT EXISTS detail_section (
    id int primary key auto_increment,
    name varchar (256) not null,
    item int references item(id),
    item_key int
);
