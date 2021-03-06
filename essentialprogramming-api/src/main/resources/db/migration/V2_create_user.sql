DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `LastName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `DefaultLanguageId` int(11) DEFAULT NULL,
  `Validated` bit(1) DEFAULT NULL,
  `UserKey` varchar(64) DEFAULT NULL,
  `HistoryUserId` int(11) DEFAULT NULL,
  `Active` bit(1) NOT NULL DEFAULT b'1',
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `Logkey` char(38) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `idx_User_LogKey` (`Logkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;