
CREATE TABLE Product
(
    porduct_id VARCHAR(20) CONSTRAINT pr_Key PRIMARY KEY (porduct_id),
    product_name VARCHAR(20) CONSTRAINT N_Null NOT NULL,
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

    Quantity NUMBER,
    TotalAmout NUMBER
);
