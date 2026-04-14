-- Goal: Display the names of all school districts and the number of pupils enrolled in each.
-- Method: Join the districts table with the expenditures table to access pupil counts.

SELECT districts.name, expenditures.pupils
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id;
