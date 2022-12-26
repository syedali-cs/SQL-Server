--Script Name: LAG() function
--Script Type: Function
--Article: https://raresql.com/2012/11/21/sql-server-2012-analytic-functions-lag/
--Developed By: Muhammad Imran
--Date Created: 21 Nov 2012
--Date Modified: 22 Dec 2022

--Sample-1

--Use database tempdb
USE tempdb
GO


--Create table
CREATE Table [Test_Table]
(
 [S.No] int,
 [Letters] varchar(50)
)
GO
--Insert records into Test_Table
INSERT INTO [Test_Table] values (1,'LETTER A')
INSERT INTO [Test_Table] values (2,'LETTER B')
INSERT INTO [Test_Table] values (3,'LETTER C')
INSERT INTO [Test_Table] values (5,'LETTER D')
INSERT INTO [Test_Table] values (6,'LETTER E')
INSERT INTO [Test_Table] values (7,'LETTER F')
INSERT INTO [Test_Table] values (8,'LETTER G')
INSERT INTO [Test_Table] values (9,'LETTER H')
INSERT INTO [Test_Table] values (10,'LETTER I')

--End of sample-1

--Example-1
--Default values

--Use LAG() function
SELECT [S.No]
	 , [Letters]
	 , LAG([Letters]) 
	   Over (Order By [Letters]) as [Previous Value]
FROM  [Test_Table]

--End of example-1

--Example-2
--Replace default values

--Use LAG() function
SELECT [S.No]
	 , [Letters]
	 , LAG([Letters],1,'') 
   	   Over (Order By [Letters]) as [Previous Value]
FROM  [Test_Table]

--End of example-2

--Example-3
--Change offset values

--Use LAG() function
SELECT [S.No]
	 , [Letters]
	 , LAG([Letters],2,'') 
	   Over (Order By [Letters]) as [Previous Value]
FROM  [Test_Table]

--End of example-3

--Sample-2
--Use database tempdb
Use tempdb
GO

--Create table
CREATE table [Daily_Currency_Rate]
(
 [S.No] int,
 [Date] datetime,
 [Currency] varchar(50),
 [Exchange Rate] numeric(18,4)
)
 
--Insert records into Daily_Currency_Rate
INSERT INTO [Daily_Currency_Rate] values(1,'2012-11-20','Indian Rupee (INR)',14.86)
INSERT INTO [Daily_Currency_Rate] values(2,'2012-11-21','Indian Rupee (INR)',14.87)
INSERT INTO [Daily_Currency_Rate] values(3,'2012-11-20','Pakistani Rupee (PKR)',25.84)
INSERT INTO [Daily_Currency_Rate] values(4,'2012-11-21','Pakistani Rupee (PKR)',25.83)
INSERT INTO [Daily_Currency_Rate] values(5,'2012-11-20','Sri Lankan Rupee (LKR)',35.38)
INSERT INTO [Daily_Currency_Rate] values(6,'2012-11-21','Sri Lankan Rupee (LKR)',35.44)
GO

--Browse table
SELECT * FROM [Daily_Currency_Rate]
GO

--End of sample-2
--Example-4
--Find exchange rate

--Use LAG() function
SELECT [S.No]
	 , [Date]
	 , [Currency]
	 , [Exchange Rate]
	 , LAG([Exchange Rate],1,0) 
	   Over (Partition By [Currency] Order By [Currency]) as [Yesterday Rate]
FROM [Daily_Currency_Rate]
GO

--End of example-4

--Drop table
Drop Table [Daily_Currency_Rate]
