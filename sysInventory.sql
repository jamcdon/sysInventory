
#------------------------------------------------------------------------
#PART A
#CREATING TABLES
#------------------------------------------------------------------------

CREATE DATABASE sysInventory;
USE sysInventory;

CREATE TABLE computers(
computerID		INTEGER NOT NULL AUTO_INCREMENT,
computerName	VARCHAR(40),
isServer		BOOLEAN,
PRIMARY KEY (computerID)
);

ALTER TABLE computers AUTO_INCREMENT = 1000;

CREATE TABLE processor(
cpuID			INTEGER (4) NOT NULL AUTO_INCREMENT,
cpuSKU			VARCHAR(20),
cpuSocket		varchar(20),
cpuCore			INT,
cpuThread		INT,
cpuBaseClock	DECIMAL(3,2),
cpuTurboClock	DECIMAL(3,2),
cpuTDP			INT(3),
releaseDate		INT(4),
PRIMARY KEY (cpuID)
);

ALTER TABLE processor AUTO_INCREMENT = 2000;

CREATE TABLE graphicsProcessor(
gpuID 			INTEGER (4) NOT NULL AUTO_INCREMENT,
gpuSKU 			VARCHAR(30),
gpuManufacturer	VARCHAR(10),
PRIMARY KEY (gpuID)
);

ALTER TABLE graphicsProcessor AUTO_INCREMENT = 3000;

CREATE TABLE computerHardware(
hardwareID		INTEGER (4) NOT NULL AUTO_INCREMENT,
computerID		INT,
cpuID			INT,
cpuQuantity		INT,
ramQuantity		INT,
ddrGen			INT,
ddrEcc			BOOLEAN,
sodimm			BOOLEAN,
gpuID			INT,
storageSize		INT,
raid			BOOLEAN,
remoteManage	BOOLEAN,
PRIMARY KEY (hardwareID),
FOREIGN KEY (computerID) REFERENCES computers(computerID),
FOREIGN KEY (cpuID) REFERENCES processor(cpuID),
FOREIGN KEY (gpuID) REFERENCES graphicsProcessor(gpuID)
);

ALTER TABLE computerHardware AUTO_INCREMENT = 4000;

#------------------------------------------------------------------------
#PART B
#INSERTING DATA
#------------------------------------------------------------------------

INSERT INTO computers(computerName, isServer) VALUES
('waterCooled', TRUE),
('silverServer', TRUE),
('core2duoMini', FALSE),
('hpLaptop', FALSE),
('1u', TRUE),
('thinkPad', FALSE),
('e5Xeon', FALSE),
('macBookPro', FALSE),
('vmMachine', TRUE),
('fakeComputer0', FALSE),
('fakeComputer1', FALSE),
('fakeComputer2', FALSE),
('fakeComputer3', FALSE),
('fakeComputer4', FALSE),
('fakeComputer5', FALSE),
('fakeComputer6', FALSE),
('fakeComputer7', FALSE),
('fakeComputer8', FALSE),
('fakeComputer9', FALSE),
('fakeComputer10', FALSE),
('fakeComputer11', FALSE),
('fakeComputer12', FALSE),
('fakeComputer13', FALSE),
('fakeComputer14', FALSE),
('fakeComputer15', FALSE),
('fakeComputer16', FALSE),
('fakeComputer17', FALSE),
('fakeComputer18', FALSE),
('fakeComputer19', FALSE),
('fakeComputer20', FALSE);

INSERT INTO processor(cpuSKU, cpuSocket, cpuCore, cpuThread, cpuBaseClock, cpuTurboClock, cpuTDP, releaseDate) VALUES
('E5620', 'LGA1366', 4, 8, 2.40, 2.66, 080, 2010),
('1600 AF', 'AM4', 6, 12, 3.20, 3.60, 065, 2019),
('C2D E8500', 'LGA775', 2, 2, 3.16, 3.16, 065, 2008),
('i7 4510U', 'BGA1168', 2, 4, 2.00, 3.10, 015,2014),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R5 2500U', 'FP5', 4, 8, 2.00, 3.60, 015, 2017),
('E5-2667 v2', 'LGA2011', 8, 16, 3.30, 4.00, 130, 2013),
('i5 3210M', 'PGA988', 2, 4, 2.50, 3.10, 035, 2012),
('E5-2640 v2','LGA2011', 8, 16, 2.00, 2.50, 95, 2013),
('3600X','AM4', 6, 12, 3.80, 4.40, 95, 2019),
('Athlon X4 940','AM4', 2, 4, 3.20, 3.60, 65, 2017),
('Athlon X4 950','AM4', 2, 4, 3.50, 3.80, 65, 2017),
('Athlon X4 970','AM4', 2, 4, 3.80, 4.00, 65, 2017),
('Athlon 200GE','AM4', 2, 4, 3.20, 3.20, 35, 2018),
('Athlon PRO 200GE','AM4', 2, 4, 3.40, 3.40, 35, 2018),
('Athlon 240GE','AM4', 2, 4, 3.50, 3.50, 35, 2018),
('2400G','AM4', 4, 8, 3.60, 3.90, 65, 2018),
('2200G','AM4', 4, 8, 3.50, 3.70, 45, 2018),
('3200G','AM4', 4, 8, 3.60, 4.00, 65, 2019),
('3400G','AM4', 4, 8, 3.70, 4.20, 65, 2019),
('Athlon 300G','AM4', 2, 4, 3.50, 3.50, 35, 2019),
('Athlon Pro 300GE','AM4', 2, 4, 3.40, 3.40, 35, 2019),
('A6-9400','AM4', 1, 2, 3.40, 3.70, 65, 2019),
('A12-9800','AM4', 2, 4, 3.80, 4.20, 65, 2016),
('1200','AM4', 4, 4, 3.10, 3.40, 65, 2017),
('1300X','AM4', 4, 4, 3.50, 3.70, 65, 2017),
('1400','AM4', 4, 8, 3.20, 3.40, 65, 2017),
('1500X','AM4', 4, 8, 3.50, 4.70, 65, 2017),
('1700','AM4', 8, 16, 3.00, 3.70, 65, 2017),
('1800X','AM4', 8, 16, 3.60, 4.00, 95, 2017);

INSERT INTO graphicsProcessor(gpuSKU, gpuManufacturer) VALUES
('G200', 'Matrox'),
('GTX 650 Ti', 'Nvidia'),
('Q45', 'Intel'),
('Geforce 840M','Nvidia'),
(NULL, NULL),
('Vega8', 'AMD'),
('1070Ti', 'Nvidia'),
('Intel HD Graphics 4000', 'Intel'),
('Radeon HD 6450', 'AMD'),
('Vega 56','AMD'),
('Vega 64','AMD'),
('RX 455','AMD'),
('RX 460','AMD'),
('RX 470D','AMD'),
('RX 470','AMD'),
('RX 480','AMD'),
('Radeon 520','AMD'),
('Radeon 530','AMD'),
('RX 540','AMD'),
('RX 550','AMD'),
('RX 550X','AMD'),
('RX 560D','AMD'),
('RX 560','AMD'),
('RX 570','AMD'),
('RX 580','AMD'),
('RX 590','AMD'),
('Radeon VII','AMD'),
('RX 5500','AMD'),
('RX 5600','AMD'),
('RX 5700','AMD');

INSERT INTO computerHardware(computerID, cpuID, gpuID, cpuQuantity, ramQuantity, ddrGen, ddrEcc, sodimm, storageSize, raid, remoteManage)
VALUES
(1000, 2000, 3000, 2, 8, 3, TRUE, FALSE, 1920, TRUE, TRUE),
(1001, 2001, 3001, 1, 12, 4, FALSE, FALSE, 1250, FALSE, FALSE),
(1002, 2002, 3002, 1, 8, 3, FALSE, FALSE, 120, FALSE, FALSE),
(1003, 2003, 3003, 1, 12, 3, FALSE, TRUE, 250, FALSE, FALSE),
(1004, 2004, 3004, 2, 8, 3, TRUE, FALSE, NULL, TRUE, TRUE),
(1005, 2005, 3005, 1, 8, 4, FALSE, TRUE, 1000, FALSE, FALSE),
(1006, 2006, 3006, 2, 64, 3, TRUE, FALSE, 6644, TRUE, TRUE),
(1007, 2007, 3007, 1, 16, 3, FALSE, TRUE, 240, FALSE, FALSE),
(1008, 2008, 3008, 1, 16, 3, TRUE, FALSE, NULL, FALSE, TRUE),
(1009, 2009, 3009, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1010, 2010, 3010, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1011, 2011, 3011, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1012, 2012, 3012, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1013, 2013, 3013, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1014, 2014, 3014, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1015, 2015, 3015, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1016, 2016, 3016, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1017, 2017, 3017, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1018, 2018, 3018, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1019, 2019, 3019, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1020, 2020, 3020, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1021, 2021, 3021, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1022, 2022, 3022, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1023, 2023, 3023, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1024, 2024, 3024, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1025, 2025, 3025, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1026, 2026, 3026, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1027, 2027, 3027, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1028, 2028, 3028, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE),
(1029, 2029, 3029, 1, 16, 4, FALSE, FALSE, 1000, FALSE, FALSE);

#------------------------------------------------------------------------
#PART C
#QUERIES
#------------------------------------------------------------------------

SHOW TABLES;

#QUERY 1
#TRYING TO ANSWER:
#List all data from the tables in the database
#
SELECT * FROM computers;
SELECT * FROM processor;
SELECT * FROM graphicsProcessor;
SELECT * FROM computerHardware;

#QUERY 2
#TRYING TO ANSWER:
#What are the SKUs of all processors using the AM4 Socket
#
SELECT * FROM processor
WHERE cpuSocket = 'AM4';

#QUERY 3
#TRYING TO ANSWER:
#What processors use the AM4 Socket and are Athlon SKUs?
#
SELECT * FROM processor
WHERE cpuSocket = 'AM4' AND cpuSKU LIKE 'Athlon%';

#QUERY 6, 5, 9
#TRYING TO ANSWER:
#How many graphics cards are made by each manufacturer?
#
SELECT COUNT(gpuSKU), gpuManufacturer FROM graphicsProcessor
GROUP BY gpuManufacturer;

#QUERY 10, 7
#TRYING TO ANSWER:
#How many processors are used in single and dual socket configurations?
#
SELECT processor.cpuSKU AS 'SKU', processor.cpuSocket AS 'Socket', computerHardware.cpuQuantity AS 'quantity'
FROM processor
INNER JOIN computerHardware ON processor.cpuID = computerHardware.cpuID;

#QUERY 8, 4
#TRYING TO ANSWER:
#What processors have four physical cores and how many logical cores (or threads) does each of those processors have?
#
SELECT processor.cpuSKU, processor.cpuCore, processor.cpuThread FROM processor
WHERE cpuCore IN (4);

#QUERY 11
#TRYING TO ANSWER:
#Which computers are being treated as a server?
#
SELECT * FROM computers
WHERE computers.isServer = ALL (SELECT computers.isServer FROM computers WHERE computers.isServer = TRUE)
