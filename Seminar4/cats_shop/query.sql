drop table if exists cats;
drop table if exists shops;

CREATE TABLE if not exists shops (
                         `id` INT,
                         `shop_name` VARCHAR (100),
                         PRIMARY KEY (id)
);
CREATE TABLE if not exists cats (
                        `name` VARCHAR (100),
                        `id` INT,
                        PRIMARY KEY (id),
                        shops_id INT,
                        CONSTRAINT fk_cats_shops_id FOREIGN KEY (shops_id)
                            REFERENCES shops (id)
);

INSERT INTO shops(id, shop_name)
VALUES
    (1, 'Четыре лапы'),
    (2, 'Мистер Зоо'),
    (3, 'МурзиЛЛа'),
    (4, 'Кошки и собаки');

INSERT INTO cats(name, id, shops_id)
VALUES
    ('Murzik',1,1),
    ('Nemo',2,2),
    ('Vicont',3,1),
    ('Zuza',4,3);

#Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id
SELECT c.name, s.shop_name
FROM cats c
JOIN shops s on s.id = c.shops_id;

#Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)
SELECT s.id,s.shop_name,c.shops_id,c.name
FROM shops s
JOIN cats c on s.id = c.shops_id
WHERE name = 'Murzik';


SELECT s.*, cats_Murzik.*
FROM shops s
         JOIN (SELECT name, shops_id, id FROM cats
WHERE name = 'Murzik') cats_Murzik
on cats_Murzik.shops_id = s.id;

#Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”
SELECT s.id, s.shop_name,c.shops_id,c.name
FROM shops s
LEFT JOIN cats c on s.id = c.shops_id
WHERE name !='Murzik' and name !='Zuza';


