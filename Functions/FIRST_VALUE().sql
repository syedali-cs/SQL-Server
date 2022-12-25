--Script Name: FIRST_VALUE()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 27 Aug 2012
--Date Modified: 23 Dec 2022

--Sample

--Create table
Create Table [Student]
	(
	 [Student ID] int,
	 [Student Name] varchar(50),
	 [Subject] varchar(50),
	 [Marks] int
	)
GO

--Insert records into table Student
Insert into [Student] values (3,'Derek','English',100)
Insert into [Student] values (3,'Derek','Math',60)
Insert into [Student] values (3,'Derek','Science',90)
 
Insert into [Student] values (1,'Bob','English',80)
Insert into [Student] values (1,'Bob','Math',75)
Insert into [Student] values (1,'Bob','Science',60)
 
Insert into [Student] values (2,'Sandra','English',70)
Insert into [Student] values (2,'Sandra','Math',80)
Insert into [Student] values (2,'Sandra','Science',40)

--End of sample

--Example-1
--Ascending order

--Use FIRST_VALUE function
Select [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , FIRST_Value([Student Name]) 
	   Over (Order By [Student Name]) 
	   as [First Value]
from dbo.[Student]

--End of example-1

--Example-2
--Top scorer

--Use FIRST_VALUE function
Select [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , FIRST_Value([Student Name]) 
	   Over (Order By [Marks] Desc) 
	   as [First Value]
from dbo.[Student]

--End of example-2

--Example-3
--High score in each subject

--Use FIRST_VALUE function
Select [Student ID]
	 , [Student Name]
	 , [Subject]
	 , [Marks]
	 , FIRST_Value([Student Name]) 
	   Over (Partition By [Subject] 
	   Order By [Marks] Desc) 
	   as [First Value]
from dbo.[Student]

--End of example-3
