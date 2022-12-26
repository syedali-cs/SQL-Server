--Script Name: LAST_VALUE()
--Script Type: Function
--Article: https://raresql.com/2012/08/30/sql-server-2012-analytic-function-last_value/
--Developed By: Muhammad Imran
--Date Created: 30 Aug 2012
--Date Modified: 23 Dec 2022

--Sample

--Create table
CREATE Table [Student]
	 (
      [Student ID] int,
	  [Student Name] varchar(50),
	  [Subject] varchar(50),
      [Marks] int
	 )
GO

--Insert records into table Student 
INSERT INTO [Student] values (3, 'Derek', 'English',100)
INSERT INTO [Student] values (3, 'Derek', 'Math',60)
INSERT INTO [Student] values (3, 'Derek', 'Science',90)
INSERT INTO [Student] values (1,'Bob','English',80)
INSERT INTO [Student] values (1,'Bob','Math',75)
INSERT INTO [Student] values (1,'Bob','Science',60)
INSERT INTO [Student] values (2,'Sandra','English',70)
INSERT INTO [Student] values (2,'Sandra','Math',80)
INSERT INTO [Student] values (2,'Sandra','Science',40)

--End of sample

--Example-1
--Alphabetical order

--Use LAST_VALUE() function
SELECT [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , LAST_Value([Student Name]) 
	   Over (Order By [Student Name])
	   as [Last Value]
FROM dbo.[Student]

--Use CURRENT ROW
--Use UNBOUNDED ROW
--Use LAST_VALUE() function

SELECT [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , LAST_Value([Student Name]) 
	   Over (Order By [Student Name]
	   ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) 
	   as [Last Value]
FROM dbo.[Student]

--End of example-1

--Example-2
--Least scorer in class

--Use CURRENT ROW
--Use UNBOUNDED ROW
--Use LAST_VALUE() function
SELECT [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , LAST_Value([Student Name]) Over (Order By [Marks] Desc
	   ROWS BETWEEN  CURRENT ROW AND UNBOUNDED FOLLOWING) 
	   AS [LAST Value]
FROM dbo.[Student]

--End of example-2

--Example-3
--Least scorer in each subject

--Use CURRENT ROW
--Use UNBOUNDED ROW
--Use LAST_VALUE() function
SELECT [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , LAST_Value([Student Name]) Over (Partition By [Subject] Order By [Marks] Desc
	   ROWS BETWEEN  CURRENT ROW AND UNBOUNDED FOLLOWING) 
	   AS [LAST Value]
FROM dbo.[Student]
