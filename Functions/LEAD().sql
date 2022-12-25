--Script Name: LEAD()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 30 Nov 2012
--Date Modified: 22 Dec 2022

--Sample
--Use database tempdb
USE tempdb
GO

--Create table
Create Table [Test_Table]
(
[S.No] int,
[Letters] varchar(50)
)
GO

--Insert records into promotion table
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

--Use LEAD()
Select [S.No],[Letters]
	 , LEAD([Letters]) Over (Order By [Letters]) as [Next Value]
from  [Test_Table]

--End of example-1

--Example-2
--Replace default values

--Use LEAD()
Select [S.No],[Letters]
	 , LEAD([Letters],1,'') Over (Order By [Letters]) as [Next Value]
from  [Test_Table]

--End of example-2

--Example-3
--Change ofset value

--Use LEAD()
Select [S.No],[Letters]
	 , LEAD([Letters],2,'') Over (Order By [Letters]) as [Next Value]
from  [Test_Table]

--End of example-3

--Example-4
--Find promotions of employees

--Use database tempdb
Use tempdb

--Create table
Create table [tbl_Promotion]
(
 [S.No] int,
 [Date] datetime,
 [Employee Name] varchar(50),
 [Designation]  varchar(50)
)
 
--Insert records into promotion table
Insert into [tbl_Promotion] values(1,'2009-08-20','Imran','Assistant Manager')
Insert into [tbl_Promotion] values(2,'2011-11-21','Imran','Manager')
 
Insert into [tbl_Promotion] values(3,'2010-09-05','Bob','Technical Manager')
Insert into [tbl_Promotion] values(4,'2012-10-06','Bob','Technical Director')
 
Insert into [tbl_Promotion] values(5,'2012-01-10','Robert','Junior Developer')
Insert into [tbl_Promotion] values(6,'2012-06-11','Robert','Developer')
GO

--Browse table
Select * from [tbl_Promotion]
GO
 
--Use LEAD()
Select [S.No]
	 , [Date]
	 , [Employee Name]
	 , [Designation]
	 , LEAD ([Designation],1,0) 
	 Over (Partition By [Employee Name] 
	 Order By [S.No]) as [Next Promotion]
from [tbl_Promotion]
Go

--Drop table
Drop Table [tbl_Promotion]

--End of example-4
