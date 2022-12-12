create table employee
(
    employee_id  int auto_increment
        primary key,
    username     varchar(30)  null,
    password     varchar(128) null,
    firstname    varchar(128)  null,
    lastname     varchar(128)  null,
    email        varchar(128)  null,
    employee_tel varchar(10)  null,
    role_id      int          references role(role_id)
);

create table medicine
(
    medicine_id     int auto_increment
        primary key,
    medicine_name   varchar(128)  null,
    medicine_detail varchar(128) null,
    medicine_price  int default 0 not null,
    medicine_stock  int default 0 not null
);

create table member
(
    member_id    int auto_increment
        primary key,
    name         varchar(128) null,
    member_tel   varchar(10)         null,
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

    sale_date   varchar(128) null,
    total_sale  int default 0 not null,
    discount    int default 0 not null,
    member_id   int references member(member_id),
    employee_id int references employee(employee_id)
    medicine_id int references medicine(medicine_id),
    amount      int null
);
