create table bookings
(
    id int not null identity auto_increment,
    date smalldatetime,
    num_persons int,
    id_zone int,
    food_order bit null,
    id_order int null,
    primary key (id)
);
create table users
(
    id int not null identity auto_increment,
    username varchar(255),
    email varchar(255),
    phone varchar(9),
    first_name varchar(255),
    last_name varchar(255),
    birthday smalldatetime,
    age int,
    primary key(id)
);

create table zones
(
    id_zone int not null identity auto_increment,
    zone_description varchar(255),
    primary key (id_zone)
);

create table menu
(
    id int not null identity auto_increment,
    description varchar(max),
    primary key (id)
);

create table order
(
    id int not null identity auto_increment,
    id_order int not null,
    id_menu int,
    quantity int,
    primary key (id)
);