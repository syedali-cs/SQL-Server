--Script Name: Date and Time Function – SMALLDATETIMEFROMPARTS()
--Script Type: Function
--Article: https://raresql.com/2012/09/07/sql-server-2012-date-and-time-function-smalldatetimefromparts/
--Developed By: Muhammad Imran
--Date Created: 07 Sep 2012
--Date Modified: 23 Dec 2022

--Example-1
--SMALLDATETIMEFROMPARTS

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @hour AS smallint = 23
Declare @Minute AS smallint =58

--Use SMALLDATEFROMPARTS() function
Select SMALLDATETIMEFROMPARTS( @Year,@Month,@Day,@hour,@Minute) AS [RESULT];
GO

--End of example-1

--Example-2
--SMALLDATETIMEFROMPARTS- With Invalid Date and Time Parts

--Declare Variables
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @hour as smallint = 24 --- Not a valid hour
Declare @Minute AS smallint =58

--Use SMALLDATEFROMPARTS() function
Select SMALLDATETIMEFROMPARTS( @Year,@Month,@Day,@hour,@Minute) AS [RESULT];
GO

--End of Example-2

--Example-3
--SMALLDATETIMEFROMPARTS- With NULL Date and Time Parts

--Declare Variables
Declare @Year AS smallint=2012 
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @hour as smallint = NULL --- Lets Make hour as a NULL
Declare @Minute AS smallint =58

--Use SMALLDATEFROMPARTS() function
Select SMALLDATETIMEFROMPARTS( @Year,@Month,@Day,@hour,@Minute) AS [RESULT];
GO

-- End of Example-3

