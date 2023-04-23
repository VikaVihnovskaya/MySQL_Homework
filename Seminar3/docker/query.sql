
CREATE TABLE if not exists test.staff
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
    salary DECIMAL(8, 2),
    age INT
);
INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES

('Вася', 'Петров', 'Начальник', 40, 100000, 60),
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
SELECT *
FROM staff;

#Сортировка по з\п
SELECT salary, id
FROM staff
ORDER BY (salary) DESC; -- убыванию

SELECT salary, id
FROM staff
ORDER BY salary; -- возрастанию

# 5 Max з\п
SELECT salary, id
FROM staff
ORDER BY (salary) DESC
LIMIT 5;

#Посчитайте суммарную зарплату (salary) по каждой специальности
SELECT
    post AS "Специальность",
    SUM(salary) AS "Суммарная з\п"
FROM staff
GROUP BY post;

#Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
SELECT
    COUNT(post) AS "Количество сотрудников по отделу"
FROM staff
WHERE post = 'Рабочий' and age >= 24 and age <= 49
GROUP BY post;

#Найдите количество специальностей

SELECT DISTINCT post
FROM staff
ORDER BY post;
#Выведите специальности, у которых средний возраст сотрудников меньше 30 лет включительно

SELECT
    post AS "Специальность"
FROM staff
GROUP BY post
HAVING AVG(age)<= 30;




