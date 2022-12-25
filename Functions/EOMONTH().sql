--Script Name: Date and Time Function – EOMONTH
--Script Type: Function
--Article: https://raresql.com/2012/09/10/sql-server-2012-date-and-time-function-eomonth/
--Developed By: Muhammad Imran
--Date Created: 10 Sep 2012
--Date Modified: 23 Dec 2022

-- Old Approach

--SQL Server 2005/2008

-- Declare Variables
DECLARE @DATE DATETIME

-- Set Value for Date Variable
SET @DATE='2012-09-10'
 
--Last date of the Previous, Current, Next Month using CONVERT function
SELECT CONVERT(VARCHAR(10),DATEADD(ms,-2,DATEADD(MONTH, DATEDIFF(MONTH,0,@DATE),0)),120) AS [Previous Month]
SELECT CONVERT(VARCHAR(10),DATEADD(ms,-2,DATEADD(MONTH, DATEDIFF(MONTH,0,@DATE)+1,0)),120) AS [Current Month]
SELECT CONVERT(VARCHAR(10),DATEADD(ms,-2,DATEADD(MONTH, DATEDIFF(MONTH,0,@DATE)+2,0)),120) AS [Next Month]

-- End of Old Approach

-- New Approach

-- Example-1
-- EOMONTH – valid start date as Date data type

-- Declare Date Variable
Declare @Date as Date ='2012-09-01'
 
--Use EOMONTH() function for Last date of the Previous, Current, Next Month 
Select EOMONTH (@Date,-1) as [Previous Month]
Select EOMONTH (@Date) as [Current Month]
Select EOMONTH (@Date,1) as [Next Month];
GO
-- End of example-1

-- Example-2
-- EOMONTH – valid start date as varchar data type

-- Declare Date Variable
Declare @Date as varchar(10) ='2012-09-01'
 
----Use EOMONTH() function for Last date of the current Month
Select EOMONTH (@Date) as [Current Month];
GO
-- End of example-2

-- Example-3
-- Last Date of each month in the Current Year using EOMONTH

--Declare Date Variable
Declare @Date as Date ='2012-01-01'
 
----Use EOMONTH() function for Last date of the Jan Month
Select EOMONTH (@Date) as [Jan]
 
----Use EOMONTH() function for Last date of the Feb Month
Select EOMONTH (@Date,1) as [Feb]
 
----Use EOMONTH() function for Last date of the Mar Month
Select EOMONTH (@Date,2) as [Mar]
 
----Use EOMONTH() function for Last date of the Apr Month
Select EOMONTH (@Date,3) as [Apr]
 
----Use EOMONTH() function for Last date of the May Month
Select EOMONTH (@Date,4) as [May]
 
----Use EOMONTH() function forLast date of the Jun Month
Select EOMONTH (@Date,5) as [Jun]
 
----Use EOMONTH() function for Last date of the Jul Month
Select EOMONTH (@Date,6) as [Jul]
 
----Use EOMONTH() function for Last date of the Aug Month
Select EOMONTH (@Date,7) as [Aug]
 
----Use EOMONTH() function for Last date of the Sep Month
Select EOMONTH (@Date,8) as [Sep]
 
----Use EOMONTH() function for Last date of the Oct Month
Select EOMONTH (@Date,9) as [Oct]
 
----Use EOMONTH() function for Last date of the Nov Month
Select EOMONTH (@Date,10) as [Nov]
 
----Use EOMONTH() function for Last date of the Dec Month
Select EOMONTH (@Date,11) as [Dec]

-- End of Example-3
