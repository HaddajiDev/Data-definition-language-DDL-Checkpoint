
CREATE TABLE Product
(
    porduct_id VARCHAR(20) CONSTRAINT pr_Key PRIMARY KEY (porduct_id),
    product_name VARCHAR(20) CONSTRAINT N_Null NOT NULL,
    Cataglog VARCHAR(20),
    Price NUMBER CHECK (Price > 0)
);

CREATE TABLE Customer(
    Customer_id VARCHAR(20) CONSTRAINT pr_Key PRIMARY Key (Customer_id),
    Customer_Name VARCHAR CONSTRAINT n_Null NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Orders(
    Customer_id VARCHAR(20),
    porduct_id VARCHAR(20),
    FOREIGN KEY (porduct_id) REFERENCES Product(porduct_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    Order_Date DATE,
    Quantity NUMBER,
    TotalAmout NUMBER
);

INSERT INTO Product VALUES("P01", "Samsung Galaxy S20", "SmartPhone", 3299);
INSERT INTO Product VALUES("P02", "Asus NoteBook", "PC", 5429);


INSERT INTO Customer VALUES("C01", "ALI", "71321009");
INSERT INTO Customer VALUES("C02", "Asma", "71321109");

INSERT INTO Orders VALUES("C01", "P02", NULL, 2, 9198);
INSERT INTO Orders VALUES("C02", "P01", "28/25/2020", 1, 3125);
