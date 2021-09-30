-- � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.
START TRANSACTION;
SELECT @usr_id:= u.id , @usr_name:= u.name , @usr_birthday:= u.birthday_at , @usr_created:= u.created_at , @usr_updated:= u.updated_at FROM shop.users u WHERE id = 1;
INSERT INTO sample.users (id, name, birthday_at, created_at, updated_at) VALUES (@usr_id, @usr_name, @usr_birthday, @usr_created, @usr_updated);
COMMIT;

SELECT * FROM sample.users;
DELETE FROM sample.users;


-- �������� �������������, ������� ������� �������� name �������� ������� �� ������� products � ��������������� �������� �������� name �� ������� catalogs.
CREATE VIEW show_products AS SELECT p.name as product_name, c.name as catalog_name FROM products as p LEFT JOIN catalogs as c on c.id = p.catalog_id;
select * from show_products;


-- (�� �������) ����� ������� ������� � ����������� ����� created_at. � ��� ��������� ���������� 
-- ����������� ������ �� ������ 2018 ���� '2018-08-01', '2016-08-04', '2018-08-16' � 2018-08-17. 
-- ��������� ������, ������� ������� ������ ������ ��� �� ������, ��������� � �������� ���� 
-- �������� 1, ���� ���� ������������ � �������� ������� � 0, ���� ��� �����������.
START TRANSACTION;
SELECT @date_ := created_at FROM sample.users WHERE MONTH(created_at) = 8 limit 1;
SELECT d.day_ as day_august, CASE WHEN COUNT(created_at) > 0 THEN 1 ELSE 0 END as is_select FROM (SELECT created_at FROM sample.users WHERE MONTH(created_at) = 8) u 
RIGHT JOIN (
SELECT DISTINCT DAY(date_field) as day_ FROM (
    SELECT
        MAKEDATE(YEAR(@date_),1) +
        INTERVAL (MONTH(@date_)-1) MONTH +
        INTERVAL daynum DAY date_field
    FROM
    (
        SELECT t * 10 + u daynum
        FROM
            (SELECT 0 t UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) A,
            (SELECT 0 u UNION SELECT 1 UNION SELECT 2 UNION SELECT 3
            UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7
            UNION SELECT 8 UNION SELECT 9) B
        ORDER BY daynum
    ) days
) month_) as d on d.day_ = DAY(u.created_at)
GROUP BY d.day_
ORDER BY d.day_;
COMMIT;


-- (�� �������) ����� ������� ����� ������� � ����������� ����� created_at. �������� ������, 
-- ������� ������� ���������� ������ �� �������, �������� ������ 5 ����� ������ �������.
 DELETE /*SELECT **/ FROM sample.users WHERE (id, id) IN 
(SELECT u1.id, CASE WHEN u2.id IS NULL THEN u1.id ELSE NULL END as id_ FROM sample.users as u1
LEFT JOIN (SELECT id FROM sample.users ORDER BY created_at LIMIT 5) as u2 ON u1.id = u2.id)

