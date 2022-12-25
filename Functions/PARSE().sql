-- Script Name: PARSE function
-- Script Type: function
-- Developed By: Muhammad Imran
-- Date Created: 26 Aug 2012
-- Date Modified: 21 Dec 2022

--Example-1
--varchar to numeric

--Use PARSE function
SELECT PARSE('123.45' AS NUMERIC(18,2)) AS Output

--End of example-1

--Example-2
--varchar to int

--Use PARSE function
SELECT PARSE('123.45' AS INT) AS Output

--End of example-2

--Example-3
--varchar to Datetime with default culture

--Use PARSE function
Select Parse('Aug 26 2012' as datetime)
Select Parse('08/26/2012' as datetime )
Select Parse('2012.08.26' as datetime)
Select Parse('26 Aug 2012' as datetime)
Select Parse('Aug 26, 2012' as datetime)
Select Parse('08-26-2012' as datetime)
Select Parse('2012/08/26' as datetime)

--End of example-3

--Example-4
--varchar to Datetime with culture

--Use PARSE function
Select Parse('26/08/2012' as datetime using 'fr-FR')  --French
Select Parse('26.08.2012' as datetime using 'de-DE')  --German
Select Parse('26-08-2012' as datetime using 'it-IT')  --Italian

--End of example-4

--Example-5
--varchar to currency with culture

--Use PARSE function
Select Parse('$123.45' as money using 'en-US')
Select Parse('€123,45' AS money using 'de-DE')

--End of example-5

--Example-6
--Language setting instead of culture

--Set Language
--Use PARSE function

SET LANGUAGE 'French'
Select Parse('26/08/2012' as datetime)
 
SET LANGUAGE 'German'
Select Parse('26.08.2012' AS datetime2) AS Result
 
SET LANGUAGE 'Italian'
Select Parse('26-08-2012' as datetime)

--End of example-6
