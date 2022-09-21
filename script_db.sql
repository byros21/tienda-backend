CREATE DATABASE d54pqtl47o86ta;

#GRANT ALL ON DATABASE d54pqtl47o86ta TO dmrqalavizdaky;

CREATE TABLE products (
    id int serial,
    pro_name varchar(64),
    pro_descr varchar(512),
    pro_image varchar(512),
    pro_price varchar(16),
	details varchar(512)
    PRIMARY KEY( pro_id )
);

CREATE TABLE users (
    user_id serial,
    user_name varchar(64),
    user_mail varchar(128),
    user_image varchar(512),
    PRIMARY KEY( user_id )
);

CREATE TABLE details (
    det_id serial,
    det_fecha varchar(32),
    det_produc int,
    det_quantity int,
    det_total varchar(16),
    det_user int,
    PRIMARY KEY( det_id ),
    FOREIGN KEY (det_produc) REFERENCES products(pro_id),
    FOREIGN KEY (det_user) REFERENCES users(user_id)
);
