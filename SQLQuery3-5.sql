


exec master..xp_cmdshell 'bcp "[WideWorldImporters].Purchasing.Suppliers" out  "C:\SQL WWI\Suppliers.txt" -T -w -t"_" -S'

Select * into [WideWorldImporters].[Purchasing].[Suppliers_Copy] from [WideWorldImporters].Purchasing.Suppliers
Truncate table [WideWorldImporters].[Purchasing].[Suppliers_Copy]
BULK INSERT [WideWorldImporters].[Purchasing].[Suppliers_Copy]
				   FROM "C:\SQL WWI\Suppliers.txt"
				   WITH 
					 (
						BATCHSIZE = 1000, 
						DATAFILETYPE = 'widechar',
						FIELDTERMINATOR = '_',
						ROWTERMINATOR ='\n',
						KEEPNULLS,
						TABLOCK       
						 
					  );
