--TABLE SCRIPT - 

Create Table transacts(
Transaction_id int,
User_id char(10),
Transaction_date date,
Product_id char(10),
Quantity int
);

INSERT INTO transacts Values(1,'U1','2022-12-16','P1',2);
INSERT INTO transacts Values(2,'U2','2022-12-16','P2',1);
INSERT INTO transacts Values(3,'U1','2022-12-16','P3',1);
INSERT INTO transacts Values(4,'U4','2022-12-16','P4',4);
INSERT INTO transacts Values(5,'U2','2022-12-17','P5',3);
INSERT INTO transacts Values(6,'U2','2022-12-17','P6',2);
INSERT INTO transacts Values(7,'U4','2022-12-18','P7',1);
INSERT INTO transacts Values(8,'U3','2022-12-19','P8',2);
INSERT INTO transacts Values(9,'U3','2022-12-19','P9',8);
