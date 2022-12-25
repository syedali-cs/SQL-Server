--Script Name: Date & Time - TIMEFROMPARTS()
--Script Type: Function
--Article: https://raresql.com/2012/09/04/sql-server-2012-date-and-time-function-timefromparts/
--Developed By: Muhammad Imran
--Date Created: 04 Sep 2012
--Date Modified: 23 Dec 2022

--Old Approach
--Use Convert() function 
--SQL Server 2008

--Declare Hour Variable
Declare @Hour AS int=4
Declare @Minute AS int=20
Declare @Second AS int=30
Declare @Fraction AS int=55
 
--Use Convert() function to convert time
Select Convert(time,Convert(varchar(4), @Hour)
+ ':' +
Convert(varchar(2), @Minute)
+ ':' +
Convert(varchar(2), @Second)
+ ':' +
Convert(varchar(2), @Fraction));
GO

--End of old approach


--New Approach

--Example-1
--TIMEFROMPARTS – With Valid time parts

--Declare Variables
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=59
Declare @Fraction AS int=50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,2) AS [Result];
GO

-- End of Example-1

-- Example-2
-- TIMEFROMPARTS – With Valid & Invalid precision

--Declare Variables
Declare @Hour AS int=23, @Minute AS int=59, @Second AS int=59,@Fraction AS int

--Set Fraction Value
Set @Fraction=2 

--Use TIMEFROMPARTS() function 
-- If fractions is 2 and precision is 1, It means the fractions will be 2/10 of a second.
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,1) AS [Result];
GO

--Set Fraction Value
Set @Fraction=20 

--If fractions is 20 and precision is 2, It means the fractions will be 20/100 of a second.
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,2) AS [Result];
GO

--Set Fraction Value
Set @Fraction=200 

--If fractions is 200 and precision is 3, It means the fractions will be 200/1000 of a second.
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,3) AS [Result];
GO

--Set Fraction Value 
Set @Fraction=2000 

--If fractions is 2000 and precision is 4, It means the fractions will be 2000/10000 of a second.
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,4) AS [Result];
GO

--Set Fraction Value
Set @Fraction=20000 

-- If fractions is 20000 and precision is 5, It means the fractions will be 20000/100000 of a second.
--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,5) AS [Result];
GO

--Set Fraction Value
Set @Fraction=200000

--If fractions is 200000 and precision is 6, It means the fractions will be 200000/1000000 of a second.
--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,6) AS [Result];
GO

--Set Fraction Value 
Set @Fraction=2000000

-- If fractions is 2000000 and precision is 7, It means the fractions will be 2000000/10000000 of a second.
--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,7) AS [Result];
GO

--Set Fraction Value
Set @Fraction=2000000

--It will generate an error because precision can be 7 maximum, It means the fractions will be 2000000/10000000 of a second.
--Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,8) AS [Result];
GO

--End of example-2

--Example-3
--TIMEFROMPARTS – With Invalid time parts

--Declare Variables
Declare @Hour AS int = 25 --- Hour cannot be 25
Declare @Minute AS int = 59
Declare @Second AS int = 59
Declare @Fraction AS int =50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,2) AS [Result];

--End of Example-3

--Example-4
--TIMEFROMPARTS- NULL as a parameter except Precision parameter

--Declare Variables
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=NULL ---Pass Seconds as NULL
Declare @Fraction AS int=50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,2) AS [Result];
GO

--End of Example-4

--Example-5
--TIMEFROMPARTS- @Precision as NULL value

--Declare Variables
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=50
Declare @Fraction AS int=50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,NULL) AS [Result];
GO

--End of Example-5

--Example-6
--TIMEFROMPARTS- With Null and Invalid parameters

--Declare Variables
Declare @Hour AS int=25 ---Hour cannot exceed 23
Declare @Minute AS int=59
Declare @Second AS int=NULL ---Second parameter as NULL
Declare @Fraction AS int=50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,2) AS [Result];
GO

--End of Example-6

--Example-7
--TIMEFROMPARTS- With missing Fraction if precision is defined

--Declare Variables
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=59
Declare @Fraction AS int=50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Second,@Fraction,0) AS [Result];
GO

--End of Example-7

--Example-8
--TIMEFROMPARTS - With missing parameters

--Declare Variables
Declare @Hour AS int=23
Declare @Minute AS int=59
Declare @Second AS int=59
Declare @Fraction AS int=50

--Use TIMEFROMPARTS() function
Select TIMEFROMPARTS(@Hour,@Minute,@Fraction,2) AS [Result];
GO

--End of Example-8

--End of New Approach
