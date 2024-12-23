-- Step 1: Create the CUSTOMER table
CREATE TABLE CUSTOMER (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50) NOT NULL,
    Address VARCHAR2(100),
    PhoneNumber VARCHAR2(15)
);

-- Step 2: Create the PRODUCT table
CREATE TABLE PRODUCT (
    ProductID NUMBER PRIMARY KEY,
    ProductName VARCHAR2(50) NOT NULL,
    Price NUMBER NOT NULL
);

-- Step 3: Create the ORDERS table
CREATE TABLE ORDERS (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER NOT NULL,
    ProductID NUMBER NOT NULL,
    Quantity NUMBER NOT NULL,
    CONSTRAINT fk_Customer FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
    CONSTRAINT fk_Product FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

-- Step 4: Add the Category column to the PRODUCT table
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Step 5: Add the OrderDate column to the ORDERS table with SYSDATE as the default value
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;
