CREATE TABLE if not exists trains
(
    id  int auto_increment
        primary key,
    train_id INT,
    station VARCHAR(30),
    station_time TIME
);
INSERT INTO trains(train_id, station, station_time) VALUES (110, 'San Francisco', '10:00:00');
INSERT INTO trains(train_id, station, station_time) VALUES (110, 'Redwood City', '10:54:00');
INSERT INTO trains(train_id, station, station_time) VALUES (110, 'Palo Alto', '11:02:00');
INSERT INTO trains(train_id, station, station_time) VALUES (110, 'San Jose', '12:35:00');
INSERT INTO trains(train_id, station, station_time) VALUES (120, 'San Francisco', '11:00:00');
INSERT INTO trains(train_id, station, station_time) VALUES (120, 'Palo Alto', '12:49:00');
INSERT INTO trains(train_id, station, station_time) VALUES (120, 'San Jose', '13:30:00');
#Добавьте новый столбец под названием «время до следующей станции»

SELECT *,
       TIMEDIFF(LEAD(station_time) over (PARTITION BY train_id), station_time) AS 'time_to_next_station'
FROM trains;