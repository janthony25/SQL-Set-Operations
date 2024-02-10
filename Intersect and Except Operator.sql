Use AdventureWorks2017
Go

-- Intersect Operator
		-- The INTERSECT operator in SQL is used to retrieve the records 
		-- that are identical/common between the result sets of two or more tables.

-- All job titles for position held by both Males and Females
SELECT JobTitle
FROM HumanResources.Employee
WHERE Gender = 'M'   -- Job titles for males (206 Roles)
INTERSECT
SELECT JobTitle
FROM HumanResources.Employee
WHERE Gender= 'F'	-- Job titles for females (84 Roles)

-- Same result using Join(Inner) 
SELECT DISTINCT EM.JobTitle
FROM HumanResources.Employee as EM
JOIN HumanResources.Employee as EF
ON EM.JobTitle = EF.JobTitle
	AND EM.Gender='M'
	and EF.Gender='F'



-- EXCEPT OPERATORS
	/*
	The EXCEPT operator in SQL is used to retrieve all the unique records from the left operand (query),
	except the records that are present in the result set of the right operand (query).

	In other words, this operator compares the distinct values of the left query with the result set of the right query.
	If a value from the left query is found in the result set of the right query, it is excluded from the final result.
	*/


SELECT JobTitle
FROM HumanResources.Employee
WHERE Gender = 'M'
EXCEPT
SELECT JobTitle
FROM HumanResources.Employee
WHERE Gender = 'F'