CREATE TABLE demoracedb.car (
	carId		SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	carIdentity	VARCHAR(3) NOT NULL,
	carName		VARCHAR(50) NOT NULL,
	carColor	VARCHAR(50),
	carOwner	VARCHAR(15),
	startNo		SMALLINT UNSIGNED,
	registered	DATE,
	carImgLink	VARCHAR(200),
	carImage    LONGBLOB,
	PRIMARY KEY	(carId)
);

CREATE UNIQUE INDEX Icar on demoracedb.car(carIdentity, carName);



