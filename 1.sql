create schema netology;

create table netology.persons
(
    name           varchar(255),
    surname        varchar(255),
    age            int          not null,
    phone_number   varchar(255) not null,
    city_of_living varchar(255) default 'Russia',
    primary key (name, surname, age)
);

insert into netology.persons (name, surname, age, phone_number, city_of_living)
VALUES ('Иван', 'Петров', 55, +65764989, 'Moscow'),
       ('Николай', 'Шишкин', 65, +69879007, 'Irkutsk'),
       ('Каземир', 'Зорин', 33, +18684855, 'Vladimir');

update persons
set age = 27
where phone_number = +65764989;