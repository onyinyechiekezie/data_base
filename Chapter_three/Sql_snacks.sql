create database lagos_drivers;
use lagos_drivers;

CREATE TABLE `drivers` (
  `DriverId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Rating` decimal(1,1) NOT NULL,
  `TotalRides` int NOT NULL,
  PRIMARY KEY (`DriverId`)
);

CREATE TABLE `riders` (
  `RiderId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  PRIMARY KEY (`RiderId`)
  );
  
CREATE TABLE `rides` (
	`RideId` int NOT NULL AUTO_INCREMENT,
    `DriverId` int NOT NULL,
    `RiderId` int NOT NULL,
    `Fare` int NOT NULL,
    `Rating` decimal(1,1) NOT NULL,
    `Distance` int NOT NULL,
    PRIMARY KEY (`RideId`),
    INDEX `Driver_Ind` (DriverId),
    INDEX `Rider_Ind` (RiderId),
	FOREIGN KEY (DriverId) REFERENCES drivers (DriverId),
    FOREIGN KEY (RiderId) REFERENCES riders (RiderId)
    );
    
CREATE TABLE `payments`(
	`PaymentId` int NOT NULL AUTO_INCREMENT,
    `RideId`  int NOT NULL,
    `Amount` int NOT NULL,
    `PaymentMethod` varchar(45), 
	PRIMARY KEY (`PaymentId`),
    INDEX `Ride_Ind` (RideId),
    FOREIGN KEY (RideId) REFERENCES rides (RiderId) 
    );