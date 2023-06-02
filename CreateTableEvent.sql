CREATE TABLE demoracedb.event (
	eventId		INT UNSIGNED NOT NULL,
	eventName	VARCHAR(50) NOT NULL,
	PRIMARY KEY	(eventId)
);

INSERT INTO demoracedb.event(eventId, eventName)
VALUES(0, '');

CREATE UNIQUE INDEX Ievent on demoracedb.event(eventId, eventName);
