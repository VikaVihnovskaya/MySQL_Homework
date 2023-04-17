#1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.

create table if not exists test.sales
(
    id           int auto_increment
        primary key,
    order_date  date   not null,
    count_product int default 0 null

);
INSERT INTO test.sales ( order_date, count_product) VALUES ( '2022-01-01', 156);
INSERT INTO test.sales ( order_date, count_product) VALUES ( '2022-01-02', 180);
INSERT INTO test.sales ( order_date, count_product) VALUES ( '2022-01-03', 21);
INSERT INTO test.sales ( order_date, count_product) VALUES ( '2022-01-04', 124);
INSERT INTO test.sales ( order_date, count_product) VALUES ( '2022-01-05', 341);

#Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : меньше 100  -    Маленький заказ
# от 100 до 300 - Средний заказ, больше 300  -     Большой заказ

SELECT
    id AS 'id заказа',
        IF (count_product < 100, 'Маленький заказ',
            IF (count_product BETWEEN 100 AND 300,'Средний заказ',
                IF (count_product > 300,'Большой заказ', 'Не определено')))
    AS 'Тип заказа'
FROM sales;



