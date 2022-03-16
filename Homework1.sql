USE AdventureWorks2019
GO

--1. Retrieves the columns ProductID, Name, Color and ListPrice 
--from the Production.Product table, with no filter.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

--2. Retrieves the columns ProductID, Name, Color and ListPrice 
--from the Production.Product table, excludes the rows that ListPrice is 0.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product 
WHERE ListPrice !=0

--3. Retrieves the columns ProductID, Name, Color and ListPrice 
--from the Production.Product table, the rows that are NULL for the Color column.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product 
WHERE Color is Null

--4. Retrieves the columns ProductID, Name, Color and ListPrice 
--from the Production.Product table, the rows that are not NULL for the Color column.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product 
WHERE Color is NOT Null

--5. Retrieves the columns ProductID, Name, Color and ListPrice 
--from the Production.Product table, the rows that are not NULL for the column Color, 
--and the column ListPrice has a value greater than zero.

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product 
WHERE Color is NOT Null and ListPrice>0

--6. Concatenates the columns Name and Color from the Production.Product table 
--by excluding the rows that are null for color.

SELECT (Name+ ' -- '+ Color) AS Name_Color
FROM Production.Product 
WHERE Color is NOT Null

--7. Write a query that generates the following result set  from Production.Product:
SELECT (Name + ' -- ' + Color) As Name_Color
FROM Production.Product
WHERE (Name like '%Crankarm' AND Color = 'Black') OR (Name like 'Chainring%' AND Color in ('Silver','Black') )

--8. Write a query to retrieve the to the columns ProductID and Name from the Production.Product table 
--filtered by ProductID from 400 to 500
SELECT ProductID, Name
FROM Production.Product 
WHERE ProductID between 400 and 500

--9. Write a query to retrieve the to the columns  ProductID, Name and color from the Production.Product table 
--restricted to the colors black and blue

SELECT ProductID, Name, Color
FROM Production.Product 
WHERE Color in ('Black','Blue')

--10. Write a query to get a result set on products that begins with the letter S

SELECT *
FROM Production.Product 
WHERE Name like 'S%'

--11. Write a query that retrieves the columns Name and ListPrice from the Production.Product table.
SELECT top 6 Name, ListPrice
FROM Production.Product
WHERE (Name like 'Seat %' or Name like 'Short-%') AND (ListPrice in(0,53.99))
ORDER BY Name

--12. Write a query that retrieves the columns Name and ListPrice from the Production.Product table.

SELECT top 5 Name, ListPrice
FROM Production.Product
WHERE (Name like 'S%' or Name like 'A%') AND ListPrice in(0,8.99,159.00)
ORDER BY Name

--13. Write a query so you retrieve rows that have a Name that begins with the letters SPO, but is then not followed by the letter K. 
--After this zero or more letters can exists. Order the result set by the Name column.

SELECT Name
FROM Production.Product
WHERE  (Name like 'SPO%')AND NOT (Name like 'SPOK%')
ORDER BY Name

--14. Write a query that retrieves unique colors from the table Production.Product. Order the results  in descending  manner.
SELECT Distinct Color
FROM Production.Product
WHERE Color is NOT Null
ORDER BY Color DESC

--15. Write a query that retrieves the unique combination of columns ProductSubcategoryID and Color from the Production.Product table. 
--Format and sort so the result set accordingly to the following. 
--We do not want any rows that are NULL.in any of the two columns in the result.

SELECT Distinct ProductSubcategoryID,Color
FROM Production.Product
Where (ProductSubcategoryID is NOT Null) AND (Color is NOT Null) 

