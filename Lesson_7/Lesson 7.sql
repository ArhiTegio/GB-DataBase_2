--Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT u.id, name FROM users as u INNER JOIN (SELECT user_id as id FROM orders GROUP BY user_id) as o using(id)


--Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT name FROM (
SELECT id, name, 'catalogs' as tbl FROM catalogs
UNION ALL
SELECT id, name, 'products' as tbl FROM products) as pred
WHERE LOWER(name) LIKE '%asus%' Or LOWER(name) LIKE '%роцесс%'


--(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов 
--cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. 
--Выведите список рейсов flights с русскими названиями городов.
SELECT c1.name as `from`, c2.name as `to` FROM flights as f 
LEFT JOIN cities as c1 on c1.label = f.`from`
LEFT JOIN cities as c2 on c2.label = f.`to` 

INSERT INTO flights (`from`, `to`) values ('moscow', 'omsk')
INSERT INTO flights (`from`, `to`) values ('novgorod', 'kazan')
INSERT INTO flights (`from`, `to`) values ('irkutsk', 'moskow')
INSERT INTO flights (`from`, `to`) values ('omsk', 'irkutsk')
INSERT INTO flights (`from`, `to`) values ('moscow', 'kazan')

INSERT INTO cities (`label`, `name`) values ('moscow', 'Москва')
INSERT INTO cities (`label`, `name`) values ('irkutsk', 'Иркутск')
INSERT INTO cities (`label`, `name`) values ('novgorod', 'Новгород')
INSERT INTO cities (`label`, `name`) values ('kazan', 'Казань')
INSERT INTO cities (`label`, `name`) values ('omsk', 'Омск')







INSERT INTO orders (user_id) VALUES (1)