--I create a Bakery database and two tables; Sweet and Savory. 
--Then I insert the bakery data into each table.

CREATE DATABASE bakery;
USE DATABASE bakery;
USE bakery;
CREATE TABLE Sweet(
id INT NOT NULL,
item_name VARCHAR(50),
price FLOAT(2))
CREATE DATABASE bakery;
CREATE TABLE Sweet(
id INT NOT NULL,
item_name VARCHAR(50),
price FLOAT(2));

CREATE DATABASE Savory;
CREATE TABLE bakery;
CREATE TABLE Sweet(
id INT NOT NULL,
item_name VARCHAR(50),
price FLOAT(2));

CREATE DATABASE bakery;
USE bakery;
CREATE TABLE Sweet(id INT NOT NULL,item_name VARCHAR(50),price FLOAT(2),main_ingredient VARCHAR(50));
CREATE TABLE Savory(id INT NOT NULL,item_name VARCHAR(50),price FLOAT(2),main_ingredient VARCHAR(50));

--I realize Sweet Table included some coloumns meant for Savory Table.
--So I drop and recreate Sweet Table.

SELECT * FROM Savory;
DELETE TABLE Sweet;
DROP TABLE Sweet;
CREATE TABLE Sweet(id INT NOT NULL,item_name VARCHAR(50),price FLOAT(2));

--Next I explore the data using the following SQL.
--I insert values into the two tables.

SELECT * FROM Savory;
SELECT * FROM Sweet;
INSERT INTO Sweet(id,item_name,price) VALUES(1,'doughnut', 0.50),(2, 'ban', 0.75), (3,'cannoli',0.88),(4,'apple',1.12),(5,'bread',0.55),(6,'coffee',0.45);
SELECT * FROM Sweet;
INSERT INTO Savory(id,itemm_name,price,main_ingredient) VALUES (1,'meat pie',1.23,'beef'),(2,'sausage roll'2.25,null),(3,'pastry',0.89,'chicken');
INSERT INTO Savory(id,itemm_name,price,main_ingredient) VALUES (1,'meat pie',1.23,'beef'),(2,'sausage roll'2.25,null),(3,'pastry',0.89,'chicken');
INSERT INTO Savory(id,item_name,price,main_ingredient) VALUES (1,'meat pie',1.23,'beef'), (2,'sausage roll',2.25,null),(3,'pastry',0.89,'chicken');
SELECT * FROM Savory;

--I use the bakery database to pull data from the two tables.

USE bakery;
SELECT * FROM Sweet;
SELECT * FROM Savory;
