DELIMITER //
CREATE FUNCTION times(seconds INT)
    RETURNS varchar(255)
    DETERMINISTIC
BEGIN
    DECLARE days INT default 0;
    DECLARE hours INT default 0;
    DECLARE minutes INT default 0;

    WHILE seconds >= 84600 DO
    SET days = seconds / 84600;
    SET seconds = seconds % 84600;
END WHILE;

    WHILE seconds >= 3600 DO
    SET hours = seconds / 3600;
    SET seconds = seconds % 3600;
END WHILE;

    WHILE seconds >= 60 DO
    SET minutes = seconds / 60;
    SET seconds = seconds % 60;
END WHILE;

return CONCAT('Days: ',days, ', Hours: ', hours, ', Minutes: ', minutes, ', Seconds: ', seconds);
END //
DELIMITER ;

select times(123456);

