DROP DATABASE IF EXISTS homeworck6;
CREATE DATABASE IF NOT EXISTS homeworck6;
USE homeworck6;

DELIMITER //

DROP FUNCTION IF EXISTS get_even_numbers //

CREATE FUNCTION get_even_numbers(start_num INT, end_num INT)
RETURNS text(70)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE result text(70);
    DECLARE i INT;
    
    SET result = '';
    SET i = start_num;
    
    WHILE i <= end_num DO
        IF i % 2 = 0 THEN
            SET result = CONCAT(result, i, ',');
        END IF;
        
        SET i = i + 1;
    END WHILE;
    
    SET result = TRIM(TRAILING ',' FROM result);
    
    RETURN result;
END //

DELIMITER ;
SELECT get_even_numbers(1, 50);
