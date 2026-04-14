-- Goal: Identify cities that have 3 or fewer public schools.
-- Method: Filter for traditional public schools, group the results by city,
-- count the number of schools in each city, and keep only cities with
-- three or fewer schools using HAVING.

SELECT city, COUNT(*) AS number_of_public_schools
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING COUNT(*) <=3
ORDER BY number_of_public_schools DESC, city ASC;

