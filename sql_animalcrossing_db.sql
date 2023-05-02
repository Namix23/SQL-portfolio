#Create an Animal Crossing database with 5 tables; villagers, islands, fossils, aquatic animals & land animals 
CREATE DATABASE animal_crossing;
USE animal_crossing;
CREATE TABLE villagers(
villager_id INT PRIMARY KEY,
villager_name VARCHAR (50) NOT NULL,
animal_type VARCHAR (50) NOT NULL,
personality VARCHAR (10) NOT NULL,
hobby VARCHAR (10) NOT NULL
);
INSERT INTO villagers 
(villager_id, villager_name, animal_type, personality, hobby)
VALUES
(1, 'roscoe', 'horse', 'cranky', 'music'),
(2, 'marshal', 'squirrel', 'smug', 'music'),
(3, 'raymond', 'cat', 'smug', 'nature'),
(4, 'tangy', 'cat', 'peppy', 'music'),
(5, 'dotty', 'rabbit', 'peppy', 'fashion'),
(6, 'bob', 'cat', 'lazy', 'play'),
(7, 'julian', 'horse', 'smug', 'music'),
(8, 'coco', 'rabbit', 'normal', 'education');
CREATE TABLE islands(
island_id INT PRIMARY KEY,
island_name VARCHAR (50),
island_hemisphere VARCHAR (50),
native_fruit VARCHAR (10),
native_flower VARCHAR (10)
);
INSERT INTO islands
(island_id, island_name, island_hemisphere, native_fruit, native_flower)
VALUES
(1, 'destiny island', 'northern', 'peach', 'cosmos'),
(2, 'paradis island', 'southern', 'orange', 'rose'),
(3, 'stardew island', 'southern', 'apple', 'lily'),
(4, 'gullah gullah island', 'northern', 'pear', 'rose'),
(5, 'total drama island', 'southern', 'cherry', 'hyacinth'),
(6, 'ferngully island', 'northern', 'peach', 'hyacinth'),
(7, 'treasure island', 'southern', 'peach', 'tulip'),
(8, 'townsville island', 'northern', 'orange', 'rose'),
(9, 'fantasy island', 'southern', 'pear', 'lily');
CREATE TABLE fossils(
fossil_id INT PRIMARY KEY,
fossil_name VARCHAR (50),
fossil_part VARCHAR (50),
sell_price DECIMAL (6,0) NOT NULL
);
INSERT INTO fossils
(fossil_id, fossil_name, fossil_part, sell_price)
VALUES
(1, 'stego', 'tail', 4000),
(2, 'tricera', 'skull', 5500),
(3, 'sabertooth','skull', 2500),
(4, 'parasaur', 'torso', 3000),
(5, 'megacero', 'tail', 3000),
(6, 'mammoth', 'skull', 4500),
(7, 'diplo', 'neck', 4500),
(8, 'brachio', 'skull', 6000),
(9, 'ankylo', 'tail', 2500);
CREATE TABLE aquatic_animals(
aa_id INT PRIMARY KEY,
animal_name VARCHAR (50),
size VARCHAR (10),
location VARCHAR (10),
sell_price DECIMAL (5,0) NOT NULL
);
INSERT INTO aquatic_animals 
(aa_id, animal_name, size, location, sell_price)
VALUES
(1, 'pale chub', 'tiny', 'river', 200),
(2, 'carp', 'medium', 'pond', 300),
(3, 'crawfish', 'small', 'pond', 200),
(4, 'frog', 'small', 'pond', 120),
(5, 'zebra turkeyfish', 'medium', 'sea', 500),
(6, 'puffer fish', 'medium', 'sea', 250),
(7, 'squid', 'medium', 'sea', 500),
(8, 'puffer fish', 'medium', 'sea', 250);
CREATE TABLE land_animals(
la_id INT PRIMARY KEY,
animal_name VARCHAR (50),
location VARCHAR (10),
sell_price DECIMAL (5,0) NOT NULL
);
INSERT INTO land_animals
(la_id, animal_name, location, sell_price)
VALUES
(1, 'tiger butterfly', 'flying', 240),
(2, 'spider', 'tree', 600),
(3, 'snail', 'rock', 250),
(4, 'bagworm', 'tree', 600),
(5, 'walking stick', 'tree', 600),
(6, 'ladybug', 'flower', 200),
(7, 'red dragonfly', 'flying', 180),
(8, 'giant cicada', 'tree', 500);
#Check how villagers table looks in order to proceed with queries
SELECT * FROM villagers;
#Find all villagers that are either a cat or a horse
SELECT * FROM villagers
WHERE animal_type= 'cat' or animal_type= 'horse';
#Find personality and villager name, excluding peppy as a personality
SELECT vi.personality, vi.villager_name
FROM villagers AS vi
WHERE vi.personality != 'peppy';
#Check how islands table looks
SELECT * FROM islands;
#Find the columns native_fruit, native_flower, and island_hemisphere from the 
#islands table where island_name has more than 14 length characters
SELECT i.island_name, i.native_fruit, i.native_flower, i.island_hemisphere
FROM islands AS i
WHERE LENGTH(i.island_name) > 14;
#Check how fossils table looks
SELECT * FROM fossils;
#Find all fossils records where the fossil part is a skull and the sell price is greater than 4,000
SELECT * FROM fossils AS fos
WHERE fos.fossil_part= 'skull' 
AND fos.sell_price > 4000;
#Check aquatic animals table 
SELECT * FROM aquatic_animals;
#Sort the data in order based on sell price 
SELECT * FROM aquatic_animals
ORDER BY sell_price;
#Add a Foreign Key constraint named 'FK_island_id' to the 'villagers' table
#to link between the two tables
ALTER TABLE villagers
ADD CONSTRAINT FK_island_id
FOREIGN KEY(villager_id)
REFERENCES islands(island_id);
