/*
Msg 15281, Level 16, State 1, Procedure master..xp_cmdshell, Line 1 [Batch Start Line 0]
SQL Server blocked access to procedure 'sys.xp_cmdshell' of component 'xp_cmdshell' because this component is turned off as part of the security configuration for this server. 
A system administrator can enable the use of 'xp_cmdshell' by using sp_configure. For more information about enabling 'xp_cmdshell', search for 'xp_cmdshell' in SQL Server Books Online.
*/

-- To allow advanced options to be changed.  
EXEC sp_configure 'show advanced options', 1;  
GO  
-- To update the currently configured value for advanced options.  
RECONFIGURE;  
GO  
-- To enable the feature.  
EXEC sp_configure 'xp_cmdshell', 1;  
GO  
-- To update the currently configured value for this feature.  
RECONFIGURE;  
GO  

SELECT @@SERVERNAME

--exec master..xp_cmdshell 'bcp "WorldWideImporters.Sales.InvoiceLines" out  "E:\SQL WWI\InvoiceLines.txt" -c -t, -S localhost\MSSQLServer01 -T -b 10000'


exec master..xp_cmdshell 'bcp "[WideWorldImporters].Purchasing.Suppliers" out  "C:\SQL WWI\Suppliers.txt" -T -w -t, -S'