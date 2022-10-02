-- Each row of this table indicates the employee ID, employee name, and salary.
CREATE TABLE Employees (
	employee_id INT NOT NULL,
	name VARCHAR NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (employee_id),
	UNIQUE (employee_id)
);

INSERT INTO Employees
VALUES (2,'Meir',3000),
		(3,'Michael',3800),
		(7,'Addilyn',7400),
		(8,'Juan',6100),
		(9,'Kannon',7700);

SELECT *
FROM Employees;

-- Write an SQL query to calculate the bonus of each employee. 
-- The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. 
-- The bonus of an employee is 0 otherwise.
-- Return the result table ordered by employee_id.
SELECT employee_id, salary as bonus
FROM Employees
WHERE (employee_id % 2) != 0 AND name NOT LIKE 'M%'
UNION
SELECT employee_id, 0 as bonus
FROM Employees
WHERE (employee_id % 2) = 0 OR name LIKE 'M%'
ORDER BY employee_id;

-- Another solution (case statement)
SELECT employee_id,
	CASE WHEN (employee_id % 2) != 0 AND name NOT LIKE 'M%' then salary
	ELSE 0
	END
	AS bonus
FROM Employees
ORDER BY employee_id;