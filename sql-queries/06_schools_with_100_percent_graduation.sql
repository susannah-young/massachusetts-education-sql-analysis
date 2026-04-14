-- Goal: Identify schools (public or charter) that reported a 100% graduation rate.
-- Method: Join the schools table with the graduation_rates table and filter
-- for schools where the graduation rate equals 100%.
SELECT schools.name
FROM schools
JOIN graduation_rates
ON schools.id = graduation_rates.school_id
WHERE graduated = 100;
