--Script Name: TRY_CAST()
--Script Type: Function
--Article: https://raresql.com/2012/08/28/sql-server-2012-conversion-function-try_cast/
--Developed By: Muhammad Imran
--Date Created: 28 Aug 2012
--Date Modified: 23 Dec 2022

--Example-1
--Without error

--Use TRY_CAST function
SELECT TRY_Cast(123 AS int) AS [Result];
GO

--End of example-1

--Example-2
--With error

--Use TRY_CAST function
Select TRY_Cast ('test' AS int) AS [Result];
GO

--End of example-2

--Example-3
--With IIF statement

--Use IIF statement
--Use TRY_CAST function
SELECT IIF(Try_Cast('test' AS int) is NULL , 'Invalid Integer', 'Valid Integer');
SELECT IIF(Try_Cast(2 AS int) is NULL , 'Invalid Integer', 'Valid Integer');
GO

--End of example-3

--Example-4
--With case statement

--Use case statement
--Use TRY_CAST function
SELECT (Case When Try_Cast(123 AS int  ) is NULL Then 'Invalid Integer' else 'Valid Integer' end);
SELECT (Case When Try_Cast(123.45 AS int) is NULL Then 'Invalid Integer' else  'Valid Integer' end);
GO

--End of example-4
