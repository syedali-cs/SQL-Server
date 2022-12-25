--Script Name: CONCAT()
--Script Type: Function
--Article: https://raresql.com/2012/09/11/sql-server-2012-string-function-concat/
--Developed By: Muhammad Imran
--Date Created: 11 Sep 2012
--Date Modified: 22 Dec 2022

--Example-1
--Concat string values

--Use CONCAT() function
Select Concat('SQL Server ','2012') as [Result];
GO

--End of example-1

--Example-2
--Concat Integer values

--Use CONCAT() function
Select CONCAT(1,2) as [Result];
GO

--End of example-2

--Example-3
--Concat numeric values

--Use CONCAT() function
Select CONCAT(12.34,56.78) as [Result];
GO

--End of example-3

--Example-4
--Concat Less than 2 strings

--Use CONCAT() function
Select Concat('SQL Server ') as [Result]
GO

--End of example-4

--Example-5
--Pass null as a parameter

--Use CONCAT() function
Select Concat('SQL Server ',NULL) as [Result]
GO

--End of example-5

--Example-6
--Pass null values from database

--Browse data from table
Select top 10 [FirstName] 
	 , [MiddleName] 
	 , [LastName]
	 ,[FirstName] +  [MiddleName] + [LastName] as [Full Name]
from [Person].[Person]

--Use CONCAT() function
Select top 10 [FirstName] 
	 , [MiddleName] 
	 , [LastName]
	 , Concat([FirstName] 
	 , [MiddleName] 
	 , [LastName]) as [Full Name]
from [Person].[Person]

--End of example-6
