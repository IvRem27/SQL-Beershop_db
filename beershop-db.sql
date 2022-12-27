DROP TABLE buyer CASCADE;

DROP TABLE vehicle CASCADE;

DROP TABLE driver CASCADE;

DROP TABLE orders CASCADE;

DROP TABLE beers CASCADE;

CREATE TABLE beers (
	id serial PRIMARY KEY NOT NULL,
	NAME varchar (255) NOT NULL
);

CREATE TABLE buyer (
	id serial PRIMARY KEY NOT NULL,
	NAME varchar (255) NOT NULL
);

CREATE TABLE driver (
	id serial PRIMARY KEY NOT NULL,
	NAME varchar (255) NOT NULL
);

CREATE TABLE vehicle (
	id serial PRIMARY KEY NOT NULL,
	NAME varchar (255) NOT NULL,
	driver_id int NOT NULL,
	CONSTRAINT FK_driver_vehicle FOREIGN KEY (driver_id) REFERENCES driver (id)
);

CREATE TABLE orders (
	id serial PRIMARY KEY NOT NULL,
	amount int,
	vehicle_id int NOT NULL,
	buyer_id int NOT NULL,
	beer_id int NOT NULL,
	driver_id int NOT NULL,
	CONSTRAINT FK_driver_order FOREIGN KEY (driver_id) REFERENCES driver (id),
	CONSTRAINT FK_vehicle_order FOREIGN KEY (vehicle_id) REFERENCES vehicle (id),
	CONSTRAINT FK_buyer_order FOREIGN KEY (buyer_id) REFERENCES buyer (id),
	CONSTRAINT FK_beer_order FOREIGN KEY (beer_id) REFERENCES beers (id)
);

INSERT INTO
	beers
VALUES
	(1, 'Buzz');

INSERT INTO
	beers
VALUES
	(2, 'Trashy Blonde');

INSERT INTO
	beers
VALUES
	(3, 'Berliner Weisse With Yuzu');

INSERT INTO
	beers
VALUES
	(4, 'Pilsen Lager');

INSERT INTO
	beers
VALUES
	(5, 'Avery Brown Dredge');

INSERT INTO
	beers
VALUES
	(6, 'Electric India');

INSERT INTO
	beers
VALUES
	(7, 'AB:12');

INSERT INTO
	beers
VALUES
	(8, 'Fake Lager');

INSERT INTO
	beers
VALUES
	(9, 'AB:07');

INSERT INTO
	beers
VALUES
	(10, 'Bramling X');

INSERT INTO
	beers
VALUES
	(11, 'Misspent Youth');

INSERT INTO
	beers
VALUES
	(12, 'Arcade Nation');

INSERT INTO
	beers
VALUES
	(13, 'Movember');

INSERT INTO
	beers
VALUES
	(14, 'Alpha Dog');

INSERT INTO
	beers
VALUES
	(15, 'Mixtape 8');

INSERT INTO
	beers
VALUES
	(16, 'Libertine Porter');

INSERT INTO
	beers
VALUES
	(17, 'AB:06');

INSERT INTO
	beers
VALUES
	(18, 'Russian Doll – India Pale Ale');

INSERT INTO
	beers
VALUES
	(19, 'Hello My Name Is Mette-Marit');

INSERT INTO
	beers
VALUES
	(20, 'Rabiator');

INSERT INTO
	beers
VALUES
	(21, 'Vice Bier');

INSERT INTO
	beers
VALUES
	(22, 'Devine Rebel (w/ Mikkeller)');

INSERT INTO
	beers
VALUES
	(23, 'Storm');

INSERT INTO
	beers
VALUES
	(24, 'The End Of History');

INSERT INTO
	beers
VALUES
	(25, 'Bad Pixie');

INSERT INTO
	buyer
VALUES
	(1, 'Caffe bar Lea');

INSERT INTO
	buyer
VALUES
	(2, 'Caffe bar Lujo');

INSERT INTO
	buyer
VALUES
	(3, 'Caffe bar Ognjen');

INSERT INTO
	buyer
VALUES
	(4, 'Caffe bar Melin');

INSERT INTO
	buyer
VALUES
	(5, 'Caffe bar Krivi put');

INSERT INTO
	buyer
VALUES
	(6, 'Caffe bar Spunk');

INSERT INTO
	buyer
VALUES
	(7, 'Caffe bar Route 66');

INSERT INTO
	buyer
VALUES
	(8, 'Caffe bar Hard Place');

INSERT INTO
	buyer
VALUES
	(9, 'Caffe bar Valhalla');

INSERT INTO
	buyer
VALUES
	(10, 'Caffe bar Franjo');

INSERT INTO
	buyer
VALUES
	(11, 'Konzum');

INSERT INTO
	buyer
VALUES
	(12, 'Kerum');

INSERT INTO
	buyer
VALUES
	(13, 'NTL');

INSERT INTO
	buyer
VALUES
	(14, 'Plodine');

INSERT INTO
	buyer
VALUES
	(15, 'Studenac');

INSERT INTO
	driver
VALUES
	(1, 'Leo Messi');

INSERT INTO
	driver
VALUES
	(2, 'Jura Stublic');

INSERT INTO
	driver
VALUES
	(3, 'Angel Di Maria');

INSERT INTO
	driver
VALUES
	(4, 'Roberto Carlos');

INSERT INTO
	driver
VALUES
	(5, 'Ronaldo Nazario');

INSERT INTO
	driver
VALUES
	(6, 'Marcelo Brozovic');

INSERT INTO
	driver
VALUES
	(7, 'Doamgoj Vida');

INSERT INTO
	driver
VALUES
	(8, 'Neymar Jr.');

INSERT INTO
	driver
VALUES
	(9, 'Dario Srna');

INSERT INTO
	driver
VALUES
	(10, 'Bosko Balaban');

INSERT INTO
	vehicle
VALUES
	(1, 'Lada', 2);

INSERT INTO
	vehicle
VALUES
	(2, 'Opel', 2);

INSERT INTO
	vehicle
VALUES
	(3, 'Audi', 1);

INSERT INTO
	vehicle
VALUES
	(4, 'Citroen', 8);

INSERT INTO
	vehicle
VALUES
	(5, 'Fiat', 5);

INSERT INTO
	vehicle
VALUES
	(6, 'Skoda', 4);

INSERT INTO
	vehicle
VALUES
	(7, 'VW', 9);

INSERT INTO
	vehicle
VALUES
	(8, 'Mercedes', 10);

INSERT INTO
	vehicle
VALUES
	(9, 'Smart', 7);

INSERT INTO
	vehicle
VALUES
	(10, 'Honda', 3);

INSERT INTO
	vehicle
VALUES
	(11, 'Honda', 5);

INSERT INTO
	vehicle
VALUES
	(12, 'Skoda', 6);

INSERT INTO
	orders
VALUES
	(1, 15, 1, 7, 10, 10);

INSERT INTO
	orders
VALUES
	(2, 20, 2, 7, 9, 5);

INSERT INTO
	orders
VALUES
	(3, 25, 4, 7, 2, 1);

INSERT INTO
	orders
VALUES
	(4, 10, 6, 3, 1, 2);

INSERT INTO
	orders
VALUES
	(5, 10, 7, 3, 2, 4);

INSERT INTO
	orders
VALUES
	(6, 10, 8, 3, 3, 6);

INSERT INTO
	orders
VALUES
	(7, 10, 6, 3, 4, 2);

INSERT INTO
	orders
VALUES
	(8, 10, 3, 3, 5, 9);

INSERT INTO
	orders
VALUES
	(9, 10, 2, 3, 6, 10);

INSERT INTO
	orders
VALUES
	(10, 20, 6, 2, 1, 1);

INSERT INTO
	orders
VALUES
	(11, 40, 4, 5, 2, 2);

INSERT INTO
	orders
VALUES
	(12, 50, 3, 6, 3, 4);

INSERT INTO
	orders
VALUES
	(13, 60, 2, 7, 4, 5);

INSERT INTO
	orders
VALUES
	(14, 40, 1, 8, 5, 6);

INSERT INTO
	orders
VALUES
	(15, 60, 5, 9, 6, 7);

INSERT INTO
	orders
VALUES
	(16, 40, 8, 11, 7, 8);

INSERT INTO
	orders
VALUES
	(17, 50, 9, 12, 8, 9);

INSERT INTO
	orders
VALUES
	(18, 60, 7, 15, 9, 10);

INSERT INTO
	orders
VALUES
	(19, 70, 3, 14, 11, 2);

INSERT INTO
	orders
VALUES
	(20, 100, 1, 12, 2, 1);

SELECT
	buyer_id,
	buyer.name
FROM
	buyer
	INNER JOIN orders ON buyer.id = buyer_id
	WHERE buyer.name LIKE 'Caffe%'
GROUP BY
	buyer_id,
	buyer.name
HAVING
	count(DISTINCT beer_id) > 5;

SELECT
	beer_id,
	beers.name,
	sum(amount)
FROM
	beers
	INNER JOIN orders ON beers.id = beer_id
GROUP BY
	beer_id,
	beers.name
ORDER BY
	count(beer_id) DESC
LIMIT
	10;

SELECT
	buyer_id,
	buyer.name,
	SUM(amount)
FROM
	buyer
	INNER JOIN orders ON buyer.id = buyer_id
GROUP BY
	buyer_id,
	buyer.name
ORDER BY
	SUM(amount) DESC
LIMIT
	10;

SELECT
	DISTINCT b.name
FROM
	beers b
	LEFT JOIN orders o ON b.id = o.beer_id
WHERE
	o.buyer_id NOT IN (
		SELECT
			buyer_id
		FROM
			orders
		GROUP BY
			buyer_id
		ORDER BY
			SUM(amount) DESC
		LIMIT
			10
	)
	OR o.id IS NULL;

SELECT
	vehicle_id,
	vehicle.name,
	SUM(amount)
FROM
	vehicle
	INNER JOIN orders ON vehicle.id = vehicle_id
GROUP BY
	vehicle_id,
	vehicle.name
ORDER BY
	SUM(amount) DESC
LIMIT
	5;

SELECT
	driver.id,
	driver.name,
	count(orders.id),
	count(DISTINCT vehicle.id)
FROM
	orders
	INNER JOIN driver ON driver.id = driver_id
	INNER JOIN vehicle ON vehicle.id = vehicle_id
GROUP BY
	driver.id,
	driver.name
ORDER BY
	count(orders.id) DESC
LIMIT
	5;





 




	
