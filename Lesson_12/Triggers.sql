DROP TRIGGER IF EXISTS categories_new_row;
DELIMITER //
CREATE TRIGGER categories_new_row AFTER INSERT ON categories
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'categories');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS categories_update_row;
DELIMITER //
CREATE TRIGGER categories_update_row AFTER UPDATE ON categories
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'categories');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS ml_models_new_row;
DELIMITER //
CREATE TRIGGER ml_models_new_row AFTER INSERT ON ml_models
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'ml_models');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS ml_models_update_row;
DELIMITER //
CREATE TRIGGER ml_models_update_row AFTER UPDATE ON ml_models
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'ml_models');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS ml_models_hyperparameters_new_row;
DELIMITER //
CREATE TRIGGER ml_models_hyperparameters_new_row AFTER INSERT ON ml_models_hyperparameters
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'ml_models_hyperparameters');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS ml_models_hyperparameters_update_row;
DELIMITER //
CREATE TRIGGER ml_models_hyperparameters_update_row AFTER UPDATE ON ml_models_hyperparameters
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'ml_models_hyperparameters');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS ml_models_options_new_row;
DELIMITER //
CREATE TRIGGER ml_models_options_new_row AFTER INSERT ON ml_models_options
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'ml_models_options');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS ml_models_options_update_row;
DELIMITER //
CREATE TRIGGER ml_models_options_update_row AFTER UPDATE ON ml_models_options
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'ml_models_options');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS options_new_row;
DELIMITER //
CREATE TRIGGER options_new_row AFTER INSERT ON `options`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'options');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS options_update_row;
DELIMITER //
CREATE TRIGGER options_update_row AFTER UPDATE ON `options`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'options');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partners_new_row;
DELIMITER //
CREATE TRIGGER partners_new_row AFTER INSERT ON `partners`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'partners');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partners_update_row;
DELIMITER //
CREATE TRIGGER partners_update_row AFTER UPDATE ON `partners`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'partners');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partner_reviews_new_row;
DELIMITER //
CREATE TRIGGER partner_reviews_new_row AFTER INSERT ON `partner_reviews`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'partner_reviews');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partner_reviews_update_row;
DELIMITER //
CREATE TRIGGER partner_reviews_update_row AFTER UPDATE ON `partner_reviews`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'partner_reviews');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partner_profile_new_row;
DELIMITER //
CREATE TRIGGER partner_profile_new_row AFTER INSERT ON `partner_profile`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'partner_profile');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partner_profile_update_row;
DELIMITER //
CREATE TRIGGER partner_profile_update_row AFTER UPDATE ON `partner_profile`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'partner_profile');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partner_product_categoris_new_row;
DELIMITER //
CREATE TRIGGER partner_product_categoris_new_row AFTER INSERT ON `partner_product_categoris`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'partner_product_categoris');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS partner_product_categoris_update_row;
DELIMITER //
CREATE TRIGGER partner_product_categoris_update_row AFTER UPDATE ON `partner_product_categoris`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'partner_product_categoris');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS table_categories_new_row;
DELIMITER //
CREATE TRIGGER table_categories_new_row AFTER INSERT ON `table_categories`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'INSERT', NEW.name, NEW.name, 'table_categories');
END//
DELIMITER ;

DROP TRIGGER IF EXISTS table_categories_update_row;
DELIMITER //
CREATE TRIGGER table_categories_update_row AFTER UPDATE ON `table_categories`
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_id, type_crud, table_name_old, table_name_new, column_name) VALUES (NEW.id, 'UPDATE', OLD.name, NEW.name, 'table_categories');
END//
DELIMITER ;

