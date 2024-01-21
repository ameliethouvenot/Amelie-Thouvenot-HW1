CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studios_id INTEGER, 
    movie_title TEXT,
    year_released INTEGER, 
    MPAA_rating TEXT, 
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name_actor TEXT,
);

-- actor_id INTEGER into movies table? Many of many relationship
-- include studios_name into table movies?
-- going to need an interjoin function between movies & actors 

.mode column
.headers off
