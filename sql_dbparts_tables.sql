/*I create a parts database and a table. 
Then I insert the parts data into the part table*/
CREATE DATABASE parts;
CREATE TABLE part(p_id INT,pname VARCHAR(50),colour VARCHAR(50),weight INT,city VARCHAR(50));
USE parts;
CREATE TABLE part(p_id INT,pname VARCHAR(50),colour VARCHAR(50),weight INT,city VARCHAR(50));
INSERT INTO part(p_id,pname,colour,weight,city) VALUES ('p1','nut','red',12,'london'),('p2','bolt','green',17,'paris'),('p3','screw','blue',17,'rome'),('p4','screw','red',14,'london'),('p5','cam','blue',12,'paris'),('p6','cog','red',19,'london');
/*After some time of no progress in row 1 for p1,
I check to see if the column even exists in the part table*/
INSERT INTO part(p_id,pname,colour,weight,city) VALUES (p1,'nut','red',12,'london'),(p2,'bolt','green',17,'paris'),(p3,'screw','blue',17,'rome'),(p4,'screw','red',14,'london'),(p5,'cam','blue',12,'paris'),(p6,'cog','red',19,'london');
DESCRIBE part;
/*I realize p_id has the wrong data type, so
I modify the column data type inside the table accordingly*/
ALTER TABLE part MODIFY COLUMN p_id VARCHAR(50);
INSERT INTO part(p_id,pname,colour,weight,city) VALUES ('p1','nut','red',12,'london'),('p2','bolt','green',17,'paris'),('p3','screw','blue',17,'rome'),('p4','screw','red',14,'london'),('p5','cam','blue',12,'paris'),('p6','cog','red',19,'london');
/*I create second table called project
and insert stats inside */
USE parts;
CREATE TABLE project(j_id VARCHAR(50),jname VARCHAR(50),city VARCHAR(50));
INSERT INTO project(j_id,jname,city) VALUES ('j1','sorter','paris'),('j2','display','rome'),('j3','ocr','athens'),('j4','console','athens'),('j5','raid','london'),('j6','eds','oslo'),('j7','tape','london');
/*I create third table called supplier using parts 
database, which holds 4 columns and 5 rows*/
USE parts;
CREATE TABLE supplier(s_id VARCHAR(50),sname VARCHAR(50), `status` INT, city VARCHAR(50));
/*I realize status is a keyword and reserved 
word, so I backtick status to be used as an identifier
Next, I add the stats for supplier table*/
INSERT INTO supplier(s_id,sname,`status`,city) VALUES ('s1','smith',20,'london'),('s2','jones',10,'paris'),('s3','blake',30,'paris'),('s4','clark',20,'london'),('s5','adams',30,'athens');
