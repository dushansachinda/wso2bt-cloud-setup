USE `bt_cloud_db`;

SET SQL_MODE = 'ALLOW_INVALID_DATES';


CREATE TABLE IF NOT EXISTS Customer_Info (
             inCustomerID INTEGER,
             stCustomerName VARCHAR (300),
             stPhone VARCHAR (20),
             stEmail VARCHAR (300),
             stAddress VARCHAR (300),
             stCity VARCHAR (300),
             stZipCode VARCHAR (20),
             stCountry VARCHAR (60),
             PRIMARY KEY (inCustomerID)
)ENGINE INNODB;


CREATE TABLE IF NOT EXISTS OrderDetail_Info (
             inOrderDetailID INTEGER,
             inItemID INTEGER,
             inQuantity VARCHAR (750),
             stPO VARCHAR (300),
             stSO VARCHAR (300) ,
             stVendorPO VARCHAR (300) ,
             dtOrderSubmittionDate TIMESTAMP,
             dtOrderCreationDate INTEGER,
             inCreatedBy INTEGER DEFAULT 0,
             inCustomerID INTEGER DEFAULT 0
)ENGINE INNODB;



CREATE TABLE IF NOT EXISTS User_Info (
             inUserID INTEGER,
             stUserName VARCHAR(750),
             stCompany VARCHAR (750),
             dtCreationDate TIMESTAMP
)ENGINE INNODB;



CREATE TABLE IF NOT EXISTS ThirdParty_Info (
             inUserID INTEGER,
             inThirdPartyID VARCHAR(750)
)ENGINE INNODB;



CREATE TABLE IF NOT EXISTS TID_EPC_Info (
             inTIDEPCID INTEGER,
             inJobID INTEGER,
             stTagID VARCHAR(750),
             inOrderDetailID INTEGER,
             inCreatedBy INTEGER,
             inCustomerID INTEGER,
             inItemID INTEGER                
)ENGINE INNODB;


CREATE TABLE Job_Info  (
    inJobID  int,
    inOrderDetailID  int,
    inPrintedQty int,
    dtPrintedDate  TIMESTAMP,
    inCreatedBy  int,
    dtPrintingEncodingDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    stPrinterIP  TEXT,
    stPrinterName  TEXT,
    stMachineName  TEXT,
    stTagMetaID  TEXT
);


CREATE TABLE Shipment_Info (
    inShipmentID int,
    stJobIDs TEXT,
    stOrderDetailIDs TEXT,
    stShipToLocation TEXT,
    stShipToAddress  TEXT,
    stShipToCountry  TEXT,
    stShipToCity TEXT
);

CREATE TABLE EPC_ProfileInfo_Master  (
    inProfileInfoID  int,
    stCustomerID TEXT,
    stOrderID  TEXT,
    dtOrderdate  TIMESTAMP,
    inOrderQuantity  int,
    stOrderQuantityUnit  TEXT,
    stBatchID  int,
    stBatchYield TEXT,
    stSubrollNumber  TEXT,
    stSubBatchID TEXT,
    stPlantID  TEXT,
    stChipManufacturer TEXT,
    stChipModel  TEXT,
    stInlayType  TEXT,
    dtInlaymanufacturerdate  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    stLicensePlate TEXT
);


CREATE TABLE EPC_TageInfo_Master (
    inTagInfoID  int,
    inJobID  int,
    stPrinterName  TEXT,
    stPrinterLocation  TEXT,
    dtPrintDate  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    inSuccessCount int,
    inFailCount  int,
    inUserID int
);


CREATE TABLE EPC_TagInfo_Detail  (
    inTagInfoDetailID    int,
    inProfileInfoID    int,
    inTagInfoID    int,
    inJobID    int,
    stEPTagID    TEXT,
    stEPTagMetaID    TEXT
);
