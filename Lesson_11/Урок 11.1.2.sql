DROP PROCEDURE IF EXISTS insert_rand_users;
DELIMITER //
CREATE PROCEDURE insert_rand_users (IN count_ INT)
BEGIN
	IF (count_ > 0) THEN
		WHILE count_ > 0 DO
				INSERT INTO users (name, birthday_at) VALUES (CONCAT(RAND(), RAND(), RAND()), CURRENT_TIMESTAMP());
				SET count_ = count_ - 1;
		END WHILE;
	ELSE
		SELECT 'Ошибочное значение параметра';
  	END IF;
END//
DELIMITER ;


CALL insert_rand_users(1000000);
SELECT * FROM users;

