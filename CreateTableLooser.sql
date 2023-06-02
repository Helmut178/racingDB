CREATE TABLE demoracedb.looser (
	raceId		INT UNSIGNED NOT NULL,
	timeStart	datetime(3),
	timeRace	double,
	driverName	VARCHAR(50) NOT NULL,
	carName		VARCHAR(50) NOT NULL,
	trackName	VARCHAR(10) NOT NULL,
	event		VARCHAR(50),
	KEY			(driverName),
	FOREIGN KEY (raceId) REFERENCES demoracedb.race(raceId)
);



