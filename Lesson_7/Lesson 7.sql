--��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
SELECT u.id, name FROM users as u INNER JOIN (SELECT user_id as id FROM orders GROUP BY user_id) as o using(id)


--�������� ������ ������� products � �������� catalogs, ������� ������������� ������.
SELECT name FROM (
SELECT id, name, 'catalogs' as tbl FROM catalogs
UNION ALL
SELECT id, name, 'products' as tbl FROM products) as pred
WHERE LOWER(name) LIKE '%asus%' Or LOWER(name) LIKE '%������%'


--(�� �������) ����� ������� ������� ������ flights (id, from, to) � ������� ������� 
--cities (label, name). ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
--�������� ������ ������ flights � �������� ���������� �������.
SELECT c1.name as `from`, c2.name as `to` FROM flights as f 
LEFT JOIN cities as c1 on c1.label = f.`from`
LEFT JOIN cities as c2 on c2.label = f.`to` 

INSERT INTO flights (`from`, `to`) values ('moscow', 'omsk')
INSERT INTO flights (`from`, `to`) values ('novgorod', 'kazan')
INSERT INTO flights (`from`, `to`) values ('irkutsk', 'moskow')
INSERT INTO flights (`from`, `to`) values ('omsk', 'irkutsk')
INSERT INTO flights (`from`, `to`) values ('moscow', 'kazan')

INSERT INTO cities (`label`, `name`) values ('moscow', '������')
INSERT INTO cities (`label`, `name`) values ('irkutsk', '�������')
INSERT INTO cities (`label`, `name`) values ('novgorod', '��������')
INSERT INTO cities (`label`, `name`) values ('kazan', '������')
INSERT INTO cities (`label`, `name`) values ('omsk', '����')







INSERT INTO orders (user_id) VALUES (1)