-- Goal: Identify schools (public or charter) located in the Cambridge school district.
-- Method: Join the schools table with the districts table and filter for the district named "Cambridge".

SELECT schools.name
FROM schools
JOIN districts
ON schools.district_id =districts.id
WHERE districts.name = 'Cambridge';
