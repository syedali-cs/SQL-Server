--Script Name: LOG()
--Script Type: Function
--Article: https://raresql.com/2013/03/10/sql-server-2012-mathematical-functions-log/ 
--Developed By: Muhammad Imran
--Date Created: 10th March 2013
--Date Modified: 22 Dec 2022


--Example-1
--Using LOG function with default base value

--Declare variable
DECLARE @variable FLOAT;

--Set value for the variable
SET @variable = 10;

--Use LOG function
SELECT LOG(@variable) AS [LOG with Default base value]
GO

--End of example-1

--Example-2
--Using LOG function with an input base

--Declare variable
DECLARE @variable FLOAT;

--Set value for the variable
SET @variable = 10;

--Use LOG function
SELECT LOG(@variable,EXP(1)) AS [LOG with defined base value]
GO

--End of example-2

--Example-3
--Using LOG function with a different Exponent value

--Declare variable
DECLARE @variable FLOAT;

--Set value for the variable
SET @variable = 10;

--Use LOG function
SELECT LOG(@variable,EXP(2)) AS [LOG with defined base value]
GO

--End of example-3

