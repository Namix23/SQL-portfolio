/*Create database and grocery list: bananas (4), peanut butter (1), dark chocolate bars (2)*/
CREATE DATABASE bodega;
CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INT);  
INSERT INTO groceries VALUES (1, 'bananas', 4), (2, 'peanut butter', 1), (3, 'dark chocolate bars', 2);
SELECT * FROM groceries;
/*Add aisle column inside groceries table and update existing rows*/
ALTER TABLE groceries ADD (aisle INT);
