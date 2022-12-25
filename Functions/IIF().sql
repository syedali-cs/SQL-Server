-- Script Name: IIF()
-- Script Type: Function
-- Developed By: Muhammad Imran
-- Date Created: 06 Aug 2012
-- Date Modified: 21 Dec 2022

--Example-1

--Declare variables
DECLARE @int1 int = 100;
DECLARE @int2 int = 200;

--Use IIF function
SELECT IIF ( @int1> @int2, 'TRUE', 'FALSE' ) AS Result;

--End of example-1

--Example-2

--Declare variables
DECLARE @int1 int = 100;
DECLARE @int2 int = 200;

--Use IIF function
SELECT IIF ( @int1> @int2, NULL, NULL ) AS Result;

--End of example-2

--Example-3

--Declare variables
DECLARE @int1 int = 100;
DECLARE @int2 int = 200;

--Use IIF function
SELECT IIF ( @int1> @int2, NULL, 'False' ) AS Result;

--End of example-3

--Example-4

--Declare variables
DECLARE @int1 int = 100;
DECLARE @int2 int = 200;
DECLARE @Condition_True int = NULL;
DECLARE @Condition_False int = NULL;

--Use IIF function
SELECT IIF ( @int1> @int2, @Condition_True, @Condition_False) AS Result;

--End of example-4

--Example-5
--Real world example

--Declare variables
--Use IIF function

DECLARE @Marks int = 95;
SELECT IIF ( @Marks> 90, 'A Grade', IIF(@Marks>=80 And @Marks<=90,'B Grade','C Grade')) AS Result;
GO

DECLARE @Marks int = 80;
SELECT IIF ( @Marks> 90, 'A Grade', IIF(@Marks>=80 And @Marks<=90,'B Grade','C Grade')) AS Result;
GO
 
DECLARE @Marks int = 70;
SELECT IIF ( @Marks> 90, 'A Grade', IIF(@Marks>=80 And @Marks<=90,'B Grade','C Grade')) AS Result;

--End of example-5
