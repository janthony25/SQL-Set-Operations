Use AdventureWorks2017
Go

-- RETRIEVING DATA

/*
			SET OPERATION - RULES
	- The results of all queires must have the same number of columns
	- In every result set the data type of each column must match the data type
	  its corresponding column in the first result
	- In order to sort the result, and ORDER BY clause should be part of the 
	  last statement
	- The records from the top query must match the positional ordeing of the 
	  records from the bottom query
	- The column names or aliases must be found out by the first select statement

*/
-- UNION OPERATOR -- Add result of 1st table and 2nd table -- no duplicate value output
SELECT CurrencyCode -- 109 rows
FROM Sales.CountryRegionCurrency
UNION
SELECT CurrencyCode -- 105 rows
FROM Sales.Currency

-- UNION ALL -- Includes duplicate value
SELECT CurrencyCode
FROM Sales.CountryRegionCurrency
UNION ALL
SELECT CurrencyCode
FROM Sales.Currency
