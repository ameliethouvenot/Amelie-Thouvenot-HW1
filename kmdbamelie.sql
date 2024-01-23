DROP TABLE IF EXISTS studios; 
DROP TABLE IF EXISTS movies; 
DROP TABLE IF EXISTS actors; 
DROP TABLE IF EXISTS characters;

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
    MPAA_rating TEXT 
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
);

INSERT INTO studios (
    name_studios 
) VALUES 
    ("Warner Bros."),
    ("Disney"); 

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

INSERT INTO actors (
    name_actor, 
    characters_id
) VALUES 
    ("Christian Bale", 1),
    ("Michael Caine", 4), 
    ("Liam Neeson", 6), 
    ("Katie Holmes", 7),
    ("Gary Oldman", 8),
    ("Heath Ledger", 10), 
    ("Aaron Eckhart", 11), 
    ("Maggie Gyllenhaal", 7),
    ("Tom Hardy", 12), 
    ("Joseph Gordon-Levitt", 13), 
    ("Anne Hathaway", 14); 

INSERT INTO characters (
    name_character, movies_id
) VALUES
    ("Bruce Wayne", 1),
    ("Bruce Wayne", 2),
    ("Bruce Wayne", 3),
    ("Alfred", 1),
    ("Alfred", 2),  
    ("Ra's Al Ghul", 1),
    ("Rachel Dawes", 1),
    ("Commissioner Gordon", 1),
    ("Commissioner Gordon", 3),
    ("Joker", 2),
    ("Harvey Dent", 2), 
    ("Bane", 3), 
    ("John Blake", 3), 
    ("Selina Kyle", 3); 

SELECT movie_title, year_released, MPAA_rating, name_studios
FROM movies 
INNER JOIN studios ON studios_id = movies.studios_id 
GROUP BY year_released 
ORDER BY year_released; 


SELECT movies.movie_title, actors.name_actor, characters.name_character
FROM characters 
INNER JOIN movies ON movies.id = characters.movies_id
INNER JOIN actors ON actors.characters_id = characters_id 
GROUP BY movie_title;   



