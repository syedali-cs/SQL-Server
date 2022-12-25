--Script Name: TRY_CONVERT()
--Script Type: Function
--Article: https://raresql.com/2012/08/27/sql-server-2012-conversion-function-try_convert/
--Developed By: Muhammad Imran
--Date Created: 27 Aug 2012
--Date Modified: 23 Dec 2022

--Example
--Error: Pass invalid data

--Use CONVERT() function
Select CONVERT(datetime2,'2012-08-32')

--End of example

--Example-1
--Passed

--Use TRY_CONVERT() function
Select TRY_Convert(datetime,'2012-09-30',101) AS [Result];
GO

--End of example-1

--Example-2
--Failed

--Use TRY_CONVERT function
Select TRY_Convert(datetime,'2012-09-31',101) AS [Result];
GO
--End of example-2

--Example-3
--With IIF statement

--Use IIF statement
--Use TRY_CONVERT function

Select IIF(Try_Convert(int, 'test') is NULL , 'Invalid Integer', 'Valid Integer') AS [Result];
Select IIF(Try_Convert(int, 2) is NULL , 'Invalid Integer', 'Valid Integer') AS [Result];
GO

--End of example-3

--Example-4
--with case statement

--Use case statement
--Use TRY_CONVERT function
Select (Case When Try_Convert(datetime2,'2012-08-22') is NULL Then 'Invalid Date format' else 'Valid Date format' end) AS [Result]; 
Select (Case When Try_Convert(datetime2,'2012-08-32') is NULL Then 'Invalid Date format' else  'Valid Date format' end) AS [Result]
GO

--End of example-4
