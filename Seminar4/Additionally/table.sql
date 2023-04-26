create table test_a (id INT, data varchar(45));
create table test_b (id INT);
insert into test_a(id, data) values
                                 (10, 'A'),
                                 (20, 'A'),
                                 (30, 'F'),
                                 (40, 'D'),
                                 (50, 'C');
insert into test_b(id) values
                           (10),
                           (30),
                           (50);

#Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.
SELECT *
FROM test_a
LEFT JOIN test_b  on test_a.id = test_b.id
WHERE test_b.id IS NULL;

