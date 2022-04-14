/*
For this challenge you need to create a simple SELECT statement. Your task is to calculate the MIN, MEDIAN and MAX scores of the students from the results table.

Tables and relationship below:

table: student 
  columns: id, name
 table: result 
  columns: id, student_id, score

Resultant table:
  min
  median
  max
 */
 
SELECT
  min(r.score) AS min,
  max(r.score) AS max,
  CAST(percentile_disc(0.5) within group (order by r.score) AS FLOAT) AS median
FROM result AS r
