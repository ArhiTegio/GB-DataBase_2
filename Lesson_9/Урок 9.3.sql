--�������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� �� �������� ������� �����. 
--� 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
--� 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � "������ ����".

CREATE PROCEDURE hello()
BEGIN
	IF  TIME(NOW()) BETWEEN '6:00:00' AND '12:00:00' THEN SELECT '������ ����';
	ELSEIF TIME(NOW()) BETWEEN '12:00:00' AND '18:00:00' THEN SELECT '������ ����';
	ELSE SELECT '������ ����';
	END IF;	
END;

CALL hello();

� ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. ��������� ����������� ����� ����� 
��� ���� �� ���. ��������, ����� ��� ���� ��������� �������������� �������� NULL �����������. ��������� ��������, ��������� ����, ����� 
���� �� ���� ����� ��� ��� ���� ���� ���������. ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.

CREATE TRIGGER check_product_insert BEFORE INSERT ON shop.products 
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.desription IS NULL) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT cancel. Name and description is NULL';		
	END IF;
END;

CREATE TRIGGER check_product_update BEFORE UPDATE ON shop.products 
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.desription IS NULL) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE cancel. Name and description is NULL';
	END IF;
END;

(�� �������) �������� �������� ������� ��� ���������� ������������� ����� ���������. ������� ��������� ���������� ������������������ 
� ������� ����� ����� ����� ���� ���������� �����. ����� ������� FIBONACCI(10) ������ ���������� ����� 55.
