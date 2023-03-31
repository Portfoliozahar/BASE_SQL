
#1
CREATE TABLE `database`.`phone` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45),
  `manufacturer` VARCHAR(45) ,
  `count` INT ,
  `price` DECIMAL(10,2) ,
  PRIMARY KEY (`id`));


INSERT INTO `database`.`phone` (`id`, `name`, `manufacturer`, `count`, `price`)
VALUES 
('1', 'iPhone 12', 'Apple', '10', '849.99'),
('2', 'Galaxy 10', 'Samsung', '2', '450.00'),
('3', 'Xperia 5', 'Sony', '3', '699.99'),
('4', 'iPhone 11', 'Apple', '1', '700.00'),
('5', 'Galaxy 9', 'Samsung', '0', '429.99');

#2
SELECT name, manufacturer, price
FROM phone
WHERE count > 2;

#3 

SELECT *
FROM phone
WHERE manufacturer = 'Samsung';
