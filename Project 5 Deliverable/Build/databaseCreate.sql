
--Category Table
CREATE TABLE Category (
  category_id NUMBER(10) PRIMARY KEY,
  category_name VARCHAR2(50) NOT NULL,
  parent_category_id NUMBER(10),
  CONSTRAINT fk_parent_category FOREIGN KEY (parent_category_id) REFERENCES Category (category_id)
);

--Supplier Table

CREATE TABLE Supplier (
  supplier_id NUMBER(10) PRIMARY KEY,
  supplier_name VARCHAR2(100) NOT NULL
);

--Product Table

CREATE TABLE Product (
  product_id NUMBER(10) PRIMARY KEY,
  product_name VARCHAR2(100) NOT NULL,
  category_id NUMBER(10) NOT NULL,
  supplier_id NUMBER(10) NOT NULL,
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES Category (category_id),
  CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id)
);

--Customer Table

CREATE TABLE Customer (
  customer_id NUMBER(10),
  customer_name VARCHAR2(100) NOT NULL,
  CONSTRAINT pk_customer_id PRIMARY KEY (customer_id)
);

--Order Table

CREATE TABLE "Order" (
  order_id NUMBER(10),
  customer_id NUMBER(10) NOT NULL,
  order_date DATE NOT NULL,
  CONSTRAINT pk_order_id PRIMARY KEY (order_id),
  CONSTRAINT fk_order_customer_id FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

--Order_Item Table

CREATE TABLE Order_Item (
  order_id NUMBER(10) NOT NULL,
  product_id NUMBER(10) NOT NULL,
  quantity NUMBER(5) NOT NULL,
  CONSTRAINT pk_order_item PRIMARY KEY (order_id, product_id),
  CONSTRAINT fk_order_item_order_id FOREIGN KEY (order_id) REFERENCES "Order" (order_id),
  CONSTRAINT fk_order_item_product_id FOREIGN KEY (product_id) REFERENCES Product (product_id)
);

--Review Table

CREATE TABLE Review (
  review_id NUMBER(10),
  customer_id NUMBER(10) NOT NULL,
  product_id NUMBER(10) NOT NULL,
  review_date DATE NOT NULL,
  rating NUMBER(1) NOT NULL,
  CONSTRAINT pk_review_id PRIMARY KEY (review_id),
  CONSTRAINT fk_review_customer_id FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
  CONSTRAINT fk_review_product_id FOREIGN KEY (product_id) REFERENCES Product (product_id)
);
