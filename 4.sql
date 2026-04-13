-- Goal: Identify the 10 cities with the highest number of public schools.
-- Method: Filter for traditional public schools, group results by city,
-- count the number of schools in each city, and sort from highest to lowest.

SELECT city, COUNT(*) AS number_of_public_schools
FROM schools
WHERE type = 'Public School'
GROUP BY citY
ORDER BY number_of_public_schools DESC, city ASC
LIMIT 10;
