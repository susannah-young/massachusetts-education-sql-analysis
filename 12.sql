-- Goal: Identify public school districts with both above-average per-pupil expenditures
-- and above-average percentages of teachers rated "exemplary".
-- Method: Join district spending and staff evaluation data, filter for public school districts,
-- compare each district against the overall averages, and sort by exemplary ratings
-- and per-pupil expenditure from highest to lowest.

SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
JOIN staff_evaluations
ON districts.id = staff_evaluations.district_id
WHERE districts.type = 'Public School District'
AND expenditures.per_pupil_expenditure > (
    SELECT AVG(per_pupil_expenditure)
    FROM expenditures
)
AND staff_evaluations.exemplary > (
    SELECT AVG(exemplary)
    FROM staff_evaluations
)
ORDER BY staff_evaluations.exemplary DESC, expenditures.per_pupil_expenditure DESC;
