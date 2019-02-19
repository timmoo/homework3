
USE WideWorldImporters;
GO
INSERT INTO Purchasing.Suppliers
	(SupplierID, 
	SupplierName, 
	SupplierCategoryID, 
	PrimaryContactPersonID, 
	AlternateContactPersonID, 
	DeliveryMethodID, 
	DeliveryCityID, 
	PostalCityID, 
	SupplierReference, 
	BankAccountName, 
	BankAccountBranch, 
	BankAccountCode, 
	BankAccountNumber, 
	BankInternationalCode, 
	PaymentDays, 
	InternalComments, 
	PhoneNumber, 
	FaxNumber, 
	WebsiteURL, 
	DeliveryAddressLine1, 
	DeliveryAddressLine2, 
	DeliveryPostalCode, 
	DeliveryLocation, 
	PostalAddressLine1, 
	PostalAddressLine2, 
	PostalPostalCode, 
	LastEditedBy)
VALUES
     (NEXT VALUE FOR Sequences.SupplierID, 'Example1', '1', '32', '23', '5', '38181', '38181', 'AA20356', 'Example1',	'Example1',	'356965',	'8575824165',	'259865',	'15',	'NULL',	'(847) 555-0165',	'(847) 555-0165',	'http://www.example1.com',	'Suite 65',	'183865 Southwest Boulevard',	'46065',	geography::Point(47.65100, -122.34900, 4326),	'PO Box 1065',	'Surrey65',	'46065',	'1');

DECLARE @DeliveryLocation geography;   
SET @DeliveryLocation = geography::Point(47.65100, -122.34900, 4326)  

--SELECT @g.ToString();  
	--@DeliveryLocation, NVARCHAR(50) = 'Data Conversion Only'
	 --(NEXT VALUE FOR Sequences.SupplierID, 'Example2', '2', '33', '24', '6', '38233', '38233', 'AA20357', 'Example2',	'Example2',	'356966',	'8575824166',	'259866',	'16',	'NULL',	'(847) 555-0166',	'(847) 555-0166',	'http://www.example2.com',	'Suite 66',	'183866 Southwest Boulevard',	'46066',	0xE6100000010CDE115F37B6F9434031276893C3905566,	'PO Box 1066',	'Surrey66',	'46066',	'2');
	 --(NEXT VALUE FOR Sequences.SupplierID, 'Example3', '3', '34', '25', '7', '38234', '38234', 'AA20358', 'Example3',	'Example3',	'356967',	'8575824167',	'259867',	'17',	'NULL',	'(847) 555-0167',	'(847) 555-0167',	'http://www.example3.com',	'Suite 67',	'183867 Southwest Boulevard',	'46067',	0xE6100000010CDE115F37B6F9434031276893C3905567,	'PO Box 1067',	'Surrey67',	'46067',	'3');
	 --(NEXT VALUE FOR Sequences.SupplierID, 'Example4', '4', '35', '26', '8', '38235', '38235', 'AA20359', 'Example4',	'Example4',	'356968',	'8575824168',	'259868',	'18',	'NULL',	'(847) 555-0168',	'(847) 555-0168',	'http://www.example4.com',	'Suite 68',	'183868 Southwest Boulevard',	'46068',	0xE6100000010CDE115F37B6F9434031276893C3905568,	'PO Box 1068',	'Surrey68',	'46068',	'4');
	 --(NEXT VALUE FOR Sequences.SupplierID, 'Example5', '5', '36', '27', '9', '38236', '38236', 'AA20350', 'Example5',	'Example5',	'356969',	'8575824169',	'259869',	'19',	'NULL',	'(847) 555-0169',	'(847) 555-0169',	'http://www.example5.com',	'Suite 69',	'183869 Southwest Boulevard',	'46069',	0xE6100000010CDE115F37B6F9434031276893C3905569,	'PO Box 1069',	'Surrey69',	'46069',	'5');

