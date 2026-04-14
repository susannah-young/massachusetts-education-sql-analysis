-- Goal: Identify districts that are no longer operational.
-- Method: Search for district names ending with "(non-op)" using the LIKE operator.
SELECT name
FROM districts
WHERE name LIKE '%(NON-OP)';
