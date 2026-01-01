CREATE table Employee (SSN BIGINT Primary key,Fname varchar(100),Lname varchar(100),Zip varchar(10));
CREATE table Customer (CNumber BIGINT Primary key,Fname varchar(100),Lname varchar(100),ZipCode varchar(10));
CREATE table Part(PartNo BIGINT Primary key,Name varchar(100),Price BIGINT,Quantity BIGINT);

CREATE table Order_Main(OrderNo BIGINT Primary key,Receipt_date varchar(100),Expected_date varchar(100),Actual_date varchar(100));
CREATE table Orders(OrderNo BIGINT ,PartNo BIGINT,Quantity BIGINT, CONSTRAINT pk_orders 
        PRIMARY KEY (OrderNo, PartNo),CONSTRAINT fk_orderNo FOREIGN KEY (OrderNo) REFERENCES Order_Main(OrderNo),CONSTRAINT fk_partno FOREIGN KEY (PartNo) REFERENCES Part(PartNo));


CREATE table Customer_orders(SSN BIGINT ,CNumber BIGINT,OrderNo BIGINT, CONSTRAINT pk_cus_orders 
        PRIMARY KEY (SSN,CNumber,OrderNo),CONSTRAINT fk_SSN FOREIGN KEY (SSN) REFERENCES Employee(SSN),CONSTRAINT fk_CNumber FOREIGN KEY (CNumber) REFERENCES Customer(CNumber),CONSTRAINT fk_orderNo FOREIGN KEY (OrderNo) REFERENCES Order_Main(OrderNo));


