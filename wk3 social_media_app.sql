Create database if not exists Social_Media;
use Social_Media;
drop table if exists user_data;
drop table if exists posts;
drop table if exists comments;

Create table user_data (
id int(10) not null auto_increment,
username varchar(20) not null, 
passoword varchar(20) not null, 
email varchar(40) not null,
primary key(id) 
);

create table posts(
id int(10) not null auto_increment, 
userid int not null, 
post varchar(1000) not null, 
date timestamp, 
primary key(id), 
foreign key(userid) references user_data(id)
);

create table comments (
id int(10) not null auto_increment, 
userid int not null, 
postid int not null, 
comments varchar(1000) not null, 
date timestamp, 
primary key(id), 
foreign key(userid) references user_data(id), 
foreign key(postid) references posts(id)
);










