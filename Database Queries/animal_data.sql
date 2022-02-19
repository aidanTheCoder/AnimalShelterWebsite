
--
--	CREATE TABLE animal (
--		animal_id INT AUTO_INCREMENT,
--		animal_type VARCHAR(10),
--		sex VARCHAR(10),
--		color VARCHAR(10),
--		size VARCHAR(10),
--		breed VARCHAR(15),
--		animal_weight DECIMAL,
--		animal_age_year INT,
--		animal_age_year INT,
--		neutered BOOL,
--		PRIMARY KEY (animal_id));
--

INSERT INTO animals (animal_type, sex, color, size, breed, weight, animal_age, fixed) VALUES
('dog','female', 'white', 'small', 'poodle', 15, 'old', TRUE),
('dog','male', 'mix', 'small', 'beagle', 20, 'medium-aged', FALSE),
('dog','male', 'brown', 'small', 'pug', 18, 'old', TRUE),
('dog','male', 'mix', 'large', 'german shepherd', 60, 'young', FALSE),
('dog','male', 'mix', 'medium', 'mix', 20, 'old', TRUE),
('dog','female', 'mix', 'medium', 'pitbull', 55, 'old', TRUE),
('dog','female', 'brown', 'small', 'terrier', 10, 'young', FALSE),
('dog','male', 'brown', 'small', 'mix', 14, 'medium-aged', TRUE),
('dog','male', 'mix', 'large', 'german shepherd', 70, 'old', FALSE),
('dog','female', 'mix', 'medium', 'boxer',45, 'medium-aged', TRUE),
('dog','female', 'brown', 'small', 'chihuahua', 6, 'old', FALSE),
('dog','female', 'mix', 'large', 'mix', 70, 'old', TRUE),
('dog','female', 'white', 'small', 'maltese', 7, 'medium-aged', TRUE),
('dog','female', 'black', 'large', 'german-shepherd', 65, 'old', TRUE),
('dog','male', 'black', 'large', 'labrador', 65, 'medium-aged', FALSE),
('dog','female', 'white', 'small', 'maltese', 10, 'medium-aged', FALSE),
('dog','female', 'mix', 'small', 'mix', 20, 'medium-aged', TRUE),
('dog','male', 'mix', 'small', 'chihuahua', 9, 'old', TRUE),
('dog','male', 'mix', 'small', 'pug', 17, 'medium-aged', TRUE),
('dog','female', 'mix', 'medium', 'husky', 40, 'medium-aged', FALSE),
('dog','male', 'mix', 'medium', 'bulldog', 40, 'old', TRUE),
('cat','female', 'orange', 'medium', 'domestic medium hair', 13, 'old', FALSE),
('cat','male', 'mix', 'medium', 'domestic shorthair', 11, 'medium-aged', TRUE),
('cat','male', 'grey', 'small', 'unknown', 9, 'young', FALSE),
('cat','female', 'mix', 'large', 'domestic shorthair', 19, 'old', TRUE),
('cat','female', 'mix', 'medium', 'siamese', 12, 'medium-aged', FALSE),
('cat','male', 'mix', 'medium', 'american shorthair', 12, 'young', FALSE),
('cat','female', 'mix', 'medium', 'domestic shorthair', 13, 'medium-aged', FALSE),
('cat','female', 'grey', 'small', 'tabby', 8, 'young', FALSE),
('cat','male', 'mix', 'medium', 'domestic medium hair', 12, 'medium-aged', TRUE),
('cat','male', 'black', 'medium', 'bombay', 14, 'medium-aged', TRUE),
('cat','female', 'orange', 'medium', 'domestic shorthair', 14, 'medium-aged', FALSE),
('cat','female', 'black', 'medium', 'domestic shorthair', 13, 'medium-aged', TRUE),
('cat','male', 'mix', 'medium', 'american shorthair', 12, 'young', TRUE),
('cat','female', 'black', 'medium', 'domestic shorthair', 13, 'medium-aged', FALSE),
('cat','female', 'mix', 'small', 'domestic shorthair', 12, 'medium-aged', FALSE),
('horse','male', 'white', 'large', 'appaloosa', NULL, 'young', TRUE),
('horse','male', 'white', 'large', 'quarterhorse', NULL, 'old', FALSE),
('horse','male', 'white', 'large', 'arabian', NULL, 'medium-aged', TRUE),
('horse','female', 'white', 'large', 'arabian', NULL, 'medium-aged', FALSE);
	
--	
--	CREATE TABLE animal_information (
--		animal_id INT AUTO_INCREMENT,
--		admission DATE,
--		location_found VARCHAR(30),
--		adoptable_status BOOL,
--		PRIMARY KEY (animal_id));
--
	
INSERT INTO animal_information(admission, location_found, adoptable_status) VALUES
('2021-01-15', 'Elmwood Avenue', TRUE), 	('2020-10-11', 'State Highway 89', TRUE),
('2020-11-01', 'State Highway 89', TRUE), 	('2021-09-06', 'West Fork Street', TRUE),
('2021-10-23', 'Skips Lane', TRUE), 		('2021-11-25', 'State Highway 89', FALSE),
('2021-04-29', 'Crowfield Road', TRUE), 	('2021-08-29', 'Lodgeville Road', TRUE),
('2021-11-20', 'Farm Meadow Drive', FALSE),	('2020-01-13', 'State Route 69', TRUE),
('2020-02-15', 'State Highway 89', TRUE), 	('2021-11-18', 'Kelly Drive', TRUE),
('2021-10-31', 'Polk Street', TRUE), 		('2021-04-03', 'White Pine Lane', TRUE),
('2020-05-20', 'State Route 69', TRUE), 	('2021-11-29', 'State Highway 89', FALSE),
('2021-05-05', 'Dogwood Road', TRUE), 		('2019-07-24', 'Clifford Street', TRUE),
('2019-03-11', 'East Avenue', TRUE), 		('2021-09-13', 'Blane Street', TRUE),
('2021-08-22', 'State Route 69', TRUE), 	('2021-10-21', 'State Route 69', TRUE),
('2021-09-09', 'Coplin Avenue', TRUE), 		('2021-12-01', 'Pretty View Lane', FALSE),
('2021-01-18', 'State Highway 89', TRUE), 	('2021-05-18', 'State Highway 89', TRUE),
('2021-11-27', 'Browning Lane', TRUE), 		('2020-02-17', 'Ingram Road', TRUE),
('2021-12-02', 'State Highway 89', FALSE), 	('2020-08-22', 'Middleville Road', TRUE),
('2021-12-04', 'Terra Cotta Street', TRUE),	('2021-11-10', 'State Route 69', TRUE),
('2021-03-09', 'State Highway 89', TRUE), 	('2021-11-30', 'Round Table Drive', FALSE),
('2021-02-19', 'Renwick Drive', TRUE), 		('2021-07-10', 'State Route 69', TRUE),
('2020-07-23', 'Barnes Street', TRUE), 		('2020-09-18', 'State Highway 89', TRUE),
('2021-11-22', 'State Route 69', FALSE), 	('2021-10-26', 'Steele Street', TRUE);

--
--	CREATE TABLE adoption (
--		animal_id INT AUTO_INCREMENT,
--		adoptable_as_of DATE,
--		adoptable_status BOOL,
--		PRIMARY KEY (animal_id));
--

INSERT INTO adoption(adoptable_as_of, adoptable_status) VALUES
('2021-02-01', TRUE), 	('2020-10-11', TRUE),
('2020-11-21', TRUE), 	('2021-09-06', TRUE),
('2021-11-23', TRUE), 	(NULL, FALSE),
('2021-04-29', TRUE), 	('2021-08-29', TRUE),
(NULL, FALSE), 			('2020-01-13', TRUE),
('2020-02-15', TRUE), 	('2021-11-18', TRUE),
('2021-10-31', TRUE), 	('2021-04-03', TRUE),
('2020-05-20', TRUE), 	(NULL, FALSE),
('2021-05-05', TRUE), 	('2019-07-24', TRUE),
('2019-03-11', TRUE), 	('2021-09-13', TRUE),
('2021-08-22', TRUE), 	('2021-10-21', TRUE),
('2021-09-09', TRUE), 	(NULL, FALSE),
('2021-01-18', TRUE), 	('2021-05-18', TRUE),
('2021-11-27', TRUE), 	('2020-02-17', TRUE),
(NULL, FALSE), 			('2020-08-22', TRUE),
('2021-12-04', TRUE), 	('2021-11-10', TRUE),
('2021-03-09', TRUE), 	(NULL, FALSE),
('2021-02-19', TRUE), 	('2021-07-10', TRUE),
('2020-07-23', TRUE), 	('2020-09-18', TRUE),
(NULL, FALSE), 			('2021-10-26', TRUE);
	
--
--	CREATE TABLE missing (
--		first_name VARCHAR(30),
--		last_name VARCHAR(30),
--		email VARCHAR(30)
--		last_seen DATE,
--		animal_type VARCHAR(10),
--		sex VARCHAR(10),
--		color VARCHAR(10),
--		size VARCHAR(10),
--		breed VARCHAR(15),
--		PRIMARY KEY (last_name);
--
INSERT INTO missing(first_name, last_name, email, last_seen, animal_type, sex, color, size, breed) VALUES
('joe', 'goldberg', 'joegold@yahoo.com', '2020-03-16', 'dog', 'female', 'mix', 'small', 'shih tzu'),
('amina', 'zillah', 'zillah1@gmail.com', '2021-10-30', 'dog', 'male', 'brown', 'small', 'chihuahua'),
('malina', 'lam', 'malina.lam@gmail.com', '2021-12-01', 'dog', 'male', 'white', 'small', 'poodle'),
('emma', 'peters', 'emmapeters120@gmail.com', '2020-01-01', 'dog', 'female', 'brown', 'large', 'labrador'),
('virginia', 'rios', 'riosvirginia@gmail.com', '2021-07-04', 'cat', 'female', 'mix', 'medium', 'domestic shorthair'),
('thomas', 'wheeler', 'thomaswheelers@rocketmail.com', '2021-04-04', 'cat', 'female', 'black', 'medium', 'american shorthair'),
('edith', 'jones', 'jonesfamily@hotmail.com', '2019-12-30', 'cat', 'male', 'mix', 'medium', 'domestic shorthair'),
('talen', 'fernando', 'tal.fernando@gmail.com', '2020-03-26', 'cat', 'male', 'white', 'small', 'domestic shorthair'),
('Ari', 'Cara', 'ari_cara@yahoo.com', '2021-09-19', 'cat', 'male', 'mix', 'medium', 'american shorthair'),
('Kerry', 'Ford', 'fordfkerry@gmail.com', '2021-01-20', 'cat', 'female', 'orange', 'medium', 'domestic shorthair');