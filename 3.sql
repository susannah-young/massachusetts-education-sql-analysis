-- Goal: Calculate the average per-pupil expenditure across all districts.
-- Method: Use AVG() on the per_pupil_expenditure column and rename the result
-- to "Average District Per-Pupil Expenditure" for clarity.
SELECT AVG(per_pupil_expenditure) AS "Average District Per-Pupil Expenditure"
FROM expenditures;
