/*
 Navicat Premium Data Transfer

 Source Server         : SQLServer
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : LAPTOP-H7KVT18B\SQLSERVER:1433
 Source Catalog        : projectweb2020
 Source Schema         : project_2019

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 07/08/2020 17:33:55
*/


-- ----------------------------
-- Table structure for account
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[account]') AND type IN ('U'))
	DROP TABLE [project_2019].[account]
GO

CREATE TABLE [project_2019].[account] (
  [ID_ACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [USERNAME] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [PASSWORD] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [HO_TEN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [LEVEL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'5') NULL,
  [ACTIVE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'1') NULL
)
GO

ALTER TABLE [project_2019].[account] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO [project_2019].[account] VALUES (N'TK1', N'hieudeptrai', N'123456', N'hieudeptrai', N'5', N'1')
GO

INSERT INTO [project_2019].[account] VALUES (N'TK2', N'hoang', N'vuminhhieu', N'hoang', N'5', N'1')
GO

INSERT INTO [project_2019].[account] VALUES (N'TK3', N'hieudeptrai123', N'57C5D3883477EE7E5FE5DF943A72AB3A', N'hieudeptrai', N'5', N'1')
GO

INSERT INTO [project_2019].[account] VALUES (N'TK4', N'hieudeptrai456', N'hieudeptrai456', N'hieudeptrai456', N'5', N'1')
GO


-- ----------------------------
-- Table structure for authentication
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[authentication]') AND type IN ('U'))
	DROP TABLE [project_2019].[authentication]
GO

CREATE TABLE [project_2019].[authentication] (
  [ID_AUTH] int  IDENTITY(1,1) NOT NULL,
  [ROLE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CONTROLLER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACTION] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [project_2019].[authentication] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for bill
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[bill]') AND type IN ('U'))
	DROP TABLE [project_2019].[bill]
GO

CREATE TABLE [project_2019].[bill] (
  [ID_BILL] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_USER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [ID_PRODUCT] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [AMOUNT] decimal(5) DEFAULT NULL NULL,
  [PRICE] decimal(10,2) DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[bill] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO [project_2019].[bill] VALUES (N'HD1', N'TK2', N'DT1', N'2', N'57980000.00')
GO


-- ----------------------------
-- Table structure for binhluan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[binhluan]') AND type IN ('U'))
	DROP TABLE [project_2019].[binhluan]
GO

CREATE TABLE [project_2019].[binhluan] (
  [ID_BINHLUAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_SANPHAM] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [TEN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [NOIDUNG] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[binhluan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of binhluan
-- ----------------------------
INSERT INTO [project_2019].[binhluan] VALUES (N'BL1', N'DT18', N'Sang', N'ok')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'Bl2', N'DT17', N'Sang', N'ok2')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'BL3', N'DT11', N'dsadsada123', N'dsadsa')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'BL4', N'DT11', N'dxvdsfds', N'dsadsad213213')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'BL5', N'DT29', N'sa21321', N'dsadsad')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'BL6', N'DT1', N'sadsad', N'dsadas')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'BL7', N'DT1', N'Nguyễn Thị B', N'Sản Phẩm Tuyệt')
GO

INSERT INTO [project_2019].[binhluan] VALUES (N'BL8', N'DT153', N'Nguyễn Văn A', N'Sản Phẩm Rất Tuyệt')
GO


-- ----------------------------
-- Table structure for brand
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[brand]') AND type IN ('U'))
	DROP TABLE [project_2019].[brand]
GO

CREATE TABLE [project_2019].[brand] (
  [ID_BRAND] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BRAND] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[brand] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO [project_2019].[brand] VALUES (N'APPLE', N'Apple')
GO

INSERT INTO [project_2019].[brand] VALUES (N'BLACKBERRY', N'Blackberry')
GO

INSERT INTO [project_2019].[brand] VALUES (N'COOLPAD', N'Coolpad')
GO

INSERT INTO [project_2019].[brand] VALUES (N'HUAWEI', N'Huawei')
GO

INSERT INTO [project_2019].[brand] VALUES (N'ITEL', N'Itel')
GO

INSERT INTO [project_2019].[brand] VALUES (N'MASSTEL', N'Masstel')
GO

INSERT INTO [project_2019].[brand] VALUES (N'MOBELL', N'Mobell')
GO

INSERT INTO [project_2019].[brand] VALUES (N'NOKIA', N'Nokia')
GO

INSERT INTO [project_2019].[brand] VALUES (N'OPPO', N'Oppo')
GO

INSERT INTO [project_2019].[brand] VALUES (N'REALME', N'Realme')
GO

INSERT INTO [project_2019].[brand] VALUES (N'SAMSUNG', N'Samsung')
GO

INSERT INTO [project_2019].[brand] VALUES (N'VIVO', N'Vivo')
GO

INSERT INTO [project_2019].[brand] VALUES (N'VSMART', N'Vsmart')
GO

INSERT INTO [project_2019].[brand] VALUES (N'XIAOMI', N'Xiaomi')
GO


-- ----------------------------
-- Table structure for cart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[cart]') AND type IN ('U'))
	DROP TABLE [project_2019].[cart]
GO

CREATE TABLE [project_2019].[cart] (
  [ID_ACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_PRODUCT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AMOUNT] decimal(10) DEFAULT NULL NULL,
  [CHECKBOX] smallint DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[cart] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO [project_2019].[cart] VALUES (N'TK11', N'DT13', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK11', N'DT16', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK12', N'DT11', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK13', N'DT11', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK14', N'DT14', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK2', N'DT15', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK2', N'DT9', N'3', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK22', N'DT11', N'2', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK23', N'DT13', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK25', N'DT11', N'2', N'0')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK7', N'DT1', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK7', N'DT12', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK7', N'DT13', N'1', N'1')
GO

INSERT INTO [project_2019].[cart] VALUES (N'TK7', N'DT16', N'1', N'1')
GO


-- ----------------------------
-- Table structure for ct_account
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[ct_account]') AND type IN ('U'))
	DROP TABLE [project_2019].[ct_account]
GO

CREATE TABLE [project_2019].[ct_account] (
  [ID_ACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EMAIL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [SDT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [DIA_CHI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [GIOI_TINH] int DEFAULT NULL NULL,
  [NGAY_SINH] datetime2(0) DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[ct_account] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ct_account
-- ----------------------------
INSERT INTO [project_2019].[ct_account] VALUES (N'TK2', N'123456@gmail.com', NULL, NULL, N'1', NULL)
GO

INSERT INTO [project_2019].[ct_account] VALUES (N'TK3', N'daochichaoden@gmail.com', NULL, NULL, N'1', NULL)
GO

INSERT INTO [project_2019].[ct_account] VALUES (N'TK4', N'hieudeptrai456@gmail.com', NULL, NULL, N'1', NULL)
GO


-- ----------------------------
-- Table structure for ct_group_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[ct_group_product]') AND type IN ('U'))
	DROP TABLE [project_2019].[ct_group_product]
GO

CREATE TABLE [project_2019].[ct_group_product] (
  [ID_GROUP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_PRODUCT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [project_2019].[ct_group_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ct_group_product
-- ----------------------------
INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT1')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT10')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT11')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT12')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT13')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT14')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT15')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT16')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT17')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT18')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT19')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT20')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT21')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT22')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT23')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT24')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT25')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT26')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT27')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT28')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT29')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT30')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT31')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT32')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT33')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT34')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT35')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT36')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT4')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT7')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT8')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP1', N'DT9')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT3')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT37')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT38')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT39')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT40')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT41')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT42')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT43')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT44')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT45')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT46')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT47')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT48')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT49')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT5')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT50')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT51')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT52')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT53')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT54')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT55')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT56')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT57')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT58')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT59')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT60')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT61')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT62')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT63')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT64')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT65')
GO

INSERT INTO [project_2019].[ct_group_product] VALUES (N'NSP2', N'DT66')
GO


-- ----------------------------
-- Table structure for danhgia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[danhgia]') AND type IN ('U'))
	DROP TABLE [project_2019].[danhgia]
GO

CREATE TABLE [project_2019].[danhgia] (
  [ID_DANHGIA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_SANPHAM] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [ID_USER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [SAO] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [TIEUDE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [NOIDUNG] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [TEN_USER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[danhgia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of danhgia
-- ----------------------------
INSERT INTO [project_2019].[danhgia] VALUES (N'DG1', N'DT18', N'TK10', N'4', N'123asq', N'123321', N'Nguyễn Hữu Toàn')
GO

INSERT INTO [project_2019].[danhgia] VALUES (N'DG2', N'DT11', N'TK15', N'4', N'dsadsadsa12321', N'dsadsa', N'Hoàng Thị Hà Giang')
GO

INSERT INTO [project_2019].[danhgia] VALUES (N'DG3', N'DT29', N'TK10', N'5', N'Đánh Giá', N'Hàng Tuyệt', N'Nguyễn Hữu Toàn')
GO

INSERT INTO [project_2019].[danhgia] VALUES (N'DG4', N'DT29', N'TK10', N'5', N'Tiêu Đề', N'Hàng Sài Được', N'Nguyễn Hữu Toàn')
GO

INSERT INTO [project_2019].[danhgia] VALUES (N'DG5', N'DT54', N'TK10', N'5', N'Đánh Giá Sản Phẩm', N'Hàng Rất Tuyệt', N'Nguyễn Hữu Toàn')
GO

INSERT INTO [project_2019].[danhgia] VALUES (N'DG6', N'DT1', N'TK10', N'0', N'23423', N'234', N'Nguyễn Hữu Toàn')
GO


-- ----------------------------
-- Table structure for detail_order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[detail_order]') AND type IN ('U'))
	DROP TABLE [project_2019].[detail_order]
GO

CREATE TABLE [project_2019].[detail_order] (
  [ID_ORDER] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_PRODUCT] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AMOUNT] decimal(3) DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[detail_order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of detail_order
-- ----------------------------
INSERT INTO [project_2019].[detail_order] VALUES (N'DH1', N'DT34', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH10', N'DT1', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH10', N'DT82', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH11', N'DT103', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH11', N'DT106', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH11', N'DT14', N'2')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH12', N'DT1', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH12', N'DT10', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH12', N'DT11', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH12', N'DT13', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH12', N'DT15', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH12', N'DT82', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH13', N'DT11', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH13', N'DT13', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH13', N'DT15', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH2', N'DT1', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH2', N'DT10', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH2', N'DT11', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH2', N'DT12', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH2', N'DT13', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH2', N'DT16', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH3', N'DT10', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH3', N'DT101', N'2')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH3', N'DT104', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH3', N'DT106', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH3', N'DT11', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH3', N'DT13', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH4', N'DT10', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH4', N'DT100', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH4', N'DT103', N'2')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH4', N'DT12', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH4', N'DT13', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH5', N'DT102', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH5', N'DT13', N'2')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH5', N'DT182', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH5', N'DT218', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH5', N'DT41', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH5', N'DT58', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH6', N'DT14', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH6', N'DT173', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH6', N'DT58', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH7', N'DT102', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH7', N'DT105', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH7', N'DT116', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH7', N'DT15', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH8', N'DT13', N'2')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH8', N'DT203', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH8', N'DT245', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH9', N'DT1', N'1')
GO

INSERT INTO [project_2019].[detail_order] VALUES (N'DH9', N'DT13', N'2')
GO


-- ----------------------------
-- Table structure for group_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[group_product]') AND type IN ('U'))
	DROP TABLE [project_2019].[group_product]
GO

CREATE TABLE [project_2019].[group_product] (
  [ID_GROUP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NAME] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [SALE_RATE] int  NOT NULL,
  [ACTIVE] int DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[group_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of group_product
-- ----------------------------
INSERT INTO [project_2019].[group_product] VALUES (N'NSP1', N'Giảm Giá', N'0', N'1')
GO

INSERT INTO [project_2019].[group_product] VALUES (N'NSP2', N' On Sale', N'0', N'0')
GO


-- ----------------------------
-- Table structure for hedieuhanh
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[hedieuhanh]') AND type IN ('U'))
	DROP TABLE [project_2019].[hedieuhanh]
GO

CREATE TABLE [project_2019].[hedieuhanh] (
  [OS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [project_2019].[hedieuhanh] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of hedieuhanh
-- ----------------------------
INSERT INTO [project_2019].[hedieuhanh] VALUES (N'ANDROID')
GO

INSERT INTO [project_2019].[hedieuhanh] VALUES (N'Cục Gạch')
GO

INSERT INTO [project_2019].[hedieuhanh] VALUES (N'IOS')
GO


-- ----------------------------
-- Table structure for information_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[information_product]') AND type IN ('U'))
	DROP TABLE [project_2019].[information_product]
GO

CREATE TABLE [project_2019].[information_product] (
  [ID_PRODUCT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [NAME_FIELD] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [CONTENT_FIELD] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [NUMBER_SORT] int DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[information_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of information_product
-- ----------------------------
INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Thương hiệu', N'Meizu', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, tai nghe, cây lấy sim, hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Phụ kiện đi kèm', N'Cáp, sạc, tai nghe, hướng dẫn sử dụng,...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Phụ kiện đi kèm', N'updating', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Phụ kiện đi kèm', N'Đang cập nhật ...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, tai nghe, cây lấy sim, hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Phụ kiện đi kèm', N'Cáp sạc + Adapter sạc + Tai nghe + Cây lấy sim + Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Phụ kiện đi kèm', N'Sạc,Sách hướng dẫn,Hộp,Cây lấy sim,Ốp lưng,Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Phụ kiện đi kèm', N'Updating...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Phụ kiện đi kèm', N'Adapter sạc, cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Phụ kiện đi kèm', N'Sạc,Sách hướng dẫn,Hộp,Cây lấy sim,Ốp lưng,Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Phụ kiện đi kèm', N'Sách hướng dẫn, sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Phụ kiện đi kèm', N'Cáp, sạc và hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Phụ kiện đi kèm', N'Thân máy, cáp, sạc, cây lấy SIM, sách hướng dẫn, tai nghe', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Phụ kiện đi kèm', N'Cáp sạc, adapter sạc, cây lấy SIM, tai nghe, HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Phụ kiện đi kèm', N'Tai nghe, Sạc nhanh 15W, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Phụ kiện đi kèm', N'Cáp sạc, adapter sạc, cây lấy SIM, tai nghe, HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Phụ kiện đi kèm', N'Phụ kiện kèm theo gồm: hộp, sách hướng dẫn, cây lấy sim, ốp lưng, cáp sạc, củ sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Phụ kiện đi kèm', N'Cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Phụ kiện đi kèm', N'Cáp, sạc và hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Phụ kiện đi kèm', N'Cáp, sạc và hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Phụ kiện đi kèm', N'Cáp sạc + Adapter sạc + Tai nghe + Cây lấy sim + Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Phụ kiện đi kèm', N'Cáp Micro USB (Hỗ trợ sạc nhanh), Củ Sạc VOOC, Tai nghe, Dụng cụ lấy SIM, Sách hướng dẫn, Miếng dán màn hình (Đã dán sẵn), Vỏ bảo vệ', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Phụ kiện đi kèm', N'Sạc, Cáp, Tai nghe, Cây lấy Sim, Sách HDSD, Bút Spen, Ốp lưng, Dụng cụ thay ngòi bút, Ngòi bút', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Phụ kiện đi kèm', N'_', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Phụ kiện đi kèm', N'Cáp, Sạc, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Phụ kiện đi kèm', N'Cáp, sạc và hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Công nghệ màn hình', N'OLED capacitive touchscreen, 16M colors', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Công nghệ màn hình', N'LCD (828 x 1792), 324 ppi, 3D touch, True-tone', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Công nghệ màn hình', N'AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Công nghệ màn hình', N'Super AMOLED/Corning Gorilla Glass 6', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Công nghệ màn hình', N'OLED capacitive touchscreen, 16M colors', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Công nghệ màn hình', N'IPS LCD/ Liquid Retina HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Công nghệ màn hình', N'IGZO', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Công nghệ màn hình', N'Cảm ứng điện dung IPS LCD, 16 triệu màu', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Công nghệ màn hình', N'OLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Công nghệ màn hình', N'OLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Công nghệ màn hình', N'AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Camera trước', N'12MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Camera trước', N'25 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Camera trước', N'13MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Camera trước', N'7 MP, f/2.2, 32mm, HDR, 1080p@30fps', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Camera trước', N'32 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Camera trước', N'10 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Camera trước', N'12MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Camera trước', N'13 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Camera trước', N'12 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Camera trước', N'12 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Camera trước', N'12 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Camera trước', N'20MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Camera trước', N'13MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Camera trước', N'25MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Camera trước', N'20.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Camera trước', N'12 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Camera trước', N'25 MP, f/2.0', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Camera trước', N'10 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Camera trước', N'24MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Camera trước', N'24MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Camera trước', N'20MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Camera sau', N'12 MP + 12 MP + 12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Camera sau', N'13 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Camera sau', N'25 MP, 8 MP và 5 MP (3 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Camera sau', N'48MP và 5MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Camera sau', N'12 MP, f/1.8, OIS, PDAF', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Camera sau', N'Chính 12 MP & Phụ 12 MP, 16 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Camera sau', N'12 MP + 12 MP + 12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Camera sau', N'Dual Camera 12.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Camera sau', N'Chính 12 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Camera sau', N'13MP + 5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Camera sau', N'Chính 8 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Camera sau', N'Chính 13 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Camera sau', N'Chính 13 MP & Phụ 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Camera sau', N'Chính 13 MP & Phụ 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Camera sau', N'12MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Camera sau', N'12 MP + 12 MP + 12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Camera sau', N'Camera chính 48MP, Camera đo chiều sâu 5MP, Camera góc rộng 8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Camera sau', N'12 MP + 12 MP + 12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Camera sau', N'48MP và 5MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Camera sau', N'16MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Camera sau', N'13 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Camera sau', N'12 MP + 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Camera sau', N'48MP f/1.7 + 5MP f/1.9 + 8MP f/22', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Camera sau', N'Dual Camera 12.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Camera sau', N'48 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Camera sau', N'16 MP, f/1.9, PDAF - 2 MP, depth sensor', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Camera sau', N'12.0 MP + 16.0 MP + 12.0 MP + VGA', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Camera sau', N'Dual 12MP, 5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Camera sau', N'16MP và 5MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 5 MP (cảm biến độ sâu)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Tính năng camera', N'Selfie ngược sáng HDR, Camera góc rộng, Nhận diện khuôn mặt, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, HDR, Panorama, Chống rung quang học', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Nhận diện khuôn mặt, Chế độ làm đẹp, Quay video Full HD, Tự động lấy nét, Selfie ngược sáng HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Tính năng camera', N'Quay video HD, Nhận diện khuôn mặt, Chế độ làm đẹp, Quay video Full HD, Tự động lấy nét, Selfie ngược sáng HDR, Chống rung kỹ thuật số (EIS), Chụp ảnh xóa phông, A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panora', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Tính năng camera', N'A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Tính năng camera', N'Chế độ chụp xóa phông Potrait mode flash quad LED, Neural Engine, SmartDHR, xóa phông, chỉnh khẩu sau chụp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Tính năng camera', N'LED flash, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Tính năng camera', N'A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Tính năng camera', N'Chế độ chụp xóa phông Potrait mode flash quad LED, Neural Engine, SmartDHR, xóa phông, chỉnh khẩu sau chụp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Tính năng camera', N'LED flash, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Tính năng camera', N'Zoom quang học, Chụp ảnh xóa phông, Chế độ Slow Motion, A.I Camera, Điều chỉnh khẩu độ, Super Slow Motion (quay siêu chậm), Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học (OIS), Làm đẹp (Beautify), Chế độ chụp chu', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Tính năng camera', N'Selfie ngược sáng HDR, Camera góc rộng, Nhận diện khuôn mặt, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, HDR, Panorama, Chống rung quang học', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Tính năng camera', N'A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Tính năng camera', N'Quay video Full HD, Tự động lấy nét, Selfie ngược sáng HDR, Flash màn hình, Quay video HD, Selfie bằng cử chỉ, Nhận diện khuôn mặt, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Tính năng camera', N'Selfie ngược sáng HDR, Camera góc rộng, Nhận diện khuôn mặt, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, HDR, Panorama, Chống rung quang học', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama;
INSERT INTO `information_product`(ID_PRODUCT, NAME_FIELD, CONTENT_FIELD) value (Quay video HD, Quay video Full HD, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Tính năng camera', N'Chụp ảnh xóa phông, Chế độ làm đẹp, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Tính năng camera', N'Hiệu ứng AR Stickers, Chế độ làm đẹp, A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chế độ làm đẹp, Nhận diện khuôn mặt', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Tính năng camera', N'Camera sau: A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro). Camera trước: Selfie ngược sáng HDR, Đèn Flash trợ sáng, Tự động lấy nét, Quay video Full H', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Tính năng camera', N'Chế độ chụp đêm, Chụp ảnh xóa phông, Chụp ảnh góc siêu rộng (120º), Công nghệ trí thông minh nhân tạo AI, Cảm biến tiệm cận, …', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Tính năng camera', N'Quay video HD, Nhận diện khuôn mặt, Chế độ làm đẹp, Quay video Full HD, Tự động lấy nét, Selfie ngược sáng HDR, Chống rung kỹ thuật số (EIS), Chụp ảnh xóa phông, A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panora', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Tính năng camera', N'Chế độ ánh sáng yếu, Tự động lấy nét, Chạm lấy nét, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Tính năng camera', N'Lấy nét theo pha, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Tính năng camera', N'Chế độ chụp đêm, Chụp ảnh xóa phông, Chụp ảnh góc siêu rộng (120º), Công nghệ trí thông minh nhân tạo AI, Cảm biến tiệm cận,…', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Tính năng camera', N'Selfie ngược sáng HDR, Camera góc rộng, Nhận diện khuôn mặt, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, HDR, Panorama, Chống rung quang học', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Tính năng camera', N'Chụp ảnh xóa phông, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Tính năng camera', N'Super Slow Motion (quay siêu chậm), Lấy nét theo pha, A.I Camera, Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Zoom quang học, Chế độ làm đẹp, Chụp hình góc rộng, Chụp hình góc siêu rộng, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, H', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Tính năng camera', N'LED flash, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Tính năng camera', N'Chế độ Slow Motion, Chụp ảnh xóa phông, Chế độ Time-Lapse, HDR, Panorama, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Tính năng camera', N'Quang học Zeiss, đèn flash LED, toàn cảnh, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Đèn flash', N'LED Flash', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Đèn flash', N'có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Đèn flash', N'Đèn flash kép Quad-LED', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Đèn flash', N'Camera sau: A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro). Camera trước: Selfie ngược sáng HDR, Đèn Flash trợ sáng, Tự động lấy nét, Quay video Full H', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Đèn flash', N'Đèn flash kép Quad-LED', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Video call', N'720p HD', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Quay phim', N'2160p@30fps, 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Quay phim', N'Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Quay phim', N'Quay phim HD 720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Quay phim', N'Quay phim HD 720p@120fps, Quay phim FullHD 1080p@30fps, Quay phim HD 720p@240fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Quay phim', N'Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Quay phim', N'Quay phim full HD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Quay phim', N'Quay phim HD 720p@24fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Quay phim', N'Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Quay phim', N'2160p@30fps, 1080p@60/120fps, 1080p@30fps (gyro-EIS)', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Bộ nhớ RAM', N'8 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Bộ nhớ RAM', N'Tuỳ chọn 3GB/4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Bộ nhớ RAM', N'12 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Bộ nhớ trong', N'256 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Bộ nhớ trong', N'16 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Bộ nhớ trong', N'Tuỳ chọn 32GB/64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Bộ nhớ trong', N'16 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Bộ nhớ trong', N'64 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 512 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 400 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 1 TB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Hộ trợ thẻ nhớ tối đa', N'512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Hộ trợ thẻ nhớ tối đa', N'512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Hộ trợ thẻ nhớ tối đa', N'512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Hộ trợ thẻ nhớ tối đa', N'Hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Hộ trợ thẻ nhớ tối đa', N'128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Hộ trợ thẻ nhớ tối đa', N'512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Trọng lượng', N'226g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Trọng lượng', N'163g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Trọng lượng', N'186g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Trọng lượng', N'150 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Trọng lượng', N'179g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Trọng lượng', N'168 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Trọng lượng', N'226g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Trọng lượng', N'138.3 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Trọng lượng', N'150 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Trọng lượng', N'190g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Trọng lượng', N'194 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Trọng lượng', N'150g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Trọng lượng', N'180g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Trọng lượng', N'160g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Trọng lượng', N'144g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Trọng lượng', N'170g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Trọng lượng', N'153g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Trọng lượng', N'155 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Trọng lượng', N'143', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Trọng lượng', N'188g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Trọng lượng', N'188g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Trọng lượng', N'170g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Trọng lượng', N'186g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Trọng lượng', N'158g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Trọng lượng', N'180g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Trọng lượng', N'166g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Trọng lượng', N'194 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Trọng lượng', N'190g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Trọng lượng', N'163.5 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Trọng lượng', N'158gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Trọng lượng', N'196 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Trọng lượng', N'169g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Trọng lượng', N'150gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Trọng lượng', N'180g (6.35 oz)', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Kích thước', N'158 x 77.8 x 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Kích thước', N'155.6 x 75.6 x 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Kích thước', N'Dài 158.5 mm - Ngang 74.7 mm - Dày 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Kích thước', N'Dài 159.2 mm - Ngang 75.2 mm - Dày 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Kích thước', N'Dài 146.3 mm - Ngang 70.41 mm - Dày 9.55 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Kích thước', N'75.7mm x 150.9mm x 8.3mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Kích thước', N'156,8 x 74,5 x 8,67 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Kích thước', N'Dài 151 mm - Ngang 71.8 mm - Dày 7.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Kích thước', N'158 x 77.8 x 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Kích thước', N'Dài 146.25 mm - Ngang 68.65 mm - Dày 8.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Kích thước', N'Dài 146.3 mm - Ngang 70.41 mm - Dày 9.55 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Kích thước', N'Dài 158.3 mm - Ngang 75.3 mm - Dày 8.4 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Kích thước', N'150.9 x 75.7 x 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Kích thước', N'Dài 146.2mm - Ngang 71.2mm - Dày 9.7mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Kích thước', N'Dài 158.7 mm - Ngang 75.6 mm - Dày 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Kích thước', N'Dài 149.51 mm - Ngang 71.98 mm - Dày 8.01 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Kích thước', N'Dài 147 mm - Ngang 71.6 mm - Dày 8.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Kích thước', N'Dài 155.9 mm - Ngang 75.4 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Kích thước', N'Dài 146 mm - Ngang 70.6 mm - Dày 9.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Kích thước', N'Dài 156.7 mm - Ngang 75.3 mm - Dày 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Kích thước', N'Dài 138.3mm - Ngang 67.1mm - Dày 7.1mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Kích thước', N'144 x 71.4 x 8.1 mm (5.67 x 2.81 x 0.32 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Kích thước', N'Dài 155.6 mm - Ngang 75.6 mm - Dày 7.94 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Kích thước', N'159.00 x 75.10 x 8.90 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Kích thước', N'144 x 71.4 x 8.1 mm (5.67 x 2.81 x 0.32 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Kích thước', N'152 x 74.4 x 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Kích thước', N'Dài 159.2 mm - Ngang 75.2 mm - Dày 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Kích thước', N'(Dài x Rộng x Dày) 156 x 75.3 x 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Kích thước', N'Dài 156.68 mm - Ngang 76.44 mm - Dày 8.19 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Kích thước', N'153,4 x73,2 x 8,6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Kích thước', N'150.9 x 75.7 x 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Kích thước', N'Dài 161.3 mm - Ngang 76.1 mm - Dày 8.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Kích thước', N'Dài 155.11 mm - Ngang 75.09 mm - Dày 8.28 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Kích thước', N'Dài 156 mm - Ngang 75.3 mm - Dày 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Kích thước', N'Dài 162.3 mm - Ngang 77.2 mm - Dày 7.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Kích thước', N'156.4 x 75.8 x 7.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Kích thước', N'Dài 154.81 mm - Ngang 75.03 mm - Dày 7.89 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Kích thước', N'159.9 x 75.2 x 8.3 mm (6.30 x 2.96 x 0.33 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Tên chip', N'Apple A13 Bionic (7 nm+)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Tên chip', N'Exynos 7870 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Tên chip', N'Exynos 9610 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Tên chip', N'Qualcomm Snapdragon 439 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'Tên chip', N'A12 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Tên chip', N'Qualcomm Snapdragon 710', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Tên chip', N'Exynos 9825 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Tên chip', N'Apple A13 Bionic (7 nm+)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Tên chip', N'MediaTek MT6750N 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Tên chip', N'Qualcomm Snapdragon 439 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Tên chip', N'Qualcomm Snapdragon 665 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Tên chip', N'Apple A13 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Tên chip', N'CPU 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Tên chip', N'Qualcomm Snapdragon 632 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Tên chip', N'Helio P60 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Tên chip', N'Qualcomm Snapdragon 215 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Tên chip', N'MediaTek Helio P35 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Tên chip', N'PowerVR GE8320', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Tên chip', N'Exynos 7884 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Tên chip', N'Qualcomm Snapdragon 450 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Tên chip', N'Apple A9 2 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Tên chip', N'Apple A13 Bionic (7 nm+)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Tên chip', N'Exynos 7884 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Tên chip', N'Exynos 9611 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Tên chip', N'Apple A13 Bionic (7 nm+)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Tên chip', N'Qualcomm Snapdragon 675 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Tên chip', N'Octa-core MTK P60 2.0GHZ', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Tên chip', N'MediaTek MT6762 8 nhân 64-bit (Helio P22)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Tên chip', N'Snapdragon 450', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'Tên chip', N'Chip MediaTek MT6739', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Tên chip', N'Qualcomm Snapdragon 675, 8, 2.0 Ghz', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Tên chip', N'Apple A13 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Tên chip', N'MediaTek Helio P70 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Tên chip', N'MediaTek MT6762R 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Tên chip', N'Mediatek MT6771 Helio P60', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Tên chip', N'Exynos 9825 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Tên chip', N'Qualcomm SDM660 Snapdragon 660', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Tên chip', N'Snapdragon 626 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Tên chip', N'Qualcomm SDM660 Snapdragon 660 (14nm)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Loại lõi chip', N'Exynos 7870 8 nhân 64-bit', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Loại lõi chip', N'Mediatek MT6761 4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Loại lõi chip', N'Dual-Core', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Loại lõi chip', N'Lõi Octa (4 x 2.2 GHz Kryo 260 & 4 x 1.8 GHz Kryo 260)', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Dung lượng pin', N'3400mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Dung lượng pin', N'4030mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Dung lượng pin', N'2990 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Dung lượng pin', N'3110 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Dung lượng pin', N'3100mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Dung lượng pin', N'3060 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Dung lượng pin', N'4230 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Dung lượng pin', N'4500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Dung lượng pin', N'1715 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Dung lượng pin', N'3190 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Dung lượng pin', N'3400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Dung lượng pin', N'6000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Dung lượng pin', N'3190 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Dung lượng pin', N'3400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'Dung lượng pin', N'4000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'Dung lượng pin', N'4.000 mAh, có sạc nhanh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Dung lượng pin', N'4030 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Dung lượng pin', N'3500mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Dung lượng pin', N'4300 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Dung lượng pin', N'3350mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Dung lượng pin', N'3260 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Loại pin', N'Li -po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Loại pin', N'3110 mAh', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Loại pin', N'Pin Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Kết nối dữ liệu', N'Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Kết nối dữ liệu', N'3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Kết nối dữ liệu', N'Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'WIFI', N'Wi-Fi 802.11 b/g/n', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'WIFI', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'WIFI', N'Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'GPS', N'A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'GPS', N'Có, hỗ trợ A-GPS và GLONASS, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'GPS', N'A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'GPS', N'A-GPS, GLONASS, BDS, GALILEO', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'GPS', N'A-GPS, GLONASS, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'GPS', N'A-GPS, GLONASS, GALILEO, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'BLUETOOTH', N'Bluetooth, Wifi, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'BLUETOOTH', N'A2DP, LE, V4.1', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Cổng sạc', N'USB Type C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Cổng sạc', N'Linghtning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Cổng sạc', N'Linghtning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Cổng sạc', N'Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Cổng sạc', N'Đầu nối đảo ngược 2.0, Type-C 1.0, USB On-The-Go', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Jack tai nghe', N'Type-C', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Jack tai nghe', N'Lightning', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'Jack tai nghe', N'Linghtning', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'Jack tai nghe', N'Linghtning', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Jack tai nghe', N'Lightning', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Jack tai nghe', N'Type-C', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Xem phim', N'H.265, MP4, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Xem phim', N'H.265, 3GP, MP4, AVI, H.263, H.264(MPEG4-AVC), DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Xem phim', N'H.265, MP4, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Xem phim', N'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Xem phim', N'MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Xem phim', N'H.265, 3GP, MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Xem phim', N'H.265, 3GP, MP4, AVI, H.263, H.264(MPEG4-AVC), DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Nghe nhạc', N'MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC++, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Nghe nhạc', N'MP3, WAV, WMA, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Nghe nhạc', N'MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Nghe nhạc', N'MP3, WAV, WMA, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Nghe nhạc', N'MP3, WAV, AAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Nghe nhạc', N'MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Nghe nhạc', N'MP3, WAV, WMA, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Nghe nhạc', N'AMR, MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Nghe nhạc', N'MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC++, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'Ghi âm', N'có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'Chức năng khác', N'Đèn pin, Chặn cuộc gọi, Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Chặn cuộc gọi, Đèn pin, Sạc pin nhanh', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'Chức năng khác', N'Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'Chức năng khác', N'Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'Chức năng khác', N'Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'Chức năng khác', N'Mở khóa bằng vân tay, Đèn pin, Sạc pin nhanh, Chặn cuộc gọi, Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'Chức năng khác', N'Mở khóa bằng vân tay, Nhân bản ứng dụng, Chặn tin nhắn, Ghi âm cuộc gọi, Chặn cuộc gọi, Đèn pin, Trợ lý ảo Google Assistant', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'Chức năng khác', N'Chặn tin nhắn, Chặn cuộc gọi, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'Chức năng khác', N'Mở khóa bằng vân tay dưới màn hình', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'Chức năng khác', N'Mở khóa bằng vân tay, Đèn pin, Chặn cuộc gọi, Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'Chức năng khác', N'Chuẩn Kháng nước, Chuẩn kháng bụi Đèn pin Sạc pin nhanh Mặt kính 2.5D Chặn tin nhắn Tản nhiệt nước carbon Samsung Pay Trợ lý ảo Samsung Bixby Màn hình luôn hiển thị AOD Chặn cuộc gọi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'Chức năng khác', N'Hỗ trợ sạc nhanh, chống nước chuẩn IP67, Face ID', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'Chức năng khác', N'Mở khóa bằng vân tay, Chặn tin nhắn, Chặn cuộc gọi, Chạm 2 lần tắt màn hình, Chạm 2 lần sáng màn hình, Đèn pin, Vẽ lên màn hình để mở nhanh ứng dụng, Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'Chức năng khác', N'Ghi âm cuộc gọi ,Chặn cuộc gọi, Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'Chức năng khác', N'Chuẩn Kháng nước, Chuẩn kháng bụi, Đèn pin, Sạc pin nhanh, Mặt kính 2.5D, Chặn tin nhắn, Tản nhiệt nước carbon, Samsung Pay, Trợ lý ảo Samsung Bixby, Màn hình luôn hiển thị AOD Chặn cuộc gọi, 	Mở khóa bằng khuôn mặt, Quét mống mắt, Mở khoá vân tay dưới m', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'Chức năng khác', N'Chặn tin nhắn, Đèn pin, Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'Chức năng khác', N'Vân tay (gắn phía sau), gia tốc kế, con quay hồi chuyển, độ gần, la bàn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT1', N'SKU', N'6098931431776', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT3', N'SKU', N'4710713758605', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT4', N'SKU', N'1225682357900', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT5', N'SKU', N'4062352762780', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT6', N'SKU', N'9177999814800', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT7', N'SKU', N'2293815405421', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT8', N'SKU', N'2254030194699', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT9', N'SKU', N'9140561451666', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT10', N'SKU', N'8982008803536', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT11', N'SKU', N'4846959332856', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT12', N'SKU', N'2608500368781', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT13', N'SKU', N'4840667482551', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT14', N'SKU', N'3944486607964', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT15', N'SKU', N'3054768399521', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT16', N'SKU', N'9391646570936', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT18', N'SKU', N'3917908787902', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT20', N'SKU', N'9116460335123', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT21', N'SKU', N'5260040768376', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT22', N'SKU', N'6080273265645', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT23', N'SKU', N'5226336991477', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT24', N'SKU', N'6104604286953', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT25', N'SKU', N'5804329758223', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT26', N'SKU', N'2307680828671', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT27', N'SKU', N'6562520086284', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT28', N'SKU', N'2643962489285', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT29', N'SKU', N'5768735712340', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT30', N'SKU', N'6362449570143', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT31', N'SKU', N'6071270316911', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT32', N'SKU', N'2495736330145', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT33', N'SKU', N'1375685919558', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT34', N'SKU', N'6564050240327', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT35', N'SKU', N'3385816012865', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT36', N'SKU', N'9554444270952', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT37', N'SKU', N'7227671929864', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT38', N'SKU', N'1832932487005', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT39', N'SKU', N'5252293141778', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT40', N'SKU', N'9384641573514', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT41', N'SKU', N'5633825905257', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT45', N'SKU', N'9168209102251', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT47', N'SKU', N'4852583818406', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT48', N'SKU', N'8240719889462', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT50', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Thương hiệu', N'Sharp', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT136', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT138', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Thương hiệu', N'BlackBerry', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Thương hiệu', N'BlackBerry', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Thương hiệu', N'Bphone', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT159', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Thương hiệu', N'Hyundai', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Thương hiệu', N'Symphony', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'Thương hiệu', N'Ulefone', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Thương hiệu', N'Masstel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Thương hiệu', N'Meizu', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'Thương hiệu', N'Ulefone', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Thương hiệu', N'Masstel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT183', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT185', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Thương hiệu', N'Nony', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT189', N'Thương hiệu', N'Oukitel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Thương hiệu', N'Hyundai', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT193', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT194', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT195', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT197', N'Thương hiệu', N'Ulefone', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT199', N'Thương hiệu', N'Oukitel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT201', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Thương hiệu', N'Symphony', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Thương hiệu', N'Mobell', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Thương hiệu', N'Suntek', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Thương hiệu', N'Bluboo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT210', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT214', N'Thương hiệu', N'Vsmart', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Thương hiệu', N'Masstel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Thương hiệu', N'M-Horse', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Thương hiệu', N'Masstel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT224', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT226', N'Thương hiệu', N'Ulefone', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Thương hiệu', N'Mobiistar', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT229', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT237', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT238', N'Thương hiệu', N'Vivas', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Thương hiệu', N'Masstel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Thương hiệu', N'Bluboo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Thương hiệu', N'Tecno', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Thương hiệu', N'Mobell', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT246', N'Thương hiệu', N'FPT', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Thương hiệu', N'M-Horse', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Thương hiệu', N'Infinix', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT253', N'Thương hiệu', N'Oukitel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT255', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT257', N'Thương hiệu', N'Mobiistar', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT258', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Thương hiệu', N'Neffos', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Thương hiệu', N'Symphony', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT261', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT89', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Hộp, Cây lấy sim, Ốp lưng, Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Phụ kiện đi kèm', N'Hộp, Cáp Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Phụ kiện đi kèm', N'Hộp máy, cáp sạc, tai nghe, USB OTG, bộ ngòi bút, ốp lưng và sách hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT95', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Phụ kiện đi kèm', N'Pin, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Phụ kiện đi kèm', N'Sách hướng dẫn, sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Phụ kiện đi kèm', N'Cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Phụ kiện đi kèm', N'Tai nghe, Dây sạc, Miếng dán màn hình, Ốp lưng, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'Phụ kiện đi kèm', N'1 Pin, 1 Sạc, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Phụ kiện đi kèm', N'Sạc, Cáp, Tai nghe, Hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Phụ kiện đi kèm', N'Tai nghe, Cáp USB Type C, Củ Sạc SuperVOOC, Dụng cụ tháo SIM, Sách hướng dẫn, Miếng dán màn hình (Đã dán sẵn), Vỏ bảo vệ', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT106', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Phụ kiện đi kèm', N'Sách hướng dẫn, sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Phụ kiện đi kèm', N'Hộp, cáp sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Phụ kiện đi kèm', N'Củ sạc, Cáp sạc, Tai nghe, Ốp lưng, Cây lấy sim, Sách hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Phụ kiện đi kèm', N'Tai nghe, Sách hướng dẫn, Cáp microUSB, Củ sạc, Cây lấy sim, Ốp lưng, Miếng dán màn hình (dán sẵn)', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Phụ kiện đi kèm', N'Cáp sạc, adapter sạc, cây lấy SIM, tai nghe, HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Phụ kiện đi kèm', N'Phụ kiện bao gồm: Sạc, Tai nghe, Hộp, Cáp, Cây lấy sim, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Phụ kiện đi kèm', N'Sạc, Hộp, Cáp, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT117', N'Phụ kiện đi kèm', N'không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Phụ kiện đi kèm', N'Updating', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Phụ kiện đi kèm', N'Tai nghe, Dock sạc, Cáp, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Phụ kiện đi kèm', N'Sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Phụ kiện đi kèm', N'Sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Phụ kiện đi kèm', N'Đang cập nhật ...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT129', N'Phụ kiện đi kèm', N'Cáp, sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Phụ kiện đi kèm', N'Tai nghe, Dock sạc, Cáp, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Phụ kiện đi kèm', N'updating', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT136', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Phụ kiện đi kèm', N'Sách hướng dẫn, Cáp Micro USB, Củ sạc, Cây lấy sim, Ốp bảo vệ, Miếng dán màn hình (dán sẵn)', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Phụ kiện đi kèm', N'Cáp, Sạc, Tai nghe, Cây Lấy Sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Phụ kiện đi kèm', N'Sạc, cáp sạc, sạc không dây, ốp lưng, Lưu ý: Sản phẩm không đi kèm tai nghe', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Phụ kiện đi kèm', N'Tai nghe; Dây sạc; Miếng dán màn hình; Ốp lưng; Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Phụ kiện đi kèm', N'Tai phone, Sách hướng dẫn, Cáp USB, Củ sạc, Cây lấy SIM, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Phụ kiện đi kèm', N'Sạc, Pin, Sách HDSD, Dây cáp, Tai nghe', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Phụ kiện đi kèm', N'updating', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Phụ kiện đi kèm', N'Sạc, Cây lấy sim, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT159', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Phụ kiện đi kèm', N'Sách hướng dẫn, sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Phụ kiện đi kèm', N'Sạc, sách hướng dẫn, ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'Phụ kiện đi kèm', N'Điện thoại x 1, Bộ sạc x 1 , Phim bảo vệ x 1,Cáp USB x 1 ,PBH x 1 , HDSD x 1', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'Phụ kiện đi kèm', N'1 máy, 1 cốc sạc,1 cáp sạc, 1 cáp nối tai nghe ,1 kim lấy sim,1 HDSD , 1 DÁN MÀN HÌNH , 1 ỐP LƯNG , 1PBH', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Phụ kiện đi kèm', N'1 điện thoại, 1 pin, 1 sạc, 1 cáp USB, 1 tai nghe, 1 thẻ bảo hành, 1 ốp lưng, 1 sách hướng dẫn, 1 vỏ hộp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Phụ kiện đi kèm', N'cáp sạc ,ôp lưng trong', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'Phụ kiện đi kèm', N'1 Củ sạc, 1 cáp sạc, 1 sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Phụ kiện đi kèm', N'Sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT183', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT185', N'Phụ kiện đi kèm', N'Sạc, cáp, tai nghe, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Phụ kiện đi kèm', N'Hộp, Sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Phụ kiện đi kèm', N'Pin, Sạc, Sách hướng dẫn, Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Phụ kiện đi kèm', N'Phụ kiện đi kèm: Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT193', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT194', N'Phụ kiện đi kèm', N'Củ sạc (Hỗ trợ sạc nhanh 20W - 1.35A), Cáp sạc USB-A to USB - C, Cáp chuyển đổi USB-C to jack 3.5mm, Que lấy SIM, Sách hướng dẫn, Ốp lưng tặng kèm', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT195', N'Phụ kiện đi kèm', N'không', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Phụ kiện đi kèm', N'Kèm sạc và tai nghe', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT197', N'Phụ kiện đi kèm', N'Đ/Thoại x 1 , cốc sạc x 1 ,Cáp USB x 1 ,Phim bảo vệ x 1,HDSD x 1 ,SIM kim x 1,Thẻ bảo hành x 1', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT201', N'Phụ kiện đi kèm', N'1 củ sạc, 1 cáp sạc, 1 sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Phụ kiện đi kèm', N'Cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT210', N'Phụ kiện đi kèm', N'fullbox', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Phụ kiện đi kèm', N'Hướng dẫn sử dụng, cáp, sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Phụ kiện đi kèm', N'Cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Phụ kiện đi kèm', N'Cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Phụ kiện đi kèm', N'Tai nghe, củ sạc, cáp sạc, sách hướng dẫn, cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT224', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT226', N'Phụ kiện đi kèm', N'ĐT x 1 ,cốc sạc x 1 ,Phim bảo vệ x 1 ,Cáp USB x 1  ,Cáp OTG x 1,Cáp cắm tai nghe USB loại C đến 3,5 mm x 1,SIM kim x 1 ,Trye Stick x 1,HDSD, PBH  x 1', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Phụ kiện đi kèm', N'Sạc, sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Phụ kiện đi kèm', N'Không', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT229', N'Phụ kiện đi kèm', N'Full box', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Phụ kiện đi kèm', N'Pin, Sạc, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT237', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT238', N'Phụ kiện đi kèm', N'Nguồn sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Phụ kiện đi kèm', N'Sạc, HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Phụ kiện đi kèm', N'Cáp sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Phụ kiện đi kèm', N'01 pin, 01 sạc, 01 cáp USB, 01 sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Phụ kiện đi kèm', N'Cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Phụ kiện đi kèm', N'Sạc, HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT253', N'Phụ kiện đi kèm', N'Không có', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT255', N'Phụ kiện đi kèm', N'Updating...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy Sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT258', N'Phụ kiện đi kèm', N'Updating', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Phụ kiện đi kèm', N'Máy, Sạc, Cáp, Tai nghe, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT261', N'Phụ kiện đi kèm', N'1 thân máy, 1 cáp sạc, 1 que chọc sim, 1 sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Công nghệ màn hình', N'Super AMOLED, 6.4, Full HD+', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Công nghệ màn hình', N'AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Công nghệ màn hình', N'AMOLED, 6.4, Full HD+', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Công nghệ màn hình', N'Smartphone', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Công nghệ màn hình', N'AMOLED LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Công nghệ màn hình', N'Dynamic'' AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Công nghệ màn hình', N'LTPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Công nghệ màn hình', N'Cảm ứng điện dung đa điểm', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Công nghệ màn hình', N'OLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Công nghệ màn hình', N'LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Công nghệ màn hình', N'OLED, 458ppi, 3D Touch, TrueTone Dolby Vision HDR 10', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Công nghệ màn hình', N'OLED, 458ppi, 3D Touch, TrueTone Dolby Vision HDR 10', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Công nghệ màn hình', N'Cảm ứng điện dung đa điểm', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Công nghệ màn hình', N'AMOLED capacitive touchscreen', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Công nghệ màn hình', N'Smartphone', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Công nghệ màn hình', N'Tràn Màn Hình FullViewTM Thế Hệ Mới', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Công nghệ màn hình', N'AMOLED capacitive touchscreen', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Công nghệ màn hình', N'Cảm ứng, IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Công nghệ màn hình', N'OLED capacitive touchscreen, 16M colors', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Công nghệ màn hình', N'OLED Super Retina, 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Công nghệ màn hình', N'AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Công nghệ màn hình', N'IPS Full HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Công nghệ màn hình', N'HD+ IPS Incel', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Công nghệ màn hình', N'OLED Super Retina, 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Công nghệ màn hình', N'AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Công nghệ màn hình', N'TFT LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Công nghệ màn hình', N'FWVGA', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Công nghệ màn hình', N'LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Công nghệ màn hình', N'OGS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Công nghệ màn hình', N'Full HD + (2340 x 1080 Pixel)', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Công nghệ màn hình', N'IPS LCD capacitive touchscreen', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Công nghệ màn hình', N'AMOLED capacitive touchscreen, 16M colors', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Công nghệ màn hình', N'IPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Công nghệ màn hình', N'LTPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Công nghệ màn hình', N'IPS, Full lamination, Panda, Cong 2.5D', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Công nghệ màn hình', N'IPS HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Công nghệ màn hình', N'TN', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Công nghệ màn hình', N'IPS HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Công nghệ màn hình', N'IPS HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Công nghệ màn hình', N'IPS HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Công nghệ màn hình', N'FWVGA', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Công nghệ màn hình', N'FWVGA', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Công nghệ màn hình', N'LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Công nghệ màn hình', N'IPS HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Công nghệ màn hình', N'FWVGA', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Camera trước', N'24 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Camera trước', N'13 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Camera trước', N'20MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Camera trước', N'25 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Camera trước', N'Camera kép (10MP (2PD) f1.9)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Camera trước', N'13MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Camera trước', N'32MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Camera trước', N'16MP (Khẩu độ f/2.0 xóa phông ảo diệu)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Camera trước', N'12 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Camera trước', N'24MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Camera trước', N'12MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Camera trước', N'8 MP, 1080p@30fps', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Camera trước', N'7MP, f / 2.2, 32mm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Camera trước', N'7MP, f / 2.2, 32mm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Camera trước', N'Motorized pop-up 16 MP, f/2.0, 26mm (wide), 1/3.1, 1.0µm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Camera trước', N'24MP + 2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Camera trước', N'32MP+8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Camera trước', N'25MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Camera trước', N'24MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Camera trước', N'2 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Camera trước', N'7 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Camera trước', N'13 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Camera trước', N'8 MP (f/2.0, 1.12µm)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Camera trước', N'13MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Camera trước', N'24MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Camera trước', N'Chính 48 MP & Phụ 8 MP, TOF 3D', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Camera trước', N'12MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Camera trước', N'7 MP, f / 2.2, 32mm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Camera trước', N'24 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Camera trước', N'20 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Camera trước', N'25 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Camera trước', N'5MP (Flash)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Camera trước', N'5.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Camera trước', N'7 MP, f / 2.2, 32mm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Camera trước', N'5mp', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Camera trước', N'5 MP, flash LED', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Camera trước', N'25 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Camera trước', N'5.0MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Camera trước', N'5 MP, flash LED', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Camera trước', N'5.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Camera trước', N'5.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Camera trước', N'VGA (0.3 MP)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Camera trước', N'5.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Camera trước', N'2.0MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Camera trước', N'8.0MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Camera trước', N'2 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Camera trước', N'32 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Camera trước', N'7 MP, f/2.2, 32mm, HDR, 1080p@30fps', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Camera trước', N'24MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Camera trước', N'25 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Camera trước', N'24MP và 2MP (2 camera)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Camera trước', N'13MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Camera trước', N'16 MP (Hỗ trợ công nghệ A.I)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Camera trước', N'5.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Camera trước', N'13 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Camera trước', N'8.0MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Camera trước', N'5MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Camera trước', N'5.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Camera sau', N'12 MP (f/1.8, 1/2.3'', 1.55µm, DP PDAF) + 12 MP (f/2.6, 1.0µm, PDAF)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Camera sau', N'16 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Camera sau', N'Chính 25 MP Và Phụ 8 MP, 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Camera sau', N'8M AF& 0.3M FF', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Camera sau', N'12MP Dual-camera', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Camera sau', N'Chính 48 MP & Phụ 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Camera sau', N'Chính 8 MP & Phụ VGA, VGA', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Camera sau', N'20MP +2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Camera sau', N'48 MP, 12 MP và TOF 3D (3 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Camera sau', N'12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Camera sau', N'5MP & 0.3MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Camera sau', N'16MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Camera sau', N'20 MP, 12 MP và TOF 3D (3 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Camera sau', N'3 Camera (Tele 12MP (2PD) f2.4 + góc rộng 12MP f1.5/2.4 + siêu rộng 16MP f2.2 123 độ)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Camera sau', N'Chính 13 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Camera sau', N'16MP+8MP(góc rộng)+2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Camera sau', N'Camera kép: 16MP + 2MP (khẩu độ f/2.2 + 2.4)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Camera sau', N'12 MP + 12 MP + 12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Camera sau', N'24 MP, 10 MP, 8 MP và 5 MP (4 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Camera sau', N'Chính 13 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Camera sau', N'13MP và 0.3MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Camera sau', N'16MP + 2MP (2 Camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Camera sau', N'13 MP, f/2.2, 1/3.1', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Camera sau', N'12 MP, f / 1.8, 28mm, 1 / 2.6 , 1.4µm, OIS, PDAF  12 MP, f / 2.4, 52mm, 1.0µm, OIS, PDAF, zoom quang 2x', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Camera sau', N'16 MP và 2 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Camera sau', N'Chính 13MP và Phụ 2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Camera sau', N'12 MP, f / 1.8, 28mm, 1 / 2.6 , 1.4µm, OIS, PDAF  12 MP, f / 2.4, 52mm, 1.0µm, OIS, PDAF, zoom quang 2x', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Camera sau', N'5MP + 0.3MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Camera sau', N'16 MP và 2 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Camera sau', N'12 MP + 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Camera sau', N'13MP+8MP+2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Camera sau', N'48 MP, f/1.7, 26mm (wide), 1/2.0, 0.8µm, PDAF, OIS + 13MP, f/2.4, (telephoto), 1/3.4, 1.0µm, PDAF + 8 MP, f/2.2, 13mm (ultrawide), 1/3.2, 1.4µm + 2 MP B/W, f/2.4, 1/5, 1.75µm', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Camera sau', N'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Camera sau', N'12MP + 12MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Camera sau', N'48MP +8MP+2MP+2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Camera sau', N'16MP + 5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Camera sau', N'13MP và 2MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Camera sau', N'5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Camera sau', N'2 camera 12 MP, f/1.8, f/2.4, 1080p@30fps, 720p@240fps', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Camera sau', N'12 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Camera sau', N'48 MP và 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Camera sau', N'Dual: 12 MP (f/1.8, 1/2.3, 1.55µm, DP PDAF) + 12 MP (f/2.6, 1.0µm, PDAF)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Camera sau', N'13MP + 2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Camera sau', N'13MP/13MP Camera kép)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Camera sau', N'40 MP x 16 MP x 8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, TOF 3D', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Camera sau', N'13MP và 2MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Camera sau', N'12 MP, f / 1.8, 28mm, 1 / 2.6 , 1.4µm, OIS, PDAF  12 MP, f / 2.4, 52mm, 1.0µm, OIS, PDAF, zoom quang 2x', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Camera sau', N'12 MP, 16 MP và 8 MP (3 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Camera sau', N'Chính 48 MP & Phụ 13 MP, 8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Camera sau', N'48 MP, 16 MP và 12 MP (3 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Camera sau', N'Chính 16 MP & Phụ 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Camera sau', N'8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Camera sau', N'Chính 13MP và Phụ 8MP, 2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Camera sau', N'5MP và 0.3MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Camera sau', N'8MP AF (Samsung sensor)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Camera sau', N'16 MP và 2 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Camera sau', N'12MP + 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Camera sau', N'8.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Camera sau', N'12 MP, f / 1.8, 28mm, 1 / 2.6 , 1.4µm, OIS, PDAF  12 MP, f / 2.4, 52mm, 1.0µm, OIS, PDAF, zoom quang 2x', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Camera sau', N'Chính 13 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Camera sau', N'5 MP, camera góc rộng, flash LED kép', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Camera sau', N'20 MP và 16 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Camera sau', N'8.0MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Camera sau', N'8 MP, f/2.0, flash Dual LED', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Camera sau', N'13 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Camera sau', N'8.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Camera sau', N'5.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Camera sau', N'5.0MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Camera sau', N'13.0MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Camera sau', N'24MP + 8MP (góc siêu rộng) + 2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Camera sau', N'12 MP, f/1.8, OIS, PDAF', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Camera sau', N'40 MP x 20 MP x 8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Camera sau', N'Chính 16 MP & Phụ 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Camera sau', N'24MP và 16MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Camera sau', N'Chính 13 MP & Phụ 0.3 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Camera sau', N'8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Camera sau', N'13MP+8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Camera sau', N'Chính 8 MP & Phụ 0.3 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Camera sau', N'13 MP + 2 MP (Camera kép)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Camera sau', N'8MP và 0.3MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Camera sau', N'20MP +2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Camera sau', N'12.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Camera sau', N'8MP+0.8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Camera sau', N'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Camera sau', N'5MP + VGA (camera kép)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Camera sau', N'13.0MP + 2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Camera sau', N'13 MP và 2 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Camera sau', N'Chính 16 MP & Phụ 8 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Camera sau', N'8MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Camera sau', N'2.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Tính năng camera', N'Chế độ làm đẹp, Chụp hình góc rộng, Chụp ảnh xóa phông, Chế độ Slow Motion, A.I Camera, Lấy nét theo pha, Hiệu ứng AR Stickers, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Tính năng camera', N'Chụp ảnh xóa phông, Chạm lấy nét, Nhận diện khuôn mặt, Quay video Full HD, Chế độ làm đẹp, Quay video HD, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Tính năng camera', N'Super Slow motion (quay siêu chậm), Chế độ Slow Motion, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Tính năng camera', N'A.I Camera, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Chụp bằng cử chỉ, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Tính năng camera', N'Chụp ảnh xóa phông Chế độ Slow Motion Tự động lấy nét Chạm lấy nét Nhận diện khuôn mặt HDR Panorama Chống rung quang học (OIS) Chế độ làm đẹp Quay video Full HD', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Tính năng camera', N'Có thể chụp chân dung, xóa phông', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Tính năng camera', N'Chụp ảnh xóa phông, Lấy nét theo pha, A.I Camera, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Slow Motion, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Tính năng camera', N'Chụp ảnh xóa phông, Chế độ Slow Motion, Chế độ Time-Lapse, Chế độ chụp ban đêm (ánh sáng yếu), A.I Camera, Lấy nét theo pha, Điều chỉnh khẩu độ, Super Slow Motion (quay siêu chậm), Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống r', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, HDR, Làm đẹp (Beautify), Mở khóa bằng khuôn mặt', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Tính năng camera', N'AF+VGA with flash light', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Tính năng camera', N'Tự động lấy nét, đèn Flash LED, HDR, Panorama, chụp Manual', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Tính năng camera', N'Zoom quang học (Camera kép), Chụp ảnh xóa phông, A.I Camera, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, HDR, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Tính năng camera', N'Chạm lấy nét, Quay video Full HD, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Chế độ làm đẹp, Sticker AR (biểu tượng thực tế ảo), Quay video HD', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Tính năng camera', N'Chạm lấy nét, Nhận diện khuôn mặt, Chế độ làm đẹp, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Tính năng camera', N'Lấy nét theo pha, A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Tính năng camera', N'Dual-LED dual-tone flash, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Tính năng camera', N'Đèn flash hai tông kép, HDR (ảnh / ảnh toàn cảnh)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Beautify, Selfie ngược sáng HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Tính năng camera', N'A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Tính năng camera', N'Tự động lấy nét, chụp liên tiếp, zoom kỹ thuật số, phơi sáng, nhận diện khuôn mặt, gắn thẻ địa lý, HDR, cài đặt ISO, Panorama, chế độ cảnh, tự hẹn giờ, lấy nét, cân bằng trắng, CMOS BSI Sensor, 5P Lens', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Tính năng camera', N'Đèn flash hai tông kép, HDR (ảnh / ảnh toàn cảnh)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Beautify, Selfie ngược sáng HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Tính năng camera', N'Chế độ làm đẹp, Nhận diện khuôn mặt, Chụp ảnh xóa phông, Chạm lấy nét, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Tính năng camera', N'Chụp ảnh văn bản, Chế độ chuyên nghiệp, Lấy nét theo pha, Chụp ảnh bằng lòng bàn tay, Điều khiển bằng giọng nói, Tua nhanh thời gian, Chuyển động chậm, Live photo, HDR, Toàn cảnh, Xóa phông chân dung (chỉ có ở camera trước), Watermark, AI Face Beauty, Bộ ', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Tính năng camera', N'Lấy nét theo pha, A.I Camera, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Chụp bằng cử chỉ, Chụp hình góc rộng, Chụp hình góc siêu rộng, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, ', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Tính năng camera', N'Chế độ làm đẹp, Chụp hình góc siêu rộng, Chế độ Slow Motion, Chế độ Time-Lapse, Chế độ chụp ban đêm (ánh sáng yếu), A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Tính năng camera', N'Dual-LED dual-tone flash, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Tính năng camera', N'Chụp chỉnh sửa văn bản, Chụp chuyên nghiệp, Quay chuyển động chậm, Quay tua nhanh thời gian, Bộ lọc màu, Chụp ảnh động, HRD, Chụp chân dung, Chụp toàn cảnh, Quay video 4K, Chụp một chạm, Chụp bằng giọng nói, Chụp bằng lòng bàn tay, Selfie độc đáo AR, Chế ', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Tính năng camera', N'A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Tính năng camera', N'Chụp ảnh xóa phông, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Tính năng camera', N'Chạm lấy nét, Nhận diện khuôn mặt, Chế độ làm đẹp, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Tính năng camera', N'Tự động lấy nét nhận diện theo giai đoạn, OIS, 4 LED flash (2 tone)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Tính năng camera', N'Chụp ảnh xóa phông, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Tính năng camera', N'Chống rung kỹ thuật số (EIS), Chụp ảnh xóa phông, A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Tính năng camera', N'Geo-tagging, touch focus, face detection, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Tính năng camera', N'Dual-LED dual-tone flash, HDR, panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Tính năng camera', N'Đang cập nhật', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Tính năng camera', N'Lấy nét theo pha, A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Tính năng camera', N'Đèn flash hai tông kép, HDR (ảnh / ảnh toàn cảnh)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Tính năng camera', N'Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify, Selfie ngược sáng HDR, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro),  Selfie ngược sáng HDR, Camera góc rộng, Đèn Flash trợ sáng, Tự động lấy nét, Quay video Full HD, Chế độ làm đẹp, N', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Tính năng camera', N'A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify, 	Nhận diện khuôn mặt, Chế độ làm đẹp, Tự động lấy nét, Quay video HD', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Tính năng camera', N'Lấy nét bằng laser, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học (OIS)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Tính năng camera', N'Lấy nét bằng laser, Zoom quang học (Camera kép), Chụp ảnh xóa phông, Chế độ Slow Motion, A.I Camera, Lấy nét theo pha, Super Slow Motion (quay siêu chậm), Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học (OIS), L', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Tính năng camera', N'Chụp ảnh xóa phông, Chế độ Slow Motion, Chế độ chụp ban đêm (ánh sáng yếu), Lấy nét theo pha, Super Slow Motion (quay siêu chậm), Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Tính năng camera', N'Chỉnh sửa văn bản, Chuyên nghiệp, Lấy nét theo pha, Kích hoạt chụp ảnh bằng lòng bàn tay, Điều khiển giọng nói, Tua nhanh thời gian, Chuyển động chậm, Ảnh động, HDR, Chân dung, Toàn cảnh, Selfie xóa phông,  Watermark, AI Face Beauty, Bộ lọc Camera, Chụp ả', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Tính năng camera', N'Làm đẹp khuôn mặt, HDR, Toàn cảnh, Bộ lọc trực tiếp, Thời gian trôi qua, Chế độ thủ công, Mã QR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Beautify, Selfie ngược sáng HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Tính năng camera', N'Chế độ chụp chân dung,  ƒ / 2.2 khẩu độ mở rộng,  Ống kính tùy chỉnh 5 yếu tố,  Chụp liên tiếp,  Chế độ toàn cảnh, Thuật toán làm đẹp ArcSoft Công nghệ làm đẹp da thích ứng, Face AE', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Tính năng camera', N'Đèn flash hai tông kép, HDR (ảnh / ảnh toàn cảnh)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, HDR, Làm đẹp (Beautify), Mở khóa bằng khuôn mặt', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Tính năng camera', N'Tự động lấy nét, HDR, Chế độ ánh sáng yếu, Beautify, Chế độ chụp ảnh chuyên nghiệp, Selfie ngược sáng, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học (OIS), Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Gán địa danh', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Quay video Full HD, Selfie bằng cử chỉ, Nhận diện khuôn mặt', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Tính năng camera', N'Làm đẹp thông minh, Pano', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Tính năng camera', N'Chế độ Time-Lapse, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Tính năng camera', N'Chụp xóa phông, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Tính năng camera', N'Chụp hình ban đêm, lấy nét PDAF', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Tính năng camera', N'Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Tính năng camera', N'Chạm lấy nét, nhận dạng nụ cười', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Tính năng camera', N'Vẫy tay bắt ảnh, tự động lấy nét, chạm lấy nét, nhận diện khuôn mặt, làm mịn da, chụp HDR...', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Tính năng camera', N'Chụp ảnh AI và chế độ siêu chụp đêm AIS, Tính năng nhận diện khung cảnh và làm đẹp AI, Video siêu chậm, Tăng cường ISO, Hiệu ứng ánh sáng và đổ bóng, Làm trắng răng,', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Tính năng camera', N'Chế độ chụp xóa phông Potrait mode flash quad LED, Neural Engine, SmartDHR, xóa phông, chỉnh khẩu sau chụp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Tính năng camera', N'Chụp ảnh xóa phông, Chế độ Slow Motion, Chế độ chụp ban đêm (ánh sáng yếu), Lấy nét theo pha, Super Slow Motion (quay siêu chậm), Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Tính năng camera', N'Chụp 3D toàn cảnh, chụp chân dung 3D, chụp ảnh ảo rộng, chụp đơn sắc, hội họa ánh sáng, chụp đêm, máy ảnh chuyên nghiệp, chế độ chân dung, làm đẹp video, Panorama, HDR, OIS, Chuyển động chậm', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Tính năng camera', N'Chụp ảnh xóa phông, Chạm lấy nét, Nhận diện khuôn mặt,	Quay video Full HD, Chế độ làm đẹp, Quay video HD, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Tính năng camera', N'Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Tính năng camera', N'Lấy nét tự động, chụp ảnh nâng cao', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Tính năng camera', N'Chụp ảnh xóa phông, Chạm lấy nét, Nhận diện khuôn mặt,	Quay video Full HD, Chế độ làm đẹp, Quay video HD, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Tính năng camera', N'Công nghệ Selfie A.I Beauty, Nhận diện khuôn mặt, Quay video Full HD, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Tính năng camera', N'HDR, Panorama, Chế độ làm đẹp, Selfie bằng cử chỉ', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Tính năng camera', N'Quay video HD, Chế độ làm đẹp, Nhận diện khuôn mặt, Quay video Full HD, Selfie ngược sáng HDR, Chế độ Slow Motion, Chế độ chụp ban đêm (ánh sáng yếu), Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Tính năng camera', N'Face beauty, Soft light, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Tính năng camera', N'AI-HDR, AI-Face Beauty, AI-Portrait Blur, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Tính năng camera', N'Tự động lấy nét, Quay video HD, Nhận diện khuôn mặt', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Tính năng camera', N'Chụp hình ban đêm, lấy nét PDAF', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Tính năng camera', N'Geo-tagging, touch focus, PDAF, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Tính năng camera', N'Chụp hình góc siêu rộng, Chụp ảnh macro, Chụp hình góc rộng, Chống rung điện tử (EIS), Chụp ảnh xóa phông, Chế độ Time-Lapse, Chế độ chụp ban đêm (ánh sáng yếu), Lấy nét theo pha, Chế độ Slow Motion, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Tính năng camera', N'Chụp ảnh ban đêm, lấy nét PDAF', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Tính năng camera', N'Chụp xóa phông, Vẫy tay bắt ảnh, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Làm mịn da, Chụp HDR...', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Tính năng camera', N'Chụp ảnh ban đêm, lấy nét PDAF', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Tính năng camera', N'Tự động lấy nét, HDR, Panorama, chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify, Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chế độ làm đẹp, Chế độ chụp chuyên nghiệp, Quay Video Full HD...', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Tính năng camera', N'Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Tính năng camera', N'HDR, face and smile detection,autofocus, Geo-tagging camera with double LED flash', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Tính năng camera', N'Điều chỉnh khẩu độ, A.I Camera, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Light Painting, Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Chụp bằng cử chỉ, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), ', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Tính năng camera', N'Auto Focus', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Tính năng camera', N'Làm đẹp thông minh, Pano', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Tính năng camera', N'Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Đèn flash', N'Đèn LED 2 tông màu', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Đèn flash', N'Đèn LED kép', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Đèn flash', N'Đèn LED kép', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Đèn flash', N'Đèn flash kép Quad-LED', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Đèn flash', N'Không', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Đèn flash', N'4 LED flash (2 tone)', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Đèn flash', N'Dual-LED dual-tone flash', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Đèn flash', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro),  Selfie ngược sáng HDR, Camera góc rộng, Đèn Flash trợ sáng, Tự động lấy nét, Quay video Full HD, Chế độ làm đẹp, N', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Đèn flash', N'Đèn LED kép', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Đèn flash', N'Đèn flash kép nhiệt độ màu kép', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Đèn flash', N'LED', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Đèn flash', N'LED', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Đèn flash', N'LED flash', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Video call', N'Có thông qua ứng dụng OTT', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Video call', N'Hỗ trợ ứng dụng qua Videocall', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Video call', N'Hỗ trợ videocall qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Video call', N'Hỗ trợ videocall qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng OTT', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng OTT', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Quay phim', N'Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Quay phim', N'HD 720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Quay phim', N'Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Quay phim', N'2160p@30fps, 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Quay phim', N'Quay phim HD 720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Quay phim', N'Quay video HD, Tự động lấy nét', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Quay phim', N'Full HD', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Quay phim', N'Quay phim FullHD 1080p@120fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Quay phim', N'2160p@30fps, 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Quay phim', N'Quay video HD, Tự động lấy nét', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Quay phim', N'2160p@30fps, 1080p@30/60fps (gyro-EIS); video rec. only with main camera', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Quay phim', N'2160p@30fps, 1080p@30/60fps, 720p@960fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Quay phim', N'2160p@30fps, 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Quay phim', N'2160p@30fps, 1080p@60fps, 1080p@30fps (gyro-EIS), 720p@960fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Quay phim', N'2160p @ 24/30 / 60fps, 1080p @ 30/60/120 / 240fps, HDR, âm thanh nổi Rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@120fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Quay phim', N'HD 720p@24fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Quay phim', N'Có, HD', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Quay phim', N'2160p @ 24/30 / 60fps, 1080p @ 30/60/120 / 240fps, HDR, âm thanh nổi Rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Quay phim', N'Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Quay phim', N'HD', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Quay phim', N'HD 720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Quay phim', N'720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Quay phim', N'Quay phim HD 720p@24fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Quay phim', N'2160p@30fps, 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Quay phim', N'2160p@30fps, 1080p@60fps, 1080p@30fps (gyro-EIS), 720p@960fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@120fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Quay phim', N'Quay phim FullHD+ 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Quay phim', N'Quay phim FullHD 1080@24fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Quay phim', N'Quay phim FullHD 1080@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Quay phim', N'Quay video Full HD', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Quay phim', N'HD 720p@24fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Quay phim', N'Full HD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Quay phim', N'720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Quay phim', N'Quay phim HD 720p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Quay phim', N'Quay phim FHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim HD 720p@120fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim HD 720p@480fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Quay phim', N'HD', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Bộ nhớ RAM', N'6 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Bộ nhớ RAM', N'512MB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Bộ nhớ RAM', N'512MB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Bộ nhớ RAM', N'6 GB RAM', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Bộ nhớ RAM', N'6 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Bộ nhớ RAM', N'8 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Bộ nhớ RAM', N'1 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Bộ nhớ RAM', N'512MB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Bộ nhớ RAM', N'1', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Bộ nhớ RAM', N'1 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Bộ nhớ RAM', N'512MB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Bộ nhớ trong', N'64 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Bộ nhớ trong', N'512GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Bộ nhớ trong', N'256 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Bộ nhớ trong', N'512GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Bộ nhớ trong', N'512GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Bộ nhớ trong', N'128 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Bộ nhớ trong', N'256 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Bộ nhớ trong', N'64 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Bộ nhớ trong', N'64 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Bộ nhớ trong', N'512GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Bộ nhớ trong', N'8 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Bộ nhớ trong', N'16 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Bộ nhớ trong', N'16 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Bộ nhớ trong', N'8 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Bộ nhớ trong', N'4GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Bộ nhớ trong', N'16 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Bộ nhớ trong', N'16 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Bộ nhớ trong', N'64 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Bộ nhớ trong', N'128 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 512 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Bộ nhớ ngoài', N'Chưa xác điịnh', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Bộ nhớ ngoài', N'400 GBMicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Bộ nhớ ngoài', N'128 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Bộ nhớ ngoài', N'microSD, microSDHC, microSDXC', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Bộ nhớ ngoài', N'128GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Bộ nhớ ngoài', N'microSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Bộ nhớ ngoài', N'Nano Memory', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Bộ nhớ ngoài', N'32GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Bộ nhớ ngoài', N'32GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Bộ nhớ ngoài', N'Nano Memory', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 64 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Bộ nhớ ngoài', N'32GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 64 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Bộ nhớ ngoài', N'microSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Bộ nhớ ngoài', N'Đang cập nhật', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Hộ trợ thẻ nhớ tối đa', N'Không', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Hộ trợ thẻ nhớ tối đa', N'400GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Hộ trợ thẻ nhớ tối đa', N'128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Hộ trợ thẻ nhớ tối đa', N'400GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Hộ trợ thẻ nhớ tối đa', N'400GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Hộ trợ thẻ nhớ tối đa', N'Không', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Hộ trợ thẻ nhớ tối đa', N'up to 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Hộ trợ thẻ nhớ tối đa', N'64 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Hộ trợ thẻ nhớ tối đa', N'Có thể mở rộng lên 128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Hộ trợ thẻ nhớ tối đa', N'Không', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Hộ trợ thẻ nhớ tối đa', N'32 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Hộ trợ thẻ nhớ tối đa', N'128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Hộ trợ thẻ nhớ tối đa', N'Hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Hộ trợ thẻ nhớ tối đa', N'128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Hộ trợ thẻ nhớ tối đa', N'Hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Hộ trợ thẻ nhớ tối đa', N'128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Hộ trợ thẻ nhớ tối đa', N'Hỗ trợ tối đa 64 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Hộ trợ thẻ nhớ tối đa', N'64GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Hộ trợ thẻ nhớ tối đa', N'128GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Hộ trợ thẻ nhớ tối đa', N'512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Trọng lượng', N'168gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Trọng lượng', N'166g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Trọng lượng', N'185g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Trọng lượng', N'175g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Trọng lượng', N'140g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Trọng lượng', N'250 gram', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Trọng lượng', N'142.5 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Trọng lượng', N'183g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Trọng lượng', N'157g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Trọng lượng', N'168 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Trọng lượng', N'155gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Trọng lượng', N'176gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Trọng lượng', N'188g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Trọng lượng', N'183g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Trọng lượng', N'168 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Trọng lượng', N'167g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Trọng lượng', N'162g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Trọng lượng', N'140 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Trọng lượng', N'178g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Trọng lượng', N'165g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Trọng lượng', N'155g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Trọng lượng', N'145g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Trọng lượng', N'160 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Trọng lượng', N'156g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Trọng lượng', N'208g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Trọng lượng', N'174g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Trọng lượng', N'163.5 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Trọng lượng', N'160g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Trọng lượng', N'178g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Trọng lượng', N'208g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Trọng lượng', N'160gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Trọng lượng', N'174g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Trọng lượng', N'178 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Trọng lượng', N'189g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Trọng lượng', N'195 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Trọng lượng', N'218g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Trọng lượng', N'500 gram', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Trọng lượng', N'201.8g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Trọng lượng', N'163.7g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Trọng lượng', N'162 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Trọng lượng', N'145g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Trọng lượng', N'174 g (6.14 oz)', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Trọng lượng', N'169g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Trọng lượng', N'186g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Trọng lượng', N'168 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Trọng lượng', N'175g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Trọng lượng', N'170 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Trọng lượng', N'165g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Trọng lượng', N'178gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Trọng lượng', N'169g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Trọng lượng', N'160g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Trọng lượng', N'177g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Trọng lượng', N'188 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Trọng lượng', N'210 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Trọng lượng', N'173g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Trọng lượng', N'172g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'Trọng lượng', N'Kích thước: 157.8 x 75.8 x 7.9 mm, Trọng lượng 158g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Trọng lượng', N'190.5 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Trọng lượng', N'127 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Trọng lượng', N'167g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Trọng lượng', N'174g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Trọng lượng', N'159g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Trọng lượng', N'144g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Trọng lượng', N'177g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Trọng lượng', N'168 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Trọng lượng', N'112 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Trọng lượng', N'150gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Trọng lượng', N'163g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Trọng lượng', N'186g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Trọng lượng', N'150 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Trọng lượng', N'142g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT189', N'Trọng lượng', N'Kích thước -78,0 mm x 168,0 mm x 14,5 mm, Trọng lượng - 302 gram (có pin)', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Trọng lượng', N'140', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Trọng lượng', N'140 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Trọng lượng', N'150gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Trọng lượng', N'185 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Trọng lượng', N'148g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Trọng lượng', N'154g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Trọng lượng', N'262g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Trọng lượng', N'211g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Trọng lượng', N'152g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Trọng lượng', N'164 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Trọng lượng', N'194', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Trọng lượng', N'192g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Trọng lượng', N'172g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Trọng lượng', N'165g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Trọng lượng', N'178 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Trọng lượng', N'158 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Trọng lượng', N'144g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Trọng lượng', N'140g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Trọng lượng', N'161g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Trọng lượng', N'399g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Trọng lượng', N'150g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Trọng lượng', N'154 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Trọng lượng', N'143g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Trọng lượng', N'158g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Trọng lượng', N'142g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Trọng lượng', N'178 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Trọng lượng', N'185g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Trọng lượng', N'175g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Trọng lượng', N'160 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Trọng lượng', N'160 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Trọng lượng', N'148g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Trọng lượng', N'163g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Trọng lượng', N'198 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Trọng lượng', N'135g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Trọng lượng', N'143.9g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Trọng lượng', N'153g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Trọng lượng', N'135g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Trọng lượng', N'163.5g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Trọng lượng', N'166g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Trọng lượng', N'127.3g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Trọng lượng', N'140g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Trọng lượng', N'167gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Trọng lượng', N'196.8 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Trọng lượng', N'154g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT255', N'Trọng lượng', N'Kích thước: 153,6 x73,1 x 8,5 mm, Trọng lượng 160g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Trọng lượng', N'141g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Trọng lượng', N'172g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Kích thước', N'Dài 151.4 mm - Ngang 71.8 mm - Dày 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Kích thước', N'Dài 158.5 mm - Ngang 74.5 mm - Dày 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Kích thước', N'158.5 mm - 74.7 mm - 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Kích thước', N'Dài 156.6 mm - Ngang 74.3 mm - Dày 9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Kích thước', N'Dài 156.7 mm - Ngang 74.7 mm - Dày 8.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Kích thước', N'(D x R x C) 160.4 x 76.6 x 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Kích thước', N'155 x 75 x 7.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Kích thước', N'Dài 147.3 mm - Ngang 71.8 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Kích thước', N'155.5 x 8.7 x 73 mm (Dài x Rộng x Ngang)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Kích thước', N'Dài 148 mm - Ngang 70.6 mm - Dày 8.45 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'Kích thước', N'110.4 x 47 x 13.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Kích thước', N'(Dài x Rộng x Dày) 156.5 x 76 x 7.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Kích thước', N'Dài 157.6 mm - Ngang 74.6 mm - Dày 7.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Kích thước', N'Dài 149.9 mm - Ngang 70.4 mm - Dày 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Kích thước', N'Dài 156.2 mm - Ngang 75.6 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Kích thước', N'Dài 156.5 mm - Ngang 75.2 mm - Dày 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Kích thước', N'157.9 x 74.3 x 7.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Kích thước', N'144 x 71.4 x 8.1 mm (5.67 x 2.81 x 0.32 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Kích thước', N'Dài 162.5 mm - Ngang 77 mm - Dày 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Kích thước', N'Dài 156.2 mm - Ngang 75.6 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Kích thước', N'(Dài x Ngang x Dày) 154.8 x 78.2 x 8.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Kích thước', N'Dài 150 mm - Ngang 71.1 mm - Dày 9.0 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Kích thước', N'Dài 153.8 mm - Ngang 73.2 mm - Dày 9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Kích thước', N'Dài 159.4 mm - Ngang 76.2 mm - Dày 8.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Kích thước', N'14.4 x 7.23 x 0.83 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Kích thước', N'Dài 145 mm - Ngang 73 mm - Dày 9.85 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Kích thước', N'152 x 75.3 x 7.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Kích thước', N'(D x R x C) 150.3 x 71.8 x 8.4 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Kích thước', N'15.75 x 7.74 x 0.77 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Kích thước', N'Dài 156.7 mm - Ngang 74 mm - Dày 8.5mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Kích thước', N'Dài 155.11 mm - Ngang 75.09 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Kích thước', N'Dài 153mm - Rộng 75mm - Dày 8.4mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Kích thước', N'Dài 159.4 mm - Ngang 76.2 mm - Dày 8.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Kích thước', N'15.75 x 7.74 x 0.77 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Kích thước', N'148 x 71 x 8.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Kích thước', N'Dài 156.7 mm - Ngang 74 mm - Dày 8.5mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Kích thước', N'(D x R x C) 149.3 x 71.7 x 8.75 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Kích thước', N'160 x 74.3 x 9.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Kích thước', N'Dài 163.6 mm - Ngang 75.6 mm - Dày 9.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Kích thước', N'Dài 157.9 mm - Ngang 74.7 mm - Dày 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Kích thước', N'159.00×74.70×9.80mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Kích thước', N'Dài 155.97 mm - Ngang 75.63 mm - Dày 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Kích thước', N'Dài 154.8 mm - Ngang 73.6 mm - Dày 8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Kích thước', N'Dài 145 mm - Ngang 73 mm - Dày 9.85 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Kích thước', N'143.6 x 70.9 x 7.7 mm (5.65 x 2.79 x 0.30 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Kích thước', N'150.8 x 72.3 x 8.25 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Kích thước', N'159.2 x 75.2 x 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Kích thước', N'151.4 x 71.8 x 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Kích thước', N'Dài 156.1 mm - Ngang 75.6 mm - Dày 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Kích thước', N'15.89 x 7.61 x 0.84 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Kích thước', N'Chiều dài: 149.1 mm, Chiều rộng: 71.3 mm, Chiều cao: 7.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Kích thước', N'Dài 161.4 mm - Ngang 76.9 mm - Dày 7.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Kích thước', N'Dài 165.2 mm - Ngang 76.5 mm - Dày 9.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Kích thước', N'152 x 75.3 x 7.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Kích thước', N'14.36 x 7.09 x 0.77 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Kích thước', N'158.2 x 77.2 x 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Kích thước', N'Dài 162 mm - Ngang 77.2 mm - Dày 9.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Kích thước', N'155 x 75 x 7.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Kích thước', N'Dài 156.8 mm - Ngang 74.2 mm - Dày 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'Kích thước', N'Kích thước: 157.8 x 75.8 x 7.9 mm, Trọng lượng 158g', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Kích thước', N'143 x 72 x 7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Kích thước', N'Dài 159.43 mm - Ngang 76.77 mm - Dày 8.92 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Kích thước', N'Dài 140.9 mm - Ngang 66 mm - Dày 9.4 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Kích thước', N'146.8 x 71.3 x 9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'Kích thước', N'Cao 15,61cm , Rộng 7,37cm , dày 0,97cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Kích thước', N'Dài 156.7 mm - Ngang 74 mm - Dày 8.5mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Kích thước', N'72.7 x 147.5 x 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'Kích thước', N'15,9 x 7,58 x 0.995', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Kích thước', N'148x71x8.8mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Kích thước', N'14.36 x 7.09 x 0.77 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Kích thước', N'Dài 156.2 mm - Ngang 75.6 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Kích thước', N'Dài 145 x Ngang 73.4 x Dày 8.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Kích thước', N'Dài 155.2 mm - Ngang 75.2 mm - Dày 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'Kích thước', N'154.5 x 73.8 x 8.4 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Kích thước', N'152.7 x 72 x 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Kích thước', N'Dài 156.7 mm - Ngang 74.2 mm - Dày 9.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Kích thước', N'Dài 143.85 x Ngang 72.2 x Dày 8.45 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Kích thước', N'(Dài x Rộng x Dày) 146.5 x 70.9 x 8.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Tên chip', N'Exynos 7904 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Tên chip', N'Exynos 7904 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Tên chip', N'MT6580M lõi tứ', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Tên chip', N'Exynos 9810', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Tên chip', N'Snapdragon 710 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Tên chip', N'Spreadtrum SC9863A', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Tên chip', N'Hisilicon Kirin 710', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Tên chip', N'Snapdragon 855 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Tên chip', N'Qualcomm Snapdragon 425 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Tên chip', N'Unisoc SC9863A', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Tên chip', N'MT6580M 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Tên chip', N'Octa - Core (Chip 8 nhân)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Tên chip', N'Snapdragon 710 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Tên chip', N'Exynos 9820 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Tên chip', N'MediaTek MT6762 8 nhân 64-bit (Helio P22)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Tên chip', N'MT6580P', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Tên chip', N'MediaTek Helio P60 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Tên chip', N'MediaTek MT6768 8 nhân (Helio P65)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Tên chip', N'Hisilicon Kirin 970', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Tên chip', N'Apple A13 Bionic (7 nm+)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Tên chip', N'MediaTek MT6762 8 nhân 64-bit (Helio P22)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Tên chip', N'MT6737 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Tên chip', N'Spreadtrum SC9850K 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Tên chip', N'MediaTek MT6739 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Tên chip', N'Qualcomm Snapdragon 429 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Tên chip', N'Octa-core kirin 659', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Tên chip', N'MediaTek MT6737W', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Tên chip', N'Cortex A53', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Tên chip', N'Qualcomm SDM636 Snapdragon 636', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Tên chip', N'Qualcomm Snapdragon 439 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Tên chip', N'MTK 6580 Quad core 1.3Ghz', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Tên chip', N'Chipset MediaTek MT6737', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Tên chip', N'Qualcomm Snapdragon 429 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Tên chip', N'MediaTek MT6580M', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Tên chip', N'Qualcomm Snapdragon 625', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Tên chip', N'MediaTek MT6762 8 nhân 64-bit (Helio P22)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Tên chip', N'Qualcomm SDM730 Snapdragon 730G (8 nm)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Tên chip', N'Qualcomm Snapdragon 665 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Tên chip', N'Qualcomm SDM845 Snapdragon 845', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Tên chip', N'Mediatek MT6739WA Quad-Core', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Tên chip', N'Qualcomm Snapdragon 675AIE', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Tên chip', N'MediaTek Helio P60 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Tên chip', N'HiSilicon Kirin 710', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Tên chip', N'Spreadtrum SC7731E', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Tên chip', N'Apple A11 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Tên chip', N'Qualcomm SDM660 Snapdragon 660', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Tên chip', N'MediaTek Helio P60 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Tên chip', N'Qualcomm SDM450 Snapdragon 450 (14 nm)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Tên chip', N'HiSilicon Kirin 980 (7 nm)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Tên chip', N'Qualcomm Snapdragon 425 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Tên chip', N'Snapdragon 730 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Tên chip', N'Qualcomm Snapdragon 450', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Tên chip', N'Hisilicon Kirin 980 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Tên chip', N'Snapdragon 855 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Tên chip', N'Snapdragon 855 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Tên chip', N'Snapdragon 710 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Tên chip', N'MediaTek MT6735P (64-bit)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Tên chip', N'MediaTek MT6762 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Tên chip', N'SC7731E 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Tên chip', N'MT6580 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Tên chip', N'MT6580 quad-core 1.3 GHz', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Tên chip', N'SC9863 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Tên chip', N'MT6762', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Tên chip', N'Spreadtrum SC7731E', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Tên chip', N'MediaTek MT6762 8 nhân 64-bit (Helio P22)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Tên chip', N'MediaTek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Tên chip', N'MediaTek MT6762 (Helio P22)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Tên chip', N'SC9863A Octa Core', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Tên chip', N'Snapdragon 845 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Tên chip', N'MTK6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Tên chip', N'Mediatek MT6737T', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Tên chip', N'MediaTek MT6739', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Tên chip', N'Snapdragon 435 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Tên chip', N'MediaTek MT6735', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Tên chip', N'MediaTek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Tên chip', N'Qualcomm Snapdragon 425', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Tên chip', N'MediaTek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Tên chip', N'MTK Helio P10 MT6755', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Tên chip', N'MediaTek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Tên chip', N'Cortex-A7 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Tên chip', N'Dual Core', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Tên chip', N'MediaTek MT6750', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Tên chip', N'MediaTek MT6580 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Tên chip', N'Hisilicon Kirin 710', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Tên chip', N'A12 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Tên chip', N'HiSilicon Kirin 980 (7 nm)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Tên chip', N'Snapdragon 710 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Tên chip', N'Kirin 970', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Tên chip', N'MediaTek MT6739 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Tên chip', N'MediaTek MT6739', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Tên chip', N'Spreadtrum SC7731E', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Tên chip', N'MT6580 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Tên chip', N'MT6753 8x Cortex-A53', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Tên chip', N'MTK 6580 4X Cortex-A7', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Tên chip', N'MTK6580A', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Tên chip', N'MediaTek MT6739 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Tên chip', N'Mediatek Helio P23', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Tên chip', N'Qualcomm SDM450 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Tên chip', N'MediaTek MT6580 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Tên chip', N'Spreadtrum SC9850K 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Tên chip', N'MediaTek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Tên chip', N'Hisilicon Kirin 710', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Tên chip', N'Qualcomm Snapdragon 430', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Tên chip', N'Android 9.0 (Go Edition)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Tên chip', N'MTK Helio P10 MT6755', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Tên chip', N'Mediatek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Tên chip', N'Qualcomm Snapdragon 665 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Tên chip', N'Helio P10 Octa-core Processor MT6755M', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Tên chip', N'MT6735 4 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Tên chip', N'MKT 6739', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Tên chip', N'Mediatek MT6737T', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Tên chip', N'MediaTek MT6737W', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Tên chip', N'Helio P10 Octa-core Processor MT6755M', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Tên chip', N'MT6580 4 nhân 32-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Tên chip', N'MediaTek MT6762R 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Tên chip', N'MediaTek Helio P22', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Tên chip', N'Qualcomm MSM8209', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Tên chip', N'MT6753 8 nhân 64Bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Tên chip', N'Mediatek MT6580', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Tên chip', N'HiSilicon Kirin 710F 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Tên chip', N'Qualcomm MSM8909 4x ARM Cortex-A7', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Tên chip', N'MT6580M', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Tên chip', N'MTK MT6735', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Loại lõi chip', N'8 nhân 64 bit', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Loại lõi chip', N'Snapdragon 855', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Loại lõi chip', N'Octa-Core', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Loại lõi chip', N'Qualcomm Snapdragon 636 8 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Loại lõi chip', N'Cortex-A53', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Loại lõi chip', N'Octa-core', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Loại lõi chip', N'8 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Loại lõi chip', N'Qualcomm Snapdragon 636 8 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Loại lõi chip', N'Snapdragon 855', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Loại lõi chip', N'8 Nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Loại lõi chip', N'4', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Loại lõi chip', N'4xCortex A73 2.2 GHz + 4xCortex A53 1.7 GHz', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Loại lõi chip', N'8 Nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Loại lõi chip', N'4 nhân 1.3 GHz', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Loại lõi chip', N'8 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Loại lõi chip', N'Spreadtrum SC7731E', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Loại lõi chip', N'Quad-core 1.3 GHz Cortex-A7 (32nm)', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Loại lõi chip', N'2 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Dung lượng pin', N'3360mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Dung lượng pin', N'2250mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Dung lượng pin', N'3765 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Dung lượng pin', N'3000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Dung lượng pin', N'3750 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Dung lượng pin', N'3300 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Dung lượng pin', N'3300 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Dung lượng pin', N'2400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'Dung lượng pin', N'Li-Ion 800 mAh (BL-5C)', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Dung lượng pin', N'3.200mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Dung lượng pin', N'3700 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Dung lượng pin', N'3400mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Ghi âm', N'Xem phim, Nghe nhạc, Ghi âm. FM radio, Đèn pin', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Ghi âm', N'Không', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Ghi âm', N'Không', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Ghi âm', N'Không', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT89', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT95', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT106', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT117', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT129', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT136', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT138', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT159', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT183', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT185', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT189', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT193', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT194', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT195', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT197', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT199', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT201', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT210', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT214', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT224', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT226', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT229', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT237', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT238', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT246', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT253', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT255', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT257', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT258', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT261', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Chức năng khác', N'Sạc nhanh Quick Charge 3.0, Tiết kiệm pin, Bảo mật vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Chức năng khác', N'Đèn pin Kháng nước, kháng bụi Sạc pin nhanh Ghi âm cuộc gọi Chặn cuộc gọi Samsung Pay Trợ lý ảo Samsung Bixby Màn hình luôn hiển thị AOD Mặt kính 2.5D Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Chức năng khác', N'Đèn pin Trợ lý ảo Google Assistant Nhân bản ứng dụng Chặn tin nhắn Đa cửa sổ (chia đôi màn hình) Ghi âm cuộc gọi Chặn cuộc gọi Sạc pin nhanh', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Chức năng khác', N'Cảm biến vân tay, nhận diện khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Chức năng khác', N'Đèn pin, chặn cuộc gọi, chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Sạc nhanh Quick Charge 3.0', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Chức năng khác', N'Mở khóa bằng vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Chức năng khác', N'Sạc pin nhanh, Chặn cuộc gọi, Ghi âm cuộc gọi, Chặn tin nhắn, Mặt kính 2.5D, Thu nhỏ màn hình sử dụng một tay, Nhân bản ứng dụng Khoá ứng dụng, Đèn pin Không gian trò chơi, Đa cửa sổ (chia đôi màn hình), Không gian trẻ em', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Chức năng khác', N'Mở khóa bằng khuôn mặt, Mở khoá vân tay dưới màn hình, Dolby Audio, Chuẩn kháng nước, Chuẩn kháng bụi, Đèn pin, Sạc pin nhanh, Chặn cuộc gọi, Ghi âm cuộc gọi, Chặn tin nhắn, Màn hình luôn hiển thị AOD, Trợ lý ảo Samsung Bixby, Samsung Pay, Samsung DeX', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Chức năng khác', N'Đèn pin Chặn cuộc gọi Chặn tin nhắn Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Chức năng khác', N'Đèn pin Chặn cuộc gọi Chặn tin nhắn Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Chức năng khác', N'Điều khiển Tivi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Chức năng khác', N'Bảo mật: Mở khóa bằng vân tay (chỉ 0.25s), Chia đôi màn hình', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Chức năng khác', N'Không', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Chức năng khác', N'Đèn pin, Chặn cuộc gọi, Chặn tin nhắn, Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Chức năng khác', N'Mở khóa bằng vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Chức năng khác', N'Đèn pin, Chặn cuộc gọi, Chặn tin nhắn, Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Khoá ứng dụng, Nhân bản ứng dụng, Không gian trẻ em, Đa cửa sổ (chia đôi màn hình), Không gian trò chơi, Mặt kính 2.5D, Chặn tin nhắn, Báo rung khi kết nối cuộc gọi ,Chặn cuộc gọi, Đèn pin, Dolby Audio ,Trợ lý', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Chức năng khác', N'Sạc kép siêu nhanh (9V 2A)', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Chức năng khác', N'Vẽ lên màn hình để mở nhanh ứng dụng, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Chạm 2 lần tắt màn hình, Sạc pin nhanh, Chạm 2 lần sáng màn hình, Đèn pin, Nhân bản ứng dụng, Trợ lý ảo Jovi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Chức năng khác', N'Nhận diện khuôn mặt Face ID, 3D Touch', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Chức năng khác', N'Mở khóa bằng vân tay, Mặt kính 2.5D, Sạc pin nhanh, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Chặn tin nhắn, Chặn cuộc gọi, Sạc pin nhanh, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Chức năng khác', N'Sạc pin nhanh, Đèn pin, Dolby Audio, Chặn cuộc gọi, Mặt kính 2.5D, Màn hình luôn hiển thị AOD, Chặn tin nhắn, Mở khóa bằng khuôn mặt, Mở khoá vân tay dưới màn hình, Tiết kiệm pin, Sạc pin nhanh', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Chức năng khác', N'Mở khóa bằng khuôn mặt, Đa cửa sổ (chia đôi màn hình), Khoá ứng dụng, Thu nhỏ màn hình sử dụng một tay, Chặn tin nhắn, Chặn cuộc gọi, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Chức năng khác', N'Đèn pin Sạc pin nhanh Chặn cuộc gọi Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Chức năng khác', N'Mở khóa bằng vân tay dưới màn hình, Mở khóa bằng khuôn mặt, Sạc nhanh Quick Charge 3.0', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Chức năng khác', N'Đèn pin, Chặn cuộc gọi, Chặn tin nhắn, Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Chức năng khác', N'Nhận diện khuôn mặt, Bảo mật vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Chức năng khác', N'Xem phim, Nghe nhạc, Ghi âm. FM radio, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Chức năng khác', N'Nhận diện khuôn mặt Face ID, Sạc pin nhanh, Chuẩn Kháng nước, Chuẩn kháng bụi, 3D Touch, Apple Pay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Chức năng khác', N'Đèn pin Chặn cuộc gọi Chặn tin nhắn Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Chức năng khác', N'Nhận diện khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Chức năng khác', N'Nhận diện khuôn mặt, cảm biến vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Chức năng khác', N'Google Play, Maps, Office, Email, Games,...', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Chức năng khác', N'Đa cảm ứng, Loa', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Chức năng khác', N'Cảm biến vân tay 0.1s', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Chức năng khác', N'Bảo mật vân tay, Nhận diện khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt,Tiết kiệm pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Chức năng khác', N'Tải Facebook, Youtube, lướt web, vv', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt,Tiết kiệm pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Chức năng khác', N'Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Chức năng khác', N'Chạm 2 lần tắt màn hình', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Chức năng khác', N'Đèn pin, chặn cuộc gọi, chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Chức năng khác', N'Đèn pin, Chặn cuộc gọi, Mở khóa bằng vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt,Đèn pin, Không gian trò chơi, Đa cửa sổ (chia đôi màn hình), Nhân bản ứng dụng, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Ghi âm cuộc gọi, Trợ lý ảo Google Assistant', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Chức năng khác', N'Chạm 2 lần sáng màn hình', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Chức năng khác', N'Cảm biến vân tay 0.1s', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Chức năng khác', N'Mở khóa bằng vân tay', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Chức năng khác', N'Đèn pin Chặn cuộc gọi Chặn tin nhắn Nhân bản ứng dụng Đa cửa sổ (chia đôi màn hình)', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Chức năng khác', N'Sạc cho thiết bị khác', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT89', N'SKU', N'1918199934305', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'SKU', N'1472488130323', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'SKU', N'9943023094780', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'SKU', N'4332885657045', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'SKU', N'6948099334573', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'SKU', N'7192958546129', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT95', N'SKU', N'3802113031714', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'SKU', N'1312611395314', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'SKU', N'2606881371680', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'SKU', N'1477277386936', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'SKU', N'8606202937599', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'SKU', N'6368972697814', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'SKU', N'3484008439098', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'SKU', N'1448379965169', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'SKU', N'5800847727444', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'SKU', N'6794560452464', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'SKU', N'3596535818687', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT106', N'SKU', N'7031677646386', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'SKU', N'2499093495554', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'SKU', N'6673272300129', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'SKU', N'5864885775768', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'SKU', N'3922636537477', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'SKU', N'6390804701239', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'SKU', N'1447021178421', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'SKU', N'6726899179460', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'SKU', N'2396807329023', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'SKU', N'7301818168412', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'SKU', N'7045391436840', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT117', N'SKU', N'7245682975120', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'SKU', N'9756088177813', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'SKU', N'2551355996213', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'SKU', N'9293752887192', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'SKU', N'5721844095520', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'SKU', N'3511582554616', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'SKU', N'4894345409903', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'SKU', N'5499695984248', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'SKU', N'8239181428835', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'SKU', N'3675867259334', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'SKU', N'8709644108944', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'SKU', N'3757616510252', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT129', N'SKU', N'7257931163066', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'SKU', N'8752881704219', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'SKU', N'6401706482932', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'SKU', N'3138070532255', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'SKU', N'9915360102145', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'SKU', N'8882287021372', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'SKU', N'4394330013936', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT136', N'SKU', N'7257040111484', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'SKU', N'9771651739397', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT138', N'SKU', N'9254595044548', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'SKU', N'8335999003353', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'SKU', N'8522801881999', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'SKU', N'8934583982304', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'SKU', N'7922339164358', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'SKU', N'6146665757386', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'SKU', N'1416568553763', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'SKU', N'8991493957006', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'SKU', N'9382883116865', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'SKU', N'6217195052293', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'SKU', N'4426001039638', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'SKU', N'4010467631750', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'SKU', N'1347030484288', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'SKU', N'8622846334853', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'SKU', N'7895960829388', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'SKU', N'1071667041858', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'SKU', N'5065619285601', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'SKU', N'1528542689631', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'SKU', N'7590667736594', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'SKU', N'4427044865093', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'SKU', N'1044231216174', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT159', N'SKU', N'6194329930316', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'SKU', N'8749366600692', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'SKU', N'6648269582505', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'SKU', N'4409172769665', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'SKU', N'8534913453018', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'SKU', N'5134826875766', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'SKU', N'5757153160215', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'SKU', N'5808142885906', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'SKU', N'4001630745763', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'SKU', N'9777036792407', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'SKU', N'1038052725533', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'SKU', N'1986425874237', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'SKU', N'3947487638333', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'SKU', N'7556956511822', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'SKU', N'1294074747155', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'SKU', N'4625769574485', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'SKU', N'4920992992458', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'SKU', N'3104470691915', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'SKU', N'4693193528466', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'SKU', N'6241268058233', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'SKU', N'5807094644562', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'SKU', N'8598030014002', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'SKU', N'3968089158562', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'SKU', N'3968082001506', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT183', N'SKU', N'8201961651627', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'SKU', N'8681466386642', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT185', N'SKU', N'2949783273974', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'SKU', N'5350708951728', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'SKU', N'5800857080324', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'SKU', N'8558540130289', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT189', N'SKU', N'1714598716555', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'SKU', N'5803223243811', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'SKU', N'5802373904962', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'SKU', N'2330137455205', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT193', N'SKU', N'4949876868559', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT194', N'SKU', N'2647085365440', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT195', N'SKU', N'2350946639405', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'SKU', N'5970154759275', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT197', N'SKU', N'9153207200108', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'SKU', N'7060444523384', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT199', N'SKU', N'5833071758212', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'SKU', N'5802961636855', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT201', N'SKU', N'7000640405084', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'SKU', N'6315562410414', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'SKU', N'5800739564188', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'SKU', N'5774737271587', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'SKU', N'8197703889499', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'SKU', N'5807557944536', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'SKU', N'8767679775135', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'SKU', N'4992839013848', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'SKU', N'7764622282789', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT210', N'SKU', N'1123820706149', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'SKU', N'1292513355374', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'SKU', N'7341225729271', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'SKU', N'1823763776208', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT214', N'SKU', N'3353682304995', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'SKU', N'4651309751405', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'SKU', N'1031881728454', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'SKU', N'3668384871899', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'SKU', N'4632119369141', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'SKU', N'5803843197341', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'SKU', N'3724689880056', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'SKU', N'6152443609990', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'SKU', N'9421977332962', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'SKU', N'7688809996682', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT224', N'SKU', N'9636608696041', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'SKU', N'7541537881951', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT226', N'SKU', N'3325610267252', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'SKU', N'4600647492495', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'SKU', N'6645002741786', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT229', N'SKU', N'5134139093642', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'SKU', N'1110537480622', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'SKU', N'5037486049082', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'SKU', N'1470559141261', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'SKU', N'5799439541752', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'SKU', N'5808851819537', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'SKU', N'1695446815159', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'SKU', N'8976783583035', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT237', N'SKU', N'5859119308775', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT238', N'SKU', N'2076951263090', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'SKU', N'5805495586917', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'SKU', N'9249573599301', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'SKU', N'6832370726075', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'SKU', N'5802060094945', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'SKU', N'6011547009856', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'SKU', N'5807777877423', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'SKU', N'5801161758473', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT246', N'SKU', N'4410254968371', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'SKU', N'7807824368100', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'SKU', N'4014798997196', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'SKU', N'5809577548657', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'SKU', N'5039152666029', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'SKU', N'5856893884525', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'SKU', N'4115290975382', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT253', N'SKU', N'1392534010792', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'SKU', N'5802643197223', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT255', N'SKU', N'9940851112969', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'SKU', N'3233808410451', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT257', N'SKU', N'4324472072225', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT258', N'SKU', N'3581806783917', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'SKU', N'5806091991792', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'SKU', N'6760339795223', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT261', N'SKU', N'7004774809954', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Thương hiệu', N'Asus', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Thương hiệu', N'Huawei', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Thương hiệu', N'Pocophone by Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Thương hiệu', N'BlackBerry', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Phụ kiện đi kèm', N'', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT50', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Phụ kiện đi kèm', N'Kèm theo cáp sạc, tai nghe, củ sạc (adapter) trong hộp sản phẩm', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Phụ kiện đi kèm', N'Sạc,Tai nghe,Hộp,Cáp,Cây lấy sim,Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Phụ kiện đi kèm', N'Hộp máy, cáp sạc, tai nghe, USB OTG, bộ ngòi bút, ốp lưng và sách hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Phụ kiện đi kèm', N'Updating...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Phụ kiện đi kèm', N'Cáp, Adapter sạc, tai nghe, cây lấy sim, hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Phụ kiện đi kèm', N'Adapter sạc, cáp sạc, sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn, Ốp lưng, Miếng dán màn hình, Cây lấy sim, Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Phụ kiện đi kèm', N'Sạc, Pin, Sách HDSD, Dây cáp, Tai nghe', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Phụ kiện đi kèm', N'Sạc,Sách hướng dẫn,Hộp,Cây lấy sim,Ốp lưng,Cáp', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Phụ kiện đi kèm', N'Sạc, tai nghe, HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Phụ kiện đi kèm', N'Hướng dẫn sử dụng, cáp, sạc', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Phụ kiện đi kèm', N'Cáp, sạc, Hướng dẫn sử dụng', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Phụ kiện đi kèm', N'Sạc, Sách HDSD', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Phụ kiện đi kèm', N'Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Phụ kiện đi kèm', N'Phụ kiện đi kèm củ sạc, cáp sạc, sách hướng dẫn, ốp lưng, tai nghe, que lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Phụ kiện đi kèm', N'Cáp, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Phụ kiện đi kèm', N'...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Phụ kiện đi kèm', N'Cáp, sạc, sách hướng dẫn,...', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Phụ kiện đi kèm', N'Sạc, Pin, Sách HDSD, Dây cáp, Tai nghe', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Phụ kiện đi kèm', N'Đang cập nhật', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Phụ kiện đi kèm', N'Cáp, Adapter Sạc, Sách Hướng Dẫn', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Phụ kiện đi kèm', N'Sạc, Sách hướng dẫn, Cáp, Cây lấy sim', N'2')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Công nghệ màn hình', N'OLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Công nghệ màn hình', N'TN', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Công nghệ màn hình', N'OLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Công nghệ màn hình', N'OLED capacitive touchscreen, 16M colors', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Công nghệ màn hình', N'OLED Super Retina, 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Công nghệ màn hình', N'PLS TFT LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Công nghệ màn hình', N'TFT', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Công nghệ màn hình', N'Super AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Công nghệ màn hình', N'Full HD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Công nghệ màn hình', N'AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Công nghệ màn hình', N'LTPS', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Công nghệ màn hình', N'LTPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Công nghệ màn hình', N'AMOLED capacitive touchscreen', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Công nghệ màn hình', N'PLS TFT LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Công nghệ màn hình', N'WQHD+ Dynamic'' AMOLED', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Công nghệ màn hình', N'LTPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Công nghệ màn hình', N'Super AMOLED, 6.4, Full HD+', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Công nghệ màn hình', N'IPS LCD', N'3')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Camera trước', N'7MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Camera trước', N'32MP f/2.0', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Camera trước', N'7MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Camera trước', N'13MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Camera trước', N'12MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Camera trước', N'7 MP, f / 2.2, 32mm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Camera trước', N'32 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Camera trước', N'7 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Camera trước', N'8.0 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Camera trước', N'2 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Camera trước', N'32MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Camera trước', N'7 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Camera trước', N'8 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Camera trước', N'20 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Camera trước', N'24MP và 2MP (2 camera)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Camera trước', N'8 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Camera trước', N'13 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Camera trước', N'16 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Camera trước', N'25MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Camera trước', N'32MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Camera trước', N'2MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Camera trước', N'5 MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Camera trước', N'20 MP, f/2.0, 0.9µm', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Camera trước', N'Camera kép (10MP (2PD) f1.9, Depth Camera 8MP f2.2)', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Camera trước', N'7 MP, f/2.2', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Camera trước', N'16MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Camera trước', N'8MP', N'4')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Camera sau', N'12MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Camera sau', N'5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Camera sau', N'24MP DP (12MP) f/1.78 + 8MP f/2.2 + 5MP f/2.4 (3 Camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Camera sau', N'12MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Camera sau', N'12MP Dual-camera', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Camera sau', N'Camera kép 12MP và 5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Camera sau', N'12 MP + 12 MP + 12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Camera sau', N'12 MP, f / 1.8, 28mm, 1 / 2.6 , 1.4µm, OIS, PDAF  12 MP, f / 2.4, 52mm, 1.0µm, OIS, PDAF, zoom quang 2x', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Camera sau', N'32 MP + 8 MP + 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Camera sau', N'2 camera 12 MP, f/1.8, 1080p@30fps, 720p@240fps', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Camera sau', N'13.0 MP + 2.0 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Camera sau', N'5MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Camera sau', N'48MP (F2.0) + 5MP (F2.2) + 8MP (F2.2)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Camera sau', N'13MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Camera sau', N'8 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Camera sau', N'12 MP, f/1.8, 1080p@30fps, 720p@240fps', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Camera sau', N'Chính 12 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Camera sau', N'Chính 13 MP & Phụ 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Camera sau', N'Chính 48 MP & Phụ 13 MP, 8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Camera sau', N'16MP và 2MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Camera sau', N'13 MP, f/2.2, AF và 2 MP, f/2.4, depth sensor', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Camera sau', N'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Camera sau', N'Chính 48 MP & Phụ 5 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Camera sau', N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Camera sau', N'16MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Camera sau', N'48MP + 8MP + 2MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Camera sau', N'13 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Camera sau', N'5MP và 0.3MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Camera sau', N'8 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Camera sau', N'12 MP, f/1.9, 1/2.55, 1.4µm, dual pixel PDAF & 5 MP, depth sensor', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Camera sau', N'3 camera (Tele 12MP (2PD) f2.4 + góc rộng 12MP f1.5/2.4 + siêu rộng 16MP f2.2 123 độ)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Camera sau', N'2 camera 12 MP, f/1.8, 1080p@30fps, 720p@240fps', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Camera sau', N'12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Camera sau', N'48 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Camera sau', N'16 MP và 5 MP (2 camera)', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Camera sau', N'12 MP', N'5')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Tính năng camera', N'Xóa phông, chỉnh khâu sau chụp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Tính năng camera', N'Tự động lấy nét, Nhận diện khuôn mặt, Chế độ làm đẹp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Tính năng camera', N'A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro), Chế độ làm đẹp, Quay video Full HD, Tự động lấy nét, Sticker AR (biểu tượng thực tế ảo), Camera góc rộng', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Tính năng camera', N'Xóa phông, chỉnh khâu sau chụp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Tính năng camera', N'Super Slow motion (quay siêu chậm), Chế độ Slow Motion, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuyên nghiệp', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Tính năng camera', N'Selfie ngược sáng HDR, Camera góc rộng, Nhận diện khuôn mặt, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, HDR, Panorama, Chống rung quang học', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Tính năng camera', N'Đèn flash hai tông kép, HDR (ảnh / ảnh toàn cảnh)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Tính năng camera', N'Chụp ảnh xóa phông, Chế độ Slow Motion, A.I Camera, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Tính năng camera', N'Tự động lấy nét nhận diện theo giai đoạn, OIS, 4 LED flash (2 tone)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Tính năng camera', N'Tự động lấy nét, thay đổi tiêu cự kỹ thuật số lên đến 4x', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Tính năng camera', N'Chụp ảnh nâng cao, tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Tính năng camera', N'Chụp ảnh xóa phông, Chế độ Slow Motion, Chế độ Time-Lapse, A.I Camera, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Tính năng camera', N'Quay phim FullHD 1080p@30fps', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Tính năng camera', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Tính năng camera', N'Tự động lấy nét nhận diện theo giai đoạn, OIS, 4 LED flash (2 tone)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Tính năng camera', N'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Quay video HD, Quay video Full HD, Tự động lấy nét', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Tính năng camera', N'Chụp ảnh xóa phông, Chụp bằng cử chỉ, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Tính năng camera', N'Camera sau: Super Slow Motion (quay siêu chậm), Lấy nét theo pha, A.I Camera, Chụp ảnh siêu độ phân giải, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Zoom quang học, Chụp hình góc rộng, Chụp hình góc siêu', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Tính năng camera', N'Chụp 3D toàn cảnh, chụp ảnh AI, chụp chân dung 3D, chụp ảnh ảo rộng, chụp đơn sắc, hội họa ánh sáng, chụp đêm, máy ảnh chuyên nghiệp, chế độ chân dung, làm đẹp video, Panorama, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Tính năng camera', N'Chụp ảnh macro, Chụp hình góc siêu rộng, Chụp ảnh xóa phông, Chế độ Slow Motion, Chế độ Time-Lapse, Chế độ chụp ban đêm (ánh sáng yếu), Chụp ảnh siêu độ phân giải, A.I Camera, Lấy nét theo pha, Super Slow Motion (quay siêu chậm), Chống rung điện tử (EIS),', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Tính năng camera', N'Chế độ làm đẹp, A.I Camera, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Chụp bằng cử chỉ, Hiệu ứng AR Stickers, Google Lens, Chụp hình góc siêu rộng, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HD', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Tính năng camera', N'Chụp hình góc siêu rộng, Chụp ảnh macro, Chụp hình góc rộng, Chống rung điện tử (EIS), Chụp ảnh xóa phông, Chế độ Time-Lapse, Chế độ chụp ban đêm (ánh sáng yếu), Lấy nét theo pha, Chế độ Slow Motion, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Tính năng camera', N'Sticker AR (biểu tượng thực tế ảo), Quay video HD, Nhận diện khuôn mặt, Chế độ làm đẹp, Quay video Full HD, Tự động lấy nét, Selfie ngược sáng HDR, Lấy nét theo pha, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Là', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Tính năng camera', N'Lấy nét theo pha, A.I Camera, Chế độ chụp ban đêm (ánh sáng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Chụp bằng cử chỉ, Chụp hình góc rộng, Chụp hình góc siêu rộng, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, ', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Tính năng camera', N'Chế độ ánh sáng yếu, Tự động lấy nét, Chạm lấy nét, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Tính năng camera', N'Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Tự động lấy nét, Quay video HD, Nhận diện khuôn mặt, Chế độ làm đẹp, Quay video Full HD', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Tính năng camera', N'Chế độ Slow Motion, Chế độ chụp ban đêm (ánh sáng yếu), Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify, Selfie ngược sáng HDR, Chế độ làm đẹp, Nhận diện khuôn mặt, Quay video HD', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Tính năng camera', N'Chế độ Time-Lapse, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify), Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Tính năng camera', N'Chụp ảnh xóa phông, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Tính năng camera', N'Camera sau:  Chụp phơi sáng Chụp ảnh xóa phông Chế độ chụp ban đêm (ánh sáng yếu) Lấy nét theo pha Điều chỉnh khẩu độ Super Slow Motion (quay siêu chậm) Tự động lấy nét Chạm lấy nét, HDR, Panorama Chống rung quang học (OIS), Ảnh GIF Chế độ chụp chuyên ng', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Tính năng camera', N'Tự động lấy nét nhận diện theo giai đoạn, OIS, 4 LED flash (2 tone)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Tính năng camera', N'Chụp ảnh xóa phông, Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Tính năng camera', N'A.I Camera, Chụp ảnh xóa phông, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Làm đẹp (Beautify)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Tính năng camera', N'Quay video Full HD, Chế độ làm đẹp, Nhận diện khuôn mặt, Quay video HD, Flash màn hình, Tự động lấy nét, Selfie ngược sáng HDR,Lấy nét theo pha, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Chế độ chụp chuyên nghiệp (Pro)', N'6')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Đèn flash', N'4 LED flash (2 tone)', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Đèn flash', N'4 LED flash (2 tone)', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Đèn flash', N'LED Flash', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Đèn flash', N'Đèn LED kép', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Đèn flash', N'4 LED flash (2 tone)', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Đèn flash', N'Có', N'7')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Video call', N'Hỗ trợ ứng dụng qua Videocall', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Video call', N'Hỗ trợ ứng dụng qua Videocall', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Video call', N'Hỗ trợ ứng dụng qua Videocall', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Video call', N'Có', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Video call', N'Hỗ trợ VideoCall thông qua ứng dụng', N'8')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Quay phim', N'Quay phim FullHD 1080p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Quay phim', N'Có quay phim', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Quay phim', N'FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Quay phim', N'Quay phim FullHD 1080p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Quay phim', N'Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Quay phim', N'2160p@30fps, 1080p@30/60fps, gyro-EIS', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Quay phim', N'2160p @ 24/30 / 60fps, 1080p @ 30/60/120 / 240fps, HDR, âm thanh nổi Rec', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Quay phim', N'FHD (1920 x 1080)@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Quay phim', N'Có', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Quay phim', N'UHD 4K (3840 x 2160)@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Quay phim', N'Có quay phim, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Bộ nhớ ngoài', N'MicroSD (Up to 512GB)', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim siêu chậm 960 fps, Quay phim HD 720p@240fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Quay phim', N'HD 720p@24fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Quay phim', N'Quay phim 4K 2160p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Quay phim', N'Quay phim siêu chậm 960 fps Quay phim FullHD 1080p@240fps Quay phim 4K 2160p@60fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Quay phim', N'2160p@24/30/60fps, 1080p@30/60/120/240fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Quay phim', N'1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Quay phim', N'Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Quay phim', N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps', N'9')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Bộ nhớ RAM', N'1 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Bộ nhớ RAM', N'1GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Bộ nhớ RAM', N'4 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Bộ nhớ RAM', N'3 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Bộ nhớ RAM', N'4GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Bộ nhớ RAM', N'1 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Bộ nhớ RAM', N'2 GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Bộ nhớ RAM', N'8GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Bộ nhớ RAM', N'6GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Bộ nhớ RAM', N'3GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Bộ nhớ RAM', N'2GB', N'10')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Bộ nhớ trong', N'256GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Bộ nhớ trong', N'8 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Bộ nhớ trong', N'512GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Bộ nhớ trong', N'Tùy chọn 64GB / 128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Bộ nhớ trong', N'8GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Bộ nhớ trong', N'128 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Bộ nhớ trong', N'64 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Bộ nhớ trong', N'128GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Bộ nhớ trong', N'16GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Bộ nhớ trong', N'32 GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Bộ nhớ trong', N'128GB/512GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Bộ nhớ trong', N'64GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Bộ nhớ trong', N'32GB', N'11')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Bộ nhớ ngoài', N'Không', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 256 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Bộ nhớ ngoài', N'Micro SD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 512 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Bộ nhớ ngoài', N'Có', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Bộ nhớ ngoài', N'microSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Bộ nhớ ngoài', N'MicroSD', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Bộ nhớ ngoài', N'MicroSD, hỗ trợ tối đa 512 GB', N'12')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Hộ trợ thẻ nhớ tối đa', N'32 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Hộ trợ thẻ nhớ tối đa', N'128 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Hộ trợ thẻ nhớ tối đa', N'512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Hộ trợ thẻ nhớ tối đa', N'Không', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Hộ trợ thẻ nhớ tối đa', N'MicroSD, hỗ trợ tối đa 256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Hộ trợ thẻ nhớ tối đa', N'32GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Hộ trợ thẻ nhớ tối đa', N'256 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Hộ trợ thẻ nhớ tối đa', N'Hỗ trợ tối đa 400 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Hộ trợ thẻ nhớ tối đa', N'256GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Hộ trợ thẻ nhớ tối đa', N'Hỗ trợ tối đa 512 GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Hộ trợ thẻ nhớ tối đa', N'512GB', N'13')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Trọng lượng', N'208g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Trọng lượng', N'145 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Trọng lượng', N'208g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Trọng lượng', N'175g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Trọng lượng', N'226g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Trọng lượng', N'177g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Trọng lượng', N'202 g (7.13 oz)', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Trọng lượng', N'168g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Trọng lượng', N'123 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Trọng lượng', N'166g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Trọng lượng', N'193g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Trọng lượng', N'148 g (5.22 oz)', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Trọng lượng', N'180g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Trọng lượng', N'190.5 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Trọng lượng', N'191g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Trọng lượng', N'169gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Trọng lượng', N'168gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Trọng lượng', N'184 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Trọng lượng', N'195g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Trọng lượng', N'198 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Trọng lượng', N'190 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Trọng lượng', N'195g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Trọng lượng', N'158g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Trọng lượng', N'173.8g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Trọng lượng', N'186g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Trọng lượng', N'151 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Trọng lượng', N'170 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Trọng lượng', N'186.5gr', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Trọng lượng', N'175g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Trọng lượng', N'202 g (7.13 oz)', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Trọng lượng', N'190g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Trọng lượng', N'165 g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Trọng lượng', N'188g', N'14')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Kích thước', N'157.5 x 77.4 x 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Kích thước', N'Dài 145mm - Ngang 73mm - Dày 9.85mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Kích thước', N'157.5 x 77.4 x 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Kích thước', N'Dài 157.9 mm - Ngang 75.5 mm - Dày 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Kích thước', N'158 x 77.8 x 8.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Kích thước', N'14.36 x 7.09 x 0.77 cm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Kích thước', N'158.4 x 78.1 x 7.5 mm (6.24 x 3.07 x 0.30 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Kích thước', N'156.9 x 75.8 x 7.8 (HxWxD, mm)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Kích thước', N'Dài 145 mm - Ngang 73.9 mm - Dày 9.75 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Kích thước', N'Dài 158.5 mm - Ngang 74.7 mm - Dày 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Kích thước', N'Dài 156.5 mm - Ngang 76 mm - Dày 7.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Kích thước', N'Dài 162.15 mm - Ngang 76.47 mm - Dày 8.89 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Kích thước', N'138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Kích thước', N'Dài 158.7 mm - Ngang 75.6 mm - Dày 8.5 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Kích thước', N'Dài 159.43 mm - Rộng 76.77 mm - Dày 8.92 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Kích thước', N'Dài 156.7 mm - Ngang 74.3 mm - Dày 8.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Kích thước', N'157.6 x 75.2 x 7.6 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Kích thước', N'Dài 156.2 mm - Ngang 75.6 mm - Dày 8.2 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Kích thước', N'Dài 157 mm - Ngang 74.2 mm - Dày 8.9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Kích thước', N'Dài 163.6 mm - Ngang 75.6 mm - Dày 9.1 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Kích thước', N'Dài 164.4 mm - Ngang 75.6 mm - Dày 9.3 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Kích thước', N'Dài 161.3 mm - Ngang 76.1 mm - Dày 8.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Kích thước', N'Dài 161.8 mm - Ngang 75.8 mm - Dày 8.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Kích thước', N'(Dài x Rộng x Dày) 156 x 75.3 x 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Kích thước', N'156.4 x 74.5 x 8.8 mm (Dài x Ngang x Dày)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Kích thước', N'Dài 143 mm - Ngang 71.5 mm - Dày 8.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Kích thước', N'Dài 154.5 mm - Ngang 73.8 mm - Dày 8.4 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Kích thước', N'Dài 156 mm - Ngang 75.5 - Dày 9 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Kích thước', N'Dài 157.6 mm - Ngang 74.1 mm - Dày 7.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Kích thước', N'158.4 x 78.1 x 7.5 mm (6.24 x 3.07 x 0.30 in)', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Kích thước', N'(Dài x Rộng x Dày) 149.1 x 72.4 x 9.4 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Kích thước', N'Dài 161.3 mm - Ngang 76.1 mm - Dày 8.8 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Kích thước', N'Dài 158.5 mm - Ngang 74.5 mm - Dày 7.7 mm', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Kích thước', N'Dài 156.5 mm - Ngang 75.4 mm - Dày 9.4 m', N'15')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Tên chip', N'Spreadtrum SC7731E', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Tên chip', N'MTK Helio P70, 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Tên chip', N'Exynos 9810', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Tên chip', N'Qualcomm Snapdragon 660 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Tên chip', N'Apple A13 Bionic (7 nm+)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Tên chip', N'A12 Bionic 64-bit 7nm', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Tên chip', N'Snapdragon 675', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Tên chip', N'Apple A11 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Tên chip', N'Spreadtrum SC7731E', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Tên chip', N'Exynos 9610 Octa Core 2.3GHz', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Tên chip', N'Mediatek Helio P23', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Tên chip', N'Android 9.0 (Pie)', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Tên chip', N'Apple A11 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Tên chip', N'Qualcomm Snapdragon 632 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Tên chip', N'Qualcomm Snapdragon 439 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Tên chip', N'Snapdragon 730', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Tên chip', N'Kirin 710', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Tên chip', N'Qualcomm Snapdragon 450 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Tên chip', N'Snapdragon 712 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Tên chip', N'Qualcomm Snapdragon 665', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Tên chip', N'Qualcomm Snapdragon 665 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Tên chip', N'MediaTek Helio P70 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Tên chip', N'MediaTek Helio P70 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Tên chip', N'Octa-core MTK P60 2.0GHZ', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Tên chip', N'Snapdragon 665 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Tên chip', N'Exynos 7904 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Tên chip', N'Spreadtrum SC9850K 4 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Tên chip', N'MediaTek MT6762R 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Tên chip', N'Qualcomm SDM845 Snapdragon 845', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Tên chip', N'Exynos 9820 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Tên chip', N'Apple A11 Bionic', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Tên chip', N'Qualcomm MSM8953 Snapdragon 625', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Tên chip', N'MediaTek Helio P70 8 nhân', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Tên chip', N'Exynos 7904 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Tên chip', N'Qualcomm Snapdragon 439 8 nhân 64-bit', N'16')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Loại lõi chip', N'8 nhân 64 bit', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Loại lõi chip', N'4 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Loại lõi chip', N'8 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Loại lõi chip', N'MediaTek MT6768 8 nhân (Helio P65)', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Loại lõi chip', N'8 nhân', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Loại lõi chip', N'Exynos 7904 8 nhân 64-bit', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Loại lõi chip', N'8 nhân 64-bit', N'17')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Dung lượng pin', N'2050 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Dung lượng pin', N'2716mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Dung lượng pin', N'4500mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Dung lượng pin', N'2675 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Dung lượng pin', N'4000 (mAh, Typical)', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Dung lượng pin', N'2050 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Dung lượng pin', N'3200 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Dung lượng pin', N'5000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Dung lượng pin', N'1821 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Dung lượng pin', N'3340mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Dung lượng pin', N'4230 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Dung lượng pin', N'4035 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Dung lượng pin', N'5000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Dung lượng pin', N'3400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'Dung lượng pin', N'4030mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Dung lượng pin', N'5000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Dung lượng pin', N'2300 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Dung lượng pin', N'4100 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Dung lượng pin', N'2675 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Dung lượng pin', N'3505mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Loại pin', N'Lion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Loại pin', N'Lithium polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Kết nối dữ liệu', N'Bluetooth, Wifi, GPRS, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Kết nối dữ liệu', N'Bluetooth, Wifi, GPRS, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Kết nối dữ liệu', N'Bluetooth, Wifi, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Kết nối dữ liệu', N'4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 2G, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Kết nối dữ liệu', N'Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'WIFI', N'Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'WIFI', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'WIFI', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'WIFI', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'GPS', N'Không', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'GPS', N'GLONASS, BDS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'GPS', N'A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'GPS', N'Có, với A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'GPS', N'DS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'GPS', N'GPS/AGPS/Glonass', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'GPS', N'A-GPS, GLONASS, BDS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'BLUETOOTH', N'A2DP, LE, v4.2', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'BLUETOOTH', N'5.0, A2DP, LE', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'BLUETOOTH', N'Bluetooth, Wifi, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'BLUETOOTH', N'Có', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Cổng sạc', N'USB Type C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Cổng sạc', N'Type-C 1.0 reversible connector', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Xem phim', N'MP4, AVI, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Xem phim', N'H.265, 3GP, MP4, AVI, H.263, H.264(MPEG4-AVC), DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Xem phim', N'MP4, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Xem phim', N'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Xem phim', N'MP4, 3GP', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Xem phim', N'H.265, 3GP, MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Xem phim', N'WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Xem phim', N'MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Xem phim', N'MP4/DivX/XviD/WMV/H.265 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Xem phim', N'H.265, 3GP, MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Xem phim', N'H.265, MP4, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC++, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'Nghe nhạc', N'MP3, WAV, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'Nghe nhạc', N'MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Nghe nhạc', N'MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Nghe nhạc', N'Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Nghe nhạc', N'mp3, mp4, 4gp, ogg, amr, aac, flac, wav,midi', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Nghe nhạc', N'MP3, WAV, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Nghe nhạc', N'AMR, MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Nghe nhạc', N'MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Nghe nhạc', N'MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Nghe nhạc', N'MP3/WAV/eAAC+/FLAC player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Nghe nhạc', N'Midi, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Nghe nhạc', N'Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Nghe nhạc', N'AMR, MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Nghe nhạc', N'MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Ghi âm', N'Có', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'Ghi âm', N'Có, microphone chuyên dụng chống ồn', N'29')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT50', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'FM Radio', N'Không', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'FM Radio', N'Có', N'30')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'Chức năng khác', N'Chặn cuộc gọi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'Chức năng khác', N'Vẽ lên màn hình để mở nhanh ứng dụng, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Chạm 2 lần tắt màn hình, Sạc pin nhanh, Chạm 2 lần sáng màn hình, Đèn pin, Nhân bản ứng dụng, Trợ lý ảo Jovi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'Chức năng khác', N'Đèn pin Kháng nước, kháng bụi Sạc pin nhanh Ghi âm cuộc gọi Chặn cuộc gọi Samsung Pay Trợ lý ảo Samsung Bixby Màn hình luôn hiển thị AOD Mặt kính 2.5D Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'Chức năng khác', N'Nhân bản ứng dụng, Trợ lý ảo Samsung Bixby, Màn hình luôn hiển thị AOD, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Đèn pin, Dolby Audio, Ghi âm cuộc gọi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'Chức năng khác', N'Nghe gọi, lướt web, vv', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'Chức năng khác', N'Mặt kính cảm ứn: Mặt kính cong 2.5D; Hiệu ứng AR Stickers, A.I Camera, Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh xóa phông, Chế độ làm đẹp, Chụp hình góc rộng, Chụp ảnh macro, Chụp hình góc siêu rộng, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn m', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'Chức năng khác', N'Bảo mật vân tay, chống nước, 3D Touch', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'Chức năng khác', N'Mở khóa bằng vân tay, Đèn pin, Sạc pin nhanh, Chặn cuộc gọi, Chặn tin nhắn', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'Chức năng khác', N'Chụp ảnh làm đẹp bằng trí tuệ nhân tạo, Chụp ảnh xóa phông, Mở khóa nhận diện khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'Chức năng khác', N'Không gian trò chơi, Đa cửa sổ (chia đôi màn hình), Không gian trẻ em, Khoá ứng dụng, Nhân bản ứng dụng, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Sạc pin nhanh, Đèn pin, Trợ lý ảo Google Assistant', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt,Đèn pin, Không gian trò chơi, Đa cửa sổ (chia đôi màn hình), Nhân bản ứng dụng, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Ghi âm cuộc gọi, Trợ lý ảo Google Assistant', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'Chức năng khác', N'Đa cửa sổ (chia đôi màn hình), Nhân bản ứng dụng, Mặt kính 2.5D, Chặn tin nhắn, Chặn cuộc gọi, Sạc pin nhanh, Đèn pin, Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'Chức năng khác', N'Mở khóa bằng khuôn mặt, Mở khoá vân tay dưới màn hình', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Ghi âm cuộc gọi, Chặn cuộc gọi, Chặn tin nhắn, Mặt kính 2.5D', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'Chức năng khác', N'Chặn tin nhắn, Chặn cuộc gọi, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Ghi âm cuộc gọi, Chặn tin nhắn, Chặn cuộc gọi, Đèn pin', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'Chức năng khác', N'Đa cửa sổ (chia đôi màn hình) Nhân bản ứng dụng Mặt kính 2.5D Chặn tin nhắn Chặn cuộc gọi Đèn pin Sạc pin nhanh', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'Chức năng khác', N'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'Chức năng khác', N'Nhân bản ứng dụng, Màn hình luôn hiển thị AOD, Mặt kính 2.5D, Chặn tin nhắn, Sạc pin nhanh, Đèn pin, Dolby Audio, Chặn cuộc gọi', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT49', N'SKU', N'7265462728524', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT50', N'SKU', N'9256420199461', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT51', N'SKU', N'3141555581280', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT52', N'SKU', N'2160722214753', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT53', N'SKU', N'3679445187644', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT54', N'SKU', N'4156930625878', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT55', N'SKU', N'5922433248420', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT56', N'SKU', N'8824316765215', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'Chức năng khác', N'Samsung Pay Thu nhỏ màn hình sử dụng một tay Trợ lý ảo Samsung Bixby Màn hình luôn hiển thị AOD Chặn tin nhắn Ghi âm cuộc gọi Chặn cuộc gọi Sạc pin nhanh Chạm 2 lần sáng màn hình Đèn pin Chuẩn Kháng nước, Chuẩn kháng bụi Dolby Audio Samsung DeX Nhân bản ', N'98')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT57', N'SKU', N'7631183244474', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT58', N'SKU', N'3744254386493', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT59', N'SKU', N'7352207416799', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT60', N'SKU', N'7516299415539', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT61', N'SKU', N'4436737169523', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT62', N'SKU', N'1778378341146', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT63', N'SKU', N'7672347962742', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT64', N'SKU', N'9178184255552', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT65', N'SKU', N'5806262056671', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT66', N'SKU', N'6219488335670', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT67', N'SKU', N'9953326620289', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT68', N'SKU', N'3839423548700', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT69', N'SKU', N'9407203177781', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT70', N'SKU', N'2793164407225', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT71', N'SKU', N'1853052031121', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT72', N'SKU', N'5903118724903', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT73', N'SKU', N'3402923034983', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT74', N'SKU', N'3151963352075', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT75', N'SKU', N'8051979371273', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT76', N'SKU', N'4068717539196', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT77', N'SKU', N'4905122613151', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT78', N'SKU', N'5367749626577', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT79', N'SKU', N'4096113166128', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT80', N'SKU', N'1240704606545', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT81', N'SKU', N'6796743475796', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT82', N'SKU', N'9136408087815', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT83', N'SKU', N'5800822205257', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT84', N'SKU', N'5807246169547', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT85', N'SKU', N'7578524602015', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT86', N'SKU', N'2037847077528', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT87', N'SKU', N'9658002718587', N'99')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT89', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Thương hiệu', N'BlackBerry', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT95', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Thương hiệu', N'Xiaomi', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Thương hiệu', N'Asus', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Thương hiệu', N'WIKO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT106', N'Thương hiệu', N'Masstel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Thương hiệu', N'OPPO', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Thương hiệu', N'Philips', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT117', N'Thương hiệu', N'Samsung', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Thương hiệu', N'Coolpad', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Thương hiệu', N'Nokia', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Thương hiệu', N'Honor', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Thương hiệu', N'Itel', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Thương hiệu', N'Bphone', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Thương hiệu', N'BlackBerry', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Thương hiệu', N'Apple', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Thương hiệu', N'Realme', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Thương hiệu', N'Vivo', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT129', N'Thương hiệu', N'Black Shark', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Thương hiệu', N'Nony', N'1')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Dung lượng pin', N'3410mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Dung lượng pin', N'4500mAh (TYP)', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Dung lượng pin', N'3750mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Dung lượng pin', N'3190 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Dung lượng pin', N'3800mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Dung lượng pin', N'2300 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Dung lượng pin', N'3340mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Dung lượng pin', N'2700mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Dung lượng pin', N'2050 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Dung lượng pin', N'3000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Dung lượng pin', N'3300mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Dung lượng pin', N'4030 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Dung lượng pin', N'2300 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Dung lượng pin', N'3300mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT138', N'Dung lượng pin', N'2200', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'Dung lượng pin', N'5000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Dung lượng pin', N'3200 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT143', N'Dung lượng pin', N'2500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Dung lượng pin', N'4100mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Dung lượng pin', N'3315 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Dung lượng pin', N'3400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Dung lượng pin', N'2050mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Dung lượng pin', N'2716 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Dung lượng pin', N'3100 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Dung lượng pin', N'4230 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Dung lượng pin', N'4000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Dung lượng pin', N'3650mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Dung lượng pin', N'3300mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Dung lượng pin', N'3700mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Dung lượng pin', N'2716mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Dung lượng pin', N'4065 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Dung lượng pin', N'3300mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Dung lượng pin', N'4045 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'Dung lượng pin', N'4000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Dung lượng pin', N'2150mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Dung lượng pin', N'1950mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Dung lượng pin', N'2000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Dung lượng pin', N'2500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Dung lượng pin', N'2500mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Dung lượng pin', N'3500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Dung lượng pin', N'3100 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'Dung lượng pin', N'6350 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Dung lượng pin', N'3200 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Dung lượng pin', N'2716mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Dung lượng pin', N'2', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Dung lượng pin', N'3260mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Dung lượng pin', N'2350mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Dung lượng pin', N'3730 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Dung lượng pin', N'3200mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Dung lượng pin', N'3000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Dung lượng pin', N'3020 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Dung lượng pin', N'2900 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Dung lượng pin', N'2000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT194', N'Dung lượng pin', N'4000 (hỗ trợ sạc nhanh)', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT197', N'Dung lượng pin', N'5500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Dung lượng pin', N'2800 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Dung lượng pin', N'3000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT201', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Dung lượng pin', N'2400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Dung lượng pin', N'2000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Dung lượng pin', N'2400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Dung lượng pin', N'3000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Dung lượng pin', N'4.200mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Dung lượng pin', N'2050 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Dung lượng pin', N'3400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT211', N'Dung lượng pin', N'4200 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Dung lượng pin', N'4045 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Dung lượng pin', N'3750mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT214', N'Dung lượng pin', N'3650 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Dung lượng pin', N'3050 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Dung lượng pin', N'3200 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Dung lượng pin', N'2400 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Dung lượng pin', N'3045', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT220', N'Dung lượng pin', N'2800mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Dung lượng pin', N'2500mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Dung lượng pin', N'2500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Dung lượng pin', N'3.180 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT224', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Dung lượng pin', N'4230mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT226', N'Dung lượng pin', N'5000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Dung lượng pin', N'2000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Dung lượng pin', N'2500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT229', N'Dung lượng pin', N'40000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Dung lượng pin', N'2800mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Dung lượng pin', N'3750 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Dung lượng pin', N'3000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Dung lượng pin', N'2400mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Dung lượng pin', N'5000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT238', N'Dung lượng pin', N'3000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Dung lượng pin', N'2250', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Dung lượng pin', N'2500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Dung lượng pin', N'2000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Dung lượng pin', N'3000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Dung lượng pin', N'2800', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Dung lượng pin', N'2250', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Dung lượng pin', N'2300mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT246', N'Dung lượng pin', N'2400', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Dung lượng pin', N'4030 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Dung lượng pin', N'3.200 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Dung lượng pin', N'2020', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Dung lượng pin', N'3000mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Dung lượng pin', N'2500 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Dung lượng pin', N'4000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Dung lượng pin', N'2000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT255', N'Dung lượng pin', N'4000', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Dung lượng pin', N'1800 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Dung lượng pin', N'2200', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Dung lượng pin', N'2000 mAh', N'31')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Loại pin', N'Polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Loại pin', N'Pin chuẩn Li Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Loại pin', N'Lion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT165', N'Loại pin', N'Nguyên khối', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Loại pin', N'Polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT168', N'Loại pin', N'Pin rời Li-ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT171', N'Loại pin', N'Pin Li-polymer không thể tháo rời.', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT175', N'Loại pin', N'Pin Li-polymer không thể tháo rời.', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Loại pin', N'Lithium polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Loại pin', N'Lion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT181', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT189', N'Loại pin', N'li-po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Loại pin', N'-', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT194', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT197', N'Loại pin', N'Pin Li-polymer không thể tháo rời.', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Loại pin', N'LI-ION', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Loại pin', N'Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Loại pin', N'Lithium polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT214', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Loại pin', N'Polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Loại pin', N'Lithium Polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Loại pin', N'Lion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT224', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT226', N'Loại pin', N'Pin Li-polymer không thể tháo rời.', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT229', N'Loại pin', N'Chuẩn Lion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Loại pin', N'Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Loại pin', N'Lithium - Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Loại pin', N'Li-polymer', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT246', N'Loại pin', N'LI-ION', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Loại pin', N'Pin chuẩn Li-Po', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Loại pin', N'Li-on Polyme', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Loại pin', N'Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Loại pin', N'Pin chuẩn Li-Ion', N'19')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Pin có thể tháo rời', N'Không', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Pin có thể tháo rời', N'Pin liền', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Pin có thể tháo rời', N'Có', N'20')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Kết nối dữ liệu', N'3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Kết nối dữ liệu', N'Bluetooth, Wifi, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, GPRS, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT103', N'Kết nối dữ liệu', N'2G, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, GPRS, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT109', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Kết nối dữ liệu', N'3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Kết nối dữ liệu', N'Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Kết nối dữ liệu', N'Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Kết nối dữ liệu', N'Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Kết nối dữ liệu', N'Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Kết nối dữ liệu', N'Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Kết nối dữ liệu', N'Bluetooth, Wifi, LTE (4G) Cat 6 **', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Kết nối dữ liệu', N'Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Kết nối dữ liệu', N'4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Kết nối dữ liệu', N'Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Kết nối dữ liệu', N'Bluetooth, Wifi', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Kết nối dữ liệu', N'Bluetooth, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS, 2.5G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Kết nối dữ liệu', N'4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT186', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS, 3.5G, 2.5G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Kết nối dữ liệu', N'Bluetooth, Wifi, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT205', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G, NFC', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Kết nối dữ liệu', N'Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, GPRS', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Kết nối dữ liệu', N'Hồng ngoại, Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Kết nối dữ liệu', N'Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, GPRS, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Kết nối dữ liệu', N'3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 4G, LTE (4G) Cat 6 **', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, 2G, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Kết nối dữ liệu', N'Wifi, 3G, 2G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G, GPRS, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Kết nối dữ liệu', N'Bluetooth, Wifi, 4G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Kết nối dữ liệu', N'3G', N'21')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'WIFI', N'Bluetooth, Wifi, 3G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'WIFI', N'Bluetooth, Wifi, 3G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'WIFI', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'WIFI', N'Wifi', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'WIFI', N'Bluetooth, Wifi, 3G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'WIFI', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'WIFI', N'Wifi, 3G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'WIFI', N'Bluetooth, Wifi, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'WIFI', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'WIFI', N'Bluetooth, Wifi, 3G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'WIFI', N'Bluetooth, Wifi, 3G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'WIFI', N'Bluetooth, Wifi, 3G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'WIFI', N'Bluetooth, Wifi, 3G, 4G, LTE (4G) Cat 6 **', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'WIFI', N'Bluetooth, Wifi, 3G, 2G, 4G', N'22')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'GPS', N'Yes, with A-GPS, GLONASS, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'GPS', N'GPS/AGPS/Glonass', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'GPS', N'Có, với A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'GPS', N'Có, với A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'GPS', N'GPS, A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT133', N'GPS', N'Có, với A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT139', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'GPS', N'Yes, with A-GPS, GLONASS, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'GPS', N'GPS, GLONASS, Beidou', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'GPS', N'Không', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'GPS', N'Yes, with A-GPS, GLONASS, BDS2', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'GPS', N'Có, hỗ trợ A-GPS, GLONASS, BDS, GALILEO', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT160', N'GPS', N'Có, với A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'GPS', N'Có, với A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'GPS', N'A-GPS, GLONASS, Beidou', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'GPS', N'A-GPS, GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'GPS', N'GPS/A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'GPS', N'A-GPS, GLONASS, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'GPS', N'Yes, with A-GPS, GLONASS, GALILEO, QZSS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'GPS', N'GPS/AGPS/Glonass/BeiDou/Galileo', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'GPS', N'A-GPS, GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'GPS', N'GPS/AGPS+GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'GPS', N'Yes, with A-GPS, GLONASS, BDS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'GPS', N'GPS/A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'GPS', N'GPS/GLONASS/AGPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'GPS', N'Có', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'GPS', N'GPS/GLONASS/AGPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'GPS', N'GPS/A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'GPS', N'A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'GPS', N'A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'GPS', N'BDS, A-GPS, GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'GPS', N'GPS/A-GPS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'GPS', N'GPS/A', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'GPS', N'GPS/AGPS+GLONASS', N'23')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, 4G, NFC', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT126', N'BLUETOOTH', N'5.0, A2DP, LE', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'BLUETOOTH', N'Bluetooth, Wifi, 3G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'BLUETOOTH', N'A2DP, LE, v5.0', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'BLUETOOTH', N'Bluetooth, Wifi', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, 2G, GPRS, 2.5G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'BLUETOOTH', N'v4.0, A2DP', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'BLUETOOTH', N'Bluetooth, Wifi, 3G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'BLUETOOTH', N'Bluetooth 4.2', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'BLUETOOTH', N'Bluetooth, Wifi, 3G, GPRS, 4G', N'24')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Cổng sạc', N'microUSB 2.0', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Cổng sạc', N'MicroUSB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Cổng sạc', N'Micro', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Cổng sạc', N'Linghtning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Cổng sạc', N'3.0, Type-C 1.0, USB On-The-Go', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Cổng sạc', N'Type-C 1.0', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Cổng sạc', N'USB Type-C 1.0', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Cổng sạc', N'USB Type C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT156', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT166', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT172', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Cổng sạc', N'Lightning', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Cổng sạc', N'Micros USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Cổng sạc', N'Micros USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Cổng sạc', N'MicroUSB V2.0', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Cổng sạc', N'MicroUSB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Cổng sạc', N'microUSB 2.0', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Cổng sạc', N'Micro USB 2.0', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT248', N'Cổng sạc', N'MicroUSB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Cổng sạc', N'USB Type-C', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Cổng sạc', N'Micro USB', N'25')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT91', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT92', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Jack tai nghe', N'USB Type-C', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT101', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT104', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT113', N'Jack tai nghe', N'Linghtning', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT120', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT132', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT153', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT154', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Jack tai nghe', N'USB Type-C', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Jack tai nghe', N'Không', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Jack tai nghe', N'Lightning', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Jack tai nghe', N'3', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT225', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT235', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT241', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Jack tai nghe', N'3.5mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Jack tai nghe', N'3.5 mm', N'26')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Xem phim', N'H.265, H.264(MPEG4-AVC), DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Xem phim', N'H.265, 3GP, MP4, AVI, H.263, H.264(MPEG4-AVC), DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Xem phim', N'WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Xem phim', N'3GP, MP4, AVI, WMV, DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Xem phim', N'H.265, 3GP, MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Xem phim', N'MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Xem phim', N'MP4/H.264 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Xem phim', N'3GP, MP4, AVI, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Xem phim', N'3GP, MP4, H.264(MPEG4-AVC), Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Xem phim', N'3GP, MP4, MPEG4, H.263, H.264 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Xem phim', N'3GP, MP4, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Xem phim', N'DivX/Xvid/MP4/H.265 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Xem phim', N'MP4, 3GP, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Xem phim', N'3GP, H.264, MKV, MOV, DivX, AVI, WMV, FLV, MP4, H.263', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Xem phim', N'3GP, MP4, MPEG4, H.263, H.264 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Xem phim', N'H.263, H264, 3GI, MP4, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Xem phim', N'WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Xem phim', N'MP4, AVI, WMV, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Xem phim', N'XviD/MP4/H.265 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Xem phim', N'MP4, 3GP, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Xem phim', N'MP4, AVI, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Xem phim', N'H.265, 3GP, MP4, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Xem phim', N'3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Xem phim', N'3GP, MP4, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Xem phim', N'WMV, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Xem phim', N'3GP, MP4, AVI, WMV, DivX, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Xem phim', N'MP4, 3GP, AVI, TS, MKV, FLV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Xem phim', N'3GPP, MP4 , 3GP, H.264', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Xem phim', N'MP4, 3GP, MOV, MKV, AVI, FLV, MPEG', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Xem phim', N'Xem phim, Nghe nhạc, Ghi âm. FM radio, Đèn pin', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Xem phim', N'MP4,3GP,AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Xem phim', N'WMV/RV/MP4/3GP', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Xem phim', N'3GP, MP4, AVI, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Xem phim', N'MP4/H.264 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Xem phim', N'3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Xem phim', N'DivX/XviD/MP4/H.264/WMV player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Xem phim', N'3GP, MP4, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Xem phim', N'M4V, MP4, MOV, AVI, 3GP, 3G2, FLV, MKV, WEBM', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Xem phim', N'MP4/H.265 player', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Xem phim', N'MP4, 3GP', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Xem phim', N'MPEG-4, 3GP, 3G2, MOV, H264, H265', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Xem phim', N'H.265, 3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Xem phim', N'TRUE', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Xem phim', N'3GP, MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Xem phim', N'M4V, MP4, MOV, AVI, 3GP, 3G2, FLV, MKV, WEBM', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Xem phim', N'MPEG-4, MJPEG, MPEG-2, VP8, VP9', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Xem phim', N'Có', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Xem phim', N'H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Xem phim', N'MPEG-4, MJPEG, MPEG-2, VP8, VP9', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Xem phim', N'3GP, MP4, AVI, WMV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Xem phim', N'3GP, MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Xem phim', N'M4V, MP4, MOV, AVI, 3GP, 3G2, FLV, MKV, WEBM', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Xem phim', N'MP4,3GP, H.263, H.264(MPEG4-AVC)', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Xem phim', N'AVI, MP4 , 3GP, H.264', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Xem phim', N'MP4, AVI', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Xem phim', N'MPEG-4, 3GP, 3G2, MOV, H264, H263', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Xem phim', N'MP4, M4V', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Xem phim', N'MP4,MOV,AVI,3GP,3G2,FLV,MKV', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT260', N'Xem phim', N'MP4', N'27')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT90', N'Nghe nhạc', N'MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT93', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT94', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC++, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT96', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT97', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT98', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT99', N'Nghe nhạc', N'Midi, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT100', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT102', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT105', N'Nghe nhạc', N'AMR, MP3, WAV, AAC, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT107', N'Nghe nhạc', N'Midi, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT108', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT110', N'Nghe nhạc', N'MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT111', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT112', N'Nghe nhạc', N'MP3/eAAC+/WAV/Flac player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT114', N'Nghe nhạc', N'MP3, WAV, WMA, AAC+, eAAC+, OGG', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT115', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT116', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT118', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT119', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT121', N'Nghe nhạc', N'Lossless, AMR, MP3, WAV, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT122', N'Nghe nhạc', N'Lossless, Midi, MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT123', N'Nghe nhạc', N'MP3, AAC, AAC+, eAAC+, WMA, MIDI, WAV, AC3, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT124', N'Nghe nhạc', N'MP3, WAV, WMA, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT125', N'Nghe nhạc', N'MP3/WAV/eAAC+/FlAC player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT127', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT128', N'Nghe nhạc', N'WAV, MP3, AMR, MIDI, APE, FLAC, Vorbis', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT130', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT131', N'Nghe nhạc', N'WAV, eAAC+, AAC+, OGG, FLAC, MIDI, WMA, MP3, AMR, AAC, AVI', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT134', N'Nghe nhạc', N'MP3, AAC, AAC+, eAAC+, WMA, MIDI, WAV, AC3, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT135', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT137', N'Nghe nhạc', N'Midi, MP3, AAC, AMR, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT140', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT141', N'Nghe nhạc', N'AMR, MP3, WAV, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT142', N'Nghe nhạc', N'MP3/WAV/eAAC+/Flac player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT144', N'Nghe nhạc', N'WAV, MP3, MP2, AMR-NB, AMR-WB, MIDI, Vorbis, APE, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT145', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT146', N'Nghe nhạc', N'MP3, WAV, AAC, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT147', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT148', N'Nghe nhạc', N'Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT149', N'Nghe nhạc', N'MP3, WAV, AAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT150', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT151', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT152', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT155', N'Nghe nhạc', N'MP3, WAV, AAC, AAC+, AAC++, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT157', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT158', N'Nghe nhạc', N'MP3, WAV, WMA, eAAC+, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT161', N'Nghe nhạc', N'Midi, AMR, MP3, WAV, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT162', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT163', N'Nghe nhạc', N'Midi, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT164', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT167', N'Nghe nhạc', N'WAV, MP3, MP2, AMR-NB, AMR-WB, MIDI, Vorbis, APE, FLAC, ogg', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT169', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT170', N'Nghe nhạc', N'MP3, Midi, AAC, AMR', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT173', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT174', N'Nghe nhạc', N'FLAC, MP3, ACC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT176', N'Nghe nhạc', N'Xem phim, Nghe nhạc, Ghi âm. FM radio, Đèn pin', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT177', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT178', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT179', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT180', N'Nghe nhạc', N'WAV, MP3, AMR-NB, AMR-WB, MIDI, APE, FLAC, Vorbis, APE/MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT182', N'Nghe nhạc', N'MP3/WMA/WAV/RA/AAC/M4A', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT184', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT187', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT188', N'Nghe nhạc', N'MP3/eAAC+/WAV/Flac player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT190', N'Nghe nhạc', N'Lossless, Midi, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+, OGG, AC3, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT191', N'Nghe nhạc', N'MP3/WAV/eAAC+/FLAC player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT192', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT196', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT198', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT200', N'Nghe nhạc', N'MP3, AAC, WAV, M4A, OGG, OGA, AMR, AWB, FLAC, MID, MIDI, XMF, IMY, RTTTL, RTX, OTA, MP4, 3GP', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT202', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT203', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT204', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT206', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT207', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT208', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT209', N'Nghe nhạc', N'MP3/WAV/AAX+/AIFF/Apple Lossless player', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT212', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT213', N'Nghe nhạc', N'mp3, mp4, 4gp, ogg, amr, aac, flac, wav,midi', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT215', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT216', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT217', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT218', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT219', N'Nghe nhạc', N'MP3, FLAC, WAV, Ogg, MIDI, 3GP', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT221', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT222', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT223', N'Nghe nhạc', N'Lossless, MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT227', N'Nghe nhạc', N'MP3, WAV, WMA, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT228', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT230', N'Nghe nhạc', N'TRUE', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT231', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT232', N'Nghe nhạc', N'MP3', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT233', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT234', N'Nghe nhạc', N'MP3, AAC, WAV, M4A, OGG, OGA, AMR, AWB, FLAC, MID, MIDI, XMF, IMY, RTTTL, RTX, OTA, MP4, 3GP', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT236', N'Nghe nhạc', N'AMR, MP3, WAV, WMA, AAC, OGG, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT239', N'Nghe nhạc', N'MP3, MP2, MIDI, VORBIS, APE, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT240', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT242', N'Nghe nhạc', N'Có', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT243', N'Nghe nhạc', N'Lossless, Midi, MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT244', N'Nghe nhạc', N'MP3, MP2, MIDI, VORBIS, APE, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT245', N'Nghe nhạc', N'MP3, WAV, WMA', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT247', N'Nghe nhạc', N'AMR, Midi, MP3, WAV, FLAC', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT249', N'Nghe nhạc', N'MP3, AAC, WAV, M4A, OGG, AMR, FLAC, MID, MIDI, MP4, 3GP', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT250', N'Nghe nhạc', N'MP3, WAV, WMA, eAAC+', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT251', N'Nghe nhạc', N'Mp3, WAV, AAC, AMR', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT252', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT254', N'Nghe nhạc', N'MP3, FLAC, WAV, Ogg, MIDI, 3GP', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT256', N'Nghe nhạc', N'MP3, WAV', N'28')
GO

INSERT INTO [project_2019].[information_product] VALUES (N'DT259', N'Nghe nhạc', N'MP3,AAC,WAV,WMA,AMR,FLAC,MIDI', N'28')
GO


-- ----------------------------
-- Table structure for log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[log]') AND type IN ('U'))
	DROP TABLE [project_2019].[log]
GO

CREATE TABLE [project_2019].[log] (
  [IDLOG] int  IDENTITY(1,1) NOT NULL,
  [CONTROLLER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACTION] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IDACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IPADDRESS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LEVEL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CREATEAT] datetime  NULL,
  [MESSAGE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [project_2019].[log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of log
-- ----------------------------
SET IDENTITY_INSERT [project_2019].[log] ON
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'1', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-05 23:22:08.277', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'2', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-05 23:53:15.103', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'3', N'Home', N'Index', NULL, N'::1', NULL, N'2020-08-05 23:53:17.173', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'4', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-05 23:53:28.527', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'5', N'Home', N'Login', NULL, N'::1', N'ALERT', N'2020-08-05 23:53:28.567', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'6', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-05 23:59:07.333', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'7', N'Home', N'Index', NULL, N'::1', NULL, N'2020-08-05 23:59:07.343', NULL)
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'8', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:07:19.297', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'9', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:07:19.877', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'10', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-06 20:07:42.057', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'11', N'Home', N'Login', N'TK3', N'::1', N'INFO', N'2020-08-06 20:07:42.110', N'OnActionExecuted:  Login succcess')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'12', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 20:07:42.147', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'13', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 20:07:42.147', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'14', N'Home', N'LogOut', N'TK3', N'::1', N'INFO', N'2020-08-06 20:08:28.377', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'15', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:28.380', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'16', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:30.000', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'17', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:30.100', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'18', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:32.367', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'19', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:32.370', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'20', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:33.383', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'21', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:33.540', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'22', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:33.640', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'23', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:33.643', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'24', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:46.260', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'25', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:08:46.263', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'26', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:09:06.353', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'27', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 20:09:06.353', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'28', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:09:07.500', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'29', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:09:07.503', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'30', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:46:59.087', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'31', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:46:59.743', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'32', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:47:27.467', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'33', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 20:47:27.470', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'34', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:14:23.813', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'35', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:14:24.520', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'36', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:16:41.157', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'37', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:16:42.937', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'38', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:16:50.390', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'39', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:16:50.393', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'40', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:16:55.527', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'41', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:16:55.530', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'42', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:17:23.343', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'43', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:17:25.233', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'44', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:28:37.293', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'45', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:28:37.313', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'46', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:28:46.417', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'47', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:28:46.433', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'48', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:28:56.133', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'49', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:28:56.560', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'50', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-06 21:29:08.717', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'51', N'Home', N'Login', N'TK3', N'::1', N'INFO', N'2020-08-06 21:29:08.773', N'OnActionExecuted:  Login succcess')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'52', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:29:08.810', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'53', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:29:08.813', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'54', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:30:17.200', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'55', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:30:17.207', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'56', N'Home', N'LogOut', N'TK3', N'::1', N'INFO', N'2020-08-06 21:30:26.883', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'57', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 21:30:26.890', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'58', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:30:36.820', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'59', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:30:36.827', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'60', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:32:06.447', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'61', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:32:06.447', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'62', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-06 21:32:21.540', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'63', N'Home', N'Login', N'TK3', N'::1', N'INFO', N'2020-08-06 21:32:21.570', N'OnActionExecuted:  Login succcess')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'64', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:32:21.607', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'65', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:32:21.607', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'66', N'Home', N'LogOut', N'TK3', N'::1', N'INFO', N'2020-08-06 21:32:28.303', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'67', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 21:32:28.327', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'68', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:04.493', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'69', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:04.500', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'70', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:19.910', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'71', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:22.003', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'72', N'Product', N'ProductDetail', NULL, N'::1', N'ALERT', N'2020-08-06 21:34:32.700', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'73', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:32.813', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'74', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:32.837', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'75', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-06 21:34:44.913', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'76', N'Home', N'Login', N'TK3', N'::1', N'INFO', N'2020-08-06 21:34:45.027', N'OnActionExecuted:  Login succcess')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'77', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:34:45.083', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'78', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:34:45.083', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'79', N'Home', N'LogOut', N'TK3', N'::1', N'INFO', N'2020-08-06 21:34:51.977', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'80', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 21:34:52.000', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'81', N'Product', N'ProductDetail', NULL, N'::1', N'ALERT', N'2020-08-06 21:34:56.387', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'82', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:56.440', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'83', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:34:56.443', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'84', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:36:17.070', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'85', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:36:19.433', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'86', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-06 21:36:36.910', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'87', N'Home', N'Login', N'TK3', N'::1', N'INFO', N'2020-08-06 21:36:37.020', N'OnActionExecuted:  Login succcess')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'88', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:36:37.060', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'89', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:36:37.063', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'90', N'Home', N'LogOut', N'TK3', N'::1', N'INFO', N'2020-08-06 21:36:49.903', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'91', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 21:36:49.907', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'92', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:36:51.607', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'93', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:36:51.627', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'94', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:36:51.630', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'95', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:37:02.790', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'96', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:37:02.807', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'97', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:37:02.810', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'98', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:37:49.780', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'99', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:37:49.793', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'100', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:37:49.797', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'101', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:38:05.487', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'102', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:38:05.507', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'103', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:38:05.507', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'104', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:38:20.590', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'105', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:38:20.610', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'106', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:38:20.613', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'107', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:40:32.783', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'108', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:40:32.807', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'109', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:40:32.817', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'110', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:40:44.337', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'111', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:40:44.340', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'112', N'Home', N'Login', NULL, N'::1', N'INFO', N'2020-08-06 21:41:06.233', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'113', N'Home', N'Login', N'TK3', N'::1', N'INFO', N'2020-08-06 21:41:06.247', N'OnActionExecuted:  Login succcess')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'114', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:41:06.273', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'115', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:41:06.277', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'116', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:41:40.957', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'117', N'Home', N'Index', N'TK3', N'::1', N'INFO', N'2020-08-06 21:41:40.977', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'118', N'Home', N'LogOut', N'TK3', N'::1', N'INFO', N'2020-08-06 21:41:43.377', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'119', N'Home', N'LogOut', NULL, N'::1', N'INFO', N'2020-08-06 21:41:43.403', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'120', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:41:49.213', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'121', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:41:49.227', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'122', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:41:49.227', N'OnActionExecuted:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'123', N'Cart', N'AddCart', NULL, N'::1', N'ALERT', N'2020-08-06 21:41:58.463', N'OnActionExecuting:  User not login before go to this page')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'124', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:41:58.493', N'OnActionExecuting:  OK')
GO

INSERT INTO [project_2019].[log] ([IDLOG], [CONTROLLER], [ACTION], [IDACCOUNT], [IPADDRESS], [LEVEL], [CREATEAT], [MESSAGE]) VALUES (N'125', N'Home', N'Index', NULL, N'::1', N'INFO', N'2020-08-06 21:41:58.497', N'OnActionExecuted:  OK')
GO

SET IDENTITY_INSERT [project_2019].[log] OFF
GO


-- ----------------------------
-- Table structure for mailpassword
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[mailpassword]') AND type IN ('U'))
	DROP TABLE [project_2019].[mailpassword]
GO

CREATE TABLE [project_2019].[mailpassword] (
  [key] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_ACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [project_2019].[mailpassword] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for memory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[memory]') AND type IN ('U'))
	DROP TABLE [project_2019].[memory]
GO

CREATE TABLE [project_2019].[memory] (
  [MEMORY] int  NOT NULL
)
GO

ALTER TABLE [project_2019].[memory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of memory
-- ----------------------------
INSERT INTO [project_2019].[memory] VALUES (N'16')
GO

INSERT INTO [project_2019].[memory] VALUES (N'32')
GO

INSERT INTO [project_2019].[memory] VALUES (N'64')
GO

INSERT INTO [project_2019].[memory] VALUES (N'128')
GO

INSERT INTO [project_2019].[memory] VALUES (N'256')
GO

INSERT INTO [project_2019].[memory] VALUES (N'512')
GO


-- ----------------------------
-- Table structure for order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[order]') AND type IN ('U'))
	DROP TABLE [project_2019].[order]
GO

CREATE TABLE [project_2019].[order] (
  [ID_ORDER] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_USER] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [PRICE] decimal(10) DEFAULT NULL NULL,
  [STATUS] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'0') NULL,
  [HOTEN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [DIACHI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [SDT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO [project_2019].[order] VALUES (N'DH1', N'TK20', N'1539000', N'2', N'Ngô Thị Thoa', N'265/4 Bùi Đình Túy, F.24, Q.BT', N'01203552817')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH10', N'TK10', N'17272000', N'0', N'Nguyễn Hữu Toàn', N'274 Phòng 14 Nam Kỳ Khởi Nghĩa, F.8, Q.3', N'01203552807')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH11', N'TK10', N'1485000', N'2', N'Nguyễn Hữu Toàn', N'274 Phòng 14 Nam Kỳ Khởi Nghĩa, F.8, Q.3', N'01203552807')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH12', N'TK10', N'17272000', N'1', N'Nguyễn Hữu Toàn', N'274 Phòng 14 Nam Kỳ Khởi Nghĩa, F.8, Q.3', N'01203552807')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH13', N'TK1', N'5211000', N'0', N'Lê Tấn Hoàng', N'Trường đại học Nông Lâm', N'0399115950')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH2', N'TK20', N'1539000', N'3', N'Ngô Thị Thoa', N'265/4 Bùi Đình Túy, F.24, Q.BT', N'01203552817')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH3', N'TK4', N'4185000', N'1', N'Nguyễn Hà Ngọc Trân', N'351/18A Lê Đại Hành F.11, Q.11', N'01203552801')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH4', N'TK4', N'36111000', N'0', N'Nguyễn Hà Ngọc Trân 2', N'351/18A Lê Đại Hành F.11, Q.11', N'01203552801')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH5', N'TK25', N'33109000', N'0', N'Lê Quang Duy', N'128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh.', N'0123456789')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH6', N'TK25', N'21141000', N'0', N'Lê Quang Duy', N'128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh.', N'0123456789')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH7', N'TK25', N'1026000', N'0', N'Lê Quang Duy', N'128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh.', N'0123456789')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH8', N'TK26', N'5685000', N'0', N'Nguyễn Thí Lớn', N'Địa chỉ là', N'0123456789')
GO

INSERT INTO [project_2019].[order] VALUES (N'DH9', N'TK10', N'5685000', N'3', N'Nguyễn Hữu Toàn', N'274 Phòng 14 Nam Kỳ Khởi Nghĩa, F.8, Q.3', N'01203552807')
GO


-- ----------------------------
-- Table structure for os
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[os]') AND type IN ('U'))
	DROP TABLE [project_2019].[os]
GO

CREATE TABLE [project_2019].[os] (
  [OS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NUMBER] decimal(38) DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[os] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of os
-- ----------------------------
INSERT INTO [project_2019].[os] VALUES (N'Android', N'0')
GO

INSERT INTO [project_2019].[os] VALUES (N'IPhone', N'0')
GO

INSERT INTO [project_2019].[os] VALUES (N'Mac', N'0')
GO

INSERT INTO [project_2019].[os] VALUES (N'Unix', N'0')
GO

INSERT INTO [project_2019].[os] VALUES (N'UnKnown', N'0')
GO

INSERT INTO [project_2019].[os] VALUES (N'Windows', N'420')
GO


-- ----------------------------
-- Table structure for product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[product]') AND type IN ('U'))
	DROP TABLE [project_2019].[product]
GO

CREATE TABLE [project_2019].[product] (
  [ID_PRODUCT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NAME] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [IMG] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [IMG2] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [IMG3] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [ID_BRAND] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [MEMORY] int DEFAULT NULL NULL,
  [RAM] int DEFAULT NULL NULL,
  [PRICE] int DEFAULT NULL NULL,
  [DESCRIPTION] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [AMOUNT] int DEFAULT NULL NULL,
  [SALE_RATE] int DEFAULT NULL NULL,
  [DATE_SUBMITTED] datetime2(0) DEFAULT NULL NULL,
  [AMOUNT_SOLD] int DEFAULT NULL NULL,
  [OS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO [project_2019].[product] VALUES (N'DT1', N'Điện Thoại iPhone 11 Pro Max 64GB', N'iPhone_11_Pro_Max_64GB_1.png', N'iPhone_11_Pro_Max_64GB_2.png', N'iPhone_11_Pro_Max_64GB_3.png', N'APPLE', N'64', N'4', N'30890000', N'iPhone 11 Pro Max là mẫu smartphone cao cấp nhất của Apple được ra mắt năm 2019. Với thiết kế cao cấp, hệ thống camera 3 camera cùng cấu hình siêu mạnh mẽ thì iPhone 11 Pro Max chính là một chiếc smartphone đáp ứng mọi trải nghiệm của người dùng.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT10', N'Điện Thoại iPhone 11 Pro Max 256GB', N'iPhone_11_Pro_Max_256GB_1.png', N'iPhone_11_Pro_Max_256GB_2.png', N'iPhone_11_Pro_Max_256GB_3.png', N'APPLE', N'256', N'4', N'35490000', N'iPhone 11 Pro Max là sản phẩm dành cho những ai đang kiếm tìm sự hoàn hảo trong quá trình trải nghiệm điện thoại. Với chiếc iPhone này, Apple đã vươn tới đỉnh cao khi tinh chỉnh tối ưu mọi yếu tố bên trong như hiệu năng, camera, pin và thiết kế một cách t', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT100', N'Điện Thoại Asus L1', N'Asus_L1_1.png', N'Asus_L1_2.png', N'Asus_L1_3.png', N'ASUS', N'16', N'1', N'1590000', N'Bên cạnh Zenfone Live, thì trong năm nay, Asus cũng đã cho ra mắt một phiên bản khác của nó là Asus Zenfone Live L1. Mặc dù thiết bị thuộc phân khúc smartphone giá rẻ nhưng vẫn được trang bị màn hình 18 : 9 thời thượng, cấu hình phần cứng ấn tượng cùng nh', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT101', N'Điện Thoại Wiko View 3 Lite', N'Wiko_View_3_Lite_1.png', N'Wiko_View_3_Lite_2.png', N'Wiko_View_3_Lite_3.png', N'WIKO', N'32', N'2', N'1880000', N'iPhone 11 Pro Max là mẫu smartphone cao cấp nhất của Apple được ra mắt năm 2019. Với thiết kế cao cấp, hệ thống camera 3 camera cùng cấu hình siêu mạnh mẽ thì iPhone 11 Pro Max chính là một chiếc smartphone đáp ứng mọi trải nghiệm của người dùng.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT102', N'Điện Thoại Itel S13 Pro', N'Itel_S13_Pro_1.png', N'Itel_S13_Pro_2.png', N'Itel_S13_Pro_3.png', N'ITEL', N'16', N'2', N'1150000', N'Itel S13 Pro là mẫu smartphone giá rẻ phù hợp với người dùng có thu nhập thấp muốn trải nghiệm một các cơ bản những tính năng trên một chiếc smartphone "đời mới".', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT103', N'Điện Thoại Nokia 106', N'Nokia_106_1.png', N'Nokia_106_2.png', N'Nokia_106_3.png', N'NOKIA', N'0', N'0', N'359000', N'Nokia đã mang đến cho người dùng chiếc điện thoại phổ thông giá rẻ tiếp theo với cái tên Nokia 106 (2018) trong một thiết kế nhỏ gọn, đầm chắc và có thời lượng pin dùng ấn tượng.', N'25', N'25', N'2020-01-09 00:00:00', N'0', N'Cục Gạch')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT104', N'Điện Thoại OPPO F5', N'OPPO_F5_1.png', N'OPPO_F5_2.png', N'OPPO_F5_3.png', N'OPPO', N'32', N'4', N'3490000', N'OPPO F5, chuyên gia selfie mới nổi bật với màn hình tràn cạnh thời trang và camera tích hợp trí tuệ nhân tạo AI để càng chụp càng đẹp.', N'25', N'15', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT105', N'Điện Thoại Oppo R17 Pro', N'Oppo_R17_Pro_1.png', N'Oppo_R17_Pro_2.png', N'Oppo_R17_Pro_3.png', N'OPPO', N'128', N'8', N'9990000', N'OPPO R17 Pro có khả năng ghi lại những khoảnh khắc tuyệt đẹp vào ban đêm, với máy ảnh hai khẩu độ cao cấp, chống rung quang học OIS và nền tảng trí tuệ nhân tạo AI thông minh.', N'25', N'15', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT106', N'Điện thoại Smartphone Masstel X6', N'Smartphone_Masstel_X6_1.png', N'Smartphone_Masstel_X6_2.png', N'Smartphone_Masstel_X6_3.png', N'MASSTEL', N'0', N'0', N'1650000', N'Nếu bạn đang kiếm tìm một chiếc điện thoại thông minh xuất sắc trong tầm giá dưới 2 triệu đồng thì Masstel X6 chính là câu trả lời tối ưu nhất dành cho bạn khi hội tụ đủ mọi ưu điểm như thiết kế đẹp, cấu hình mạnh và chụp ảnh tốt.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT107', N'Điện Thoại Samsung Galaxy S10', N'Samsung_Galaxy_S10_1.png', N'Samsung_Galaxy_S10_2.png', N'Samsung_Galaxy_S10_3.png', N'SAMSUNG', N'128', N'8', N'20189000', N'Điện Thoại Samsung Galaxy S10 toát lên được thần thái sang chảnh, mảnh mai quyến rũ theo truyền thống bấy lâu nay của Samsung. Những góc cạnh bo tròn bóng bẩy, đi kèm diện tích mặt kính được tận dụng triệt để càng tôn lên những ưu điểm nhìn là mê, không t', N'25', N'20', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT108', N'Điện Thoại Realme C2', N'Realme_C2_1.png', N'Realme_C2_2.png', N'Realme_C2_3.png', N'REALME', N'16', N'2', N'2290000', N'Realme C2 2GB/16GB là phiên bản nâng cấp của mẫu Realme C1 từ rất thành công của Realme ở thị trường Việt Nam trong phân khúc smartphone giá rẻ.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT109', N'Điện Thoại Itel S33', N'Itel_S33_1.png', N'Itel_S33_2.png', N'Itel_S33_3.png', N'ITEL', N'16', N'1', N'1290000', N'Mức giá smartphone hiện nay đang ngày càng rẻ và việc sở hữu một chiếc điện thoại thông minh với ngoại hình bắt mắt nhưng có mức giá phải chăng đã không còn là một điều quá khó khăn, chiếc điện thoại Itel S33 mới ra mắt là một ví dụ như vậy.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT11', N'Điện Thoại Nokia 3.1', N'Nokia_3.1_1.png', N'Nokia_3.1_2.png', N'Nokia_3.1_3.png', N'NOKIA', N'16', N'2', N'1790000', N'Nokia 3.1 là chiếc smartphone giá rẻ kế thừa sự thành công của mẫu Nokia 3 - chiếc smartphone bán chạy nhất của hãng trong năm ngoái.', N'25', N'25', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT110', N'Điện Thoại OPPO F7 Youth', N'OPPO_F7_Youth_1.png', N'OPPO_F7_Youth_2.png', N'OPPO_F7_Youth_3.png', N'OPPO', N'64', N'4', N'3690000', N'OPPO F7 Youth là một phiên bản rút gọn của OPPO F7 không tai thỏ, không cảm biến vân tay, camera độ phân giải thấp hơn nhưng vẫn sở hữu cấu hình mạnh mẽ như người đàn anh trước đó.', N'25', N'15', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT111', N'Điện Thoại Vivo S1', N'Vivo_S1_1.png', N'Vivo_S1_2.png', N'Vivo_S1_3.png', N'VIVO', N'128', N'6', N'6390000', N'Vivo S1 là chiếc smartphone S series mới sở hữu thiết kế tuyệt đẹp, đi kèm hệ thống 3 camera sau, cùng giá bán khá hấp dẫn. Thiết kế thu hút ngay từ cái nhìn đầu tiên Nếu bạn là một người yêu thích cái đẹp thì chắc chắn Vivo S1 sẽ khiến bạn phải chú ý bởi', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT112', N'Điện Thoại Honor PLAY', N'Honor_PLAY_1.png', N'Honor_PLAY_2.png', N'Honor_PLAY_3.png', N'HONOR', N'64', N'4', N'6990000', N'Một sản phẩm đỉnh cao dành riêng cho game thủ với hiệu năng siêu mạnh và những tối ưu cho chơi game, đó chính là Honor Play.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT113', N'Điện Thoại iPhone 11 Pro 512GB', N'iPhone_11_Pro_512GB_1.png', N'iPhone_11_Pro_512GB_2.png', N'iPhone_11_Pro_512GB_3.png', N'APPLE', N'512', N'4', N'35990000', N'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT114', N'Điện Thoại Samsung Galaxy A9 (2018)', N'Samsung_Galaxy_A9_(2018)_1.png', N'Samsung_Galaxy_A9_(2018)_2.png', N'Samsung_Galaxy_A9_(2018)_3.png', N'SAMSUNG', N'128', N'6', N'10509000', N'Điện Thoại Samsung Galaxy A9 (2018) sở hữu phong cách thiết kế tương tự các anh em dòng Galaxy A của mình với khung viền kim loại chắc chắn cùng thân hình mảnh mai, uyển chuyển. Thân máy vẫn có các đường cong mềm mại bao bọc xung quanh mang đến cảm giác c', N'25', N'20', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT115', N'Điện Thoại Realme C2', N'Realme_C2_1.png', N'Realme_C2_2.png', N'Realme_C2_3.png', N'REALME', N'32', N'3', N'2690000', N'Realme C2 2GB/16GB là phiên bản nâng cấp của mẫu Realme C1 từ rất thành công của Realme ở thị trường Việt Nam trong phân khúc smartphone giá rẻ.', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT116', N'Điện Thoại Philips S327', N'Philips_S327_1.png', N'Philips_S327_2.png', N'Philips_S327_3.png', N'PHILIPS', N'16', N'2', N'1750000', N'Điện Thoại Samsung Galaxy A9 (2018) sở hữu phong cách thiết kế tương tự các anh em dòng Galaxy A của mình với khung viền kim loại chắc chắn cùng thân hình mảnh mai, uyển chuyển. Thân máy vẫn có các đường cong mềm mại bao bọc xung quanh mang đến cảm giác c', N'25', N'10', N'2020-01-09 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT117', N'Điện thoại Samsung Galaxy A20s', N'Samsung_Galaxy_A20s_1.png', N'Samsung_Galaxy_A20s_2.png', N'Samsung_Galaxy_A20s_3.png', N'SAMSUNG', N'0', N'0', N'3990000', N'Samsung Galaxy A20s là phiên bản kế nhiệm Galaxy A20 vừa được Samsung cho ra mắt. Galaxy A20s được dự đoán sử dụng chip Exynos 7884, cụm camera kép được nâng cấp cũng như màn hình giọt nước. Đây cũng là mẫu smartphone được kỳ vọng sẽ giúp Samsung tăng thị', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT118', N'Điện Thoại Coolpad N3C', N'Coolpad_N3C_1.png', N'Coolpad_N3C_2.png', N'Coolpad_N3C_3.png', N'COOLPAD', N'16', N'1', N'990000', N'Coolpad N3C là một chiếc smartphone mới tới từ Coolpad với thiết kế trẻ trung cùng hệ điều hành Android Go mới mẻ dành riêng cho những chiếc máy giá rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT119', N'Điện Thoại Coolpad Mega 5', N'Coolpad_Mega_5_1.png', N'Coolpad_Mega_5_2.png', N'Coolpad_Mega_5_3.png', N'COOLPAD', N'32', N'3', N'1490000', N'Coolpad Mega 5 đánh dấu sự trở lại của Coolpad tại thị trường Việt Nam với mức giá hấp dẫn nhưng vẫn mang nhiều trang bị thời thượng. Thiết kế màn hình tràn viền đẹp mắt Coolpad Mega 5 là chiếc smartphone cao cấp nhất được hãng giới thiệu trong lần trở lạ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT12', N'Điện Thoại Xiaomi Redmi 7A', N'Xiaomi_Redmi_7A_1.png', N'Xiaomi_Redmi_7A_2.png', N'Xiaomi_Redmi_7A_3.png', N'XIAOMI', N'16', N'2', N'1770000', N'Xiaomi Redmi 7A 2GB/32GB  là một chiếc smartphone theo phong cách truyền thống của Xiaomi, mang tới người dùng trải nghiệm Android ổn trên một chiếc máy có mức giá rất hấp dẫn.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT120', N'Điện Thoại Nokia 3.2', N'Nokia_3.2_1.png', N'Nokia_3.2_2.png', N'Nokia_3.2_3.png', N'NOKIA', N'16', N'2', N'2190000', N'Sau sự thành công của chiếc Nokia 3.1 thì Nokia tiếp tục rung ra phiên bản kế nhiệm là chiếc Nokia 3.2 32GB với kích thước màn hình lớn hơn một chút. Thiết kế cứng cáp, chắc chắn hơn Chiếc điện thoại Nokia này được thiết kế nguyên khối từ nhựa Polycarbona', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT121', N'Điện Thoại Honor 7X', N'Honor_7X_1.png', N'Honor_7X_2.png', N'Honor_7X_3.png', N'HONOR', N'64', N'4', N'5490000', N'Huawei Honor 7X là chiếc smartphone tầm trung với xu hướng màn hình 18:9 sở hữu mức giá bán hấp dẫn. Thiết kế quen thuộc Huawei Honor 7X sở hữu ngoại hình khá giống với người anh em Nova 2i đã ra mắt trước đó. Các góc cạnh của máy vẫn được bo cong mềm mại', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT122', N'Điện Thoại Itel S41', N'Itel_S41_1.png', N'Itel_S41_2.png', N'Itel_S41_3.png', N'ITEL', N'16', N'3', N'1290000', N'Itel S41 là chiếc smartphone giá rẻ RAM 3 GB hỗ trợ 4G LTE, cảm biến vân tay, được ra mắt nhân kỷ niệm 1 năm thương hiệu Itel gia nhập Việt Nam.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT123', N'Điện Thoại Itel A16', N'Itel_A16_1.png', N'Itel_A16_2.png', N'Itel_A16_3.png', N'ITEL', N'8', N'512', N'990000', N'Itel A16 Plus là một chiếc smartphone giá rẻ với những trang bị cơ bản phù hợp với người dùng muốn có một chiếc máy để trải nghiệm hệ điều hành Android.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT124', N'Điện Thoại Bphone 3', N'Bphone_3_1.png', N'Bphone_3_2.png', N'Bphone_3_3.png', N'BPHONE', N'32', N'3', N'6690000', N'Nếu như với 2 chiếc Bphone đời đầu nhiều người còn đánh giá đây chỉ là những chiếc máy để Bkav để "quảng bá thương hiệu" chứ chưa thực sự đáng sở hữu thì với Bphone 3 Bkav đã khiến nhiều người Việt thực sự "tự hào".', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT125', N'Điện Thoại Blackberry Key2 LE', N'Blackberry_Key2_LE_1.png', N'Blackberry_Key2_LE_2.png', N'Blackberry_Key2_LE_3.png', N'BLACKBERRY', N'64', N'4', N'8990000', N'Vừa được ra mắt tại triển lãm IFA 2018 tại Berlin, BlackBerry Key2 LE được kỳ vọng là sẽ thu hút tầng lớp doanh nhân và những người thích sử dụng smartphone có bàn phím vật lý quay trở lại với BlackBerry.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT126', N'Điện Thoại iPhone XS Max 256GB', N'iPhone_XS_Max_256GB_1.png', N'iPhone_XS_Max_256GB_2.png', N'iPhone_XS_Max_256GB_3.png', N'APPLE', N'256', N'4', N'27990000', N'iPhone XS Max 256GB mang trong mình sức mạnh phần cứng vượt trội được tối ưu hóa bởi hệ điều hành iOS, với kích thước màn hình rất lớn lên đến 6.5 inch chắc chắn sẽ mang đến cho người dùng những trải nghiệm vượt trội về mọi mặt so với các dòng iPhone khác', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT127', N'Điện Thoại Realme 2 Pro', N'Realme_2_Pro_1.png', N'Realme_2_Pro_2.png', N'Realme_2_Pro_3.png', N'REALME', N'64', N'4', N'3490000', N'Dòng điện thoại Realme đã chính thức ra mắt chiếc smartphone giá rẻ sở hữu cấu hình cao mang tên Realme 2 Pro với phiên bản RAM 4 GB và ROM 64 GB.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT128', N'Điện Thoại Vivo Y93', N'Vivo_Y93_1.png', N'Vivo_Y93_2.png', N'Vivo_Y93_3.png', N'VIVO', N'32', N'3', N'2679000', N'Vivo Y93 32GB là chiếc smartphone giá rẻ, nhưng vẫn sở hữu nhiều ưu điểm mới nhất cho người dùng hiện nay như pin khủng, màn hình tràn giọt nước hay camera kép xoá phông.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT129', N'Điện thoại Black Shark 2 Quốc Tế', N'Black_Shark_2_Quốc_Tế_1.png', N'Black_Shark_2_Quốc_Tế_2.png', N'Black_Shark_2_Quốc_Tế_3.png', N'BLACK SHARK', N'0', N'0', N'9899000', N'Ngày 30/7, Xiaomi đã cho ra mắt Xiaomi Black Shark 2 Pro là phiên bản nâng cấp nhẹ của black shark 2 đã ra mắt vào tháng 3. Black shark 2 Pro sẽ được trang bị chip Snapdragon 855+ như trên Asus ROG Phone 2 nhưng với một mức giá rẻ hơn rất nhiều.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT13', N'Điện Thoại Xiaomi Redmi Note 8', N'Xiaomi_Redmi_Note_8_1.png', N'Xiaomi_Redmi_Note_8_2.png', N'Xiaomi_Redmi_Note_8_3.png', N'XIAOMI', N'0', N'0', N'3790000', N'Xiaomi Redmi Note 8 4GB/64GB là chiếc smartphone tầm trung mới nhất của Xiaomi, chiếc máy này gây ấn tượng với cấu hình phần cứng mạnh mẽ, hệ thống 4 camera sau chất lượng và đi kèm giá bán cực kỳ hấp dẫn.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT130', N'Điện Thoại Nony B1', N'Nony_B1_1.png', N'Nony_B1_2.png', N'Nony_B1_3.png', N'NONY', N'16', N'2', N'1450000', N'Nony vừa cho ra mắt chiếc Smartphone giá cực rẻ. Nony B1 với thiết kế vỏ ngoài được sơn phủ kim loại sáng bóng mang dáng vẻ sang trọng và đẹp mắt mang dáng vẻ sang trọng và còn sở hữu vẻ ngoài nhỏ gọn, giúp bạn có thể cắm thật thoải mái và dễ dàng trong l', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT131', N'Điện Thoại Sharp R1', N'Sharp_R1_1.png', N'Sharp_R1_2.png', N'Sharp_R1_3.png', N'SHARP', N'32', N'3', N'1990000', N'Điện Thoại Sharp R1 được trang bị màn hình 5.2 inch, độ phân giải HD (1280 x 720 pixels) với công nghệ IPS nên máy đạt độ tương phản cao, màu sắc tươi sáng và góc nhìn rộng giúp người dùng trải nghiệm lý thú hơn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT132', N'Điện Thoại Nokia 3.2', N'Nokia_3.2_1.png', N'Nokia_3.2_2.png', N'Nokia_3.2_3.png', N'NOKIA', N'32', N'3', N'2990000', N'Sau sự thành công của chiếc Nokia 3.1 thì Nokia tiếp tục rung ra phiên bản kế nhiệm là chiếc Nokia 3.2 32GB với kích thước màn hình lớn hơn một chút. Thiết kế cứng cáp, chắc chắn hơn Chiếc điện thoại Nokia này được thiết kế nguyên khối từ nhựa Polycarbona', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT133', N'Điện Thoại iPhone XS Max 512GB', N'iPhone_XS_Max_512GB_1.png', N'iPhone_XS_Max_512GB_2.png', N'iPhone_XS_Max_512GB_3.png', N'APPLE', N'512', N'4', N'36720000', N'Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max 64 GB của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT134', N'Điện Thoại ITEL P32', N'ITEL_P32_1.png', N'ITEL_P32_2.png', N'ITEL_P32_3.png', N'ITEL', N'8', N'1', N'1890000', N'Itel P32 mang trong mình thiết kế trẻ trung, sở hữu nhiều màu sắc bắt mắt và đặc biệt là mức giá rất phải chăng hứa hẹn sẽ được rất nhiều các bạn học sinh sinh viên đón nhận.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT135', N'Điện Thoại Realme 2 Pro', N'Realme_2_Pro_1.png', N'Realme_2_Pro_2.png', N'Realme_2_Pro_3.png', N'REALME', N'128', N'8', N'4490000', N'Dòng điện thoại Realme đã chính thức ra mắt chiếc smartphone giá rẻ sở hữu cấu hình cao mang tên Realme 2 Pro với phiên bản RAM 4 GB và ROM 64 GB.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT136', N'Điện Thoại Xiaomi Redmi Note 8', N'Xiaomi_Redmi_Note_8_1.png', N'Xiaomi_Redmi_Note_8_2.png', N'Xiaomi_Redmi_Note_8_3.png', N'XIAOMI', N'0', N'0', N'4990000', N'Xiaomi Redmi Note 8 4GB/64GB là chiếc smartphone tầm trung mới nhất của Xiaomi, chiếc máy này gây ấn tượng với cấu hình phần cứng mạnh mẽ, hệ thống 4 camera sau chất lượng và đi kèm giá bán cực kỳ hấp dẫn.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT137', N'Điện Thoại Xiaomi Mi A2 Lite', N'Xiaomi_Mi_A2_Lite_1.png', N'Xiaomi_Mi_A2_Lite_2.png', N'Xiaomi_Mi_A2_Lite_3.png', N'XIAOMI', N'32', N'3', N'4990000', N'Kế thừa sự thành công từ người đàn anh Xiaomi Mi A1 thì Xiaomi tiếp tục giới thiệu tới người dùng phiên bản kế nhiệm là Xiaomi Mi A2 Lite và Xiaomi Mi A2 với nhiều cải tiến đáng giá.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT138', N'Điện thoại Wiko Sunny 3 Plus (W_k200)', N'Wiko_Sunny_3_Plus_(W_k200)_1.png', N'Wiko_Sunny_3_Plus_(W_k200)_2.png', N'Wiko_Sunny_3_Plus_(W_k200)_3.png', N'WIKO', N'0', N'0', N'1990000', N'Được nâng cấp từ Wiko Sunny 3, Wiko Sunny 3 Plus sở hữu màn hình lớn tỉ lệ mới mang đến trải nghiệm tuyệt vời trong tầm giá cực rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT139', N'Điện Thoại Vivo Y12', N'Vivo_Y12_1.png', N'Vivo_Y12_2.png', N'Vivo_Y12_3.png', N'VIVO', N'64', N'3', N'3479000', N'Vivo Y12 là chiếc smartphone tầm trung của Vivo vừa mới ra mắt, cấu hình ổn cũng như mức giá tốt vẫn là tiêu chí hàng đầu của chiếc máy này.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT14', N'Điện Thoại iPhone 11 128GB ', N'iPhone_11_128GB__1.png', N'iPhone_11_128GB__2.png', N'iPhone_11_128GB__3.png', N'APPLE', N'128', N'4', N'23490000', N'Được xem là phiên bản iPhone "giá rẻ" trong bộ 3 iPhone mới ra mắt nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT140', N'Điện Thoại OPPO Reno 2 ', N'OPPO_Reno_2_1.png', N'OPPO_Reno_2_2.png', N'OPPO_Reno_2_3.png', N'OPPO', N'0', N'8', N'12990000', N'Không lâu sau khi ra mắt Oppo Reno dòng điện thoại đặc biệt với thiết kế camera selfie vây cá mập, thì hãng lại làm người dùng đứng ngồi không yên khi ra mắt chiếc siêu phẩm tiếp theo mang tên Oppo Reno 2 cùng với Oppo Reno 2F và Oppo Reno 2Z. Và tất nhiê', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT141', N'Điện Thoại Oppo A5', N'Oppo_A5_1.png', N'Oppo_A5_2.png', N'Oppo_A5_3.png', N'OPPO', N'128', N'4', N'4790000', N'OPPO A5 (2020) 64GB là mẫu smartphone tầm trung với giá thành phải chăng nhưng được trang bị nhiều công nghệ hấp dẫn hứa hẹn sẽ "lấy được lòng" các bạn trẻ năng động, thời trang.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT142', N'Điện Thoại Xiaomi Mi Mix 3', N'Xiaomi_Mi_Mix_3_1.png', N'Xiaomi_Mi_Mix_3_2.png', N'Xiaomi_Mi_Mix_3_3.png', N'XIAOMI', N'128', N'6', N'10090000', N'Điện thoại Xiaomi Mi Mix 3 nối tiếp sự thành công của Mi Mix 2, điều này lý giải 1 phần tại sao Xiaomi lại được mệnh danh là Apple của Châu Á. Liên tục cho ra mắt những sản phẩm mới với giá thành không thể tốt hơn, công nghệ không hề cũ mà thậm chí còn là', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT143', N'Điện Thoại Wiko Y60', N'Wiko_Y60_1.png', N'Wiko_Y60_2.png', N'Wiko_Y60_3.png', N'WIKO', N'16', N'0', N'1200000', N'Wiko Y60 vừa được ra mắt với kiểu dáng mới mẽ cùng nhiều màu sắc nổi bật, dễ dàng đặt trong lòng bàn tay, được trang bị màn hình IPS 5.45 inch sắc nét và hiệu năng mạnh mẽ với hệ điều hành mới nhất mang đến cho người dùng một trải nghiệm hài lòng nhất.  T', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT144', N'Điện Thoại Vivo V17 Pro', N'Vivo_V17_Pro_1.png', N'Vivo_V17_Pro_2.png', N'Vivo_V17_Pro_3.png', N'VIVO', N'128', N'8', N'8790000', N'Bắt kịp xu thế smartphone có nhiều camera thì Vivo đã nhanh chóng giới thiệu chiếc Vivo V17 Pro với tổng cộng tới 6 camera trên một chiếc máy.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT145', N'Điện Thoại Vivo V11i', N'Vivo_V11i_1.png', N'Vivo_V11i_2.png', N'Vivo_V11i_3.png', N'VIVO', N'128', N'4', N'4855000', N'Vivo V11i được xem là một kiệt tác mà Vivo tạo ra trong phân khúc điện thoại tầm trung với sự bóng bẩy trong thiết kế đến từ màn hình tràn viền siêu mỏng được cách điệu bởi chiếc tai thỏ hình giọt nước đáng yêu.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT146', N'Điện Thoại Honor 10 Lite', N'Honor_10_Lite_1.png', N'Honor_10_Lite_2.png', N'Honor_10_Lite_3.png', N'HONOR', N'64', N'3', N'3550000', N'Honor 10 Lite vừa được giới thiệu là một chiếc smartphone có mức giá tốt nhưng vẫn sở hữu cho mình những công nghệ "đình đám" nhất của năm 2018.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT147', N'Điện Thoại ITEL A16', N'Itel_A16_1.png', N'Itel_A16_2.png', N'Itel_A16_3.png', N'ITEL', N'8', N'512', N'890000', N'Itel A16 Plus là một chiếc smartphone giá rẻ với những trang bị cơ bản phù hợp với người dùng muốn có một chiếc máy để trải nghiệm hệ điều hành Android.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT148', N'Điện Thoại iPhone X 256GB', N'iPhone_X_256GB_1.png', N'iPhone_X_256GB_2.png', N'iPhone_X_256GB_3.png', N'APPLE', N'256', N'3', N'21990000', N'iPhone X 256 GB  được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận d', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT149', N'Điện Thoại Vsmart Active 1', N'Vsmart_Active_1_1.png', N'Vsmart_Active_1_2.png', N'Vsmart_Active_1_3.png', N'VSMART', N'64', N'4', N'4199000', N'Sau bao ngày chờ đợi, cái tên Vsmart Active 1 cuối cùng đã xuất hiện mang theo nhiều thứ mới mẻ và hấp dẫn, điển hình là thiết kế nguyên khối ấn tượng, hiệu năng mạnh mẽ đi kèm với một mức giá không thể nào tốt hơn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT15', N'Điện Thoại Meizu C9', N'Meizu_C9_1.png', N'Meizu_C9_2.png', N'Meizu_C9_3.png', N'MEIZU', N'16', N'2', N'1140000', N'Meizu C9 là chiếc smartphone giá rẻ hướng đến đối tượng người dùng là học sinh sinh viên với nhiều trang bị hiện đại, theo xu thế.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT150', N'Điện Thoại Xiaomi Redmi Note 7', N'Xiaomi_Redmi_Note_7_1.png', N'Xiaomi_Redmi_Note_7_2.png', N'Xiaomi_Redmi_Note_7_3.png', N'XIAOMI', N'128', N'4', N'6490000', N'Xiaomi Redmi Note 7 4GB/64GB là chiếc smartphone giá rẻ mới được giới thiệu vào đầu năm 2019 với nhiều trang bị đáng giá như thiết kế notch giọt nước hay camera lên tới 48 MP.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT151', N'Điện Thoại Blackberry Key 2 Red Edition', N'Blackberry_Key_2_Red_Edition_1.png', N'Blackberry_Key_2_Red_Edition_2.png', N'Blackberry_Key_2_Red_Edition_3.png', N'BLACKBERRY', N'128', N'6', N'14990000', N'Nếu bạn là tín đồ của Blackberry thì chắc hẳn sẽ không thể quên sự kiện MWC 2019 vừa qua, khi mà nhà sản xuất TCL công bố và cho ra mắt mẫu BlackBerry Key 2 red hoàn toàn đặc biệt có tên gọi đầy đủ là BlackBerry Key2 RED EDITION. Vậy điều đặc biệt ở phiên', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT152', N'Điện Thoại Realme 3', N'Realme_3_1.png', N'Realme_3_2.png', N'Realme_3_3.png', N'REALME', N'32', N'3', N'3190000', N'Sau sự thành công của chiếc Realme 2 thì hãng sản xuất Realme tiếp tục tung ra phiên bản nâng cấp là Realme 3 3GB/32GB vẫn với lợi thế là cấu hình tốt cùng mức giá cạnh tranh.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT153', N'Điện Thoại Di Động Blackberry Evolve', N'Di_Động_Blackberry_Evolve_1.png', N'Di_Động_Blackberry_Evolve_2.png', N'Di_Động_Blackberry_Evolve_3.png', N'BLACKBERRY', N'64', N'4', N'6390000', N'BlackBerry Evolve là chiếc smartphone mới nhất được BlackBerry giới thiệu trong năm 2019 bên cạnh chiếc Evolve X. Smartphone này đánh dấu một sự thay đổi của BlackBerry trong thiết kế khi đã cập nhật theo xu thế mới, phù hợp hơn với đa số người dùng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT154', N'Điện Thoại Huawei P30', N'Huawei_P30_1.png', N'Huawei_P30_2.png', N'Huawei_P30_3.png', N'HUAWEI', N'128', N'8', N'14439000', N'Huawei P30 Pro là một bước đột phá của Huawei cũng như camera trên smartphone khi đem lại khả năng zoom như một "kính viễn vọng".', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT155', N'Điện Thoại Samsung Galaxy J4 Plus', N'Samsung_Galaxy_J4_Plus_1.png', N'Samsung_Galaxy_J4_Plus_2.png', N'Samsung_Galaxy_J4_Plus_3.png', N'SAMSUNG', N'16', N'2', N'3490000', N'Mới đây Samsung đã chính thức giới thiệu bộ đôi Galaxy dòng J mới của hãng là Samsung Galaxy J6+ và Samsung Galaxy J4+ với màn hình vô cực, tích hợp bảo mật khuôn mặt mở máy hiện đại.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT156', N'Điện Thoại Samsung Galaxy A80', N'Samsung_Galaxy_A80_1.png', N'Samsung_Galaxy_A80_2.png', N'Samsung_Galaxy_A80_3.png', N'SAMSUNG', N'128', N'8', N'12590000', N'Samsung Galaxy A80 là chiếc smartphone mang trong mình rất nhiều đột phá của Samsung và hứa hẹn sẽ là "ngọn cờ đầu" cho những chiếc smartphone sở hữu một màn hình tràn viền thật sự.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT157', N'Điện Thoại Huawei Y7 PRO (2019)', N'Huawei_Y7_PRO_(2019)_1.png', N'Huawei_Y7_PRO_(2019)_2.png', N'Huawei_Y7_PRO_(2019)_3.png', N'HUAWEI', N'32', N'3', N'3269000', N'Hoàn toàn lột xác so với phiên bản tiền nhiệm, Y7 Pro (2019) đã giúp Huawei có thêm điểm cộng trong mắt người dùng nhờ việc đem thiết kế mặt lưng gradient, màn hình giọt nước và pin khủng lên chiếc smartphone giá rẻ của mình.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT158', N'Điện Thoại Bphone 3 Pro', N'Bphone_3_Pro_1.png', N'Bphone_3_Pro_2.png', N'Bphone_3_Pro_3.png', N'BPHONE', N'64', N'4', N'9990000', N'Bphone 3 Pro, chiếc điện thoại đậm chất "Việt" chính thức trình làng trong sự chào đón của người hâm mộ, khi BKAV đã mang đến cho đứa con cưng của hãng một thiết kế đầy sáng tạo, phá cách cùng hàng loạt các trang bị cao cấp.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT159', N'Điện Thoại Xiaomi Redmi Note 8 Pro', N'Xiaomi_Redmi_Note_8_Pro_1.png', N'Xiaomi_Redmi_Note_8_Pro_2.png', N'Xiaomi_Redmi_Note_8_Pro_3.png', N'XIAOMI', N'0', N'0', N'6190000', N'Là phiên bản nâng cấp của chiếc Xiaomi Redmi Note 7 Pro đã "làm mưa làm gió" trên thị trường trước đó, chiếc Xiaomi Redmi Note 8 Pro (6GB/128GB) sẽ là sự lựa chọn hàng đầu dành cho người dùng quan tâm nhiều về hiệu năng và camera của một chiếc máy tầm tru', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT16', N'Điện Thoại Xiaomi Redmi 7', N'Xiaomi_Redmi_7_1.png', N'Xiaomi_Redmi_7_2.png', N'Xiaomi_Redmi_7_3.png', N'XIAOMI', N'16', N'2', N'2090000', N'Nếu bạn đang tìm kiếm một smartphone có mức giá rẻ nhưng cũng phải đáp ứng tốt nhu cầu sử dụng hằng ngày và phải có một thiết kế thời trang thì không có sự lựa chọn nào hợp lý hơn Xiaomi Redmi 7 3GB/32GB.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT160', N'Điện Thoại iPhone XS 256GB', N'iPhone_XS_256GB_1.png', N'iPhone_XS_256GB_2.png', N'iPhone_XS_256GB_3.png', N'APPLE', N'256', N'4', N'33729000', N'Sau 1 năm mong chờ, chiếc smartphone cao cấp nhất của Apple đã chính thức ra mắt mang tên iPhone Xs Max 256 GB. Máy các trang bị các tính năng cao cấp nhất từ chip A12 Bionic, dàn loa đa chiều cho tới camera kép tích hợp trí tuệ nhân tạo.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT161', N'Điện Thoại Huawei Mate 20', N'Huawei_Mate_20_1.png', N'Huawei_Mate_20_2.png', N'Huawei_Mate_20_3.png', N'HUAWEI', N'128', N'6', N'15990000', N'Thế hệ siêu phẩm mới của Huawei chính thức lộ diện với cái tên Huawei Mate 20 Pro, chiếc điện thoại thu hút trong thiết kế, mạnh mẽ trong hiệu năng cùng một hệ thống camera ấn tượng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT162', N'Điện Thoại Oppo Reno 10x Zoom Edition', N'Oppo_Reno_10x_Zoom_Edition_1.png', N'Oppo_Reno_10x_Zoom_Edition_2.png', N'Oppo_Reno_10x_Zoom_Edition_3.png', N'OPPO', N'256', N'8', N'15990000', N'Những chiếc flagship trong năm 2019 không chỉ có một camera chụp ảnh đẹp, chụp xóa phông ảo diệu mà còn phải "chụp thật xa" và với chiếc OPPO Reno 10x Zoom Edition chính thức gia nhập thị trường "smartphone có camera siêu zoom".', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT163', N'Điện Thoại Xiaomi Mi 9', N'Xiaomi_Mi_9_1.png', N'Xiaomi_Mi_9_2.png', N'Xiaomi_Mi_9_3.png', N'XIAOMI', N'128', N'6', N'14490000', N'Tính đến 2019, Xiaomi Mi 9 đang là mẫu flagship cao cấp của Xiaomi được người dùng yêu thích nhất. Hãy cùng MobileCity mở hộp và đánh giá nhanh sản phẩm để có cái nhìn chi tiết nhất nhé.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT164', N'Điện Thoại Realme 3 Pro', N'Realme_3_Pro_1.png', N'Realme_3_Pro_2.png', N'Realme_3_Pro_3.png', N'REALME', N'64', N'4', N'5490000', N'Đặc điểm nổi bật của Realme 3 Pro (4GB/64GB)  Tìm hiểu thêm Tìm hiểu thêm Bộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng  Realme là dòng smartphone khá mới tại thị trường Việt Nam nhưng đã gây được tiếng vang lớn ngay trong những c', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT165', N'Điện thoại Wiko View Max', N'Wiko_View_Max_3GB_32GB_1.png', N'Wiko_View_Max_3GB_32GB_2.png', N'Wiko_View_Max_3GB_32GB_3.png', N'WIKO', N'0', N'0', N'1690000', N'Wiko View Max mang đến trải nghiệm màn hình cực lớn 18:9 viền siêu mỏng, cho bạn những phút giây giải trí đa phương tiện tuyệt vời trong tầm giá rất rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT166', N'Hyundai Seoul S6', N'Hyundai_Seoul_S6_1.png', N'Hyundai_Seoul_S6_2.png', N'Hyundai_Seoul_S6_3.png', N'HYUNDAI', N'16', N'2', N'1890000', N'Khi một hãng chuyên sản xuất ô tô là Hyundai “ra tay” sản xuất điện thoại thì có gì nổi bật. Hyundai giới thiệu tại thị trường Việt Nam bộ đôi Seoul S6 và Seoul 5, trong đó Hyundai Seoul S6 được đánh giá cao khi sở hữu thiết kế ổn và cấu hình khá mạnh mẽ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT167', N'Điện Thoại Vivo Y15', N'Vivo_Y15_1.png', N'Vivo_Y15_2.png', N'Vivo_Y15_3.png', N'VIVO', N'64', N'4', N'3646000', N'Vivo Y15 là chiếc smartphone phổ thông mới ra mắt trong thời gian gần đây của Vivo với điểm nhấn chính là dung lượng pin "siêu khủng" cùng những trang bị khá hấp dẫn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT168', N'Điện Thoại Symphony S501', N'Symphony_S501_1.png', N'Symphony_S501_2.png', N'Symphony_S501_3.png', N'SYMPHONY', N'8', N'1', N'1050000', N'Hiếm có chiếc điện thoại nào có giá dưới 1,5 triệu mà sở hữu cấu hình khủng như Symphony S501. Đây là dòng sản phẩm thuộc phân khúc bình dân, phù hợp với các bạn mới bắt đầu đủ tuổi sử dụng smartphone hoặc những người lớn tuổi tập làm quen với việc đọc bá', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT169', N'Điện Thoại Coolpad N3 Mini', N'Coolpad_N3_Mini_1.png', N'Coolpad_N3_Mini_2.png', N'Coolpad_N3_Mini_3.png', N'COOLPAD', N'8', N'1', N'990000', N'Coolpad N3 mini là chiếc smartphone giá rẻ đến từ thương hiệu Coolpad vừa được ra mắt, máy có một thiết kế nhỏ gọn, hiệu năng vừa phải cùng điểm nhấn về cụm camera kép đặt dọc theo xu hướng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT170', N'Điện Thoại Wiko Sunny 4 Plus', N'Wiko_Sunny_4_Plus_1.png', N'Wiko_Sunny_4_Plus_2.png', N'Wiko_Sunny_4_Plus_3.png', N'WIKO', N'16', N'1', N'1490000', N'Điện Thoại Wiko Sunny 4 Plus có thiết kế đơn giản, thể hiện sử trẻ trung, năng động cho chủ sở hữu. Máy có hai màu sắc cá tính là xanh và đen mang đến những phong cách riêng cho bạn. Vật liệu bền vững cho bạn cảm giác cầm nắm chắc tay cũng giúp người dùng', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT171', N'Điện thoại Ulefone Note 7P', N'Ulefone_Note_7P_1.png', N'Ulefone_Note_7P_2.png', N'Ulefone_Note_7P_3.png', N'ULEFONE', N'0', N'0', N'2490000', N'Ulefone Note 7 sử dụng vỏ nhựa nguyên khối, loa ngoài được bố trí phía dưới mặt lưng. Máy có kích thước 156,1x73,7x9,7mm, trọng lượng 177,5g. Tuy không có cảm biến vân tay nhưng bù lại, Note 7 sở hữu tính năng mở khóa bằng nhận diện khuôn mặt.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT172', N'Điện Thoại Masstel X9', N'Masstel_X9_1.png', N'Masstel_X9_2.png', N'Masstel_X9_3.png', N'MASSTEL', N'16', N'2', N'1390000', N'Mua Điện Thoại Masstel X9 giá rẻ sở hữu camera sau 8MP có khả năng lấy nét tự động. Camera selfie 5MP trên chiếc điện thoại này cũng được tích hợp đèn flash nhằm đảm bảo chụp được những khuôn hình “tự sướng” tuyệt đẹp với chất lượng cao.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT173', N'Điện Thoại Realme 2 Pro', N'Realme_2_Pro_1.png', N'Realme_2_Pro_2.png', N'Realme_2_Pro_3.png', N'REALME', N'64', N'6', N'3890000', N'Dòng điện thoại Realme đã chính thức ra mắt chiếc smartphone giá rẻ sở hữu cấu hình cao mang tên Realme 2 Pro với phiên bản RAM 4 GB và ROM 64 GB.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT174', N'Điện Thoại Meizu M8', N'Meizu_M8_1.png', N'Meizu_M8_2.png', N'Meizu_M8_3.png', N'MEIZU', N'64', N'4', N'2690000', N'Điện Thoại Meizu M8 sở hữu thiết kế thanh mảnh. Mặt lưng có các góc được bo cong mềm mại giúp bạn nắm máy trên tay được thoải mái và dễ chịu hơn rất nhiều. Phần thân máy hoàn toàn bằng kim loại giúp Meizu M8 toát lên cho mình sự sang trọng và quyến rũ. Mặ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT175', N'Điện thoại Ulefone power 6', N'Ulefone_power_6_1.png', N'Ulefone_power_6_2.png', N'Ulefone_power_6_3.png', N'ULEFONE', N'0', N'0', N'4490000', N'Vậy là dòng smartphone pin khủng của Ulefone theo phong cách thời trang lại có thêm một chiến binh nữa trình làng là Power 6 Ram 4GB, Pin trâu 6350mAh, màn hình giọt nước to dành cho đối tượng phổ thông thích màn hình to, pin dùng lâu cày khỏe với mức giá', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT176', N'Điện Thoại Smartphone Người Già Masstel X5 Fami', N'Smartphone_Người_Già_Masstel_X5_Fami_1.png', N'Smartphone_Người_Già_Masstel_X5_Fami_2.png', N'Smartphone_Người_Già_Masstel_X5_Fami_3.png', N'MASSTEL', N'8', N'1', N'1650000', N'Masstel X5 Fami là một chiếc smartphone giá rẻ với những trang bị cơ bản hứa hẹn sẽ đáp ứng tốt cho người dùng với nhu cầu không quá cao, chủ yếu để lướt web, nghe nhạc hay xem phim hằng ngày.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT177', N'Điện Thoại iPhone XS 512GB', N'iPhone_XS_512GB_1.png', N'iPhone_XS_512GB_2.png', N'iPhone_XS_512GB_3.png', N'APPLE', N'512', N'4', N'37020000', N'Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max 64 GB của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT178', N'Điện Thoại Realme C2', N'Realme_C2_1.png', N'Realme_C2_2.png', N'Realme_C2_3.png', N'REALME', N'16', N'2', N'2350000', N'Realme C2 2GB/16GB là phiên bản nâng cấp của mẫu Realme C1 từ rất thành công của Realme ở thị trường Việt Nam trong phân khúc smartphone giá rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT179', N'Điện Thoại Itel S11 Plus', N'Itel_S11_Plus_1.png', N'Itel_S11_Plus_2.png', N'Itel_S11_Plus_3.png', N'ITEL', N'8', N'2', N'990000', N'Itel S11 Plus có thiết kế khá đơn giản, các góc cạnh được bo tròn cho cảm giác nhẹ nhàng và cằm nắm thuận tiện hơn, mặt lưng được tô điểm bởi 2 đường cắt sáng bóng để tăng vẻ sang trọng. Máy nhỏ gọn và nhẹ nhàng, sử dụng thuận tiện.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT18', N'Điện Thoại Nokia 5.1 Plus', N'Nokia_5.1_Plus_1.png', N'Nokia_5.1_Plus_2.png', N'Nokia_5.1_Plus_3.png', N'NOKIA', N'32', N'3', N'3610000', N'Sau Nokia 6.1 Plus thì Nokia tiếp tục tung ra thị trường chiếc smartphone thứ 2 của mình sở hữu màn hình "tai thỏ" với tên gọi Nokia 5.1 Plus (Nokia X5) với mức giá dễ chịu và hấp dẫn.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT180', N'Điện Thoại Vivo Y81', N'Vivo_Y81_1.png', N'Vivo_Y81_2.png', N'Vivo_Y81_3.png', N'VIVO', N'32', N'3', N'3490000', N'Sau sự thành công của Vivo V9 thì hãng lại tiếp tục mang tới một sản phẩm chất lượng, kèm tai thỏ và bảo mật khuôn mặt, với mức giá bán vô cùng hấp dẫn mang tên Vivo Y81.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT181', N'Điện thoại Oppo A1K', N'Oppo_A1K_1.png', N'Oppo_A1K_2.png', N'Oppo_A1K_3.png', N'OPPO', N'0', N'0', N'3190000', N'OPPO A1K là một chiếc máy giá rẻ và vẫn tập trung vào những lợi thế của OPPO như camera selfie hay thiết kế thời trang phù hợp cho giới trẻ.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT182', N'Điện Thoại Itel A46', N'Itel_A46_1.png', N'Itel_A46_2.png', N'Itel_A46_3.png', N'ITEL', N'16', N'2', N'1590000', N'Điện Thoại Itel A46 là mẫu smartphone sở hữu thiết kế quen thuộc với mặt lưng bằng nhựa cùng các góc cạnh được bo cong mềm mại. Hiệu ứng màu gradient đẹp mắt tạo nên vẻ đẹp thanh lịch sang trọng và không kém phần tinh tế.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT183', N'Điện thoại di động Vsmart Joy 1+', N'di_động_Vsmart_Joy_1+_1.png', N'di_động_Vsmart_Joy_1+_2.png', N'di_động_Vsmart_Joy_1+_3.png', N'VSMART', N'0', N'0', N'2099000', N'Vsmart Joy 1+ 16GB là một chiếc điện thoại với mức giá rất hấp dẫn nhưng vẫn mang lại cho người dùng những tính năng thời thượng của một chiếc smartphone năm 2019.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT184', N'Điện Thoại OPPO Find X', N'OPPO_Find_X_1.png', N'OPPO_Find_X_2.png', N'OPPO_Find_X_3.png', N'OPPO', N'256', N'8', N'12950000', N'OPPO Find X tạo nên một cú hích lớn trong làng smartphone hiện nay khi mang trong mình nhiều tính năng đột phá mà nổi bật nhất đến từ thiết kế sáng tạo và một hiệu năng đỉnh cao.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT185', N'Điện Thoại Itel A33', N'Itel_A33_1.png', N'Itel_A33_2.png', N'Itel_A33_3.png', N'ITEL', N'0', N'0', N'1050000', N'Itel A33 là một chiếc smartphone giá rẻ nhắm tới đối tượng người dùng có thu nhập thấp muốn trải nghiệm hệ điều hành Android nhiều tính năng hấp dẫn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT186', N'Điện Thoại Nony R17 Pro ', N'Nony_R17_Pro__1.png', N'Nony_R17_Pro__2.png', N'Nony_R17_Pro__3.png', N'NONY', N'16', N'2', N'1290000', N'Nony vừa cho ra mắt chiếc Smartphone giá cực rẻ. Nony R17 Pro với thiết kế vỏ ngoài được sơn phủ kim loại sáng bóng mang dáng vẻ sang trọng và đẹp mắt mang dáng vẻ sang trọng và còn sở hữu vẻ ngoài nhỏ gọn, giúp bạn có thể cắm thật thoải mái và dễ dàng tr', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT187', N'Điện Thoại Huawei Y5 2017', N'Huawei_Y5_2017_1.png', N'Huawei_Y5_2017_2.png', N'Huawei_Y5_2017_3.png', N'HUAWEI', N'16', N'2', N'2150000', N'Huawei Y5 2017 là phiên bản nâng cấp của Y5 II với cấu hình mạnh mẽ hơn, pin dung lượng cao dùng lâu hơn và thiết kế đẹp mắt, cứng cáp hơn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT188', N'Điện Thoại Honor 7S', N'Honor_7S_1.png', N'Honor_7S_2.png', N'Honor_7S_3.png', N'HONOR', N'16', N'2', N'2590000', N'Huawei vừa công bố một điện thoại thông minh ngân sách mới, Honor 7S. Điện thoại thông minh này đã được công bố ở Pakistan với giá dưới 3 triệu.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT189', N'Điện thoại di động Oukitel K7', N'di_động_Oukitel_K7_1.png', N'di_động_Oukitel_K7_2.png', N'di_động_Oukitel_K7_3.png', N'OUKITEL', N'0', N'0', N'4790000', N'Oukitel của Trung Quốc vừa chính thức trình làng smartphone K10. Oukitel K10 là mẫu smartphone đầu tiên trên thế giới có pin 11.000 mAh và cũng là smartphone mạnh mẽ nhất mà hãng này từng sản xuất.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT190', N'Điện Thoại OPPO F3 Lite (A57)', N'OPPO_F3_Lite_(A57)_1.png', N'OPPO_F3_Lite_(A57)_2.png', N'OPPO_F3_Lite_(A57)_3.png', N'OPPO', N'32', N'3', N'2890000', N'OPPO A57 là phiên bản rút gọn của Oppo F1s có mức giá dễ chịu hơn nhưng vẫn cho những trải nghiệm gần như tương đương.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT191', N'Điện Thoại Hyundai Seoul 7', N'Hyundai_Seoul_7_1.png', N'Hyundai_Seoul_7_2.png', N'Hyundai_Seoul_7_3.png', N'HYUNDAI', N'16', N'2', N'2050000', N'Hyundai Seoul 7 là dòng smartphone mới được Huyndai tung ra thị trường trong năm 2017 này. Đây là sản phẩm có thiết kế đẹp với kim loại nguyên khối và trang bị cảm biến vân tay một chạm ở mặt lưng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT192', N'Điện Thoại Wiko Sunny 3', N'Wiko_Sunny_3_1.png', N'Wiko_Sunny_3_2.png', N'Wiko_Sunny_3_3.png', N'WIKO', N'8', N'512', N'950000', N'Được nâng cấp từ Wiko Sunny 3, Wiko Sunny 3 Plus sở hữu màn hình lớn tỉ lệ mới mang đến trải nghiệm tuyệt vời trong tầm giá cực rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT193', N'Điện Thoại Samsung Galaxy A30s', N'Samsung_Galaxy_A30s_1.png', N'Samsung_Galaxy_A30s_2.png', N'Samsung_Galaxy_A30s_3.png', N'SAMSUNG', N'0', N'0', N'5699000', N'Samsung Galaxy A30 64GB là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT194', N'Điện thoại Xiaomi Mi 9T', N'Xiaomi_Mi_9T_1.png', N'Xiaomi_Mi_9T_2.png', N'Xiaomi_Mi_9T_3.png', N'XIAOMI', N'0', N'0', N'7790000', N'Xiaomi Mi 9T 64GB sở hữu thiết kế tuyệt đẹp với màn hình FullView đúng nghĩa, mặt lưng đầy phong cách, 3 camera ấn tượng và cấu hình đáng kinh ngạc.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT195', N'Điện thoại Wiko Jerry 4', N'Wiko_Jerry_4_1.png', N'Wiko_Jerry_4_2.png', N'Wiko_Jerry_4_3.png', N'WIKO', N'0', N'0', N'1790000', N'Wiko Jerry 4 là sự lựa chọn smartphone giá rẻ màn hình lớn rất phù hợp cho những bạn học sinh, sinh viên. Với thiết kế đẹp mắt và thời lượng pin tuyệt vời, Wiko Jerry 4 sẽ làm bạn hài lòng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT196', N'Điện Thoại Huawei Y6 Prime (2018)', N'Huawei_Y6_Prime_(2018)_1.png', N'Huawei_Y6_Prime_(2018)_2.png', N'Huawei_Y6_Prime_(2018)_3.png', N'HUAWEI', N'16', N'2', N'1990000', N'Huawei Y6 Prime là chiếc smartphone giá rẻ với màn hình tràn viền kích thước lớn. Thiết kế cứng cáp Huawei tiếp tục mang lên một chiếc smartphone giá rẻ của mình màn hình tràn viền 18:9 với kích thước 5.7 inch.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT197', N'Ulefone Armor X', N'Ulefone_Armor_X_1.png', N'Ulefone_Armor_X_2.png', N'Ulefone_Armor_X_3.png', N'ULEFONE', N'0', N'0', N'2990000', N'Dòng Ulefone Armor của hãng Ulefone có lẽ là dòng điện thoại smartphone có sức hút lôi cuốn người dùng ngay từ cái nhìn đầu tiên vì có thiết kế hầm hố cùng những tính năng bá đạo kinh điển được trang bị để bất khả xâm phạm.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT198', N'Điện Thoại Wiko Lenny 5', N'Wiko_Lenny_5_1.png', N'Wiko_Lenny_5_2.png', N'Wiko_Lenny_5_3.png', N'WIKO', N'16', N'1', N'1450000', N'Với mức giá rất rẻ nhưng Wiko Lenny 5 vẫn có mọi tính năng mà bạn cần, bao gồm màn hình lớn, loa kép, camera chụp ảnh đẹp và hệ điều hành tiên tiến.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT199', N'Điện Thoại Oukitel K7', N'Oukitel_K7_1.png', N'Oukitel_K7_2.png', N'Oukitel_K7_3.png', N'OUKITEL', N'0', N'0', N'4790000', N'Điện thoại Oukitel K7 là bản nâng cấp của K10000 Pro, với cấu hình mạnh mẽ hơn: Cpu 8 nhân, Ram 4GB, bộ nhớ 64GB, màn hình FHD 6 inch, Android 8.1', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT20', N'Điện Thoại Vsmart Star', N'Vsmart_Star_1.png', N'Vsmart_Star_2.png', N'Vsmart_Star_3.png', N'VSMART', N'16', N'2', N'1690000', N'Vsmart Star là một chiếc smartphone giá rẻ với những trang bị cơ bản hứa hẹn sẽ đáp ứng tốt cho người dùng với nhu cầu không quá cao, chủ yếu để lướt web, nghe nhạc hay xem phim hằng ngày.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT200', N'Điện Thoại Neffos X1 Max', N'Neffos_X1_Max_1.png', N'Neffos_X1_Max_2.png', N'Neffos_X1_Max_3.png', N'NEFFOS', N'64', N'4', N'5590000', N'Điện Thoại Neffos X1 Max (32GB/3GB) - Hàng Chính Hãng với công nghệ chế tác hoàn hảo, mặt lưng kim loại được vát mỏng 2 cạnh mang lại trải nghiệm tuyệt vời giữa dáng vẻ mạnh mẽ và uyển chuyển. Trao cho bạn cảm giác hoàn hảo khi cầm trong tay.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT201', N'Điện Thoại Xiaomi Redmi 7  - DGW', N'Xiaomi_Redmi_7_-_DGW_1.png', N'Xiaomi_Redmi_7_-_DGW_2.png', N'Xiaomi_Redmi_7_-_DGW_3.png', N'XIAOMI', N'0', N'0', N'2685000', N'Xiaomi Redmi Note 7 4GB/64GB là chiếc smartphone giá rẻ mới được giới thiệu vào đầu năm 2019 với nhiều trang bị đáng giá như thiết kế notch giọt nước hay camera lên tới 48 MP.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT202', N'Điện Thoại Symphony V130', N'Symphony_V130_1.png', N'Symphony_V130_2.png', N'Symphony_V130_3.png', N'SYMPHONY', N'0', N'1', N'1120000', N'Điện thoại Symphony V130 - Hàng chính hãng tuy có mức giá rẻ những vẫn sở hữu kiểu dáng trẻ trung với màu sắc hài hòa. Sản phẩm là lựa chọn thích hợp cho người mới sử dụng smartphone với việc đáp ứng khá các nhu cầu cần thiết.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT203', N'Điện Thoại Mobell Nova F2', N'Mobell_Nova_F2_1.png', N'Mobell_Nova_F2_2.png', N'Mobell_Nova_F2_3.png', N'MOBELL', N'8', N'1', N'1139000', N'Mobell đang dần xây xựng thương hiệu trên thị trường Việt Nam, liên tục các sản phẩm của hãng tung ra đều có mức giá hết sức hấp dẫn, cấu hình đảm bảo nhu cầu phổ thông. Mobell Nova F2 là một thành viên mới trong gia đình Nova đem đến lựa chọn 2 sim, thiế', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT204', N'Điện Thoại ITEL A52', N'ITEL_A52_1.png', N'ITEL_A52_2.png', N'ITEL_A52_3.png', N'ITEL', N'8', N'1', N'1490000', N'Điện Thoại ITEL A52 - Hàng Chính Hãng được hoàn thiện khá bắt mắt với thiết kế gọn gàng, độ mỏng hợp lý, mặt lưng bo cong về 4 góc vừa vặn với lòng bàn tay.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT205', N'Điện Thoại Suntek A1 4GB', N'Suntek_A1_4GB_1.png', N'Suntek_A1_4GB_2.png', N'Suntek_A1_4GB_3.png', N'SUNTEK', N'4', N'512', N'2990000', N'SUNTEK A1 là Smartphone siêu bền đạt chuẩn IP-67, với thiết kế ấn tượng và hầm hố.  Tiêu chuẩn về độ bền IP-67 cho phép A1 có thể chịu ngâm trong nước 30 phút ở độ sâu 1 mét, rơi từ độ cao 2 mét, chịu được trọng tải 1.5 tấn . Bên cạnh đó model này cũng có', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT206', N'Bluboo Maya Max (32GB)', N'Bluboo_Maya_Max_(32GB)_1.png', N'Bluboo_Maya_Max_(32GB)_2.png', N'Bluboo_Maya_Max_(32GB)_3.png', N'BLUBOO', N'32', N'3', N'2490000', N'Bluboo Maya Max có thiết kế khung sường bằng kim loại nguyên khối, mang đến cảm giác chắc chắn khi sang trọng cho người sử dụng. Mặt lưng của máy được thiết kế cong nhẹ, tạo cảm giác vừa vặn và ôm tay khi cầm, đem đến sự thoải mái nhất cho người dùng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT207', N'Điện Thoại Itel A32F', N'Itel_A32F_1.png', N'Itel_A32F_2.png', N'Itel_A32F_3.png', N'ITEL', N'8', N'1', N'1210000', N'Itel A32F, một thành viên mới trong phân khúc smartphone giá rẻ của Itel vừa được ra mắt, đáp ứng đầy đủ cho mọi nhu cầu của bạn và hơn nữa máy còn đi kèm một cảm biến vân tay để tăng cường khả năng bảo mật.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT208', N'Điện Thoại Honor 20 Lite', N'Honor_20_Lite_1.png', N'Honor_20_Lite_2.png', N'Honor_20_Lite_3.png', N'HONOR', N'128', N'4', N'5790000', N'Siêu phẩm camera mang tên Honor 20 Lite sẽ đưa bạn đến trải nghiệm khác biệt về chụp ảnh với camera trước 32MP và cụm 3 camera sau cực đỉnh, hãy sẵn sàng đến với những bức ảnh tuyệt vời được chụp từ chính tay bạn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT209', N'Điện Thoại iPhone XR (256GB)', N'iPhone_XR_(256GB)_1.png', N'iPhone_XR_(256GB)_2.png', N'iPhone_XR_(256GB)_3.png', N'APPLE', N'256', N'3', N'26019000', N'Ngoài các phiên bản như thường lệ mọi năm, vào đêm 12/9 theo giờ Việt Nam, Apple đã cho ra mắt thêm một phiên bản iPhone khác với tên gọi iPhone Xr, có mức giá dễ chịu hơn nhưng vẫn mang đầy đủ các tính năng cao cấp đầy hấp dẫn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT21', N'Điện Thoại OPPO A5s', N'OPPO_A5s_1.png', N'OPPO_A5s_2.png', N'OPPO_A5s_3.png', N'OPPO', N'32', N'3', N'3090000', N'OPPO A5s là một chiếc máy giá rẻ và vẫn giữ được cho mình những ưu điểm mà người dùng yêu thích của một chiếc smartphone tới từ OPPO.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT210', N'OPPO A5 2020 64GB ', N'OPPO_A5_2020_64GB__1.png', N'OPPO_A5_2020_64GB__2.png', N'OPPO_A5_2020_64GB__3.png', N'OPPO', N'0', N'0', N'3619000', N'OPPO A5 (2020) 64GB là mẫu smartphone tầm trung với giá thành phải chăng nhưng được trang bị nhiều công nghệ hấp dẫn hứa hẹn sẽ "lấy được lòng" các bạn trẻ năng động, thời trang.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT211', N'Điện Thoại Huawei P30 Pro', N'Huawei_P30_Pro_1.png', N'Huawei_P30_Pro_2.png', N'Huawei_P30_Pro_3.png', N'HUAWEI', N'256', N'8', N'22990000', N'Huawei P30 Pro là một bước đột phá của Huawei cũng như camera trên smartphone khi đem lại khả năng zoom như một "kính viễn vọng".', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT212', N'Điện Thoại Realme 3 Pro', N'Realme_3_Pro_1.png', N'Realme_3_Pro_2.png', N'Realme_3_Pro_3.png', N'REALME', N'128', N'6', N'5990000', N'Đặc điểm nổi bật của Realme 3 Pro (4GB/64GB)  Tìm hiểu thêm Tìm hiểu thêm Bộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng  Realme là dòng smartphone khá mới tại thị trường Việt Nam nhưng đã gây được tiếng vang lớn ngay trong những c', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT213', N'Điện Thoại Huawei Nova 3', N'Huawei_Nova_3_1.png', N'Huawei_Nova_3_2.png', N'Huawei_Nova_3_3.png', N'HUAWEI', N'128', N'6', N'11990000', N'Nếu như bạn là một người yêu thích thiết kế của siêu phẩm Huawei P20 Pro nhưng cần một mức giá dễ chịu hơn thì Huawei Nova 3 sẽ là một sự lựa chọn phải chăng dành cho bạn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT214', N'Điện Thoại Vsmart Active 1+ Tặng Mkids Viettel', N'Vsmart_Active_1+_Tặng_Mkids_Viettel_1.png', N'Vsmart_Active_1+_Tặng_Mkids_Viettel_2.png', N'Vsmart_Active_1+_Tặng_Mkids_Viettel_3.png', N'VSMART', N'0', N'0', N'5290000', N'Điện Thoại Vsmart Active 1+ Tặng Mkids Viettel gây ấn tượng mạnh với thiết kế kết hợp giữa khung kim loại và kính cao cấp đã tạo nên một dáng vẻ sang trọng và đem đến tính thẩm mỹ cũng như sự trẻ trung, năng động. Các góc viền của điện thoại được bo tròn ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT215', N'Điện Thoại Coolpad N5', N'Coolpad_N5_1.png', N'Coolpad_N5_2.png', N'Coolpad_N5_3.png', N'COOLPAD', N'32', N'3', N'2390000', N'Coolpad N5 là chiếc smartphone mới nhất gia nhập gia đình điện thoại thông minh giá rẻ với màn hình tràn viền giọt nước và camera kép mặt sau.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT216', N'Điện Thoại Wiko View Max 16GB', N'Wiko_View_Max_16GB_1.png', N'Wiko_View_Max_16GB_2.png', N'Wiko_View_Max_16GB_3.png', N'WIKO', N'16', N'2', N'2169000', N'Wiko View Max 16GB sở hữu viên pin “khủng”, màn hình lớn, có cảm biến vân tay và cấu hình tốt trong tầm giá rất rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT217', N'Điện Thoại Masstel Juno X5', N'Masstel_Juno_X5_1.png', N'Masstel_Juno_X5_2.png', N'Masstel_Juno_X5_3.png', N'MASSTEL', N'8', N'1', N'1350000', N'Mức giá rất vừa túi tiền, sở hữu thông số kĩ thuật vượt trội so với tầm giá, thiết kế hấp dẫn và mang trong mình nhiều tính năng tiện dụng là những điểm nhấn tiêu biểu của Masstel X5.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT218', N'Điện Thoại Itel S31', N'Itel_S31_1.png', N'Itel_S31_2.png', N'Itel_S31_3.png', N'ITEL', N'16', N'1', N'1300000', N'Itel S31 là chiếc smartphone được chăm chút về ngoại hình cũng như màn hình nhắm đến giới trẻ lẫn đối tượng người dùng văn phòng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT219', N'Điện Thoại Neffos C5 Max', N'Neffos_C5_Max_1.png', N'Neffos_C5_Max_2.png', N'Neffos_C5_Max_3.png', N'NEFFOS', N'16', N'2', N'3290000', N'Neffos C5 Max được trang bị màn hình kích thước 5.5 inches độ phân giải FHD (1920 x 1080, sử dụng kính Corning Gorilla và công nghệ IPS. Đắm chìm trong thế giới hình ảnh sắc nét và hoàn hảo hơn bao giờ hết của màn hình đạt độ tương phản lên đến 1600:1. Cô', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT22', N'Điện Thoại Nokia 2.2', N'Nokia_2.2_1.png', N'Nokia_2.2_2.png', N'Nokia_2.2_3.png', N'NOKIA', N'16', N'2', N'1739000', N'Nokia đang rất thành công tại thị trường Việt Nam với những chiếc smartphone phổ thông và một trong số đó là dòng Nokia 2 Series với mức giá cạnh tranh và mới đây hãng tiếp tục tung ra phiên bản kế nhiệm mang tên Nokia 2.2.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT220', N'Điện Thoại M-Horse M2S', N'M-Horse_M2S_1.png', N'M-Horse_M2S_2.png', N'M-Horse_M2S_3.png', N'M-HORSE', N'16', N'1', N'1650000', N'Điện Thoại M-Horse M2S sở hữu kiểu dáng sang trọng, trang nhã với các góc bo cong mềm mại kết hợp thiết kế mỏng, nhẹ tạo cảm giác cầm nắm vô cùng chắc chắn. Đặc biệt, M-Horse M2S có trọng lượng vừa phải và cực kì thuận tiện trong thao tác sử dụng hàng ngà', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT221', N'Điện Thoại Masstel Juno Q5', N'Masstel_Juno_Q5_1.png', N'Masstel_Juno_Q5_2.png', N'Masstel_Juno_Q5_3.png', N'MASSTEL', N'0', N'1', N'1490000', N'Masstel Juno Q5 sở hữu một mức giá hấp dẫn, đi kèm các chức năng cơ bản của một chiếc smartphone. Một sự lựa chọn phù hợp với túi tiền, dành cho những bạn chỉ cần một chiếc điện thoại đáp ứng đủ các nhu cầu trải nghiệm.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT222', N'Điện Thoại Coolpad N5C', N'Coolpad_N5C_1.png', N'Coolpad_N5C_2.png', N'Coolpad_N5C_3.png', N'COOLPAD', N'16', N'2', N'1690000', N'Với mức giá rất rẻ nhưng chiếc smartphone Coolpad N5C vẫn có kiểu dáng thiết kế sang chảnh nhìn không khác gì những chiếc điện thoại ở tầm trung và cao, bên cạnh đó lại mang những ưu điểm về camera và hiệu suất làm việc đáng kể.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT223', N'Điện Thoại OPPO A83', N'OPPO_A83_1.png', N'OPPO_A83_2.png', N'OPPO_A83_3.png', N'OPPO', N'0', N'3', N'4450000', N'OPPO A83 là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT224', N'Xiaomi Redmi 7', N'Xiaomi_Redmi_7_1.png', N'Xiaomi_Redmi_7_2.png', N'Xiaomi_Redmi_7_3.png', N'XIAOMI', N'0', N'0', N'2980000', N'Nếu bạn đang tìm kiếm một smartphone có mức giá rẻ nhưng cũng phải đáp ứng tốt nhu cầu sử dụng hằng ngày và phải có một thiết kế thời trang thì không có sự lựa chọn nào hợp lý hơn Xiaomi Redmi 7 3GB/32GB.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT225', N'Điện Thoại OPPO A7', N'OPPO_A7_1.png', N'OPPO_A7_2.png', N'OPPO_A7_3.png', N'OPPO', N'64', N'4', N'4990000', N'OPPO A7, chiếc điện thoại được xem là sự hiện thân của cái đẹp, cái sáng tạo mà OPPO mang đến cho người dùng với mặt lưng được tô điểm bởi những họa tiết 3D thú vị cùng chiếc tai thỏ hình giọt nước đáng yêu.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT226', N'Ulefone armor 6E', N'Ulefone_armor_6E_1.png', N'Ulefone_armor_6E_2.png', N'Ulefone_armor_6E_3.png', N'ULEFONE', N'0', N'0', N'5490000', N'Armor 6E là một chiếc điện thoại bền chắc được nâng cấp được chế tạo mạnh mẽ để chịu được các điều kiện khắc nghiệt và xử lý tối ưu với thế hệ trước. Điện thoại đạt tiêu chuẩn quân sự về bụi, sốc, nước, độ ẩm, bức xạ mặt trời và nhiệt độ cực đoan, là một ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT227', N'Điện Thoại Mobiistar Lai Zoro 3', N'Mobiistar_Lai_Zoro_3_1.png', N'Mobiistar_Lai_Zoro_3_2.png', N'Mobiistar_Lai_Zoro_3_3.png', N'MOBIISTAR', N'8', N'1', N'1079000', N'Trong phân khúc smartphone giá rẻ vừa có thêm sự góp mặt của Mobiistar Lai Zoro 3 mang trong mình một thiết kế truyền thống nhưng không kém phần hiện đại.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT228', N'Điện Thoại Coolpad N3D', N'Coolpad_N3D_1.png', N'Coolpad_N3D_2.png', N'Coolpad_N3D_3.png', N'COOLPAD', N'16', N'2', N'2249000', N'Coolpad N3D một thành viên mới vừa gia nhập phân khúc smartphone giá rẻ đến từ thương hiệu Coolpad nổi bật với lối thiết kế trẻ trung và sở hữu cụm camera kép xóa phông ấn tượng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT229', N'Xiaomi Redmi 7', N'Xiaomi_Redmi_7_1.png', N'Xiaomi_Redmi_7_2.png', N'Xiaomi_Redmi_7_3.png', N'XIAOMI', N'0', N'0', N'2850000', N'Nếu bạn đang tìm kiếm một smartphone có mức giá rẻ nhưng cũng phải đáp ứng tốt nhu cầu sử dụng hằng ngày và phải có một thiết kế thời trang thì không có sự lựa chọn nào hợp lý hơn Xiaomi Redmi 7 3GB/32GB.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT23', N'Điện Thoại Samsung Galaxy A20', N'Samsung_Galaxy_A20_1.png', N'Samsung_Galaxy_A20_2.png', N'Samsung_Galaxy_A20_3.png', N'SAMSUNG', N'32', N'3', N'4019000', N'Samsung Galaxy A20 là chiếc máy rẻ nhất trong dòng Galaxy A của Samsung mang lại cho người dùng những trải nghiệm cao cấp của những chiếc máy tới từ Samsung nhưng vẫn không phải bỏ ra số tiền quá lớn.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT230', N'Điện thoại Wiko Lenny 5 (W_K400)', N'Wiko_Lenny_5_(W_K400)_1.png', N'Wiko_Lenny_5_(W_K400)_2.png', N'Wiko_Lenny_5_(W_K400)_3.png', N'WIKO', N'16', N'1', N'1450000', N'Với mức giá rất rẻ nhưng Wiko Lenny 5 vẫn có mọi tính năng mà bạn cần, bao gồm màn hình lớn, loa kép, camera chụp ảnh đẹp và hệ điều hành tiên tiến.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT231', N'Điện thoại Honor 8X', N'Honor_8X_1.png', N'Honor_8X_2.png', N'Honor_8X_3.png', N'HONOR', N'64', N'4', N'4990000', N'Sở hữu những đặc điểm của một chiếc flagship nhưng Honor 8X lại có giá bán rẻ hơn rất nhiều và chiếc điẹn thoại này chắc chắn sẽ không làm bạn phải thất vọng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT232', N'Điện Thoại Wiko View 2 Go', N'Wiko_View_2_Go_1.png', N'Wiko_View_2_Go_2.png', N'Wiko_View_2_Go_3.png', N'WIKO', N'16', N'2', N'2399000', N'Wiko View 2 Go đích thực là một siêu phẩm ở phân khúc giá rẻ khi sở hữu màn hình viền mỏng “tai thỏ” thời thượng, viên pin cực “trâu” và thiết kế đẹp mắt.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT233', N'Điện Thoại Itel P15', N'Itel_P15_1.png', N'Itel_P15_2.png', N'Itel_P15_3.png', N'ITEL', N'16', N'2', N'1550000', N'Itel P15 là một chiếc smartphone giá rẻ với những trang bị cơ bản phù hợp với những người có nhu cầu không quá cao, chủ yếu để lướt web, nghe nhạc hay xem phim hằng ngày.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT234', N'Điện Thoại Neffos X1 Max', N'Neffos_X1_Max_1.png', N'Neffos_X1_Max_2.png', N'Neffos_X1_Max_3.png', N'NEFFOS', N'32', N'3', N'4990000', N'Điện Thoại Neffos X1 Max (32GB/3GB) - Hàng Chính Hãng với công nghệ chế tác hoàn hảo, mặt lưng kim loại được vát mỏng 2 cạnh mang lại trải nghiệm tuyệt vời giữa dáng vẻ mạnh mẽ và uyển chuyển. Trao cho bạn cảm giác hoàn hảo khi cầm trong tay.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT235', N'Điện Thoại Itel W5503 (Alpha)', N'Itel_W5503_(Alpha)_1.png', N'Itel_W5503_(Alpha)_2.png', N'Itel_W5503_(Alpha)_3.png', N'ITEL', N'16', N'1', N'1490000', N'Điện Thoại Itel W5503 (Alpha) sở hữu kiểu dáng sang trọng, trang nhã với các góc bo cong mềm mại kết hợp thiết kế mỏng, nhẹ tạo cảm giác cầm nắm vô cùng chắc chắn. Đặc biệt, Itel W5503 (Alpha) có trọng lượng vừa phải và cực kì thuận tiện trong thao tác sử', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT236', N'Điện Thoại Realme 5', N'Realme_5_1.png', N'Realme_5_2.png', N'Realme_5_3.png', N'REALME', N'32', N'3', N'3290000', N'Những chiếc smartphone Realme luôn gây được sự chú ý của người dùng bởi những trang bị trên máy so với tầm giá tiền và mới đây "siêu phẩm giá rẻ" Realme 5 3GB/64GB ra mắt lại một lần nữa khiến người dùng không khỏi "trầm trồ".', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT237', N'Điện Thoại Samsung Galaxy A50', N'Samsung_Galaxy_A50_1.png', N'Samsung_Galaxy_A50_2.png', N'Samsung_Galaxy_A50_3.png', N'SAMSUNG', N'0', N'0', N'7990000', N'Samsung Galaxy A50 64GB là chiếc smartphone tầm trung mới của Samsung trong năm 2019 với nhiều tính năng hấp dẫn, đặc biệt là có cả cảm biến vân tay dưới màn hình.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT238', N'Smartphone - VIVAS Lotus S3 LTE', N'Smartphone_-_VIVAS_Lotus_S3_LTE_1.png', N'Smartphone_-_VIVAS_Lotus_S3_LTE_2.png', N'Smartphone_-_VIVAS_Lotus_S3_LTE_3.png', N'VIVAS', N'0', N'0', N'3590000', N'VNPT Technology vừa chính thức ra mắt mẫu smartphone mới nhất của mình với tên gọi Vivas Lotus S3. Đây là mẫu máy thứ năm thuộc dòng sản phẩm Vivas Lotus của VNPT Technology.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT239', N'Điện Thoại Neffos X1', N'Neffos_X1_1.png', N'Neffos_X1_2.png', N'Neffos_X1_3.png', N'NEFFOS', N'32', N'3', N'4590000', N'Neffos là một thương hiệu điện thoại của công ty sản xuất các thiết bị mạng TP-Link. Nghe có vẻ khá xa lạ nhưng cái tên Neffos cũng đã xuất hiện tại Việt Nam khá lâu với một số dòng smartphone C - Series và Y - Series. Và đầu tháng 12 vừa qua, thương hiệu', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT24', N'Điện Thoại Vsmart Joy 2+', N'Vsmart_Joy_2+_1.png', N'Vsmart_Joy_2+_2.png', N'Vsmart_Joy_2+_3.png', N'VSMART', N'32', N'2', N'2290000', N'Vsmart Joy 2+ (2GB/32GB) là chiếc smartphone mới của Vsmart với mức giá rẻ vẫn sở hữu camera kép, pin khủng 4500 mAh, đáng để bạn cân nhắc mua trong thời gian tới.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT240', N'Điện Thoại Coolpad Sky 3 Pro', N'Coolpad_Sky_3_Pro_1.png', N'Coolpad_Sky_3_Pro_2.png', N'Coolpad_Sky_3_Pro_3.png', N'COOLPAD', N'16', N'2', N'2790000', N'Sky 3 Pro được Coolpad giới thiệu đến người dùng như một bản nâng cấp nhẹ về mặt cấu hình so với phiên bản Sky 3. Ngoài ra, các yếu tố như thiết kế và camera vẫn được giữ nguyên.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT241', N'Điện Thoại Masstel Happy 10', N'Masstel_Happy_10_1.png', N'Masstel_Happy_10_2.png', N'Masstel_Happy_10_3.png', N'MASSTEL', N'16', N'2', N'1890000', N'Điện Thoại Masstel Happy 10 sở hữu một mức giá hấp dẫn, đi kèm các chức năng cơ bản của một chiếc smartphone. Một sự lựa chọn phù hợp với túi tiền, dành cho những bạn chỉ cần một chiếc điện thoại đáp ứng đủ các nhu cầu trải nghiệm.  Masstel Happy 10 được ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT242', N'Điện Thoại Bluboo Dual', N'Bluboo_Dual_1.png', N'Bluboo_Dual_2.png', N'Bluboo_Dual_3.png', N'BLUBOO', N'16', N'2', N'2290000', N'Bluboo Dual là mẫu điện thoại thuộc phân khúc giá rẻ được ra mắt đầu năm 2017 với nhiều tính năng vô cùng nổi bật chỉ có ở những sản phẩm thuộc phân khúc cao cấp. Máy được trang bị bộ vỏ bằng kim loại có khả năng chống xước, chống ăn mòn và có khả năng tả', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT243', N'Điện Thoại Tecno WX4', N'Tecno_WX4_1.png', N'Tecno_WX4_2.png', N'Tecno_WX4_3.png', N'TECNO', N'16', N'1', N'1290000', N'Điện Thoại Tecno WX4 với thiết kế kim loại nguyên khối cùng màn hình được gia công tỉ mỉ mang lại cảm giác rất chắc chắn và sang trọng khi cầm trên tay. Hai cạnh bên của máy đơn giản nhưng vô cùng tinh xảo, viền cắt vát bo lên mặt trước cùng 2 nút nguồn v', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT244', N'Điện Thoại Neffos X1', N'Neffos_X1_1.png', N'Neffos_X1_2.png', N'Neffos_X1_3.png', N'NEFFOS', N'16', N'2', N'3890000', N'Neffos là một thương hiệu điện thoại của công ty sản xuất các thiết bị mạng TP-Link. Nghe có vẻ khá xa lạ nhưng cái tên Neffos cũng đã xuất hiện tại Việt Nam khá lâu với một số dòng smartphone C - Series và Y - Series. Và đầu tháng 12 vừa qua, thương hiệu', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT245', N'Mobell Nova i7', N'Mobell_Nova_i7_1.png', N'Mobell_Nova_i7_2.png', N'Mobell_Nova_i7_3.png', N'MOBELL', N'16', N'2', N'2190000', N'Mobell Nova i7 là mẫu smartphone giá rẻ được chú trọng vào khâu thiết kế với khung kim loại nguyên khối, mặt kính cong 2.5D.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT246', N'Điện thoại FPT X15', N'FPT_X15_1.png', N'FPT_X15_2.png', N'FPT_X15_3.png', N'FPT', N'0', N'0', N'1209000', N'FPT X15 là smartphone có thiết kế khỏe khoắn, thời trang và tỉ mỉ trên từng đường nét. Bên cạnh những chi tiết được gia công tinh xảo, camera của FPT X15 cũng là một điểm nhấn ấn tượng trên thiết kế mặt lưng láng bóng. Máy nổi bật với màn hình cảm ứng 5.3', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT247', N'Điện Thoại Vivo Y91', N'Vivo_Y91_1.png', N'Vivo_Y91_2.png', N'Vivo_Y91_3.png', N'VIVO', N'64', N'3', N'3398000', N'Vivo V91, chiếc smartphone đáng mua bậc nhất trong phân khúc tầm trung trên thị trường di động Việt với thiết kế thời trang, cấu hình mạnh, khả năng chụp ảnh tốt và mức giá hợp túi tiền.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT248', N'Điện Thoại Nony A2', N'Nony_A2_1.png', N'Nony_A2_2.png', N'Nony_A2_3.png', N'M-HORSE', N'16', N'2', N'1690000', N'Nony vừa cho ra mắt chiếc Smartphone giá cực rẻ. Nony A2 với thiết kế vỏ ngoài được sơn phủ kim loại sáng bóng mang dáng vẻ sang trọng và đẹp mắt mang dáng vẻ sang trọng và còn sở hữu vẻ ngoài nhỏ gọn, giúp bạn có thể cắm thật thoải mái và dễ dàng trong l', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT249', N'Điện Thoại Neffos Y5L', N'Neffos_Y5L_1.png', N'Neffos_Y5L_2.png', N'Neffos_Y5L_3.png', N'NEFFOS', N'8', N'1', N'1590000', N'Neffos Y5L là một trong những sản phẩm đầu tay của nhà sản xuất thiết bị mạng TP-Link. Dù là sản phẩm thuộc phân khúc giá phổ thông nhưng thiết bị này lại được trang bị một máy ảnh có khả năng chụp ảnh khá tốt, hỗ trợ 2 sim 2 sóng, hiệu năng chuẩn cùng vẻ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT25', N'Điện Thoại iPhone 6s 32GB', N'iPhone_6s_32GB_1.png', N'iPhone_6s_32GB_2.png', N'iPhone_6s_32GB_3.png', N'APPLE', N'32', N'2', N'6490000', N'Apple iPhone 6S mang đến cho bạn những trải nghiệm khác biệt hoàn toàn so với những gì bạn đã biết trước đây. Chỉ với một lần nhấn duy nhất, 3D Touch cho phép bạn làm mọi thao tác mình cần. Bức ảnh động Live Photos lưu lại những kỷ niệm sâu sắc một cách s', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT250', N'Điện Thoại Infinix HOT S (X521)', N'Infinix_HOT_S_(X521)_1.png', N'Infinix_HOT_S_(X521)_2.png', N'Infinix_HOT_S_(X521)_3.png', N'INFINIX', N'16', N'2', N'1490000', N'Infinix Hot S có thiết kế vỏ kim loại cao cấp bao trọn thân máy, lớp vỏ được cắt tỉ mỉ đến từng chi tiết tạo nên vẻ đẹp vừa sang trọng, vừa hiện đại. Máy có kích thước nhỏ gọn với độ dày chỉ 8mm, trọng lượng nhẹ 199g giúp bạn có thể mang theo dễ dàng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT251', N'Điện Thoại Wiko Jerry 3', N'Wiko_Jerry_3_1.png', N'Wiko_Jerry_3_2.png', N'Wiko_Jerry_3_3.png', N'WIKO', N'16', N'1', N'1799000', N'Điện thoại Wiko Jerry 3 với thiết kế đơn giản, thời thượng mang đến cho người dùng những trải nghiệm mới lạ cùng những tính năng đầy đủ trên 1 chiếc smart phone đậm chất Pháp, với đó là những chi tiết cạnh máy được bo cong tỉ mỉ cho cảm giác cầm nắm vô cù', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT252', N'Điện Thoại Huawei Y9 Prime (2019)', N'Huawei_Y9_Prime_(2019)_1.png', N'Huawei_Y9_Prime_(2019)_2.png', N'Huawei_Y9_Prime_(2019)_3.png', N'HUAWEI', N'128', N'4', N'6490000', N'Huawei Y9 Prime (2019) là phiên bản kế nhiệm của chiếc Y9 Prime (2018) đã ra mắt năm ngoái và cũng là chiếc điện thoại đầu tiên của Huawei được trang bị công nghệ camera trượt và màn hình tràn viền ra bốn cạnh.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT253', N'Điện thoại Oukitel WP2', N'Oukitel_WP2_1.png', N'Oukitel_WP2_2.png', N'Oukitel_WP2_3.png', N'OUKITEL', N'0', N'0', N'5490000', N'Sau thành công của dòng điện thoại thông minh smartphone pin khủng siêu bền Oukitel K10000 Max thì hãng OUKITEL đã tạo được vị thế cạnh tranh khác biệt trên thị trường di động với nhiều thách thức. Từ bước ngoặc ấy hãng tiếp tục tung ra bản nâng cấp hoàn ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT254', N'Điện Thoại Neffos C5L', N'Neffos_C5L_1.png', N'Neffos_C5L_2.png', N'Neffos_C5L_3.png', N'NEFFOS', N'8', N'1', N'1790000', N'Vừa xuất hiện trên thị trường, hai thiết kế smartphone là Neffos C5 và C5L đã gây chú ý. Neffos C5 và C5L đều được phân phối với mức giá bình dân và đặc biệt là sở hữu rất nhiều điểm mạnh đáng ngạc nhiên.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT255', N'Điện thoại Wiko View 2 Go', N'Wiko_View_2_Go_1.png', N'Wiko_View_2_Go_2.png', N'Wiko_View_2_Go_3.png', N'WIKO', N'0', N'0', N'2069000', N'Wiko View 2 Go đích thực là một siêu phẩm ở phân khúc giá rẻ khi sở hữu màn hình viền mỏng “tai thỏ” thời thượng, viên pin cực “trâu” và thiết kế đẹp mắt.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT256', N'Điện Thoại WIKO Sunny 2 Plus', N'WIKO_Sunny_2_Plus_1.png', N'WIKO_Sunny_2_Plus_2.png', N'WIKO_Sunny_2_Plus_3.png', N'WIKO', N'8', N'1', N'850000', N'Tất cả những yếu tố cần thiết trong một màn hình 5'' inch thoải mái. Wiko Sunny 2 Plus vẫn đầy màu sắc với 5 màu kim loại! Máy ảnh 5 MP phía sau của nó được tăng cường với các tính năng vui nhộn.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT257', N'Điện thoại Mobiistar Lai Z1 4G', N'Mobiistar_Lai_Z1_4G_1.png', N'Mobiistar_Lai_Z1_4G_2.png', N'Mobiistar_Lai_Z1_4G_3.png', N'MOBIISTAR', N'0', N'0', N'1239000', N'Mobiistar Lai Z1 là chiếc smartphone với điểm sáng là thiết kế giả kim loại xước và màn hình lớn 5 inch cho trải nghiệm trên màn hình thoải mái hơn trong một mức giá rẻ.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT258', N'Điện thoại Xiaomi Redmi 8 64GB Ram 3GB', N'Xiaomi_Redmi_8_64GB_Ram_3GB_1.png', N'Xiaomi_Redmi_8_64GB_Ram_3GB_2.png', N'Xiaomi_Redmi_8_64GB_Ram_3GB_3.png', N'XIAOMI', N'0', N'0', N'3590000', N'Với nhiều ưu điểm vượt trội so với các đối thủ, Xiaomi Redmi 8 4GB/64GB hứa hẹn là một con bài chiến lược của Xiaomi trong phân khúc smartphone giá rẻ, hiện đang rất sôi động hiện nay.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT259', N'Điện Thoại Neffos C5', N'Neffos_C5_1.png', N'Neffos_C5_2.png', N'Neffos_C5_3.png', N'NEFFOS', N'16', N'2', N'2690000', N'Neffos C5 là một sản phẩm thuộc bộ ba smartphone giá rẻ sẽ được hãng TP-link bán ra thị trường Việt Nam. Mẫu điện thoại NeffosC5 thuộc dòng Neffos C series, phần mặt trước ta có logo TP-Link, phần mặt lưng lại là logo Neffos. ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT26', N'Điện Thoại iPhone 11 Pro 64GB', N'iPhone_11_Pro_64GB_1.png', N'iPhone_11_Pro_64GB_2.png', N'iPhone_11_Pro_64GB_3.png', N'APPLE', N'64', N'4', N'28990000', N'Nếu như bây giờ để lựa chọn một thiết bị có thể sử dụng ổn định và được cập nhật trong khoảng 3 năm nữa thì không có sự lựa chọn nào xuất sắc hơn chiếc iPhone 11 Pro 64GB, siêu phẩm mới được giới thiệu cách đây không lâu tới từ Apple.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT260', N'Điện Thoại Symphony V75', N'Symphony_V75_1.png', N'Symphony_V75_2.png', N'Symphony_V75_3.png', N'SYMPHONY', N'0', N'1', N'1790000', N'Điện thoại Symphony V75 - Hàng chính hãng tuy có mức giá rẻ những vẫn sở hữu kiểu dáng trẻ trung với màu sắc hài hòa. Sản phẩm là lựa chọn thích hợp cho người mới sử dụng smartphone với việc đáp ứng khá các nhu cầu cần thiết.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT261', N'Điện thoại Xiaomi Mi 9 SE 64GB', N'Xiaomi_Mi_9_SE_64GB_1.png', N'Xiaomi_Mi_9_SE_64GB_2.png', N'Xiaomi_Mi_9_SE_64GB_3.png', N'XIAOMI', N'0', N'0', N'6990000', N'Vẫn như thường lệ thì bên cạnh chiếc flagship Xiaomi Mi 9 cao cấp của mình thì Xiaomi cũng giới thiệu thêm phiên bản rút gọn là chiếc Xiaomi Mi 9 SE. Máy vẫn sở hữu cho mình nhiều trang bị cao cấp tương tự đàn anh.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT27', N'Điện Thoại Samsung Galaxy A10', N'Samsung_Galaxy_A10_1.png', N'Samsung_Galaxy_A10_2.png', N'Samsung_Galaxy_A10_3.png', N'SAMSUNG', N'32', N'2', N'2869000', N'Galaxy A10 - chiếc smartphone rẻ nhất ở dòng A của Samsung vừa được trình làng nhưng sở hữu nhiều đặc điểm ưu việt về thiết kế màn hình và hiệu năng với chip Exynos 7884.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT28', N'Điện Thoại Samsung Galaxy M30s', N'Samsung_Galaxy_M30s_1.png', N'Samsung_Galaxy_M30s_2.png', N'Samsung_Galaxy_M30s_3.png', N'SAMSUNG', N'64', N'4', N'5990000', N'Samsung Galaxy M30s là phiên bản nâng cấp của chiếc Samsung Galaxy M30 với phần cứng bên trong mạnh mẽ hơn nhưng vẫn sở hữu mức giá bán khá hấp dẫn.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT29', N'Điện Thoại iPhone 11 Pro 256GB', N'iPhone_11_Pro_256GB_1.png', N'iPhone_11_Pro_256GB_2.png', N'iPhone_11_Pro_256GB_3.png', N'APPLE', N'256', N'4', N'32990000', N'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple giới thiệu trong năm 2019 và quả thực chiếc smartphone này mang trong mình nhiều trang bị xứng đáng với tên gọi "Pro".', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT3', N'Điện Thoại Samsung Galaxy M10', N'Samsung_Galaxy_M10_1.png', N'Samsung_Galaxy_M10_2.png', N'Samsung_Galaxy_M10_3.png', N'SAMSUNG', N'16', N'2', N'2520000', N'Được xem như là một quân bài chiến lược mới của Samsung vào đầu năm 2019, chiếc điện thoại Galaxy M10 vừa ra mắt hứa hẹn sẽ gây nên một làn sóng hoàn toàn mới và đủ sức cạnh tranh với các đối thủ khác trong cùng phân khúc giá rẻ.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT30', N'Điện thoại Vsmart Live', N'Vsmart_Live_1.png', N'Vsmart_Live_2.png', N'Vsmart_Live_3.png', N'VSMART', N'64', N'6', N'3290000', N'Vsmart Live là một chiếc smartphone với rất nhiều ưu điểm tới từ Vsmart và hứa hẹn sẽ làm thúc đẩy doanh số của hãng smartphone Việt này lên một tầm cao mới.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT31', N'Điện Thoại Xiaomi Redmi Note 7', N'Xiaomi_Redmi_Note_7_1.png', N'Xiaomi_Redmi_Note_7_2.png', N'Xiaomi_Redmi_Note_7_3.png', N'XIAOMI', N'64', N'4', N'3790000', N'Xiaomi Redmi Note 7 4GB/64GB là chiếc smartphone giá rẻ mới được giới thiệu vào đầu năm 2019 với nhiều trang bị đáng giá như thiết kế notch giọt nước hay camera lên tới 48 MP.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT32', N'Điện Thoại OPPO F7', N'OPPO_F7_1.png', N'OPPO_F7_2.png', N'OPPO_F7_3.png', N'OPPO', N'64', N'4', N'3690000', N'Tiếp nối sự thành công của OPPO F5 thì OPPO tiếp tục tung ra OPPO F7 với điểm nhấn vẫn là camera selfie và thiết kế "tai thỏ độc đáo".', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT33', N'Điện Thoại Nokia 3.1 Plus', N'Nokia_3.1_Plus_1.png', N'Nokia_3.1_Plus_2.png', N'Nokia_3.1_Plus_3.png', N'NOKIA', N'32', N'3', N'2289000', N'Kế thừa sự thành công của Nokia 3.1 mới đây Nokia tiếp tục mang tới Nokia 3.1 Plus với nâng cấp mạnh mẽ về màn hình và một số nâng cấp đáng giá khác.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT34', N'Điện Thoại Wiko View 2 Plus', N'Wiko_View_2_Plus_1.png', N'Wiko_View_2_Plus_2.png', N'Wiko_View_2_Plus_3.png', N'WIKO', N'32', N'3', N'1710000', N'Điện thoại Wiko View 2 Plus được thiết kế tinh xảo, năng động và trẻ trung mang hơi thở châu Âu của Wiko – một trong những nhà phát triển điện thoại hàng đầu nước Pháp hứa hẹn mang đến cho những người trẻ luôn biết rõ mình cần một chiếc điện thoại thời th', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT35', N'Điện Thoại Vsmart  Bee', N'Vsmart__Bee_1.png', N'Vsmart__Bee_2.png', N'Vsmart__Bee_3.png', N'VSMART', N'16', N'1', N'1290000', N'Vsmart Bee là một chiếc smartphone với mức giá siêu rẻ nhắm tới đối tượng người dùng có thu nhập thấp, muốn sở hữu một thiết bị phải chăng để trải nghiệm Android có nhiều tính năng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT36', N'Điện Thoại Vsmart Live', N'Vsmart_Live_1.png', N'Vsmart_Live_2.png', N'Vsmart_Live_3.png', N'VSMART', N'64', N'4', N'3290000', N'Vsmart Live là một chiếc smartphone với rất nhiều ưu điểm tới từ Vsmart và hứa hẹn sẽ làm thúc đẩy doanh số của hãng smartphone Việt này lên một tầm cao mới.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT37', N'Điện Thoại iPhone 11 64GB ', N'iPhone_11_64GB__1.png', N'iPhone_11_64GB__2.png', N'iPhone_11_64GB__3.png', N'APPLE', N'64', N'4', N'20990000', N'Chiếc iPhone mạnh mẽ nhất, lớn nhất, thời lượng pin tốt nhất đã xuất hiện. iPhone 11 Pro Max chắc chắn là chiếc điện thoại mà ai cũng ao ước khi sở hữu những tính năng xuất sắc nhất, đặc biệt là camera và pin.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT38', N'Điện Thoại OPPO F11 Pro', N'OPPO_F11_Pro_1.png', N'OPPO_F11_Pro_2.png', N'OPPO_F11_Pro_3.png', N'OPPO', N'64', N'6', N'5995000', N'Lâu nay, những chiếc điện thoại của OPPO thường được đánh giá cao ở camera selfie và với OPPO F11 Pro 128GB thì ngoài thế mạnh về camera trước với hệ thống trượt, OPPO làm người ta phải ấn tượng thêm cả về camera sau.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT39', N'Điện Thoại Vivo Y91C', N'Vivo_Y91C_1.png', N'Vivo_Y91C_2.png', N'Vivo_Y91C_3.png', N'VIVO', N'32', N'2', N'2070000', N'Sở hữu thiết kế trẻ trung, năng động cùng kiểu màn hình Halo Fullview độc đáo với mức giá "hạt dẻ", chiếc điện thoại Vivo Y91C hứa hẹn sẽ tạo cơn sốt trong thời gian tới.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT4', N'Điện Thoại Samsung Galaxy A50', N'Samsung_Galaxy_A50_1.png', N'Samsung_Galaxy_A50_2.png', N'Samsung_Galaxy_A50_3.png', N'SAMSUNG', N'64', N'4', N'6550000', N'Samsung Galaxy A50 64GB là chiếc smartphone tầm trung mới của Samsung trong năm 2019 với nhiều tính năng hấp dẫn, đặc biệt là có cả cảm biến vân tay dưới màn hình.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT40', N'Điện Thoại OPPO F9 (A11)', N'OPPO_F9_(A11)_1.png', N'OPPO_F9_(A11)_2.png', N'OPPO_F9_(A11)_3.png', N'OPPO', N'64', N'4', N'4490000', N'Là chiếc điện thoại OPPO mới nhất sở hữu công nghệ sạc VOOC đột phá, OPPO F9 còn được ưu ái nhiều tính năng nổi trội như thiết kế mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT41', N'Điện Thoại Samsung Galaxy Note 10 Plus', N'Samsung_Galaxy_Note_10_Plus_1.png', N'Samsung_Galaxy_Note_10_Plus_2.png', N'Samsung_Galaxy_Note_10_Plus_3.png', N'SAMSUNG', N'256', N'12', N'25390000', N'Trông ngoại hình khá giống nhau, tuy nhiên Samsung Galaxy Note 10+ sở hữu khá nhiều điểm khác biệt so với Galaxy Note 10 và đây được xem là một trong những chiếc máy đáng mua nhất trong năm 2019, đặc biệt dành cho những người thích một chiếc máy màn hình ', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT45', N'Điện Thoại Xiaomi Mi 8 Lite', N'Xiaomi_Mi_8_Lite_1.png', N'Xiaomi_Mi_8_Lite_2.png', N'Xiaomi_Mi_8_Lite_3.png', N'XIAOMI', N'64', N'4', N'3590000', N'Xiaomi Mi 8 Lite có lẽ là chiếc smartphone rẻ nhất của dòng Mi (dòng flagship của Xiaomi) mà vẫn giữ được cho mình thiết kế đẹp mắt và nhiều tính năng thú vị.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT47', N'Điện Thoại Vivo V9', N'Vivo_V9_1.png', N'Vivo_V9_2.png', N'Vivo_V9_3.png', N'VIVO', N'64', N'4', N'3190000', N'Vivo V9 là chiếc smartphone tầm trung cận cao cấp với điểm nhấn là máy có camera kép phía sau và camera selfie độ phân giải cao 24 MP.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT48', N'Điện Thoại Nokia 7.2 ', N'Nokia_7.2__1.png', N'Nokia_7.2__2.png', N'Nokia_7.2__3.png', N'NOKIA', N'64', N'4', N'5490000', N'Nokia 7.2 là một chiếc smartphone rất đáng chú ý trong những tháng cuối năm 2019 với thiết kế thời thượng, hệ điều hành mượt mà và cụm camera chất lượng.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT49', N'Điện Thoại iPhone XS Max 256GB', N'iPhone_XS_Max_256GB_1.png', N'iPhone_XS_Max_256GB_2.png', N'iPhone_XS_Max_256GB_3.png', N'APPLE', N'256', N'4', N'25990000', N'iPhone XS Max 256GB mang trong mình sức mạnh phần cứng vượt trội được tối ưu hóa bởi hệ điều hành iOS, với kích thước màn hình rất lớn lên đến 6.5 inch chắc chắn sẽ mang đến cho người dùng những trải nghiệm vượt trội về mọi mặt so với các dòng iPhone khác', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT5', N'Điện Thoại Xiaomi Redmi Note 7', N'Xiaomi_Redmi_Note_7_1.png', N'Xiaomi_Redmi_Note_7_2.png', N'Xiaomi_Redmi_Note_7_3.png', N'XIAOMI', N'32', N'3', N'3290000', N'Xiaomi Redmi Note 7 4GB/64GB là chiếc smartphone giá rẻ mới được giới thiệu vào đầu năm 2019 với nhiều trang bị đáng giá như thiết kế notch giọt nước hay camera lên tới 48 MP.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT50', N'Điện Thoại Xiaomi Mi 9T Pro', N'Xiaomi_Mi_9T_Pro_1.png', N'Xiaomi_Mi_9T_Pro_2.png', N'Xiaomi_Mi_9T_Pro_3.png', N'XIAOMI', N'0', N'0', N'8890000', N'Xiaomi Mi 9T có thiết kế giống hệt như Redmi K20 Pro. Mi 9T có khung được làm bằng kim loại, cả mặt trước và sau đều được phủ kính. Khi cầm máy bạn sẽ cảm thấy thoải mái và khá ôm tay. ', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT51', N'Điện Thoại Itel A16 Plus', N'Itel_A16_Plus_1.png', N'Itel_A16_Plus_2.png', N'Itel_A16_Plus_3.png', N'ITEL', N'8', N'1', N'850000', N'tel A16 Plus là một chiếc smartphone giá rẻ với những trang bị cơ bản phù hợp với người dùng muốn có một chiếc máy để trải nghiệm hệ điều hành Android.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT52', N'Điện Thoại Vivo V15', N'Vivo_V15_1.png', N'Vivo_V15_2.png', N'Vivo_V15_3.png', N'VIVO', N'128', N'6', N'6129000', N'Được xem là bản rút gọn của flagship Vivo V15 Pro sắp ra mắt, chiếc điện thoại Vivo V15 128GB vẫn mang trong mình nhiều nét đáng giá với thiết kế cao cấp cùng camera sefie pop-up 32 MP lạ mắt.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT53', N'Điện Thoại iPhone XS Max 64GB', N'iPhone_XS_Max_64GB_1.png', N'iPhone_XS_Max_64GB_2.png', N'iPhone_XS_Max_64GB_3.png', N'APPLE', N'64', N'4', N'24990000', N'Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max 64 GB của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT54', N'Điện Thoại Samsung Galaxy Note 9', N'Samsung_Galaxy_Note_9_1.png', N'Samsung_Galaxy_Note_9_2.png', N'Samsung_Galaxy_Note_9_3.png', N'SAMSUNG', N'128', N'6', N'14990000', N'Mang lại sự cải tiến đặc biệt trong cây bút S Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT55', N'Điện Thoại Asus Zenfone Max Pro M2', N'Asus_Zenfone_Max_Pro_M2_1.png', N'Asus_Zenfone_Max_Pro_M2_2.png', N'Asus_Zenfone_Max_Pro_M2_3.png', N'ASUS', N'32', N'3', N'3590000', N'Sau thành công của Zenfone Max Pro M1, Asus tiếp tục giới thiệu đến người dùng phiên bản kế thừa với cái tên ASUS Zenfone Max Pro M2, một chiếc điện thoại đầy sự trẻ trung trong thiết kế, mạnh mẽ trong hiệu năng và bền bỉ trong trải nghiệm.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT56', N'Điện Thoại iPhone 11 Pro Max 512GB', N'iPhone_11_Pro_Max_512GB_1.png', N'iPhone_11_Pro_Max_512GB_2.png', N'iPhone_11_Pro_Max_512GB_3.png', N'APPLE', N'512', N'4', N'39990000', N'iPhone 11 Pro Max 512GB là phiên bản có bộ nhớ nhiều nhất, màn hình lớn nhất và thời lượng pin tuyệt vời nhất hiện nay. Bạn sẽ được cầm trên tay chiếc điện thoại đẳng cấp mà bất cứ ai cũng mơ ước.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT57', N'Điện Thoại iPhone XS 64GB', N'iPhone_XS_64GB_1.png', N'iPhone_XS_64GB_2.png', N'iPhone_XS_64GB_3.png', N'APPLE', N'64', N'4', N'22990000', N'Đến hẹn lại lên, năm nay Apple giới thiệu tới người dùng thế hệ tiếp theo với 3 phiên bản, trong đó có cái tên iPhone Xs 64 GB với những nâng cấp mạnh mẽ về phần cứng đến hiệu năng, màn hình cùng hàng loạt các trang bị cao cấp khác. ', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT58', N'Điện Thoại Samsung Galaxy A70', N'Samsung_Galaxy_A70_1.png', N'Samsung_Galaxy_A70_2.png', N'Samsung_Galaxy_A70_3.png', N'SAMSUNG', N'128', N'6', N'8890000', N'Samsung Galaxy A70 là một phiên bản phóng to của chiếc Samsung Galaxy A50 đã ra mắt trước đó với nhiều cải tiến tới từ bên trong.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT59', N'Điện Thoại iPhone 8 Plus', N'iPhone_8_Plus_1.png', N'iPhone_8_Plus_2.png', N'iPhone_8_Plus_3.png', N'APPLE', N'0', N'3', N'16990000', N'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT6', N'Điện Thoại Xiaomi Redmi 7A', N'Xiaomi_Redmi_7A_1.png', N'Xiaomi_Redmi_7A_2.png', N'Xiaomi_Redmi_7A_3.png', N'XIAOMI', N'32', N'2', N'1935000', N'Xiaomi Redmi 7A 2GB/32GB  là một chiếc smartphone theo phong cách truyền thống của Xiaomi, mang tới người dùng trải nghiệm Android ổn trên một chiếc máy có mức giá rất hấp dẫn.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT60', N'Điện Thoại Samsung Galaxy A10s', N'Samsung_Galaxy_A10s_1.png', N'Samsung_Galaxy_A10s_2.png', N'Samsung_Galaxy_A10s_3.png', N'SAMSUNG', N'32', N'2', N'3490000', N'Samsung Galaxy A10s là bản nâng cấp của chiếc Galaxy A10 đã ra mắt trước đó với camera kép, dung lượng pin lớn hơn và đã được trang bị thêm cảm biến vân tay.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT61', N'Điện Thoại Itel Alpha Lite', N'Itel_Alpha_Lite_1.png', N'Itel_Alpha_Lite_2.png', N'Itel_Alpha_Lite_3.png', N'ITEL', N'8', N'1', N'789001', N'Itel Alpha Lite một thành viên mới vừa gia nhập phân khúc smartphone giá rẻ đến từ thương hiệu Itel với những trang bị cơ bản phù hợp với đối tượng học sinh sinh viên hay người dùng có thu nhập thấp.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT62', N'Điện Thoại Samsung Galaxy A50s', N'Samsung_Galaxy_A50s_1.png', N'Samsung_Galaxy_A50s_2.png', N'Samsung_Galaxy_A50s_3.png', N'SAMSUNG', N'64', N'4', N'6550000', N'Nằm trong sứ mệnh nâng cao khả năng cạnh tranh với các smartphone đến từ nhiều nhà sản xuất Trung Quốc, mới đây Samsung tiếp tục giới thiệu phiên bản Samsung Galaxy A50s với nhiều tính năng mà trước đây chỉ xuất hiện trên dòng cao cấp.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT63', N'Điện Thoại OPPO F5 Youth', N'OPPO_F5_Youth_1.png', N'OPPO_F5_Youth_2.png', N'OPPO_F5_Youth_3.png', N'OPPO', N'32', N'3', N'2990000', N'OPPO F5 Youth, phiên bản giá rẻ của chuyên gia selfie, màn hình tràn cạnh OPPO F5 với thiết kế và tính năng hoàn toàn tương đương nhưng thông số cấu hình phần cứng kém hơn một chút.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT64', N'Điện Thoại Vivo Y19', N'Vivo_Y19_1.png', N'Vivo_Y19_2.png', N'Vivo_Y19_3.png', N'VIVO', N'128', N'6', N'4259000', N'Vivo Y19 là chiếc smartphone tập trung mạnh vào khả năng chụp ảnh ở camera chính lẫn camera selfie với công nghệ AI, hứa hẹn sẽ nhận được sự đón nhận tới từ người dùng là những bạn trẻ năng động và cá tính.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT65', N'Điện Thoại iPhone 8 64GB', N'iPhone_8_64GB_1.png', N'iPhone_8_64GB_2.png', N'iPhone_8_64GB_3.png', N'APPLE', N'64', N'2', N'11990000', N'iPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT66', N'Điện Thoại Xiaomi Redmi 7', N'Xiaomi_Redmi_7_1.png', N'Xiaomi_Redmi_7_2.png', N'Xiaomi_Redmi_7_3.png', N'XIAOMI', N'32', N'3', N'2989000', N'Nếu bạn đang tìm kiếm một smartphone có mức giá rẻ nhưng cũng phải đáp ứng tốt nhu cầu sử dụng hằng ngày và phải có một thiết kế thời trang thì không có sự lựa chọn nào hợp lý hơn Xiaomi Redmi 7 3GB/32GB.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT67', N'Điện Thoại Vivo Y11', N'Vivo_Y11_1.png', N'Vivo_Y11_2.png', N'Vivo_Y11_3.png', N'VIVO', N'32', N'3', N'2639000', N'Những smartphone thuộc dòng Y của Vivo từ trước đến nay đều thu hút được số đông người dùng nhờ mức giá phổ thông mà vẫn mang lại trải nghiệm tốt và Vivo Y11 mới ra mắt gần đây cũng là một chiếc máy như vậy.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT68', N'Điện Thoại Xiaomi Mi 9T', N'Xiaomi_Mi_9T_1.png', N'Xiaomi_Mi_9T_2.png', N'Xiaomi_Mi_9T_3.png', N'XIAOMI', N'64', N'6', N'6990000', N'Xiaomi Mi 9T 64GB sở hữu thiết kế tuyệt đẹp với màn hình FullView đúng nghĩa, mặt lưng đầy phong cách, 3 camera ấn tượng và cấu hình đáng kinh ngạc.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT69', N'Điện Thoại Huawei Nova 3i', N'Huawei_Nova_3i_1.png', N'Huawei_Nova_3i_2.png', N'Huawei_Nova_3i_3.png', N'HUAWEI', N'128', N'4', N'5639000', N'Với những smartphone như Nova 2i hay Nova 3e thì Huawei đã và đang tạo nên những cơn sốt rất lớn trong phân khúc tầm trung và cái tên mới Huawei Nova 3i được cải tiến và nâng cấp nhiều điểm mới, hứa hẹn sẽ mang lại làn gió mới cho thị trường.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT7', N'Điện Thoại iPhone XR 64GB', N'iPhone_XR_64GB_1.png', N'iPhone_XR_64GB_2.png', N'iPhone_XR_64GB_3.png', N'APPLE', N'64', N'3', N'15490000', N'Là chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng chống nước chống bụi.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT70', N'Điện Thoại OPPO A3s', N'OPPO_A3s_1.png', N'OPPO_A3s_2.png', N'OPPO_A3s_3.png', N'OPPO', N'32', N'3', N'3739000', N'Một màn hình lớn cực đã, thời lượng pin siêu dài và camera kép đẳng cấp trong tầm giá rẻ, đó là OPPO A3s, chiếc điện thoại thời trang được ưa chuộng bậc nhất hiện nay.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT71', N'Điện Thoại Realme 5 Pro', N'Realme_5_Pro_1.png', N'Realme_5_Pro_2.png', N'Realme_5_Pro_3.png', N'REALME', N'128', N'4', N'4990000', N'Realme 5 Pro 4GB/128GB, đúng như tên gọi thì đây sẽ là phiên bản cao cấp hơn của chiếc Realme 5 nhằm hướng tới đối tượng người dùng đòi hỏi nhiều hơn về cấu hình của một chiếc smartphone.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT72', N'Điện Thoại OPPO A9 2020', N'OPPO_A9_2020_1.png', N'OPPO_A9_2020_2.png', N'OPPO_A9_2020_3.png', N'OPPO', N'128', N'8', N'5990000', N'Kế thừa phiên bản OPPO A7 đã từng gây hot trước đó, OPPO A9 (2020) có nhiều sự cải tiến hơn về màn hình, camera và hiệu năng trải nghiệm.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT73', N'Điện Thoại Realme 5', N'Realme_5_1.png', N'Realme_5_2.png', N'Realme_5_3.png', N'REALME', N'64', N'3', N'3520000', N'Những chiếc smartphone Realme luôn gây được sự chú ý của người dùng bởi những trang bị trên máy so với tầm giá tiền và mới đây "siêu phẩm giá rẻ" Realme 5 3GB/64GB ra mắt lại một lần nữa khiến người dùng không khỏi "trầm trồ".', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT74', N'Điện Thoại OPPO F11 Pro', N'OPPO_F11_Pro_1.png', N'OPPO_F11_Pro_2.png', N'OPPO_F11_Pro_3.png', N'OPPO', N'128', N'6', N'6490000', N'Lâu nay, những chiếc điện thoại của OPPO thường được đánh giá cao ở camera selfie và với OPPO F11 Pro 128GB thì ngoài thế mạnh về camera trước với hệ thống trượt, OPPO làm người ta phải ấn tượng thêm cả về camera sau.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT75', N'Điện Thoại OPPO Reno 2F', N'OPPO_Reno_2F_1.png', N'OPPO_Reno_2F_2.png', N'OPPO_Reno_2F_3.png', N'OPPO', N'0', N'8', N'7690000', N'Không lâu sau khi ra mắt Oppo Reno dòng điện thoại đặc biệt với thiết kế camera selfie vây cá mập, thì hãng lại làm người dùng đứng ngồi không yên khi ra mắt chiếc siêu phẩm tiếp theo mang tên Oppo Reno 2 cùng với Oppo Reno 2F và Oppo Reno 2Z. Và tất nhiê', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT76', N'Điện Thoại OPPO F7', N'OPPO_F7_1.png', N'OPPO_F7_2.png', N'OPPO_F7_3.png', N'OPPO', N'128', N'6', N'6988000', N'Tiếp nối sự thành công của OPPO F5 thì OPPO tiếp tục tung ra OPPO F7 với điểm nhấn vẫn là camera selfie và thiết kế "tai thỏ độc đáo".', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT77', N'Điện Thoại Xiaomi Mi A3', N'Xiaomi_Mi_A3_1.png', N'Xiaomi_Mi_A3_2.png', N'Xiaomi_Mi_A3_3.png', N'XIAOMI', N'64', N'4', N'3990000', N'Xiaomi đã và đang khá thành công với các sản phẩm thuộc dòng Mi A của mình và mới đây hãng đã tiếp tục cho ra mắt phiên bản nâng cấp là chiếc Xiaomi Mi A3 (Mi CC9e) với cải tiến mạnh mẽ về camera và hiệu năng bên trong.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT78', N'Điện Thoại Samsung Galaxy M20 ', N'Samsung_Galaxy_M20_1.png', N'Samsung_Galaxy_M20_2.png', N'Samsung_Galaxy_M20_3.png', N'SAMSUNG', N'32', N'3', N'4629000', N'Nổi bật hơn cả trong lần ra mắt bộ đôi dòng M của Samsung, chiếc điện thoại Galaxy M20 có màn hình mới Infinity-V, dung lượng pin cực khủng lên tới 5000 mAh, camera siêu rộng và nhiều tính năng hấp dẫn khác.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT79', N'Điện Thoại Coolpad N3', N'Coolpad_N3_1.png', N'Coolpad_N3_2.png', N'Coolpad_N3_3.png', N'COOLPAD', N'16', N'1', N'950000', N'Coolpad N3, dòng smartphone giá rẻ của Coolpad có một thiết kế bắt mắt cùng một hiệu năng mượt mà đến từ hệ điều hành Android Go, giúp người dùng có được một sản phẩm chất lượng nhưng với mức giá phải chăng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT8', N'Điện Thoại Xiaomi Mi 9 Lite (Mi CC9 Global Version)', N'Xiaomi_Mi_9_Lite_(Mi_CC9_Global_Version)_1.png', N'Xiaomi_Mi_9_Lite_(Mi_CC9_Global_Version)_2.png', N'Xiaomi_Mi_9_Lite_(Mi_CC9_Global_Version)_3.png', N'XIAOMI', N'64', N'6', N'5490000', N'Điện Thoại Xiaomi Mi 9 Lite có thiết kế tinh tế, cao cấp và sang trọng đến từng đường nét khi được chế tác từ kính gradient như người anh em Mi 8 Lite. Phần lưng kính cong cho trải nghiệm cầm nắm chắc chắn và đầy phong cách. Đồng thời, phần khung kim loại', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT80', N'Điện Thoại Oppo A1K', N'Oppo_A1K_1.png', N'Oppo_A1K_2.png', N'Oppo_A1K_3.png', N'OPPO', N'32', N'2', N'2690000', N'OPPO A1K là một chiếc máy giá rẻ và vẫn tập trung vào những lợi thế của OPPO như camera selfie hay thiết kế thời trang phù hợp cho giới trẻ.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT81', N'Điện Thoại Pocophone F1', N'Pocophone_F1_1.png', N'Pocophone_F1_2.png', N'Pocophone_F1_3.png', N'POCOPHONE BY XIAOMI', N'64', N'6', N'7600000', N'"Ông vua tốc độ" Pocophone F1 đã xuất hiện, bạn sẽ được tận hưởng tốc độ nhanh nhất, hiệu năng xử lý tuyệt vời nhất trong một mức giá khó tin.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT82', N'Điện Thoại Samsung Galaxy S10 Plus', N'Samsung_Galaxy_S10_Plus_1.png', N'Samsung_Galaxy_S10_Plus_2.png', N'Samsung_Galaxy_S10_Plus_3.png', N'SAMSUNG', N'128', N'8', N'21590000', N'Samsung Galaxy S10+ 128GB là một trong những chiếc smartphone được trông chờ nhiều nhất trong năm 2019 và không phụ sự kỳ vọng của mọi người thì chiếc Galaxy S thứ 10 của Samsung thực sự gây ấn tượng mạnh cho người dùng.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT83', N'Điện Thoại iPhone 8 Plus 64GB', N'iPhone_8_Plus_64GB_1.png', N'iPhone_8_Plus_64GB_2.png', N'iPhone_8_Plus_64GB_3.png', N'APPLE', N'64', N'3', N'14990000', N'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'IOS')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT84', N'Điện Thoại BlackBerry KEYone (Silver)', N'BlackBerry_KEYone_(Silver)_1.png', N'BlackBerry_KEYone_(Silver)_2.png', N'BlackBerry_KEYone_(Silver)_3.png', N'BLACKBERRY', N'32', N'3', N'6990000', N'BlackBerry KEYone 4GB/64GB là một chiếc smartphone mang đậm chất BlackBerry với bàn phím vật lý truyền thống, phần mềm bảo mật tiên tiến nhưng chỉ khác là máy giờ đây chạy trên nền tảng Android thay vì BlackBerry OS như những điện thoại trước đó.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT85', N'Điện Thoại OPPO F11', N'OPPO_F11_1.png', N'OPPO_F11_2.png', N'OPPO_F11_3.png', N'OPPO', N'64', N'6', N'5390000', N'OPPO F11 gây ấn tượng với người dùng bởi thiết kế màn hình tràn viền hình giọt nước và camera sau khủng đến 48 MP.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT86', N'Điện Thoại Samsung Galaxy A30', N'Samsung_Galaxy_A30_1.png', N'Samsung_Galaxy_A30_2.png', N'Samsung_Galaxy_A30_3.png', N'SAMSUNG', N'32', N'3', N'4790000', N'Samsung Galaxy A30 64GB là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT87', N'Điện Thoại Xiaomi Redmi 8A', N'Xiaomi_Redmi_8A_1.png', N'Xiaomi_Redmi_8A_2.png', N'Xiaomi_Redmi_8A_3.png', N'XIAOMI', N'32', N'2', N'2379000', N'Xiaomi Redmi 8A là một chiếc smartphone nổi bật trong phân khúc giá rẻ với nhiều ưu điểm như pin khủng, chip Snapdragon mới, camera AI và màn hình giọt nước thời thượng.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT89', N'Điện thoại Xiaomi Redmi 8A', N'Xiaomi_Redmi_8A_1.png', N'Xiaomi_Redmi_8A_2.png', N'Xiaomi_Redmi_8A_3.png', N'XIAOMI', N'0', N'0', N'2299000', N'Xiaomi Redmi 8A là một chiếc smartphone nổi bật trong phân khúc giá rẻ với nhiều ưu điểm như pin khủng, chip Snapdragon mới, camera AI và màn hình giọt nước thời thượng.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT9', N'Điện Thoại Samsung Galaxy Note 10', N'Samsung_Galaxy_Note_10_1.png', N'Samsung_Galaxy_Note_10_2.png', N'Samsung_Galaxy_Note_10_3.png', N'SAMSUNG', N'256', N'8', N'21590000', N'Nếu như từ trước tới nay dòng Galaxy Note của Samsung thường ít được các bạn nữ sử dụng bởi kích thước màn hình khá lớn khiến việc cầm nắm trở nên khó khăn thì Samsung Galaxy Note 10 sẽ là chiếc smartphone nhỏ gọn, phù hợp với cả những bạn có bàn tay nhỏ.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT90', N'Điện Thoại Blackberry KEY2', N'Blackberry_KEY2_1.png', N'Blackberry_KEY2_2.png', N'Blackberry_KEY2_3.png', N'BLACKBERRY', N'64', N'6', N'13990000', N'BlackBerry Key2 là một bản nâng cấp toàn diện cho chiếc KeyOne với rất nhiều thay đổi và điều đáng mừng là yếu tố đặc trưng nhất của dòng điện thoại BlackBerry là bàn phím vật lý cổ điển vẫn được giữ lại.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT91', N'Điện Thoại Samsung Galaxy A30', N'Samsung_Galaxy_A30_1.png', N'Samsung_Galaxy_A30_2.png', N'Samsung_Galaxy_A30_3.png', N'SAMSUNG', N'64', N'4', N'5550000', N'Samsung Galaxy A30 64GB là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT92', N'Điện Thoại Samsung Galaxy A30s', N'Samsung_Galaxy_A30s_1.png', N'Samsung_Galaxy_A30s_2.png', N'Samsung_Galaxy_A30s_3.png', N'SAMSUNG', N'64', N'4', N'5920000', N'Samsung Galaxy A30 64GB là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT93', N'Điện Thoại Coolpad N5 Mini', N'Coolpad_N5_Mini_1.png', N'Coolpad_N5_Mini_2.png', N'Coolpad_N5_Mini_3.png', N'COOLPAD', N'16', N'1', N'1050000', N'Nếu bạn là một người dùng hết sức cơ bản với các nhu cầu nhẹ nhàng và đang tìm kiếm cho mình một chiếc smartphone vừa túi tiền thì có thể tham khảo qua chiếc điện thoại Coolpad N5 mini vừa được ra mắt đầu tháng 11/2019.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT94', N'Điện Thoại Samsung Galaxy Note 9', N'Samsung_Galaxy_Note_9_1.png', N'Samsung_Galaxy_Note_9_2.png', N'Samsung_Galaxy_Note_9_3.png', N'SAMSUNG', N'512', N'8', N'18990000', N'Mang lại sự cải tiến đặc biệt trong cây bút S Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.', N'25', N'20', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT95', N'Điện Thoại Xiaomi Redmi Note 8 Pro', N'Xiaomi_Redmi_Note_8_Pro_1.png', N'Xiaomi_Redmi_Note_8_Pro_2.png', N'Xiaomi_Redmi_Note_8_Pro_3.png', N'XIAOMI', N'0', N'0', N'5990000', N'Là phiên bản nâng cấp của chiếc Xiaomi Redmi Note 7 Pro đã "làm mưa làm gió" trên thị trường trước đó, chiếc Xiaomi Redmi Note 8 Pro (6GB/128GB) sẽ là sự lựa chọn hàng đầu dành cho người dùng quan tâm nhiều về hiệu năng và camera của một chiếc máy tầm tru', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT96', N'Điện Thoại Oppo Reno', N'Oppo_Reno_1.png', N'Oppo_Reno_2.png', N'Oppo_Reno_3.png', N'OPPO', N'256', N'6', N'9490000', N'Những năm gần đây OPPO luôn tạo được dấu ấn trên các sản phẩm mới của mình và smartphone vừa ra mắt OPPO Reno là một ví dụ điển hình.', N'25', N'15', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT97', N'Điện Thoại Itel  S15 Pro', N'Itel__S15_Pro_1.png', N'Itel__S15_Pro_2.png', N'Itel__S15_Pro_3.png', N'ITEL', N'32', N'2', N'1790000', N'Itel S15 Pro với một chiếc smartphone có mức giá rất rẻ nhưng vẫn sở hữu cho mình màn hình giọt nước theo xu thế cùng cụm camera "có một không hai" trong phân khúc.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT98', N'Điện Thoại Honor 8X', N'Honor_8X_1.png', N'Honor_8X_2.png', N'Honor_8X_3.png', N'HONOR', N'64', N'4', N'3290000', N'Sở hữu những đặc điểm của một chiếc flagship nhưng Honor 8X lại có giá bán rẻ hơn rất nhiều và chiếc điẹn thoại này chắc chắn sẽ không làm bạn phải thất vọng.', N'25', N'10', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO

INSERT INTO [project_2019].[product] VALUES (N'DT99', N'Điện Thoại Xiaomi Mi 9', N'Xiaomi_Mi_9_1.png', N'Xiaomi_Mi_9_2.png', N'Xiaomi_Mi_9_3.png', N'XIAOMI', N'64', N'6', N'10490000', N'Tính đến 2019, Xiaomi Mi 9 đang là mẫu flagship cao cấp của Xiaomi được người dùng yêu thích nhất. Hãy cùng MobileCity mở hộp và đánh giá nhanh sản phẩm để có cái nhìn chi tiết nhất nhé.', N'25', N'25', N'2019-12-05 00:00:00', N'0', N'ANDROID')
GO


-- ----------------------------
-- Table structure for ram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[ram]') AND type IN ('U'))
	DROP TABLE [project_2019].[ram]
GO

CREATE TABLE [project_2019].[ram] (
  [RAM] int  NOT NULL
)
GO

ALTER TABLE [project_2019].[ram] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ram
-- ----------------------------
INSERT INTO [project_2019].[ram] VALUES (N'2')
GO

INSERT INTO [project_2019].[ram] VALUES (N'3')
GO

INSERT INTO [project_2019].[ram] VALUES (N'4')
GO

INSERT INTO [project_2019].[ram] VALUES (N'6')
GO

INSERT INTO [project_2019].[ram] VALUES (N'8')
GO

INSERT INTO [project_2019].[ram] VALUES (N'12')
GO


-- ----------------------------
-- Table structure for recently_viewed
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[recently_viewed]') AND type IN ('U'))
	DROP TABLE [project_2019].[recently_viewed]
GO

CREATE TABLE [project_2019].[recently_viewed] (
  [ID_ACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_PRODUCT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DATE_VIEW] datetime2(0) DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[recently_viewed] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of recently_viewed
-- ----------------------------
INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT1', N'2019-12-14 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT11', N'2019-12-14 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT118', N'2019-12-14 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT119', N'2019-12-14 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT154', N'2019-12-13 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT157', N'2019-12-13 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT161', N'2019-12-13 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT187', N'2019-12-13 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT196', N'2019-12-13 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK1', N'DT211', N'2019-12-13 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT1', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT102', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT11', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT12', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT13', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT15', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT29', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK10', N'DT54', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK11', N'DT15', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK12', N'DT173', N'2019-12-18 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK12', N'DT58', N'2019-12-18 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK12', N'DT64', N'2019-12-18 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK15', N'DT29', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK2', N'DT1', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK2', N'DT9', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK21', N'DT203', N'2019-12-19 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK21', N'DT245', N'2019-12-19 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK22', N'DT11', N'2019-12-19 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK25', N'DT1', N'2020-01-02 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK26', N'DT13', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT10', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT102', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT105', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT110', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT12', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT160', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT262', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT263', N'2020-01-12 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT3', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK3', N'DT5', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK4', N'DT1', N'2019-12-14 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK8', N'DT12', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK8', N'DT58', N'2020-01-09 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK9', N'DT102', N'2019-12-18 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK9', N'DT182', N'2019-12-18 00:00:00')
GO

INSERT INTO [project_2019].[recently_viewed] VALUES (N'TK9', N'DT218', N'2019-12-18 00:00:00')
GO


-- ----------------------------
-- Table structure for yeuthich
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[project_2019].[yeuthich]') AND type IN ('U'))
	DROP TABLE [project_2019].[yeuthich]
GO

CREATE TABLE [project_2019].[yeuthich] (
  [ID_YEUTHICH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ID_PRODUCT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [ID_ACCOUNT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [project_2019].[yeuthich] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of yeuthich
-- ----------------------------
INSERT INTO [project_2019].[yeuthich] VALUES (N'YT1', N'DT13', N'TK10')
GO

INSERT INTO [project_2019].[yeuthich] VALUES (N'YT2', N'DT11', N'TK10')
GO

INSERT INTO [project_2019].[yeuthich] VALUES (N'YT3', N'DT1', N'TK10')
GO


-- ----------------------------
-- Primary Key structure for table account
-- ----------------------------
ALTER TABLE [project_2019].[account] ADD CONSTRAINT [PK_account_ID_ACCOUNT] PRIMARY KEY CLUSTERED ([ID_ACCOUNT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for authentication
-- ----------------------------
DBCC CHECKIDENT ('[project_2019].[authentication]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table authentication
-- ----------------------------
ALTER TABLE [project_2019].[authentication] ADD CONSTRAINT [PK__authenti__6ED7C622728B0A5A] PRIMARY KEY CLUSTERED ([ID_AUTH])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table bill
-- ----------------------------
ALTER TABLE [project_2019].[bill] ADD CONSTRAINT [PK_bill_ID_BILL] PRIMARY KEY CLUSTERED ([ID_BILL])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table binhluan
-- ----------------------------
ALTER TABLE [project_2019].[binhluan] ADD CONSTRAINT [PK_binhluan_ID_BINHLUAN] PRIMARY KEY CLUSTERED ([ID_BINHLUAN])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table brand
-- ----------------------------
ALTER TABLE [project_2019].[brand] ADD CONSTRAINT [PK_brand_ID_BRAND] PRIMARY KEY CLUSTERED ([ID_BRAND])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table cart
-- ----------------------------
ALTER TABLE [project_2019].[cart] ADD CONSTRAINT [PK_cart_ID_ACCOUNT] PRIMARY KEY CLUSTERED ([ID_ACCOUNT], [ID_PRODUCT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ct_account
-- ----------------------------
ALTER TABLE [project_2019].[ct_account] ADD CONSTRAINT [PK_ct_account_ID_ACCOUNT] PRIMARY KEY CLUSTERED ([ID_ACCOUNT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ct_group_product
-- ----------------------------
ALTER TABLE [project_2019].[ct_group_product] ADD CONSTRAINT [PK_ct_group_product_ID_GROUP] PRIMARY KEY CLUSTERED ([ID_GROUP], [ID_PRODUCT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table danhgia
-- ----------------------------
ALTER TABLE [project_2019].[danhgia] ADD CONSTRAINT [PK_danhgia_ID_DANHGIA] PRIMARY KEY CLUSTERED ([ID_DANHGIA])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table detail_order
-- ----------------------------
ALTER TABLE [project_2019].[detail_order] ADD CONSTRAINT [PK_detail_order_ID_ORDER] PRIMARY KEY CLUSTERED ([ID_ORDER], [ID_PRODUCT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table group_product
-- ----------------------------
ALTER TABLE [project_2019].[group_product] ADD CONSTRAINT [PK_group_product_ID_GROUP] PRIMARY KEY CLUSTERED ([ID_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table hedieuhanh
-- ----------------------------
ALTER TABLE [project_2019].[hedieuhanh] ADD CONSTRAINT [PK_hedieuhanh_OS] PRIMARY KEY CLUSTERED ([OS])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for log
-- ----------------------------
DBCC CHECKIDENT ('[project_2019].[log]', RESEED, 125)
GO


-- ----------------------------
-- Primary Key structure for table log
-- ----------------------------
ALTER TABLE [project_2019].[log] ADD CONSTRAINT [PK__log__07BE4DF874BD3A78] PRIMARY KEY CLUSTERED ([IDLOG])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table mailpassword
-- ----------------------------
ALTER TABLE [project_2019].[mailpassword] ADD CONSTRAINT [PK_mailpassword_ID_ACCOUNT] PRIMARY KEY CLUSTERED ([ID_ACCOUNT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table memory
-- ----------------------------
ALTER TABLE [project_2019].[memory] ADD CONSTRAINT [PK_memory_MEMORY] PRIMARY KEY CLUSTERED ([MEMORY])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table order
-- ----------------------------
ALTER TABLE [project_2019].[order] ADD CONSTRAINT [PK_order_ID_ORDER] PRIMARY KEY CLUSTERED ([ID_ORDER])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table os
-- ----------------------------
ALTER TABLE [project_2019].[os] ADD CONSTRAINT [PK_os_OS] PRIMARY KEY CLUSTERED ([OS])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE [project_2019].[product] ADD CONSTRAINT [PK_product_ID_PRODUCT] PRIMARY KEY CLUSTERED ([ID_PRODUCT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ram
-- ----------------------------
ALTER TABLE [project_2019].[ram] ADD CONSTRAINT [PK_ram_RAM] PRIMARY KEY CLUSTERED ([RAM])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table recently_viewed
-- ----------------------------
ALTER TABLE [project_2019].[recently_viewed] ADD CONSTRAINT [PK_recently_viewed_ID_ACCOUNT] PRIMARY KEY CLUSTERED ([ID_ACCOUNT], [ID_PRODUCT])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table yeuthich
-- ----------------------------
ALTER TABLE [project_2019].[yeuthich] ADD CONSTRAINT [PK_yeuthich_ID_YEUTHICH] PRIMARY KEY CLUSTERED ([ID_YEUTHICH])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

