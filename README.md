# Massachusetts Education Data SQL Analysis

## Overview

This project explores Massachusetts education data using SQL and SQLite. The analysis focuses on public schools, school districts, expenditures, graduation rates, teacher evaluations, and district-level comparisons.

The project was completed through a series of structured analytical questions, with each query written, tested, and refined until it returned the correct output. In addition to solving the required questions, I documented the goal of each query directly inside the SQL files to show the business purpose behind the code.

## Source

This project is based on a problem set from Harvard University's **CS50: Introduction to Databases with SQL** course.

The original assignment involved writing SQL queries to analyze Massachusetts education data. I completed the queries independently, added documentation explaining the goal of each query, and organized the project into a structured analysis repository for portfolio purposes.

## Objective

The goal of this project was to use SQL to answer practical education-policy and district-performance questions such as:

- Which cities have the most public schools?
- Which districts are no longer operational?
- What is the average per-pupil expenditure across districts?
- Which schools reported a 100% graduation rate?
- Which public school districts spend above average and also have above-average teacher excellence ratings?
- Is there a visible relationship between spending, teacher evaluations, and graduation outcomes?

## Skills Demonstrated

This project demonstrates the following SQL and analytical skills:

- Filtering with `WHERE`
- Aggregation with `COUNT()` and `AVG()`
- Grouping with `GROUP BY`
- Filtering grouped results with `HAVING`
- Sorting with `ORDER BY`
- Limiting results with `LIMIT`
- Combining tables with `JOIN`
- Using subqueries
- Renaming columns with `AS`
- Query debugging and validation
- Translating business questions into SQL logic

## Dataset

The dataset includes information from Massachusetts education records across multiple related tables, including:

- `schools`
- `districts`
- `expenditures`
- `graduation_rates`
- `staff_evaluations`

These tables allow analysis of school-level and district-level patterns in enrollment, funding, graduation outcomes, and teacher evaluation performance.

## Project Structure

- `queries/` contains all SQL query files
- `dese.db` contains the SQLite database used for analysis
- `analysis/insights.md` contains notes and observations from the dataset

Each SQL file includes comments describing the purpose of the query and the question it was written to answer.

## Questions Explored

This project includes SQL queries answering questions such as:

1. Find the names and cities of all public schools in Massachusetts.
2. Identify districts that are no longer operational.
3. Calculate the average district per-pupil expenditure.
4. Find the 10 cities with the most public schools.
5. Find cities with 3 or fewer public schools.
6. Identify schools with a 100% graduation rate.
7. Find schools in the Cambridge school district.
8. Display all school districts and their pupil counts.
9. Find the district or districts with the fewest pupils.
10. Identify the 10 public school districts with the highest per-pupil expenditures.
11. Compare school expenditures and graduation rates.
12. Find public school districts with above-average spending and above-average exemplary teacher ratings.
13. Explore an additional question about the relationship between teacher ratings and graduation outcomes.

## Example Query

Below is one example query from the project:

```sql
SELECT city, COUNT(*) AS number_of_public_schools
FROM schools
WHERE type = 'Public School'
GROUP BY city
ORDER BY number_of_public_schools DESC, city ASC
LIMIT 10;
