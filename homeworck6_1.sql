DROP DATABASE IF EXISTS homeworck6;
CREATE DATABASE IF NOT EXISTS homeworck6;
USE homeworck6;

DELIMITER //
CREATE PROCEDURE format_seconds(IN seconds INT)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE formatted_string VARCHAR(100);
    
    SET days = FLOOR(seconds / (24 * 60 * 60));
    SET seconds = seconds % (24 * 60 * 60);
    SET hours = FLOOR(seconds / (60 * 60));
    SET seconds = seconds % (60 * 60);
    SET minutes = FLOOR(seconds / 60);
    SET seconds = seconds % 60;
    
    SET formatted_string = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
    
    SELECT formatted_string;
END //

DELIMITER 
CALL format_seconds(434556999);


