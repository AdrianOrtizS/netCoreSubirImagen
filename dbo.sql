/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 12002269
 Source Host           : ADRIAN-PC\SQLEXPRESS:1433
 Source Catalog        : pruebas
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002269
 File Encoding         : 65001

 Date: 04/10/2021 16:37:41
*/


-- ----------------------------
-- Table structure for archivo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[archivo]') AND type IN ('U'))
	DROP TABLE [dbo].[archivo]
GO

CREATE TABLE [dbo].[archivo] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [extension] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [tamanio] float(53)  NOT NULL,
  [ubicacion] text COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[archivo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of archivo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[archivo] ON
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'233', N'20210829221258-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210829221258-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'234', N'20210829221258-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210829221258-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'235', N'20210829221323-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210829221323-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'236', N'20210829221323-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210829221323-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'237', N'20210829221323-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210829221323-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1238', N'20210920210508-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210508-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1239', N'20210920210516-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210516-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1240', N'20210920210548-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210548-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1241', N'20210920210558-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210558-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1242', N'20210920210608-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210608-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1243', N'20210920210644-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210644-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1244', N'20210920210644-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210644-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1245', N'20210920210644-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210644-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1246', N'20210920210816-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920210816-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1247', N'20210920213846-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210920213846-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1248', N'20210922131143-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922131143-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1249', N'20210922140648-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922140648-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1250', N'20210922143338-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922143338-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1251', N'20210922150710-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922150710-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1252', N'20210922151544-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922151544-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1253', N'20210922151544-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922151544-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1254', N'20210922151544-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922151544-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1255', N'20210922153617-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922153617-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1256', N'20210922153617-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922153617-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1257', N'20210922153617-aucas.jpg', N'jpg', N'0.05', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922153617-aucas.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1258', N'20210922154442-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922154442-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1259', N'20210922154605-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922154605-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1260', N'20210922154605-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922154605-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1261', N'20210922154948-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922154948-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1262', N'20210922154948-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922154948-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1263', N'20210922154948-aucas.jpg', N'jpg', N'0.05', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922154948-aucas.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1264', N'20210922155622-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922155622-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1265', N'20210922155622-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922155622-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1266', N'20210922155834-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922155834-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1267', N'20210922155834-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922155834-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1268', N'20210922155927-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922155927-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1269', N'20210922160004-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922160004-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1270', N'20210922160037-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922160037-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1271', N'20210922160413-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922160413-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1272', N'20210922160413-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922160413-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1273', N'20210922160726-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922160726-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1274', N'20210922160726-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922160726-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1275', N'20210922191801-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922191801-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1276', N'20210922191841-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922191841-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1277', N'20210922191841-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922191841-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1278', N'20210922191927-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922191927-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1279', N'20210922192133-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922192133-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1280', N'20210922192245-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922192245-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1281', N'20210922192252-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922192252-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1282', N'20210922192532-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922192532-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1283', N'20210922192841-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922192841-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1284', N'20210922193557-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922193557-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1285', N'20210922193631-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922193631-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1286', N'20210922193700-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922193700-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1287', N'20210922193918-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922193918-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1288', N'20210922193937-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922193937-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1289', N'20210922194125-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922194125-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1290', N'20210922194313-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922194313-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1291', N'20210922194313-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922194313-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1292', N'20210922202254-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922202254-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1293', N'20210922212925-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922212925-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1294', N'20210922212925-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922212925-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1295', N'20210922213044-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213044-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1296', N'20210922213044-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213044-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1297', N'20210922213137-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213137-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1298', N'20210922213623-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213623-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1299', N'20210922213825-b.jpg', N'jpg', N'0.07', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213825-b.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1300', N'20210922213825-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213825-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1301', N'20210922213825-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210922213825-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1302', N'20210923135710-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210923135710-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1303', N'20210923135909-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210923135909-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1304', N'20210923140324-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210923140324-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1305', N'20210923140417-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210923140417-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1306', N'20210923140518-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210923140518-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1307', N'20210928164456-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928164456-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1308', N'20210928164631-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928164631-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1309', N'20210928164929-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928164929-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1310', N'20210928165011-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928165011-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1311', N'20210928165101-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928165101-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1312', N'20210928211751-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928211751-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1313', N'20210928215029-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928215029-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1314', N'20210928215038-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928215038-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1315', N'20210928215229-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928215229-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1316', N'20210928215438-e.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210928215438-e.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1317', N'20210930102354-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210930102354-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1318', N'20210930103051-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210930103051-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1319', N'20210930103248-aucas.jpg', N'jpg', N'0.05', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210930103248-aucas.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1320', N'20210930103617-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210930103617-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1321', N'20210930104254-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210930104254-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1322', N'20210930164646-d.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20210930164646-d.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1323', N'20211002221008-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211002221008-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1324', N'20211002235118-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211002235118-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1325', N'20211002235135-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211002235135-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1326', N'20211003000728-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003000728-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1327', N'20211003001022-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003001022-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1328', N'20211003105314-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105314-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1329', N'20211003105314-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105314-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1330', N'20211003105522-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105522-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1331', N'20211003105522-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105522-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1332', N'20211003105647-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105647-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1333', N'20211003105647-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105647-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1334', N'20211003105744-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105744-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1335', N'20211003105809-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105809-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1336', N'20211003105809-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003105809-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1337', N'20211003110126-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110126-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1338', N'20211003110126-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110126-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1339', N'20211003110203-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110203-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1340', N'20211003110203-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110203-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1341', N'20211003110256-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110256-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1342', N'20211003110256-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110256-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1343', N'20211003110256-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003110256-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1344', N'20211003111244-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003111244-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1345', N'20211003111244-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003111244-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1346', N'20211003111737-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003111737-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1347', N'20211003111737-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003111737-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1348', N'20211003111929-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003111929-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1349', N'20211003111929-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003111929-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1350', N'20211003112056-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003112056-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1351', N'20211003112056-e.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003112056-e.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1352', N'20211003112056-windows.jpg', N'jpg', N'0.02', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003112056-windows.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1353', N'20211003195526-a.jpg', N'jpg', N'0.12', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003195526-a.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1354', N'20211003195526-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003195526-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1355', N'20211003195526-desirek.png', N'png', N'0', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003195526-desirek.png')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1356', N'20211003195836-arroz.jpg', N'jpg', N'0.16', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003195836-arroz.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1357', N'20211003195836-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003195836-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1358', N'20211003195836-e.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003195836-e.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1359', N'20211003203110-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003203110-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1360', N'20211003203206-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003203206-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1361', N'20211003203537-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003203537-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1362', N'20211003204704-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003204704-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1363', N'20211003204830-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003204830-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1364', N'20211003204941-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003204941-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1365', N'20211003213011-cr7.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003213011-cr7.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1366', N'20211003213153-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003213153-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1367', N'20211003214702-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003214702-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1368', N'20211003214810-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003214810-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1369', N'20211003215124-c.jpg', N'jpg', N'0.01', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003215124-c.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1370', N'20211003215124-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003215124-capAmerica.jpg')
GO

INSERT INTO [dbo].[archivo] ([id], [nombre], [extension], [tamanio], [ubicacion]) VALUES (N'1371', N'20211003221315-capAmerica.jpg', N'jpg', N'0.03', N'C:\AspNetCore\practicas\SubirImagen\SubirImagen\wwwroot\Resources\Images\20211003221315-capAmerica.jpg')
GO

SET IDENTITY_INSERT [dbo].[archivo] OFF
GO


-- ----------------------------
-- Table structure for producto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[producto]') AND type IN ('U'))
	DROP TABLE [dbo].[producto]
GO

CREATE TABLE [dbo].[producto] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [condicion] bit  NULL
)
GO

ALTER TABLE [dbo].[producto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of producto
-- ----------------------------
SET IDENTITY_INSERT [dbo].[producto] ON
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'45', N'sreser', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'46', N'jhkjhjk', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'47', N'hjjkk', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1050', N'dssdsd', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1051', N'jhkjhk77', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1052', N'huyaq', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1053', N'jbhjbjhbj', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1054', N'jbhjbjhbj', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1055', N'jbhjbjhbj', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1056', N'barce', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1057', N'hbhjhj', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1058', N'kjkjhkj', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1059', N'mklo', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1060', N'gjhgjhgjh', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1061', N'ron', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1062', N'a', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1063', N'b', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1064', N'kjg', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1065', N'd', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1066', N'kkkk', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1070', N'nnnm', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1071', N'huy', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1072', N'chili', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1073', N'njiokm', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1074', N'zaseder', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1075', N'jkkjj', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1076', N'jkjk', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1077', N'fhghgfhfhg', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1078', N'tren', N'1')
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [condicion]) VALUES (N'1079', N'jjjjj', N'1')
GO

SET IDENTITY_INSERT [dbo].[producto] OFF
GO


-- ----------------------------
-- Table structure for producto_Archivo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[producto_Archivo]') AND type IN ('U'))
	DROP TABLE [dbo].[producto_Archivo]
GO

CREATE TABLE [dbo].[producto_Archivo] (
  [idProducto] int  NOT NULL,
  [idArchivo] int  NOT NULL
)
GO

ALTER TABLE [dbo].[producto_Archivo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of producto_Archivo
-- ----------------------------
INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1055', N'1284')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1058', N'1290')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1058', N'1291')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1062', N'1302')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1063', N'1303')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1064', N'1304')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1065', N'1305')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1066', N'1306')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1072', N'1348')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1072', N'1349')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1073', N'1353')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1073', N'1354')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1073', N'1355')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1074', N'1356')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1074', N'1357')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1074', N'1358')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'46', N'233')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'46', N'234')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'47', N'235')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'47', N'236')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'47', N'237')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1076', N'1367')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1078', N'1369')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1078', N'1370')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1079', N'1371')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1060', N'1298')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1061', N'1299')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1061', N'1300')
GO

INSERT INTO [dbo].[producto_Archivo] ([idProducto], [idArchivo]) VALUES (N'1061', N'1301')
GO


-- ----------------------------
-- Table structure for rol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[rol]') AND type IN ('U'))
	DROP TABLE [dbo].[rol]
GO

CREATE TABLE [dbo].[rol] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [descripcion] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [condicion] bit  NULL
)
GO

ALTER TABLE [dbo].[rol] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of rol
-- ----------------------------
SET IDENTITY_INSERT [dbo].[rol] ON
GO

INSERT INTO [dbo].[rol] ([id], [nombre], [descripcion], [condicion]) VALUES (N'1', N'Administrador', N'Administrador de sitio', N'1')
GO

INSERT INTO [dbo].[rol] ([id], [nombre], [descripcion], [condicion]) VALUES (N'2', N'Jugador', N'Integrante del juego', N'1')
GO

SET IDENTITY_INSERT [dbo].[rol] OFF
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO


-- ----------------------------
-- Table structure for usuario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario]') AND type IN ('U'))
	DROP TABLE [dbo].[usuario]
GO

CREATE TABLE [dbo].[usuario] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [user] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [idrol] int  NOT NULL,
  [email] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [password_hash] varbinary(max)  NOT NULL,
  [password_salt] varbinary(max)  NOT NULL,
  [condicion] bit  NOT NULL,
  [foto] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[usuario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of usuario
-- ----------------------------
SET IDENTITY_INSERT [dbo].[usuario] ON
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'2', N'Adrian Ortiz', NULL, N'1', N'adrian-2222@hotmail.com', 0x3AC40CAE172E16D51FCD3C5A4519431B1DB1496AADC8C372B483BD08EADFDAD81AE4263A4D105031CFCDEA03618C9BA19E61AF99550CEC0B06DAE99B321109D6, 0xCEBB5CC7782F3EFD51C8D3C8C91A6AD53680D502858D0C5C1605A8887EADBD3C50F8CF9676E17A14C976D7E043AAD9C1ECF38C130A733F043BBAB1B98FA747822B02814D445C5011CEB36903F6FC790483B47EFFAF7C7D41336ACBEDD322841A6BD1168D284B541EF0A120559E169EACB3170D10207CFD3F62E61EF757B722BF, N'1', NULL)
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'4', N'kjhkj', NULL, N'2', N'adriqn@gmail.com', 0x6857034B68118A30B7A79BB83064384B74D50D5779359C13F00577DC950DDD6F504374BB38690463757E53C113B7C1DB1877030FD121641D2DFA9B7D857DA7AF, 0x250C26B8AF971B75AE360538250206844E8A1667C9100E25E436E6BE911E7F5CF8C0E877610DCA4003A6D96B2838E312EA0EAAB85CF8D878DBD69FEDEA00CDDB5E126441E17DACD8CEBF64FF888E766D62E1B0E97B3794DE8855BA18C9ED70AA14540DC461E0B31C24F32881AA7791E460CE2442E85F7630674AE34B9D3EC7FA, N'1', N'20210928211751-desirek.png')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'5', N'kjkjhkjjhg', NULL, N'2', N'jhjkh@gmail.com', 0xFB63F90B6FD0E7D55AA19DBAFDDC53C9FB495DDC256B1BA9E1C4E4FE6F026F771133938AAA8EFD10D3D433972AA9E3895F063309B19E7E75869E958252C4DF09, 0xFD4BCF0A12129DFD129496A337E17FF8CC3E2E15CDACEB3DC8F11B60BB71535969F2C856E09927CFD9C25F3D2D66D664FBF686AB6D212494199B5C6157B7D8F6081CF6418541DB2256E6618A79BF10A019A6DE71AF5078AE2A1DE5136F2004D27C9E680474D1B7E290ADF84371E84DDC2692D2DD9A2ABDB38997C2CADA7E44D4, N'1', N'20210928215229-desirek.png')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'6', N'zsfgdgfdg', NULL, N'2', N'asd@gmail.com', 0x8A74A8C0604121AD4D3F80F4C5C1CD93EF1C3940FABA5117B8C6FB6DB93AC604BF2B7DFBFD2A75A9620AB8A5ABFDB43A7F03B0C6CF60E14BDC4DF7E14D2DE21D, 0x13AF79A122C2446D94737FCC1E797ABE2BD0EDF971426213DA24A34C2E6E141865DC9580E6F20B83FAA4CC2BC1E1DB35A93645194A41F9DA8B849070662D63B14C2912E3311B494F81A182E4EB9DC6D6C60CE5A1AE42FE4EB7C38A1D337F0C1CD4FB408DA2F6D6D2C7424E7B6D0AF6CCC0DE6260B472B64DDA858464283FA8BA, N'1', N'20210928215438-e.jpg')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'7', N'prueba2', NULL, N'2', N'desirek1@gmail.com', 0xB1AB0A3CB6A04030C2AD7A33093B10DF6229EC38682F26592F30809F94334B534D2EB0C6CB40B86E187C527C3A2F9F994921A982C9D20AA43D37E73EA18C121E, 0x2B82C0E8D7983871B61760E401AE9CB44786602BC72AF7204A4A3C81B417B7099747E5033CDCE3F01F05B0F662E976951224B573C8DE3746782E86A4E03019341D1B79BD7E4B0A233D5A64BED9D0EFABED6D4CD8C9EC6100058EB43086B37498B650F15F9FB5672DDF094C2399C208441061F9141FB46CC33F147ECE7BDC1591, N'1', N'20210930102354-c.jpg')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'8', N'prueba3', NULL, N'2', N'prueba3@gmail.com', 0x34C3BD4C94C8E2F66D231606C11EB160A830F5415E95CF17B623B075AF4639589B8ECAE9B1CFC8065505AA32DEEC2C81DF877CDE1AEF68413BE891DF1696629E, 0x91308B3AFA2AD41FFD4B275EC4E1777368B7BC9B29A5C52FBA7AF82F550A1FE8992802F4A363AFDC26432476A5C4F7DEA18A3A2717C72EC22353A79E220F94BE3236743B6F6723E9CB2BC20F1E99F6D1E3FA4BC8E197372821987DA150D1544F3E6B3E68FB14F033C7F3E7DF474975F88B3FA3114935142A3E84C4A9C704B220, N'1', N'20210930103051-capAmerica.jpg')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'9', N'prueba4', NULL, N'1', N'prueba4@gmail.com', 0x43A362C10148CD1666C2C49376082A2B24FA1741E1A21CE8568574DC0C25ACD137BE1620F305BF6F19408CFD6922B87D91CFF8D6BC4172CDD9AFA0DC05C7E51B, 0x2DB9D0A84D5A59E0494E78B3FF9E18B09C2B3D981427CBF8720846C2B8A0A3F53EC470B31C1F957764B4107EADF68CB9577A6404D59A92D91975D4109CDBB03572496EA2BD6F94C578753B1642B1559C6F789CF216B1141FB46B8C8BB32E14C85589CD123114BE17F4FC070935F5D685E7724FEAB75793EEC6F9BFBF5D869ACD, N'1', N'20210930103248-aucas.jpg')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'10', N'prueba5', NULL, N'2', N'prueba5@gmail.com', 0x02F7E72FD8395BE76FBB58F0467CBF840FAB4852C555931582DB994CF95554A3009BDA02BA1ED4BDE21517CD3D30C0011980B4BF64A197F8D9A509B8F367FC79, 0x3B8CC59A6F0F8D6B659F7179C376EFC9D0376353D56F8EB2ED774448D20967A5B9C25E3BB3BCCB705AA3DA14AA6F9E17571D7F9EF256AF2D97D438DEF3BF35E5011DF35AD107746DEBDC13503CC5C67CB38EEE0F9A61F0D73B99C29FF1B92676E6D3CD12EA272D484A677BE98A124567E8389F0AEAAE50D2CEB92DADDDF5DAE5, N'1', N'20210930103617-a.jpg')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'11', N'prueba6', NULL, N'2', N'prueba6@gmail.com', 0x6153D6FE8A2B8B86D494D7CEE5AEA5CFD954AFB1DC28270EF86C9173E5B6525A0403DCD949FC8476875767F077B1D376EE95A695254902010EA2E24D595E95BF, 0x91F413B6C4DBC32B97D5AB37865BF23812D43A732EC4D165CBAF2570971490EF7B5CCD4243295949CB934A55891204DC3FCA92CB764F481A2547D4BD0BA96A0AC62AB6E2CD259182AC3CD3A7A955632E6B73513CAD9C78FFB38BB2732848E0E443DED90F3D6F4F8240223986D869F59CB4A1CD3FB1B7E6D159EA312FC96385DE, N'1', N'20210930104254-windows.jpg')
GO

INSERT INTO [dbo].[usuario] ([id], [nombre], [user], [idrol], [email], [password_hash], [password_salt], [condicion], [foto]) VALUES (N'12', N'prueba7', NULL, N'1', N'prueba7@gmail.com', 0xE978FD80FA8167F35B0F6A735E0C80BC2DFF18DE38E3D3186D4BC9EE1D4AAD4294CC36F4F69A21F59B945DEBBBC4B39E571A64D11462A7AB04017069D0F2EB28, 0x0148236F4FE74AAAB3421997A4042E94E436F75EE88F2DC9011C45486165DD12E4B8102CB5C62A78B703713CB3A5DA2F8F0F0C78BD446642A0082192A1D62EC426246F0C8A8F073D4D79BF4CF123B597F12E6033039F0F24B876BA7D5206068421FE2579444B05F60F2623899B33781990D0236DA1D92A53847E29EBF2D042AA, N'1', N'20210930164646-d.jpg')
GO

SET IDENTITY_INSERT [dbo].[usuario] OFF
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for archivo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[archivo]', RESEED, 1371)
GO


-- ----------------------------
-- Primary Key structure for table archivo
-- ----------------------------
ALTER TABLE [dbo].[archivo] ADD CONSTRAINT [PK_subirArchivos] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for producto
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[producto]', RESEED, 1079)
GO


-- ----------------------------
-- Primary Key structure for table producto
-- ----------------------------
ALTER TABLE [dbo].[producto] ADD CONSTRAINT [PK__producto__3213E83F54B0A5D5] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for rol
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[rol]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table rol
-- ----------------------------
ALTER TABLE [dbo].[rol] ADD CONSTRAINT [PK__rol__3213E83F97AD4BCE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B6197BFE4F2] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for usuario
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[usuario]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE [dbo].[usuario] ADD CONSTRAINT [PK__usuario__3213E83F5DF7E2F3] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table producto_Archivo
-- ----------------------------
ALTER TABLE [dbo].[producto_Archivo] ADD CONSTRAINT [sub_productoSubirArchivo] FOREIGN KEY ([idArchivo]) REFERENCES [dbo].[archivo] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[producto_Archivo] ADD CONSTRAINT [pro_productoSubirArchivo] FOREIGN KEY ([idProducto]) REFERENCES [dbo].[producto] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table usuario
-- ----------------------------
ALTER TABLE [dbo].[usuario] ADD CONSTRAINT [idrolfk] FOREIGN KEY ([idrol]) REFERENCES [dbo].[rol] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

