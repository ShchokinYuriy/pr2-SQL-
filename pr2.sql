SELECT * 
FROM pr2.users
ORDER BY LEFT(User_name, 1);

-- Зміна роздільника для створення процедури
DELIMITER //

-- Видалення існуючої процедури, якщо така є
DROP PROCEDURE IF EXISTS GetEvenIDs;

-- Створення нової процедури
CREATE PROCEDURE GetEvenIDs()
BEGIN
    SELECT *
    FROM pr2.users
    WHERE MOD(id, 2) = 0; -- Використовується MOD для визначення парних id
END //

-- Повернення до стандартного роздільника
DELIMITER ;

-- Виклик процедури
CALL GetEvenIDs();