-- CREATE DATABASE MANAGEMENT;
USE MANAGEMENT;

CREATE TABLE IF NOT EXISTS Property (
  PropertyID INT PRIMARY KEY AUTO_INCREMENT,
  Address VARCHAR(255) NOT NULL DEFAULT '',
  Status ENUM('FORSALE', 'SOLD', 'WITHDRAWN') NOT NULL,
  Price DECIMAL(6,2) NOT NULL
--   agent_id INT NOT NULL,
--   FOREIGN KEY(agent_id) REFERENCES (agent(agent_id)
  );
  


CREATE TABLE IF NOT EXISTS Buyer (
Buyer_id INT PRIMARY KEY AUTO_INCREMENT,
Fullname VARCHAR(255) NOT NULL DEFAULT''
);

CREATE TABLE IF NOT EXISTS Agent(
agent_id INT PRIMARY KEY AUTO_INCREMENT,
Fullname VARCHAR(255) NOT NULL DEFAULT''
);

CREATE TABLE bookings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  buyer_id INT,
  property_id INT,
  agent_id INT,
  time_slot DATETIME,
  FOREIGN KEY (buyer_id) REFERENCES Buyer(id),
  FOREIGN KEY (property_id) REFERENCES Property(id),
  FOREIGN KEY (agent_id) REFERENCES Agent(id)
);

INSERT INTO Property VALUES ('1', '1234 Main St ', 'FORSALE', '200000');
INSERT INTO Property VALUES ('2','12 Main St ', 'FORSALE', '300000');
INSERT INTO Property VALUES ('3', '124 Main St ', 'Sold', '400000');
INSERT INTO Property VALUES ('4', '123 Main St ', 'Withdrawn', '500000');
INSERT INTO Property VALUES ('5', '234 Main St ', 'FORSALE', '600000');

CREATE TABLE seller(
seller_name VARCHAR(40) NOT NULL,
seller_email VARCHAR(60) NOT NULL,
seller_address VARCHAR(60) NOT NULL,
seller_ID INT PRIMARY KEY AUTO_INCREMENT
);

INSERT INTO seller VALUES ('Khushal', 'test@gmail.com', '12345 ht street', '1');
INSERT INTO seller VALUES ('Khusha', 'test@gmail.com', '1234 ht street', '2');
INSERT INTO seller VALUES ('Khush', 'test@gmail.com', '123 ht street', '3');
INSERT INTO seller VALUES ('Khus', 'test@gmail.com', '12 ht street', '4');
INSERT INTO seller VALUES ('Khu', 'test@gmail.com', '1 ht street', '5');


