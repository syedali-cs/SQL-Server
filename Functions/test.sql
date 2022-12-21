
DECLARE @EMAIL VARCHAR(100)
SET @EMAIL = 'KenSanchez@gmail.com   ';
SELECT  @EMAIL   AS [OriginalEmail]
, RTRIM(@EMAIL)  AS [RTrimEmail];
GO
