-- Goal: Explore whether school-level graduation outcomes vary alongside district-level per-pupil expenditures.
-- Method: Join schools with graduation rates and district expenditures, then compare
-- graduation rates across schools ordered by highest per-pupil expenditure.

SELECT schools.name, expenditures.per_pupil_expenditure, graduation_rates.graduated
FROM schools
JOIN graduation_rates
ON schools.id = graduation_rates.school_id
JOIN expenditures
ON schools.district_id = expenditures.district_id
ORDER BY expenditures.per_pupil_expenditure DESC,
schools.name ASC;
