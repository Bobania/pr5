
DROP TRIGGER IF EXISTS zakaz;
delimiter $$
CREATE TRIGGER zakaz
BEFORE DELETE
ON заказ
FOR EACH ROW
IF OLD.Номер_заказа in (select клиент_id_клиент from клиент)
THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Клиент сделал заказ';
END IF$$
delimiter ;

INSERT INTO заказ VALUES('5', '2023-01-55', '1000', '2', '3', '5', '2') 