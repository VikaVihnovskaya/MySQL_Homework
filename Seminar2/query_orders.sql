# Создайте таблицу “orders”, заполните ее значениями
create table if not exists test.orders
(
    id           int auto_increment
    primary key,
    employee_id  varchar(50)   not null,
    amount decimal(5,2) null,
    order_status varchar(50)   not null
    );
INSERT INTO test.orders (employee_id, amount, order_status) VALUES ('e03', 15.00 ,'OPEN' );
INSERT INTO test.orders (employee_id, amount, order_status) VALUES ('e01', 25.50 ,'OPEN' );
INSERT INTO test.orders (employee_id, amount, order_status) VALUES ('e05', 100.70 ,'CLOSED' );
INSERT INTO test.orders (employee_id, amount, order_status) VALUES ('e02', 22.18 ,'OPEN' );
INSERT INTO test.orders (employee_id, amount, order_status) VALUES ('e04', 9.50 ,'CANCELLED' );

SELECT
    id AS 'id заказа',
        IF (order_status = 'OPEN', 'Order is in open state',
            IF (order_status = 'CLOSED', 'Order is closed',
                IF (order_status = 'CANCELLED', 'Order is cancelled','Not status')))
    AS 'full_order status'
FROM orders;
