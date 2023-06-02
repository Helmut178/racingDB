CREATE TABLE demoracedb.track1 (
   raceId		INT UNSIGNED NOT NULL,
   lapNo		SMALLINT UNSIGNED,
   lapTime		double,
   fuelBase		SMALLINT UNSIGNED,
   refueled		SMALLINT UNSIGNED,
   timeAtLap	datetime(3),
   event		VARCHAR(50),
   FOREIGN KEY (raceId) REFERENCES demoracedb.race(raceId)
);

CREATE INDEX Itrack1 on demoracedb.track1(raceId);




