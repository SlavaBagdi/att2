# Create schema `humanFriendsdb`;
# drop schema `humanFriendsdb`;
use `humanFriendsdb`;

drop table if exists cat;
create table cat (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

drop table if exists dog;
create table dog (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

drop table if exists hamster;
create table hamster (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


drop table if exists horse;
create table horse (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);

drop table if exists camel;
create table camel (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);

drop table if exists donkey;
create table donkey (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);

drop table if exists pet;
create table pet (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

drop table if exists packAnimal;
create table packAnimal (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

drop table if exists humanFriend;
create table humanFriend(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday Date
    );
    
    
    insert into cat (Name, Command, Birthday) values
    ('Кот1', 'Есть', '2023-01-01'),
    ('Кот2', 'Спать', '2023-01-01'),
	('Кот3', 'Тыгыдыкать', '2023-01-01'),
    ('Кот4', 'есть', '2023-01-01');
    
    select * from cat;

    insert into dog (Name, Command, Birthday) values
    ('Собака1', 'Есть', '2023-01-01'),
    ('Собака2', 'Лежать', '2023-01-01'),
	('Собака3', 'Сидеть', '2023-01-01'),
    ('Собака4', 'Лапу', '2023-01-01');
	
    select * from dog;
 
	insert into hamster (Name, Command, Birthday) values
    ('Хом1', 'Хомячиться', '2023-01-01'),
    ('Хом2', 'Хомячиться', '2023-01-01'),
	('Хом3', 'Хомячиться', '2023-01-01'),
    ('Хом4', 'Хомячиться', '2023-01-01');
	
    select * from hamster;
     
	insert into camel (Name, Command, liftWeight, Birthday) values
    ('Верб1', 'Жевать', 100, '2023-01-01'),
    ('Верб2', 'Плевать', 150, '2023-01-01'),
	('Верб3', 'Поднять', 50, '2023-01-01'),
    ('Верб4', 'Идти', 100, '2023-01-01');
	
    select * from camel;
     
	insert into horse (Name, Command, liftWeight, Birthday) values
    ('Конь1', 'Ржать', 100, '2023-01-01'),
    ('Конь2', 'Фыркать', 50, '2023-01-01'),
	('Конь3', 'Бежать', 150, '2023-01-01'),
    ('Конь4', 'Сахарок', 100, '2023-01-01');
	
    select * from horse;    
     
	insert into donkey (Name, Command, liftWeight, Birthday) values
    ('Осел1', 'Стоять', 20, '2023-01-01'),
    ('Осел2', 'Упираться', 10, '2023-01-01'),
	('Осел3', 'Идти за Ниной', 20, '2023-01-01'),
    ('Осел4', 'Бесить Шурика', 15, '2023-01-01');
	
    select * from donkey;  	
 
 delete from camel where id > 0;
 select * from camel;
 
drop table if exists packAnimalNew; 
create table packAnimalNew (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command, 
        Birthday
from horse union 
select  Name, 
        Command, 
        Birthday
from donkey;

select * from packAnimalNew;

INSERT into pet (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from cat union 
select  Name, 
        Command, 
        Birthday
from dog union
select  Name, 
        Command, 
        Birthday
from hamster;
select * from pet;

INSERT into humanFriend (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from pet union 
select  Name, 
        Command, 
        Birthday
from packAnimalNew;
select * from humanFriend;

drop table if exists youngAnimals;
create table youngAnimals (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select Name, 
        Command, 
        Birthday,
        Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) as age
from humanFriend
where Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) > 1 
	and Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) < 3;
select * from youngAnimals;

drop table if exists newhumanFriend;
create table newhumanFriend (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command,
        Birthday,
        'cat' as oldTable
from cat union 
select  Name, 
        Command, 
        Birthday,
        'dog' as oldTable
from dog union
select  Name, 
        Command, 
        Birthday,
        'hamster' as oldTable
from hamster union 
select  Name, 
        Command, 
        Birthday,
        'horse' as oldTable
from horse union 
select  Name, 
        Command, 
        Birthday,
        'donkey' as oldTable
from donkey;

select * from newhumanFriend;

