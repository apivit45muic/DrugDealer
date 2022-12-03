create table employee
(
    employee_id  int auto_increment
        primary key,
    username     varchar(30)  null,
    password     varchar(128) null,
    firstname    varchar(30)  null,
    lastname     varchar(20)  null,
    email        varchar(30)  null,
    employee_tel int          null,
    role_id      int          null,
    constraint lastname
        unique (lastname)
);

create table medicine
(
    medicine_id     int auto_increment
        primary key,
    medicine_name   varchar(50)  null,
    medicine_detail varchar(128) null,
    medicine_price  int          null,
    medicine_stock  varchar(35)  null
);

create table member
(
    member_id    int auto_increment
        primary key,
    name         varchar(30) null,
    member_tel   int         null,
    member_point int         null
);

create table role
(
    role_id   int auto_increment
        primary key,
    role_type varchar(30)  null,
    role_name varchar(128) null
);

create table sale
(
    sale_id     int auto_increment
        primary key,
    sale_date   int null,
    total_sale  int null,
    discount    int null,
    member_id   int null,
    employee_id int null
);

create table sale_detail
(
    sale_detail_id int auto_increment
        primary key,
    sale_id        int null,
    medicine_id    int null,
    amount         int null
);


