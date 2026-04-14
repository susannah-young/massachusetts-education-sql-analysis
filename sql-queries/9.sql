-- Goal: Identify the school district(s) with the fewest pupils enrolled.
-- Method: Join the districts and expenditures tables and filter for the
-- minimum pupil count using a subquery.
SELECT districts.name
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
WHERE expenditures.pupils = (
    SELECT MIN(pupils)
    FROM expenditures
);
