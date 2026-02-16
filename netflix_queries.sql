CREATE TABLE netflix_data (
    release_year INT,
    type VARCHAR(20),
    total INT
);

-- Total records
SELECT COUNT(*) FROM netflix_data;

-- Movies vs TV Shows count
SELECT type, SUM(total) 
FROM netflix_data
GROUP BY type;

-- Year wise total content
SELECT release_year, SUM(total) 
FROM netflix_data
GROUP BY release_year
ORDER BY release_year;

-- Latest year data
SELECT * 
FROM netflix_data
ORDER BY release_year DESC;
