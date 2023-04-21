--Create grocery list: bananas (4), peanut butter (1), dark chocolate bars (2)
CREATE DATABASE bodega;
CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INT);  
INSERT INTO groceries VALUES (1, 'bananas', 4), (2, 'peanut butter', 1), (3, 'dark chocolate bars', 2);
--Realize I wanted to add 3 more rows and add an aisle column 
INSERT INTO groceries VALUES 
(4, 'ice cream', 1),
(5, 'cherries', 6),
(6, 'chocolate syrup', 1);
ALTER TABLE groceries ADD aisle INT;
--Update the missing rows under the aisle column
UPDATE groceries
SET aisle= 7 WHERE id= 1;
UPDATE groceries
SET aisle= 2 WHERE id= 2;
UPDATE groceries
SET aisle= 2 WHERE id= 3;
UPDATE groceries
SET aisle= 12 WHERE id= 4;
UPDATE groceries
SET aisle= 2 WHERE id= 5;
UPDATE groceries
SET aisle= 4 WHERE id= 6;
--Check to see if all the data is shown under aisle column
SELECT aisle FROM groceries;
--Aim to have aisle listed by order instead of having mix of low/high numbers
SELECT * FROM groceries ORDER BY aisle;
