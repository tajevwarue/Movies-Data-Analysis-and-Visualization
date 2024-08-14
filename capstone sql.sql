/*
CAPSTONE PROJECT 1:
Retrieve the following info
	I. Most voted movie
	II. Most watched genre 
	III. Movie with the highest runtime 
	Iv. Year with the most movie 
	V. The most watched movie
*/

-- Selecting all information from the table
SELECT *
FROM movies_capstone;

-- (Question 1) Retrieving most voted movie
SELECT movies, votes
FROM movies_capstone
ORDER BY votes DESC
LIMIT 1;

--(Question 2) Retrieving most watched genre
WITH genre_counts AS (
    SELECT unnest(string_to_array(genre, ',')) AS genre
    FROM movies_capstone
) -- CTE to handle splitting of genre column
SELECT genre, COUNT(*) AS count
FROM genre_counts
GROUP BY genre
ORDER BY count DESC
LIMIT 1;

-- (Question 3) Retrieving movie with the highest runtime
SELECT movies, "RunTime(mins)"
FROM movies_capstone
ORDER BY "RunTime(mins)" DESC
LIMIT 1;

-- (Question 4) Retrieving year with most movies
SELECT releaseyear AS year, COUNT(movies) AS movies_count
FROM movies_capstone
GROUP BY year
ORDER BY movies_count DESC
LIMIT 1;

-- (Question 5) Retrieving the most watched movie
/* Since we don't have information of the number of viewers, 
we'll assume the number of votes corresponds to the total number of people who viewed the movies.
*/
SELECT movies, MAX(votes) AS most_watched
FROM movies_capstone
GROUP BY movies
ORDER BY most_watched DESC
LIMIT 1;

