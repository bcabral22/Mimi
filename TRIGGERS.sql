-- Business rule #1
DELIMITER //
CREATE TRIGGER known_BEFORE_INSERT BEFORE INSERT ON known
FOR EACH ROW
BEGIN
	IF Month(new.bday) = 5
	THEN 
		insert into emails (fname, lname, bdayEmail) values
        (new.fname, new.lname, new.bday);
	END IF;
END;
DELIMITER;

-- Business rule #4
DELIMITER //
CREATE TRIGGER table_status BEFORE INSERT ON partyassignment
FOR EACH ROW
BEGIN
	declare MSG varchar(40);
	IF ((select status from storetable where storetable.tableNumber = new.tableNumber) = 'taken')
	THEN
		SET MSG = 'TABLE ALREADY TAKEN';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = MSG;
	END IF;
END;
DELIMITER;

-- Business rule #5
DELIMITER //
CREATE TRIGGER max_order_triggers BEFORE INSERT ON ordertable
FOR EACH ROW
BEGIN
	declare MSG varchar(60);
	IF ((select count(*) from ordertable where storetable.orderStatus = 'IN PROGRESS') > 50)
	THEN
		SET MSG = 'Too Many Orders In Progress';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = MSG;
	END IF;
END;
DELIMITER;