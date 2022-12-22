--Script Name: RTRIM()
--Script Type: Function
--Developed By: Muhammad Imran
--Date Created: 09 Nov 2022
--Date Modified: 22 Dec 2022

--Example-1

--Declare variable
DECLARE @EMAIL VARCHAR(100)

--Set value of variable 
SET @EMAIL = 'KenSanchez@gmail.com   ';

--Use RTRIM()
SELECT  @EMAIL   AS [OriginalEmail]
, RTRIM(@EMAIL)  AS [RTrimEmail];
GO

--End of example-1

--Enhancement

--Example-2
--Pass the newly introduced parameter in RTRIM()

--Declare variable
DECLARE @EMAIL VARCHAR(100) 

--Set value of variable
SET @EMAIL = 'KenSanchez@gmail.com;';

--Use RTRIM()
SELECT  @EMAIL       AS [OriginalEmail]
, RTRIM(@EMAIL,'; ')  AS [RTrimEmail];
GO

--End of example-2

--Example-3
--Remove spaces using RTRIM()

--Declare variable
DECLARE @EMAIL VARCHAR(100) 

--Set value of variable 
SET @EMAIL = '     KenSanchez@gmail.com';

--Use RTRIM()
SELECT  @EMAIL   AS [OriginalEmail]
, RTRIM(@EMAIL)  AS [RTrimEmail]
, RTRIM(@EMAIL,' ') AS [RTrimEmailWithParameter];
GO

--End of example-3
--End of enhancement
