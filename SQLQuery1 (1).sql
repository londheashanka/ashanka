Create table Customer1 
(ID int NOT NULL,
Firstname Varchar(100) NOT NULL,
Lastname Varchar(100) NOT NULL,
City Varchar(100),
Country Varchar(100), 
Phoneno Int );

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values ('1', 'James', 'Butt', 'Newyork', 'USA' , '231456');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values ('2', 'William', 'Smith', 'Moscow', 'Russia' , '254896');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values('3', 'Mohan', 'Kumar', 'Sanfrancisco', 'USA', '569412');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values('4', 'Cindy', 'Mac', 'Tokyo', 'Japan', '485236');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values('5', 'John', 'Thomas', 'Misnk', 'Belarus', '852369');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values('6', 'Chin', 'Yeu', 'Tokyo', 'Japan', '512475');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values('7', 'Linda', 'Greedman', 'Sanfrancisco', 'USA', '964253');

Insert Into Customer1 (ID, Firstname, Lastname , City , Country , phoneno)
Values('8', 'Vince', 'Jose', 'Newyork', 'USA', '568787');


Select *from Customer1;


Alter Table Customer1
ADD Primary Key(ID);


CREATE TABLE Orders (
    OrderID int NOT NULL,
	OrderDate Datetime NOT NULL,
    OrderNumber int NOT NULL,
    ID int,
	TotalAmount Decimal(12,2),
    PRIMARY KEY (OrderID),
    FOREIGN KEY (ID) REFERENCES Customer1 (ID));

	Insert Into Orders (OrderID, Orderdate, OrderNumber, ID, TotalAmount)
	Values('101', '2021-01-28', '736421', '3', '4689.01');

	Insert Into Orders (OrderID, Orderdate, OrderNumber, ID, TotalAmount)
	Values('102', '2022-02-22', '786921', '1', '5986');

	Insert Into Orders (OrderID, Orderdate, OrderNumber, ID, TotalAmount)
	Values('103', '2019-09-29', '792142', '2', '6218.09');

	Insert Into Orders (OrderID, Orderdate, OrderNumber, ID, TotalAmount)
	Values
	('104', '2019-08-29', '742198', '6', '78928'),
	('105', '2021-09-30', '759218', '8', '779.01'),
	('106', '2022-01-22', '792496', '5', '9981'),
	('107', '2018-01-22', '792998', '4', '100001'),
	('108', '2021-10-31', '779962', '7', '986');


	Select *from Orders;


	Create Table OrderItem(
	ItemID int NOT NULL,
	OrderID Int NOT NULL,
	ProductID Varchar(25) NOT NULL,
	UnitPrice Decimal(12,2),
	Quantity Int,
	Primary key (ItemID),
	Foreign key (OrderID) References Orders (OrderID));

	Insert into OrderItem (ItemID, OrderID, ProductID, UnitPrice, Quantity)
	Values
	
	('1003', '103', 'A3', '300000', '300'),
	('1004', '104', 'A4', '400000', '400'),
	('1005', '105', 'A5', '500000', '500'),
	('1006', '106', 'A6', '600000', '600'),
	('1007', '107', 'A7', '700000', '700'),
    ('1008', '108', 'A8', '800000', '800');

	Select *from OrderItem;

	Alter Table OrderItem
	Add Primary Key(ProductID);


	Create Table Product 
	(ProductID Varchar(25) NOT NULL,
	ProductName Varchar(25),
	UnitPrice Decimal(12,2),
	Package Varchar(25),
	IsDiscontinued Bit);
	
	Insert Into Product(ProductID, ProductName, UnitPrice, Package, IsDiscontinued)
	Values 
	('A2', 'Shorts', '200000', 'Not Packed', '1'),
	('A3', 'Tops', '300000', 'Not Packed', '1'),
	('A4', 'Scrunchies', '400000', 'Packed', '0'),
	('A5', 'Backpack', '500000', 'Packed', '0'),
	('A6', 'Heels', '600000', 'Packed', '0'),
    ('A7', 'Jewellery', '700000', 'Not Packed', '1'),
    ('A8', 'Boots', '800000', 'Not Packed', '1');

	Select *from Product;
	

	Select *from Customer1
	WHERE Country Like 'r%' ;

	Select *from Customer1
	where Lastname like 's%h';


	Select Ord.OrderID, Ord.Orderdate, Ord.OrderNumber, Ord.ID, Ord.TotalAmount
	From Orders Ord
	INNER JOIN OrderItem OrdItm
	ON Ord.OrderID=OrdItm.OrderID;


	Select *From Customer1;

	Select Cust.ID, Cust.Firstname, Cust.Lastname, Cust.City, Cust.Country, Cust.Phoneno
	from Customer1 Cust
	Left Outer Join Orders Ord
	ON Cust.ID=Ord.ID;

	
	Select Cust.ID, Cust.Firstname, Cust.Lastname, Cust.City, Cust.Country, Cust.Phoneno
	from Customer1 Cust
	Right Outer Join Orders Ord
	ON Cust.ID=Ord.ID;


	
	Select Cust.ID, Cust.Firstname, Cust.Lastname, Cust.City, Cust.Country, Cust.Phoneno
	from Customer1 Cust
	Cross Join Orders Ord;



	