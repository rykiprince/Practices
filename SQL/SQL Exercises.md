# SQL Exercises
- SQL Excercises
  - 595. Big Countries
  - 627. Swap Salary
  - [1873. Calculate Special Bonus](https://github.com/rykiprince/Practices/tree/main/SQL/1873.%20Calculate%20Special%20Bonus)

## 595. Big Countries
https://leetcode.com/problems/big-countries/description/

### Table

| name            | continent  | area       | population   | gdp           |
|-----------------|------------|------------|--------------|---------------|
| Afghanistan     | Asia       | 652230     | 25500100     | 20343000      |
| Albania         | Europe     | 28748      | 2831741      | 12960000      |
| Algeria         | Africa     | 2381741    | 37100000     | 188681000     |
| Andorra         | Europe     | 468        | 78115        | 3712000       |
| Angola          | Africa     | 1246700    | 20609294     | 100990000     |

Big countries define as:
  - it has an area of at least three million (i.e., `3000000 $km^2$`), or
  - it has a population of at least twenty-five million (i.e., `25000000`).

Write an SQL query to report the name, population, and area of the **big countries**.
Return the result table in **any order**.

## Solution
```sql
  SELECT name,
    population,
    area
  FROM
    World
  WHERE
    area > 3000000
    OR population > 25000000;
```
