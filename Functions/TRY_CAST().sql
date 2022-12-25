--Script Name: TRY_CAST()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 28 Aug 2012
--Date Modified: 23 Dec 2022

--Example-1
--Without error

--Use TRY_CAST function
Select TRY_Cast(123 as int) as [Result]

--End of example-1

--Example-2
--With error

--Use TRY_CAST function
Select TRY_Cast ('test' as int) as [Result]

--End of example-2

--Example-3
--With IIF statement

--Use IIF statement
--Use TRY_CAST function
Select IIF(Try_Cast('test' as int) is NULL , 'Invalid Integer', 'Valid Integer')
 
Select IIF(Try_Cast(2 as int) is NULL , 'Invalid Integer', 'Valid Integer')

--End of example-3

--Example-4
--With case statement

--Use case statement
--Use TRY_CAST function
Select (Case When Try_Cast(123 as int  ) is NULL Then 'Invalid Integer' else 'Valid Integer' end)
 
Select (Case When Try_Cast(123.45 as int) is NULL Then 'Invalid Integer' else  'Valid Integer' end)

--End of example-4
