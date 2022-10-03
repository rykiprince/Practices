DROP TABLE salary;

CREATE TABLE salary ( id INT, NAME VARCHAR ( 100 ), sex CHAR ( 1 ), salary INT );
INSERT INTO salary ( id, NAME, sex, salary )
VALUES
    ( '1', 'A', 'm', '2500' ),
    ( '2', 'B', 'f', '1500' ),
    ( '3', 'C', 'm', '5500' ),
    ( '4', 'D', 'f', '500' );
	
SELECT *
FROM salary

-- Write an SQL query to swap all 'f' and 'm' values with a **single update statement and no intermediate temporary tables.
-- You must write a single update statement, do not write any select statement for this problem.

UPDATE salary
SET sex = CASE WHEN sex = 'f' THEN 'm' ELSE 'f' END;

-- Output table
SELECT *
FROM salary