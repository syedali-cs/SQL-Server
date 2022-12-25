--Script Name: CONCAT()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 11 Sep 2012
--Date Modified: 22 Dec 2022

--Example-1
--Concat string values

--Use CONCAT()
Select Concat('SQL Server ','2012') as [Result]

--End of example-1

--Example-2
--Concat Integer values

--Use CONCAT()
Select CONCAT(1,2) as [Result]

--End of example-2

--Example-3
--Concat numeric values

--Use CONCAT()
Select CONCAT(12.34,56.78) as [Result]

--End of example-3

--Example-4
--Concat Less than 2 strings

--Use CONCAT()
Select Concat('SQL Server ') as [Result]

--End of example-4

--Example-5
--Pass null as a parameter

--Use CONCAT()
Select Concat('SQL Server ',NULL) as [Result]

--End of example-5

--Example-6
--Pass null values from database

--Browse table
Select top 10 [FirstName] 
	 , [MiddleName] 
	 , [LastName]
	 ,[FirstName] +  [MiddleName] + [LastName] as [Full Name]
from [Person].[Person]

--Use CONCAT()
Select top 10 [FirstName] 
	 , [MiddleName] 
	 , [LastName]
	 , Concat([FirstName] 
	 , [MiddleName] 
	 , [LastName]) as [Full Name]
from [Person].[Person]

--End of example-6
