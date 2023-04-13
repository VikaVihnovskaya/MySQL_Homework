# Вывести незвание. производителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer,Price
FROM Product
WHERE ProductCount >2;
# Вывести весь ассортимент товаров марки "Samsung"
SELECT *
FROM Product
WHERE Manufacturer = 'Samsung';
# Вывести информацию о телефонах,где суммарный чек больше 100000 и меньше 145000
SELECT *
FROM Product
WHERE Price * ProductCount > 100000 and Price * ProductCount < 145000;
