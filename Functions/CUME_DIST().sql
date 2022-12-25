--Script Name: CUME_DIST()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 10 Dec 2012
--Date Modified: 22 Dec 2022

--Example-1
--Create table
Create table [Daily_Gold_Rate]
(
[S.No] int,
[Date] datetime,
[Carat] int,
[Gold Rate] numeric(18,2)
)

--Insert values
Insert into [Daily_Gold_Rate] values(1,'2012-12-03',18,155.00)
Insert into [Daily_Gold_Rate] values(4,'2012-12-04',18,153.00)
Insert into [Daily_Gold_Rate] values(7,'2012-12-05',18,152.00)
Insert into [Daily_Gold_Rate] values(10,'2012-12-06',18,154.50)
Insert into [Daily_Gold_Rate] values(13,'2012-12-07',18,154.50)
GO
 
--Use CUME_DIST()
Select Row_Number() OVER (ORDER BY [Carat]
	 , [Gold Rate]) as [Row Number]
	 , [Date]
	 , [Carat]
	 , [Gold Rate]
	 , CUME_DIST () OVER (ORDER BY [Carat],[Gold Rate]) AS [CUME_DIST]
from [Daily_Gold_Rate]

--End of example-1

--Example-2
--Use BY clause

--Insert records into table
Insert into [Daily_Gold_Rate] values(2,'2012-12-03',22,190.50)
Insert into [Daily_Gold_Rate] values(3,'2012-12-03',24,202.23)
 
Insert into [Daily_Gold_Rate] values(5,'2012-12-04',22,191.00)
Insert into [Daily_Gold_Rate] values(6,'2012-12-04',24,202.25)
 
Insert into [Daily_Gold_Rate] values(8,'2012-12-05',22,190.00)
Insert into [Daily_Gold_Rate] values(9,'2012-12-05',24,203.25)
 
Insert into [Daily_Gold_Rate] values(11,'2012-12-06',22,189.50)
Insert into [Daily_Gold_Rate] values(12,'2012-12-06',24,201.50)
 
Insert into [Daily_Gold_Rate] values(14,'2012-12-07',22,189.00)
Insert into [Daily_Gold_Rate] values(15,'2012-12-07',24,201.00)

--Use CUME_DIST()
Select Row_Number() OVER (Partition by [Carat] ORDER BY [Carat]
	 , [Gold Rate]) as [Row Number]
	 , [Date]
	 , [Carat]
	 , [Gold Rate]
	 , CUME_DIST () OVER (Partition by [Carat] 
	   ORDER BY [Carat],[Gold Rate])
	   AS [CUME_DIST]
from [Daily_Gold_Rate]

--End of example-2
