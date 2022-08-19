CREATE DATABASE CustomerLib_Timoschenko
GO
USE CustomerDB
GO
CREATE TABLE Customers
(
	customer_ID int IDENTITY(1,1) PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50) NOT NULL,
	phone_number varchar(20) CONSTRAINT phone_number_chk CHECK(phone_number LIKE '+[1-9]' + REPLICATE('[0-9]', 14) OR phone_number LIKE '[1-9]' + REPLICATE('[0-9]', 14)),
	email varchar(50) CONSTRAINT email_chk CHECK(email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'),
	notes varchar(100) NOT NULL,
	total_purchases_amount decimal,

);

CREATE TABLE AddressType
(
	address_type_ID int PRIMARY KEY,
	Type varchar(20) NOT NULL UNIQUE 
);

CREATE TABLE Addresses
(
	address_ID int IDENTITY(1,1) PRIMARY KEY,
	customer_ID int,
	address_Line varchar(100) NOT NULL,
	address_Line_2 varchar(100),
	address_type int NOT NULL default 1,
	city varchar(50) NOT NULL,
	postal_code varchar(6) NOT NULL,
	[state] varchar(50) NOT NULL,
	country varchar(40) NOT NULL CONSTRAINT country_chk CHECK(country IN('United States','Canada')),
	CONSTRAINT FK_Address_type FOREIGN KEY (address_type) REFERENCES AddressType(address_type_ID),
	CONSTRAINT FK_Customer_ID FOREIGN KEY (customer_ID) REFERENCES Customers(customer_ID)
);
