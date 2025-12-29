CREATE DATABASE base_relas2;
use base_relas2;

CREATE TABLE user(
id INT auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique,
password varchar(225) not null
);

CREATE TABLE article(
id INT auto_increment primary key,
tittle varchar(225) not null,
content text not null,
status_public TINYINT(1) default 0,
datep date,
id_user INT,
foreign key (id_user) references user(id)
);

CREATE TABLE comment(
id INT auto_increment primary key,
content text not null,
datep date,
id_user INT,
id_article INT,
foreign key (id_user) references user(id),
foreign key (id_article) references article(id)
);