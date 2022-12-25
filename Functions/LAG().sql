--Script Name: LAG()
--Script Type: Function
--Article: https://raresql.com/2012/11/21/sql-server-2012-analytic-functions-lag/
--Developed By: Muhammad Imran
--Date Created: 21 Nov 2012
--Date Modified: 22 Dec 2022

--Sample

--Use tempdb database
USE tempdb
GO

--Create table
CREATE TABLE [Test_Table]
(
  [S.No] int
, [Letters] varchar(50)
)
GO

--Insert records into Test_Table
Insert into [Test_Table] values (1,'LETTER A')
Insert into [Test_Table] values (2,'LETTER B')
Insert into [Test_Table] values (3,'LETTER C')
Insert into [Test_Table] values (5,'LETTER D')
Insert into [Test_Table] values (6,'LETTER E')
Insert into [Test_Table] values (7,'LETTER F')
Insert into [Test_Table] values (8,'LETTER G')
Insert into [Test_Table] values (9,'LETTER H')
Insert into [Test_Table] values (10,'LETTER I')

--End of sample

--Example-1
--Default values

--Use LAG() function 
SELECT [S.No]
     , [Letters]
     , LAG([Letters]) OVER (ORDER BY [Letters]) AS [Previous Value]
FROM  [Test_Table]

--End of example-1

--Example-2
--Replace default values

--Use LAG() function
SELECT [S.No]
     , [Letters]
     , LAG([Letters],1,'') OVER (ORDER BY [Letters]) AS [Previous Value]
FROM [Test_Table]

--End of example-2

--Example-3
--Change offset values

--Use LAG() function
SELECT [S.No]
     , [Letters]
     , LAG([Letters],2,'') OVER (ORDER BY [Letters]) AS [Previous Value]
FROM  [Test_Table]

--End of example-3

--Example-4
--Find exchange rate

--Use database tempdb
Use tempdb
GO

--Create table
CREATE TABLE [Daily_Currency_Rate]
(
 [S.No] INT, 
 [Date] DATETIME,
 [Currency] VARCHAR(50),
 [Exchange Rate] NUMERIC(18,4)
)
 
--Insert records into Daily_Currency_Rate
Insert into [Daily_Currency_Rate] values(1,'2012-11-20','Indian Rupee (INR)',14.86)
Insert into [Daily_Currency_Rate] values(2,'2012-11-21','Indian Rupee (INR)',14.87)
 
Insert into [Daily_Currency_Rate] values(3,'2012-11-20','Pakistani Rupee (PKR)',25.84)
Insert into [Daily_Currency_Rate] values(4,'2012-11-21','Pakistani Rupee (PKR)',25.83)
 
Insert into [Daily_Currency_Rate] values(5,'2012-11-20','Sri Lankan Rupee (LKR)',35.38)
Insert into [Daily_Currency_Rate] values(6,'2012-11-21','Sri Lankan Rupee (LKR)',35.44)
GO

--Browse table
Select * from [Daily_Currency_Rate]
GO

--Use LAG()
Select [S.No]
	 , [Date]
	 , [Currency]
	 , [Exchange Rate]
	 , LAG([Exchange Rate],1,0) 
	 Over (Partition By [Currency] Order By [Currency]) 
	 as [Yesterday Rate]
from [Daily_Currency_Rate]
GO

--End of example-4

--Drop table
Drop Table [Daily_Currency_Rate]
