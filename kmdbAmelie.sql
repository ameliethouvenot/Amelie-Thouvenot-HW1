DROP TABLE IF EXISTS studios; 
DROP TABLE IF EXISTS movies; 
DROP TABLE IF EXISTS actors; 
-- any more tables?


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
    character TEXT
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name_actor TEXT,
    character TEXT
);

-- actor_id INTEGER into movies table? Many of many relationship
-- include studios_name into table movies?
-- going to need an interjoin function between movies & actors 

INSERT INTO studios (
    name 
) VALUES (
    "Warner Bros.", 
    "Paramount", 
    "Universal", 
    "Disney"
); 

INSERT INTO movies(
    studios_id,
    movie_title,
    year_released, 
    MPAA_rating, 
    character
) VALUES (
"Batman Begins", 
"2005", 
"PG-13"
)

.mode column
.headers off

-- UPDATE (FILL IN TABLE HERE)

-- SELECT STATEMENTS TO PROVIDE ADEQUATE OUTPUT
-- Movie list output --> anything else needed to have studios_name printed, 
-- or the studio_id reads automatically??

SELECT movie_title, year_released, MPAA_rating, studios_name
FROM movies 
GROUP BY year_released 
ORDER BY year_released; 

SELECT movies.movie_title, actors.name_actor, actors.character
FROM actors INNER JOIN character ON movies.character = actors.character
GROUP BY movie_title;   



