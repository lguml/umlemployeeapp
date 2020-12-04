create database contactdb;
CREATE USER 'umldb2020'@'%' IDENTIFIED BY 'umldb2020';
GRANT ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TABLESPACE, CREATE TEMPORARY TABLES, CREATE USER, CREATE VIEW, DELETE, DROP, EVENT, EXECUTE, FILE, INDEX, INSERT, LOCK TABLES, PROCESS, REFERENCES, RELOAD, REPLICATION CLIENT, REPLICATION SLAVE, SELECT, SHOW DATABASES, SHOW VIEW, SHUTDOWN, SUPER, TRIGGER, UPDATE ON *.* TO 'umldb2020'@'%' WITH GRANT OPTION;
use contactdb;

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB;
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('1','test1','test1@gmail.com','test1','111-111-1111');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('2','test2','test2@gmail.com','test2','222-222-2222');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('3','test3','test3@gmail.com','test3','333-333-3333');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('4','test4','test4@gmail.com','test4','444-444-4444');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('5','test5','test5@gmail.com','test5','555-999-9999');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('6','test6','test6@gmail.com','test6','666-999-9999');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('7','test7','test7@gmail.com','test7','777-999-9999');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('8','test8','test8@gmail.com','test8','888-999-9999');
insert into `contact` (`contact_id`, `name`, `email`, `address`, `telephone`) values('9','test9','test10@gmail.com','test9','999-999-9999');
