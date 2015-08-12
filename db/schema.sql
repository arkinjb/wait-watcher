DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS waittimes;
DROP TABLE IF EXISTS destinations;


CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT,
  password TEXT,
  name TEXT
);

CREATE TABLE destinations (
  id SERIAL PRIMARY KEY,
  name TEXT,
  category TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  phone_number TEXT,
  price INTEGER,
  distance TEXT,
  ratings INTEGER
);

CREATE TABLE waittimes (
  id SERIAL PRIMARY KEY,
  day_of_week TEXT,
  time_of_day TEXT,
  wait INTEGER,
  destination_id INTEGER REFERENCES destinations(id)
);
