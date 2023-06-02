CREATE TABLE demoracedb.race (
	raceId		INT UNSIGNED NOT NULL AUTO_INCREMENT,
	timeStart	DATETIME(3),
	timeEnd		DATETIME(3),
	raceLaps	INT NOT NULL,
	driverName1	VARCHAR(50),
	driverName2	VARCHAR(50),
	carName1	VARCHAR(50),
	carName2	VARCHAR(50),
	fuelTrack1	SMALLINT UNSIGNED,
	fuelTrack2	SMALLINT UNSIGNED,
	status		VARCHAR(15) DEFAULT 'valid',
	PRIMARY KEY	(raceId)
);
CREATE UNIQUE INDEX Irace on demoracedb.race(raceId);
