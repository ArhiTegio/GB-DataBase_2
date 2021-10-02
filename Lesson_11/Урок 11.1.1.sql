USING vk;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	Id Int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
	table_id int unsigned NOT NULL COMMENT 'Идентификатор в таблице',
	type_crud varchar(256) NOT NULL COMMENT 'Тип CRUD запроса',
	table_name_old varchar(256) NOT NULL COMMENT 'Название таблицы старое',
	table_name_new varchar(256) NOT NULL COMMENT 'Название таблицы новое',
	column_name varchar(4096) NOT NULL COMMENT 'Текст в колонке name',
	createdAt datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	PRIMARY KEY (Id)  
) COMMENT = 'Разделы интернет-магазина' ENGINE=Archive;



DROP TRIGGER IF EXISTS catalogs_new_row;
DELIMITER //
CREATE TRIGGER catalogs_new_row AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'catalogs');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS catalogs_update_row;
DELIMITER //
CREATE TRIGGER catalogs_update_row AFTER UPDATE ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'catalogs');
END//
DELIMITER ;



DROP TRIGGER IF EXISTS users_new_row;
DELIMITER //
CREATE TRIGGER users_new_row AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'users');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS users_update_row;
DELIMITER //
CREATE TRIGGER users_update_row AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'users');
END//
DELIMITER ;


DROP TRIGGER IF EXISTS products_new_row;
DELIMITER //
CREATE TRIGGER products_new_row AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'products');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS products_update_row;
DELIMITER //
CREATE TRIGGER products_update_row AFTER UPDATE ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'products');
END//
DELIMITER ;



-- Тестирование
INSERT INTO products (name, desription, price) VALUES ('TEST9', 'CURRENT_TIMESTAMP()', 1.11);
UPDATE products SET name = 'TEST9_' WHERE name = 'TEST9';
SELECT * FROM products;

INSERT INTO users (name, birthday_at) VALUES ('TEST9', CURRENT_TIMESTAMP());
UPDATE users SET name = 'TEST9_' WHERE name = 'TEST9';
SELECT * FROM users;

INSERT INTO catalogs (name) VALUES ('TEST9');
UPDATE catalogs SET name = 'TEST9_' WHERE name = 'TEST9';
SELECT * FROM catalogs c ;

SELECT * FROM logs;