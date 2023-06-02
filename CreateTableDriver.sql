CREATE TABLE demoracedb.driver (
	driverId	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	driverName	VARCHAR(50) NOT NULL,
	driverAlias	VARCHAR(50),
	driverMail	VARCHAR(50),
	PRIMARY KEY	(driverId)
);

CREATE UNIQUE INDEX Idriver on demoracedb.driver(driverName);

