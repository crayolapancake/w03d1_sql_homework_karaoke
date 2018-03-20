DROP TABLE songs;
DROP TABLE guests;
DROP TABLE rooms;


CREATE TABLE rooms (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR (255),
  occupants INT,
  playlist VARCHAR
);

CREATE TABLE guests (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR (255),
  room_id INT8 REFERENCES rooms(id)
);

CREATE TABLE songs (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR,
  band VARCHAR,
  room_id INT8 REFERENCES songs(id)
);

INSERT INTO rooms (name, occupants, playlist) VALUES ('Rock', 3, 'Monkey Wrench, Fat Lip');
INSERT INTO rooms (name, occupants, playlist) VALUES ('Country', 2, 'Ring of Fire, Jackson');

SELECT * FROM rooms;

INSERT INTO guest (name, room_id) VALUES ('Jemma', 1);
INSERT INTO guest (name, room_id) VALUES ('Tori', 2);

SELECT * FROM guests;

INSERT INTO song (title, band, room_id) VALUES ('Whisky in the jar', 'Metallica', 1);
INSERT INTO song (title, band, room_id) VALUES ('Earl', 'Dixie Chicks', 2);

SELECT * FROM songs;
