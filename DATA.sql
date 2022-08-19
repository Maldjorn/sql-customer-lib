USE CustomerDB
GO

INSERT INTO Customers 
VAlUES ('Alex','Hex', '165204892561322','example@example.com', 'Note1 Note2', 123),
		('Mark','Hex','165204892561322','example@example.com', 'Note3 Note4', 321),
		('Kyle','Hex','161435542121112','example@example.com', 'Note5 Note6', 312);

INSERT INTO AddressType 
VAlUES (1,'Unknown'),
	   (2,'Shipping'),
	   (3,'Billing');

INSERT INTO Addresses 
VAlUES (1,'Address','Address2',2, 'Seattle', 22312,'Washington','United States'),
		(2,'Address3','Address4',3, 'Seattle',33212 ,'Washington','United States'),
		(3,'Address5','Address6',1, 'Seattle', 22213,'Washington','United States');

--Invalid
INSERT INTO Customers 
VAlUES ('Alex','Hex', '16520489','example.com', 'Note1 Note2', 123);

INSERT INTO Addresses 
VAlUES (2,'Address','Address2',2, 'Seattle', 22312,'Washington','States');