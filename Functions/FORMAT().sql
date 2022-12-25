--Script Name: FORMAT()
--Script Type: Function
--Article: https://raresql.com/2012/09/19/sql-server-2012-string-function-format/
--Developed By: Muhammad Imran
--Date Created: 19 Sep 2012
--Date Modified: 22 Dec 2022

--Example-1
--Format date with default culture

--Declare variable
DECLARE @Date AS datetime=Getdate()

--Use FORMAT() function
Select @Date AS [DATE]
SELECT FORMAT (@Date, 'dd/MM/yyyy') as [Result (dd/MM/yyyy)]
SELECT FORMAT (@Date, 'MM/dd/yyyy') as [Result (MM/dd/yyyy)]
SELECT FORMAT (@Date, 'yyyy/MM/dd') as [Result (yyyy/MM/dd)]

--End of example-1

--Example-2
--Format time with default culture

--Declare variable
DECLARE @TIME AS DATETIME=Getdate()

--Use FORMAT() function
Select @TIME AS [TIME]
SELECT FORMAT (@TIME, 'h:mm:ss tt') as [Result (h:mm:ss tt)]
SELECT FORMAT (@TIME, 'hh:mm:ss tt') as [Result (hh:mm:ss tt)]
SELECT FORMAT (@TIME, 'h:mm:ss') as [Result (h:mm:ss)]
SELECT FORMAT (@TIME, 'hh:mm:ss') as [Result (hh:mm:ss)]
GO

--End of example-2

--Example-3
--Format number

--Declare variable
DECLARE @NUMBER AS NUMERIC(18,4)=12345.789

--Use FORMAT() function
Select @NUMBER as [NUMBER]
SELECT FORMAT (@NUMBER, '####0.00') as [Result (####0.00)]
SELECT FORMAT (@NUMBER, '####0.000') as [Result (####0.000)]
SELECT FORMAT (@NUMBER, '##,##0.00') as [Result (##,##0.00)]
SELECT FORMAT (@NUMBER, '#') as [Result (#)]
GO

--End of example-3

--Example-4
--Format Currency with default culture

--Declare variable
DECLARE @CURRENCY MONEY = '24500.50';

--Use FORMAT() function
SELECT FORMAT (@CURRENCY, 'C') AS  [RESULT]
GO

--End of example-4

--Example-5
--Format date&time with multiple culture

--Declare variable
DECLARE @Date AS datetime=Getdate()

--Browse variable 
Select @Date as [DATE]

--Use FORMAT() function
SELECT FORMAT(@Date,'dddd, MMMM dd, yyyy hh:mm:ss tt','en-US')   AS [English Culture]
SELECT FORMAT(@Date,'dddd, MMMM dd, yyyy hh:mm:ss tt','de-DE')   AS [German Culture]
SELECT FORMAT(@Date,'dddd, MMMM dd, yyyy hh:mm:ss tt','ja-JP') AS [Japanese Culture]
SELECT FORMAT(@Date,'dddd, MMMM dd, yyyy hh:mm:ss tt','ar-SA') AS [Arabic Culture]
SELECT FORMAT(@Date,'dddd, MMMM dd, yyyy hh:mm:ss tt','ur-PK') AS [Urdu Culture]
GO

--End of example-5

--Example-6
--Format Currency with mutiple culture

--Declare variable
DECLARE @CURRENCY MONEY = '24500.50';

--Use FORMAT() function
SELECT FORMAT(@CURRENCY, 'C','en-US' )  AS [English Culture];
SELECT FORMAT(@CURRENCY, 'C','de-DE' )  AS [German Culture];
SELECT FORMAT(@CURRENCY, 'C','ja-JP' )  AS [Japanese Culture];
SELECT FORMAT(@CURRENCY, 'C','ar-SA' )  AS [Arabic Culture];
SELECT FORMAT(@CURRENCY, 'C', 'ur-PK' ) AS [Urdu Culture];
GO

--End of example-6

--Example-7
--Format value by using language

--Set the language
SET LANGUAGE 'ENGLISH'
 
--Use FORMAT() function
SELECT FORMAT(245000, 'C') AS [Currency];
SELECT FORMAT(GETDATE(),'D') AS [DATE];
SELECT FORMAT(24500.282, '#,###,###0.00') AS [Currency];
GO

--End of example-7
