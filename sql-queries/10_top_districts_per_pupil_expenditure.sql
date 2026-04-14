-- Goal: Identify the 10 public school districts with the highest per-pupil expenditures.
-- Method: Join the districts and expenditures tables, filter for public school districts,
-- then sort districts by per-pupil expenditure from highest to lowest and return the top 10.

SELECT districts.name, expenditures.per_pupil_expenditure
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
WHERE districts.type = 'Public School District'
ORDER BY expenditures.per_pupil_expenditure DESC
LIMIT 10;
