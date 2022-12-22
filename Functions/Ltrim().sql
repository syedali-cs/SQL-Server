--Script Name: LTRIM()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 08 Nov 2022
--Date Modified: 22 Dec 2022

--Example-1
--Declare variable
DECLARE @EMAIL VARCHAR(100)
--Set value of variable
SET @EMAIL = '     KenSanchez@gmail.com';
--Use LTRIM()
SELECT  @EMAIL   AS [OriginalEmail]
, LTRIM(@EMAIL)  AS [LTrimEmail];
GO

--End of example-1

--Enhancement
--Pass the newly introduced parameter in LTRIM()

--Example-2
--Declare variable
DECLARE @EMAIL VARCHAR(100) 
--Set value of variable
SET @EMAIL = '     ;KenSanchez@gmail.com';
--Use LTRIM()
SELECT  @EMAIL       AS [OriginalEmail]
, LTRIM(@EMAIL,'; ')  AS [LTrimEmail];
GO

--End of example-2

--Example-3
--Declare variable
DECLARE @EMAIL VARCHAR(100)
--Set value of variable
SET @EMAIL = '     KenSanchez@gmail.com';
--Use LTRIM()
SELECT  @EMAIL   AS [OriginalEmail]
, LTRIM(@EMAIL)  AS [LTrimEmail]
, LTRIM(@EMAIL,' ') AS [LTrimEmailWithParameter];
GO

--End of example-3
--End of enhancement
