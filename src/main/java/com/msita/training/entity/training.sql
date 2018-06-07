create database training;

create table training.user(
	username varchar(100) primary key,
    password varchar(100),
    fullname varchar(100)
);

create table training.product(
	image varchar(100),
    title varchar(100),
    price float,
    idp int(15) primary key,
    description varchar(500)
);


create table training.`order`(
	ido int(15) primary key auto_increment,
    username varchar(100),
    sum int
);

create table training.orderProduct(
	ido int(15),
    idp  int(15),
    primary key (ido, idp),
    quantity int
);
alter table training.orderProduct add foreign key (ido) REFERENCES training.`order`(ido);
alter table training.orderProduct add foreign key (idp) REFERENCES training.product(idp);


alter table training.`order` add foreign key (username) REFERENCES training.user(username);