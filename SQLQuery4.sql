Create Database RiadDB

use RiadDB


create table product(

id int primary key identity,
name nvarchar(50) not null, 
price money not null,
title nvarchar(50) not null,
description nvarchar(50) not null

);

create table category (

id int primary key identity,
name nvarchar(50) not null

);

create table author_book (

categoryId int not null,
productId int not null,
foreign key (categoryId) references category(Id),
foreign key (productId) references product(Id),
primary key (categoryId , productId)

);






