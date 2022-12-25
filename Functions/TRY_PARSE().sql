--Script Name: TRY_PARSE()
--Script Type: Function
--Article: https://raresql.com/2012/08/27/sql-server-2012-conversion-function-try_parse/
--Developed By: Muhammad Imran
--Date Created: 27 Aug 2012
--Date Modified: 23 Dec 2022

--Example-1
--Successful

--Use TRY_PARSE function
SELECT TRY_PARSE('2012-08-22' AS datetime2 USING 'en-US')

--End of example-1

--Example-2
--Unsuccessful

--Use TRY_PARSE function
SELECT TRY_PARSE('datetime2' AS datetime2 USING 'en-US')

--End of example-2

--Example-3
--Realworld example with culture keyword

--Use IIF statement
--Use TRY_PARSE function

Select IIF(TRY_PARSE('2012-08-22' AS datetime2 USING 'en-US') is NULL
	 ,'Invalid Date format' ,'Valid Date format')
 
Select IIF(TRY_PARSE('2012-08-222' AS datetime2 USING 'en-US') is NULL
	 ,'Invalid Date format' ,'Valid Date format')

--End of example-3

--Example-4
--Realworld example with language keyword

--Set language
Set Language 'English'

--Use IIF statement
--Use TRY_PARSE() function
Set Language 'English'
Select IIF(TRY_PARSE('2012-08-22' AS datetime2) is NULL
	 ,'Invalid Date format' ,'Valid Date format')
 
Select IIF(TRY_PARSE('2012-08-222' AS datetime2) is NULL
	 ,'Invalid Date format' ,'Valid Date format')

--End of example-4
