SELECT * 
FROM netflix2 n;

SELECT *
FROM Netflix_TV_Shows_and_Movies ntsam;

--query one what show has the most imdb_votes --
SELECT title, imdb_votes 
FROM Netflix_TV_Shows_and_Movies 
WHERE imdb_votes IS NOT NULL
ORDER BY imdb_votes DESC
LIMIT 1;

UPDATE Netflix_TV_Shows_and_Movies 
SET imdb_votes = CAST(NULL AS VARCHAR)
WHERE imdb_votes = '';

--query 2 best movies netflix2 has through imdb_score --
select n.Name, ntsam.imdb_score
from netflix2 n 
left join Netflix_TV_Shows_and_Movies ntsam 
on n.Name = ntsam.title
order by ntsam.imdb_score desc
limit 1;
-- query 3 longest older movie between 1990 and 1970 -- 
SELECT title, release_year, runtime
FROM Netflix_TV_Shows_and_Movies
WHERE release_year BETWEEN 1970 AND 1990
ORDER BY runtime DESC
LIMIT 1;

--query 4 find the highest-rated movie by each id. This can help identify each id top-performing work based on IMDb scores.
SELECT 
    ntsam.id,
    ntsam.title,
    ntsam.imdb_score
FROM 
    Netflix_TV_Shows_and_Movies ntsam
JOIN 
    (SELECT id, MAX(imdb_score) AS max_score
     FROM Netflix_TV_Shows_and_Movies
     WHERE imdb_score IS NOT NULL
     GROUP BY id) AS max_scores
ON 
    ntsam.id = max_scores.id
    AND ntsam.imdb_score = max_scores.max_score
ORDER BY 
    ntsam.imdb_score DESC;
--query 5 finding the average IMDb score for movies released in each decade. This helps analyze how movie ratings have trended over time.--
SELECT 
    CASE 
        WHEN release_year BETWEEN 1970 AND 1979 THEN '1970s'
        WHEN release_year BETWEEN 1980 AND 1989 THEN '1980s'
        WHEN release_year BETWEEN 1990 AND 1999 THEN '1990s'
        WHEN release_year BETWEEN 2000 AND 2009 THEN '2000s'
        WHEN release_year BETWEEN 2010 AND 2019 THEN '2010s'
        ELSE '2020s' 
    END AS decade,
    AVG(imdb_score) AS average_imdb_score
FROM Netflix_TV_Shows_and_Movies
WHERE imdb_score IS NOT NULL
GROUP BY decade
ORDER BY decade;

