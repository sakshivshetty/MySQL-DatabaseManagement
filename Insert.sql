INSERT INTO OUTLETS VALUES
('1','Rajajinagar','lifestyle.rajajinagar@gmail.com','080234338'),
('2','Jayanagr','lifestyle.jayanagar@gmail.com','082766804'),
('3','Vijayanagar','lifestyle.vijayanagar@gmail.com','0802342367'),
('4','Indiranagar','lifestyle.indiranagar@gmail.com','0802834516');
GO

INSERT INTO DESIGNATION VALUES
('11','MANAGER','250000'),
('12','ACCOUNTANT','80000'),
('13','LAWYER','200000'),
('14','REGULAR','25000'),
('15','SECURITY','8500');
GO


INSERT INTO EMPLOYEES VALUES
('21','Amulya Rao','9611710889','F','35','11','1'),
('22','Karthik Ramakishnan','8897742010','M','31','12','1'),
('23','Naina Agnihotri','7756330217','F','42','13','1'),
('24','Aradhika Menon','8867549930','F','23','14','1'),
('25','Rahul Tandon','6367259981','M','27','14','1'),
('26','Hrishikesh Shet','9127763091','M','26','14','1'),
('27','Zaira Mundrawala','6465875320','F','24','14','1'),
('28','Latha Veeramma','9876540981','F','33','14','1'),
('29','Aishwarya Hegde','8897065948','F','30','14','1'),
('30','Rahil Sheikh','7765893091','M','48','15','1'),
('31','Maithri Iyengar','6289605531','F','40','11','2'),
('32','Vashisht Shah','8769504376','M','39','12','2'),
('33','Zoran Syed','8756435192','M','33','13','2'),
('34','Deshna Patil','7568493021','F','29','14','2'),
('35','Ridhima Kasbekar','8190675439','F','31','14','2'),
('36','Sheryl Rebello','6574937639','F','25','14','2'),
('37','Markhand Arora','7659874630','M','30','14','2'),
('38','Akash Bhat','7685048322','M','26','14','2'),
('39','Maanvi Mallya','6578390261','F','36','14','2'),
('40','Raghu Hoskote','8956473822','M','52','15','2'),
('41','Aaryan Shetty','6789567830','M','38','11','3'),
('42','Swathi Nair','7869546372','F','41','12','3'),
('43','Trisha Swaika','6574889032','F','37','13','3'),
('44','Akshatha Maheshwari','9808076541','F','24','14','3'),
('45','Madhoolika Swaraj','8796657748','F','29','14','3'),
('46','Rakshith Holla','7869546300','M','36','14','3'),
('47','Dhanyatha Reddy','8796554409','F','26','14','3'),
('48','Deemahi Joshi','6759608737','F','25','14','3'),
('49','Shanaya Pithawala','8796055432','F','34','14','3'),
('50','Dinesh Singh','7685900867','M','56','15','3'),
('51','Sanath Shettigar','6457683399','M','47','11','4'),
('52','Sumukh Bharadwaj','6758890011','M','39','12','4'),
('53','Aanchal Pratap','8769906574','F','32','13','4'),
('54','Rohith Mukherjee','7659876079','M','36','14','4'),
('55','Meenal Sanghvi','9898776510','F','28','14','4'),
('56','Reesha Shenoy','7686004328','F','37','14','4'),
('57','Siddharth Naik','7659511220','M','27','14','4'),
('58','Lalit Vaishnav','6325490844','M','33','14','4'),
('59','Irene Lasrado','7693324907','F','29','14','4'),
('60','Nikhil Thirthahalli','9032514730','M','49','15','4');
GO

INSERT INTO CUSTOMERS VALUES
('101','Saachi Sangankal','7609845377','saachi@yahoo.com','F'),
('102','Sachin Bhosle','8760098021','sachin@yahoo.com','M'),
('103','Aaliya Mehra','6275640911','aaliya@yahoo.com','F'),
('104','Sunaina Ghosh','7299648100','sunaina@yahoo.com','F'),
('105','Bharath Bohra','9856443703','bharath@yahoo.com','M'),
('106','Arya Khurana','9034327665','arya@yahoo.com','F'),
('107','Milind Bhose','7775940210','milind@yahoo.com','M'),
('108','Karan Rai','6364542291','karan@yahoo.com','M'),
('109','Vedika Hosahalli','8988887654','vedika@yahoo.com','F'),
('110','Aaron Coelho','7564983340','aaran@yahoo.com','M');
GO

INSERT INTO ORDERS VALUES
('201','101','24',getdate()),
('202','101','24',getdate()),
('203','102','35',getdate()),
('204','103','36',getdate()),
('205','103','36',getdate()),
('206','104','37',getdate()),
('207','104','37',getdate()),
('208','105','48',getdate()),
('209','105','48',getdate()),
('210','106','46',getdate()),
('211','107','44',getdate()),
('212','108','55',getdate()),
('213','109','57',getdate()),
('214','109','57',getdate()),
('215','110','58',getdate());
GO

INSERT INTO ITEMS VALUES
('301','Black Dress','F','S','1299'),
('302','Red Shirt','F','S','899'),
('303','Navy Blazer','M','M','2499'),
('304','Paisley Kurta','F','L','699'),
('305','Purple Leggings','F','XL','449'),
('306','Plaid Skirt','F','XS','1499'),
('307','Brown Turtleneck','F','XS','999'),
('308','Pyjama','M','XXL','799'),
('309','Vest','M','XXL','199'),
('310','Silk Salwar','F','M','899'),
('311','Olive Green Shirt','M','M','1099'),
('312','Beige Trousers','M','S','2749'),
('313','Pink Crop Top','F','XS','649'),
('314','Skinny Jeans','F','XS','2549'),
('315','Polo T Shirt','M','L','1699');
GO


INSERT INTO ORDER_DETAILS VALUES
('201','301'),
('202','302'),
('203','303'),
('204','304'),
('205','305'),
('206','306'),
('207','307'),
('208','308'),
('209','309'),
('210','310'),
('211','311'),
('212','312'),
('213','313'),
('214','314'),
('215','315');
GO

INSERT INTO BILLS VALUES
('401','201','28','2198','CASH'),
('402','203','28','2499','CASH'),
('403','204','29','1198','CARD'),
('404','206','38','2498','UPI'),
('405','208','39','998','CARD'),
('406','210','39','899','CASH'),
('407','211','45','1099','CASH'),
('408','212','49','2749','CASH'),
('409','213','56','2198','UPI'),
('410','215','59','1699','UPI');
GO