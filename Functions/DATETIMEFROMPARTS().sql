--Script Name: Date and Time Function – DATETIMEFROMPARTS()
--Script Type: Function
--Article: https://raresql.com/2012/09/06/sql-server-2012-date-and-time-function-datetimefromparts/
--Developed By: Muhammad Imran
--Date Created: 06 Sep 2012
--Date Modified: 23 Dec 2022

--Example-1
--DATETIMEFROMPARTS

--Declare variable
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @hour AS smallint = 23
Declare @Minutes AS smallint =58
Declare @Seconds AS smallint =55
Declare @milliseconds AS smallint =990

--Use DATETIMEFROMPARTS() function
Select DATETIMEFROMPARTS ( @Year,@Month,@Day,@hour,@Minutes,@Seconds,@milliseconds) AS [RESULT];
GO

--End of example-1

--Example-2
--DATETIMEFROMPARTS – With Invalid Date and Time Parts

--Declare variable
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @hour AS smallint = 24 --- Not a valid hour
Declare @Minutes AS smallint =58
Declare @Seconds AS smallint =55
Declare @milliseconds AS smallint =990

--Use DATETIMEFROMPARTS() function
Select DATETIMEFROMPARTS ( @Year,@Month,@Day,@hour,@Minutes,@Seconds,@milliseconds) AS [RESULT];
GO

--End of example-2

--Example-3

--Declare Variable
Declare @Year AS smallint=2012
Declare @Month AS smallint = 12
Declare @Day AS smallint =31
Declare @hour AS smallint = NULL --- Lets Make hour as a NULL
Declare @Minutes AS smallint =58
Declare @Seconds AS smallint =55
Declare @milliseconds AS smallint =990

--Use DATETIMEFROMPARTS() function
Select DATETIMEFROMPARTS ( @Year,@Month,@Day,@hour,@Minutes,@Seconds,@milliseconds) AS [RESULT];
GO

--End of Example-3
