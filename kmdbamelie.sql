DROP TABLE IF EXISTS studios; 
DROP TABLE IF EXISTS movies; 
DROP TABLE IF EXISTS actors; 

.mode column
.headers off

-- any more tables?

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studios_id INTEGER REFERENCES studios(id), 
    movie_title TEXT,
    year_released TEXT, 
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
    id, 
    name 
) VALUES 
    ("1", "Warner Bros."),
    ("2", "Paramount"), 
    ("3", "Universal"), 
    ("4", "Disney"); 

--need to take into account character
INSERT INTO movies (
    id, 
    studios_id,
    movie_title,
    year_released, 
    MPAA_rating 
)
 VALUES 
    (1, "?", "Batman Begins", "2005", "PG-13"), 
    (2, "?", "The Dark Knight", "2008", "PG-13"), 
    (3, "?", "The Dark Knight Rises", "2012", "PG-13");


-- SELECT STATEMENTS TO PROVIDE ADEQUATE OUTPUT
-- Movie list output --> anything else needed to have studios_name printed, 
-- or the studio_id reads automatically??

--SELECT movie_title, year_released, MPAA_rating, studios_name
--FROM movies 
--GROUP BY year_released 
--ORDER BY year_released; 

--SELECT movies.movie_title, actors.name_actor, actors.character
--FROM actors INNER JOIN character ON movies.character = actors.character
--GROUP BY movie_title;   



