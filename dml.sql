CREATE TABLE Customer (
	Customer_id VARCHAR2 (20) CONSTRAINT pk_customer PRIMARY KEY,
	Customer_Name VARCHAR2 (20) CONSTRAINT nn_customer NOT NULL,
	Customer_Tel Number,
);
INSERT INTO Customer (Customer_id,Customer_Name,Customer_Tel)
VALUES  ("C01","C02"),
        ("ALI","ASMA"),
        (71 321 009,77 345 823)


CREATE TABLE Product (
	Product_id VARCHAR2 (20) CONSTRAINT pk_customer PRIMARY KEY,
	Product_Name VARCHAR2 (20) CONSTRAINT nn_customer NOT NULL,
    Category  VARCHAR2(20),
	Price Number  unsigned CHECK (Price > 0),
);
INSERT INTO Product (Product_id,Product_Name,Category,Price)
VALUES  ("P01","P02"),
        ("SAMSUNG GALAXY S20","ASUS Notebook"),
        ("Smartphone", "PC"),
        (3299,4599)


CREATE TABLE Orders (
	Customer_id VARCHAR2 (20),
	Product_Name VARCHAR2 (20),
    OrderDate DATE DEFAULT SYSDATE(),
	Quantity NUMBER,
    Total_amount NUMBER,
);
INSERT INTO Orders (Customer_id ,Product_Name,OrderDate,Quantity,Total_amount)
VALUES  ("C01","C02"),
        ("P01","P02"),
        ("NULL","28/05/2020"),
        (2,1),
        (9198,3299)
