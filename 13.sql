-- Goal: Explore whether schools in districts with higher exemplary staff ratings
-- also tend to report higher graduation rates.
-- Method: Join schools with graduation rates and district staff evaluations,
-- then compare graduation outcomes across districts ordered by exemplary ratings.

SELECT schools.name, graduation_rates.graduated, staff_evaluations.exemplary
FROM schools
JOIN graduation_rates ON schools.id = graduation_rates.school_id
JOIN staff_evaluations ON schools.district_id = staff_evaluations. district_id
ORDER BY staff_evaluations.exemplary DESC,
graduation_rates.graduated DESC;
