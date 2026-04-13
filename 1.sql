-- Goal: Identify all traditional public schools located in Massachusetts.
-- Method: Filter the schools table for records where the type is "Public School"
-- and the state is Massachusetts (MA), returning the school name and city.
SELECT name, city
FROM schools
WHERE type = 'Public School'
AND state = 'MA';
