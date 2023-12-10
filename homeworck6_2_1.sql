DROP DATABASE IF EXISTS homeworck6;
CREATE DATABASE IF NOT EXISTS homeworck6;
USE homeworck6;

DELIMITER //

CREATE FUNCTION get_even_numbers()
RETURNS VARCHAR(100)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE result VARCHAR(100);
    DECLARE i INT;
    
    SET result = '';
    SET i = 1;
    
    WHILE i <= 10 DO
        IF i % 2 = 0 THEN
            SET result = CONCAT(result, i, ',');
        END IF;
        
        SET i = i + 1;
    END WHILE;
    
    SET result = TRIM(TRAILING ',' FROM result);
    
    RETURN result;
END //

DELIMITER ;
SELECT get_even_numbers();
