	MERGE Sales.Customers AS target 
	USING (VALUES (1,	'Tailspin Toys (Head Office9)',	1,	3,	1,	1001,	1002,	3,	19586,	19586, '2013-01-01',	0.000,	0,	0,	7,	'(308) 555-0100',	'(308) 555-0101', 'NULL', 'NULL', 			'http://www.tailspintoys.com',	'Shop 38',	'1877 Mittal Road',	'90410',	geography::Point(47.65100, -122.34900, 4326),	'PO Box 8975',	'Ribeiroville',	'90410',	1))
		AS source (CustomerID,	CustomerName,	BillToCustomerID,	CustomerCategoryID,	BuyingGroupID,	PrimaryContactPersonID,	AlternateContactPersonID,	DeliveryMethodID,	DeliveryCityID,	PostalCityID, AccountOpenedDate,	StandardDiscountPercentage,	IsStatementSent,	IsOnCreditHold,	PaymentDays,	PhoneNumber,	FaxNumber,	DeliveryRun,	RunPosition,	WebsiteURL,	DeliveryAddressLine1,	DeliveryAddressLine2,	DeliveryPostalCode,	DeliveryLocation,	PostalAddressLine1,	PostalAddressLine2,	PostalPostalCode,	LastEditedBy) 
		ON
	 (target.CustomerID = source.CustomerID) 
	WHEN MATCHED 
		THEN UPDATE SET CustomerID = source.CustomerID,
						CustomerName = source.CustomerName,
						BillToCustomerID = source.BillToCustomerID,
						CustomerCategoryID = source.CustomerCategoryID,
						BuyingGroupID = source.BuyingGroupID,
						PrimaryContactPersonID = source.PrimaryContactPersonID,
						AlternateContactPersonID = source.AlternateContactPersonID,
						DeliveryMethodID = source.DeliveryMethodID,
						DeliveryCityID = source.DeliveryCityID,
						PostalCityID = source.PostalCityID,
						AccountOpenedDate = source.AccountOpenedDate,
						StandardDiscountPercentage = source.StandardDiscountPercentage,
						IsStatementSent = source.IsStatementSent,
						IsOnCreditHold = source.IsOnCreditHold,
						PaymentDays = source.PaymentDays,
						PhoneNumber = source.PhoneNumber,
						FaxNumber = source.FaxNumber,
						DeliveryRun = source.DeliveryRun,
						RunPosition = source.RunPosition,
						WebsiteURL = source.WebsiteURL,
						DeliveryAddressLine1 = source.DeliveryAddressLine1,
						DeliveryAddressLine2 = source.DeliveryAddressLine2,
						DeliveryPostalCode = source.DeliveryPostalCode,
						DeliveryLocation = source.DeliveryLocation,
						PostalAddressLine1 = source.PostalAddressLine1,
						PostalAddressLine2 = source.PostalAddressLine2,
						PostalPostalCode = source.PostalPostalCode,
						LastEditedBy = source.LastEditedBy

	WHEN NOT MATCHED 
		THEN INSERT (CustomerID,	CustomerName,	BillToCustomerID,	CustomerCategoryID,	BuyingGroupID,	PrimaryContactPersonID,	AlternateContactPersonID,	DeliveryMethodID,	DeliveryCityID,	PostalCityID, AccountOpenedDate,	StandardDiscountPercentage,	IsStatementSent,	IsOnCreditHold,	PaymentDays,	PhoneNumber,	FaxNumber,	DeliveryRun,	RunPosition,	WebsiteURL,	DeliveryAddressLine1,	DeliveryAddressLine2,	DeliveryPostalCode,	DeliveryLocation,	PostalAddressLine1,	PostalAddressLine2,	PostalPostalCode,	LastEditedBy) 
			VALUES (source.CustomerID,	source.CustomerName,	source.BillToCustomerID,	source.CustomerCategoryID,	source.BuyingGroupID,	source.PrimaryContactPersonID,	source.AlternateContactPersonID,	source.DeliveryMethodID,	source.DeliveryCityID,	source.PostalCityID, source.AccountOpenedDate,	source.StandardDiscountPercentage,	source.IsStatementSent,	source.IsOnCreditHold,	source.PaymentDays,	source.PhoneNumber,	source.FaxNumber,	source.DeliveryRun,	source.RunPosition,	source.WebsiteURL,	source.DeliveryAddressLine1,	source.DeliveryAddressLine2,	source.DeliveryPostalCode,	source.DeliveryLocation,	source.PostalAddressLine1,	source.PostalAddressLine2,	source.PostalPostalCode,	source.LastEditedBy)
	OUTPUT deleted.*, inserted.*;