--Script Name: DATETRUNC()
--Script Type: Function
--Article:https://raresql.com/2022/11/04/sql-server-2022-date-time-function-datetrunc/
--Developed By: Muhammad Imran
--Date Created: 04 Nov 2022
--Date Modified: 22 Dec 2022

--Example

--Declare variable
DECLARE @DateTime DATETIME2

--Set value of variable
SET @DateTime = '2022-10-27 12:02:31.9033333';

--Use DateTrunc Function

SELECT @DateTime                    AS [Current Date]
      , DATETRUNC(YEAR,@DateTime)   AS [DateTrunc Function]
      ,'Extract Date Till The YEAR' AS [Description]
UNION

SELECT @DateTime                      AS [Current Date]
     , DATETRUNC(QUARTER,@DateTime)   AS [DateTrunc Function]
     ,'Extract Date Till The QUARTER' AS [Description]
UNION

SELECT @DateTime                    AS [Current Date]
     , DATETRUNC(MONTH,@DateTime)   AS [DateTrunc Function]
     ,'Extract Date Till The MONTH' AS [Description]
UNION

SELECT @DateTime                    AS [Current Date]
     , DATETRUNC(WEEK,@DateTime)    AS [DateTrunc Function]
     ,'Extract Date Till The WEEK'  AS [Description]
UNION

SELECT @DateTime                    AS [Current Date]
     , DATETRUNC(DAY,@DateTime)     AS [DateTrunc Function]
     , 'Extract Date Till The DAY'  AS [Description]
UNION

SELECT @DateTime                    AS [Current Date]
     , DATETRUNC(HOUR,@DateTime)    AS [DateTrunc  Function]
     , 'Extract Date Till The HOUR' AS [Description]
UNION

SELECT @DateTime                      AS [Current Date]
      , DATETRUNC(MINUTE,@DateTime)   AS [DateTrunc  Function]
      , 'Extract Date Till The MINUTE'AS [Description]
UNION

SELECT @DateTime                       AS [Current Date]
      , DATETRUNC(SECOND,@DateTime)    AS [DateTrunc  Function]
      , 'Extract Date Till The SECOND' AS [Description]
UNION

SELECT @DateTime                            AS [Current Date]
      , DATETRUNC(MILLISECOND,@DateTime)    AS [DateTrunc  Function]
      , 'Extract Date Till The MILLISECOND' AS [Description]
UNION

--Use DateTrunc() function
SELECT @DateTime                            AS [Current Date]
      , DATETRUNC(MICROSECOND,@DateTime)    AS [DateTrunc  Function]
      , 'Extract Date Till The MICROSECOND' AS [Description];
GO

--End of example
