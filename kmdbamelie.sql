DROP TABLE IF EXISTS studios; 
DROP TABLE IF EXISTS movies; 
DROP TABLE IF EXISTS actors; 

.mode column
.headers off

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name_studios TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studios_id INTEGER, 
    movie_title TEXT,
    year_released TEXT, 
    MPAA_rating TEXT, 
    --character_id INTEGER
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name_actor TEXT,
    characters_id INTEGER
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name_character TEXT, 
    movies_id INTEGER
)

INSERT INTO studios (
    name_studios 
) VALUES 
    ("Warner Bros."),
    ("Disney"); 

INSERT INTO actors (
    name_actor, 
    characters_id
) VALUES 
    ("Christian Bale", 1),
    ("Michael Caine", 2), 
    ("Liam Neeson", 3), 
    ("Katie Holmers", 4),
    ("Gary Oldman", 5),
    ("Heath Ledger", 6), 
    ("Aaron Eckhart", 7), 
    ("Maggie Gyllenhaal", 4),
    ("Tom Hardy", 8), 
    ("Joseph Gordon-Levitt", 9), 
    ("Anne Hathaway", 10); 

--need to take into account character
INSERT INTO movies (
    studios_id,
    movie_title,
    year_released, 
    MPAA_rating 
)
 VALUES 
    (1, "Batman Begins", "2005", "PG-13"), 
    (1, "The Dark Knight", "2008", "PG-13"), 
    (1, "The Dark Knight Rises", "2012", "PG-13");


-- SELECT STATEMENTS TO PROVIDE ADEQUATE OUTPUT
-- Movie list output --> anything else needed to have studios_name printed, 
-- or the studio_id reads automatically??

SELECT movie_title, year_released, MPAA_rating, studios_name
FROM movies 
INNER JOIN studios ON studios_id = movies.studio_id 
GROUP BY year_released 
ORDER BY year_released; 

--SELECT movies.movie_title, actors.name_actor, actors.character
--FROM actors INNER JOIN character ON movies.character = actors.character
--GROUP BY movie_title;   



