CREATE OR REPLACE VIEW demoracedb.queryview AS (
SELECT demoracedb.race.raceId AS rId
	, demoracedb.race.timeStart
    , demoracedb.race.timeEnd
	, demoracedb.race.raceLaps
	, demoracedb.race.driverName1
	, demoracedb.race.driverName2
	, demoracedb.race.carName1
	, demoracedb.race.carName2
    , demoracedb.race.fuelTrack1
    , demoracedb.race.fuelTrack2
    , demoracedb.race.status
    , demoracedb.winner.timeRace AS winnerTime
    , demoracedb.winner.driverName AS winnerD
    , demoracedb.winner.carName AS winnerC
    , demoracedb.winner.trackName AS winnerT
	, demoracedb.looser.timeRace AS looserTime
    , demoracedb.looser.driverName AS looserD
    , demoracedb.looser.carName AS looserC
    , demoracedb.looser.trackName AS looserT
FROM demoracedb.race
INNER JOIN demoracedb.winner
ON demoracedb.race.raceId = demoracedb.winner.raceId
INNER JOIN demoracedb.looser
ON demoracedb.race.raceId = demoracedb.looser.raceId
);

CREATE OR REPLACE VIEW demoracedb.winnerlooser AS (
SELECT w.raceId as raceIdw, l.raceId as raceIdl, 
       w.timeRace as winnerTime, w.driverName as winnerD, w.carName as winnerC, w.trackName as winnerT, w.event winnerEvent,
       l.timeRace as looserTime, l.driverName as looserD, l.carName as looserC, l.trackName as looserT, l.event looserEvent
FROM demoracedb.winner w, demoracedb.looser l
WHERE w.raceId = l.raceId);

CREATE OR REPLACE VIEW milanracedb.trackview AS (
SELECT t1.raceId as raceIdT1, t1.lapNo as lapNoT1,  t1.lapTime as lapTimeT1, t1.fuelBase as fuelBaseT1, t1.timeAtLap as timeAtLapT1, t1.event as eventT1,
       t2.raceId as raceIdT2, t2.lapNo as lapNoT2,  t2.lapTime as lapTimeT2, t2.fuelBase as fuelBaseT2, t2.timeAtLap as timeAtLapT2, t2.event as eventT2
FROM milanracedb.track1 t1, milanracedb.track2 t2
WHERE t1.raceId = t2.raceId);



