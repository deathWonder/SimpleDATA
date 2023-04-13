create schema homework;

create table homework.PERSONS (
    name varchar(30) NOT NULL,
    surname varchar (30) NOT NULL,
    age int CHECK (age>=0) CHECK (age<=100) NOT NULL,
    phone_number varchar(11) UNIQUE,
    city_of_living varchar(30),
    PRIMARY KEY (name, surname, age)
);


insert into homework.PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Vladimir', 'Max', 35, 89999998877, 'MOSCOW');

insert into homework.PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Ola', 'Min', 28, 89999998876, 'PITER');

insert into homework.PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Sabir', 'Bishop', 25, 89999998875, 'MOSCOW');


SELECT name, surname
FROM homework.PERSONS
WHERE city_of_living = 'MOSCOW';


SELECT * FROM homework.PERSONS
WHERE age>27
ORDER BY age DESC;
