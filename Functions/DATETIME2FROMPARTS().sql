--Script Name: Date and Time Function – DATETIME2FROMPARTS
--Script Type: Function
--Article: https://raresql.com/2012/09/07/sql-server-2012-date-and-time-function-datetime2fromparts/
--Developed By: Muhammad Imran
--Date Created: 07 Sep 2012
--Date Modified: 23 Dec 2022

--Example-1
--DATETIME2FROMPARTS 

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=59 
Declare @Fraction AS int=50

--Use DATETIME2FROMPARTS() function
Select DATETIME2FROMPARTS( @Year,@Month,@Day,@Hour,@Minute,@Second,@Fraction,2) AS [RESULT];
GO

--End of example-1

--Example-2
--DATETIME2FROMPARTS- With Invalid Date and Time Parts

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @Hour AS int=25 --- Hour cannot be 25
Declare @Minute AS int=59
Declare @Second AS int=59
Declare @Fraction AS int=50

--Use DATETIME2FROMPARTS() function
Select DATETIME2FROMPARTS (@Year,@Month,@Day,@Hour,@Minute,@Second,@Fraction,2) AS [RESULT];
GO

--End of example-2

--Example-3
--DATETIME2FROMPARTS- With NULL Date and Time Parts except Precision parameter

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second as int=NULL ---Pass Seconds as NULL
Declare @Fraction AS int=50

--Use DATETIME2FROMPARTS() function
Select DATETIME2FROMPARTS( @Year,@Month,@Day,@Hour,@Minute,@Second,@Fraction,2) AS [RESULT];
GO

-- End of Example-3

-- Example-4
-- DATETIME2FROMPARTS- @Precision as NULL value

-- Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second as int=50
Declare @Fraction AS int=50

--Use DATETIME2FROMPARTS() function
Select DATETIME2FROMPARTS( @Year,@Month,@Day,@Hour,@Minute,@Second,@Fraction,NULL) AS [RESULT];
GO

--End of Example-4

--Example-5
--DATETIME2FROMPARTS- With Null and Invalid parameters

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @Hour AS int=25 ---Hour cannot exceed 23
Declare @Minute AS int=59 
Declare @Second AS int=NULL ---Second parameter as NULL
Declare @Fraction AS int=50

--Use DATETIME2FROMPARTS() function
Select DATETIME2FROMPARTS( @Year,@Month,@Day,@Hour,@Minute,@Second,@Fraction,2) AS [Result];
GO

--End of Example-5

--Example-6
--DATETIME2FROMPARTS- With missing Fraction if precision is defined

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=59
Declare @Fraction AS int=50

--Use DATETIME2FROMPARTS() function
Select DATETIME2FROMPARTS( @Year,@Month,@Day,@Hour,@Minute,@Second,@Fraction,0) AS [RESULT];
GO

--End of Example-6
