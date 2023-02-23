CREATE DATABASE aspProject
GO


USE aspProject
GO

CREATE TABLE tblRole(
	roleId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	roleName NVARCHAR(150) NOT NULL
)
GO

INSERT INTO tblRole(roleName) VALUES
('admin'),
('user'),
('unRegisteredUser'),
('Employee')
GO


SELECT * FROM tblRole
GO


CREATE TABLE signUp(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name NVARCHAR(100) NOT NULL,
	userName NVARCHAR(100) NOT NULL,
	userPassword NVARCHAR(100) NOT NULL,
	userEmail NVARCHAR(100) NOT NULL,
	RoleId INT NOT NULL REFERENCES tblRole(roleId)
)
GO

INSERT INTO signUp(name,userName,userPassword,userEmail,RoleId) VALUES
('Mahbur','mahbur','mahbur','mahbur@gmail.com',1),
('Radif','radif','radif','radif@gmail.com',2),
('Rayhan','rayhan','rayhan','rayjan@gmail.com',4)
GO

SELECT * FROM signUp
GO


SELECT s.id,s.name,s.RoleId,s.userEmail,s.userName,s.userPassword,r.roleId,r.roleName FROM signUp s INNER JOIN tblRole r ON s.RoleId=r.roleId


--CREATE TABLE tblMenuType(	
--	parentID INT NOT NULL PRIMARY KEY,
--	typeName NVARCHAR(100) NOT NULL
--)

--INSERT INTO tblMenuType(parentID,typeName) VALUES
--(0,'Main Menu')
--GO

--DROP TABLE tblDynamicMenu

CREATE TABLE tblDynamicMenu(	
	menuId INT NOT NULL IDENTITY(1,1),	
	menuName NVARCHAR(50) NULL,
	menulocation NVARCHAR(MAX) NULL,
	parentId INT NOT NULL,
	roleid INT NOT NULL REFERENCES tblRole(roleId),
	PRIMARY KEY(roleid,menuId)
)
GO


INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,1),
('Products','',0,1),
('Employee','',0,1),
('Customize Menu','frmAdminDashBoard.aspx',0,1)
GO

SELECT * FROM tblDynamicMenu
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',2,1),
('Owmen','',2,1),
('Add Products','',3,1),
('Add Employee','',3,1)
GO



INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,2),
('Products','',0,2),
('Cart','',0,2)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',10,2),
('Owmen','',10,2)
GO



INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,3),
('Product','',0,3)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',15,3),
('OWomen','',15,3)
GO


INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,4),
('Products','',0,4),
('Employee','',0,4)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',19,4),
('Owmen','',19,4),
('Add Products','',19,4)
GO




SELECT * FROM tblDynamicMenu 



CREATE TABLE tblDynamicMenu2(
	menuId INT NOT NULL IDENTITY(1,1),	
	menuName NVARCHAR(50) NULL,
	menulocation NVARCHAR(MAX) NULL,
	parentId INT NULL,
	roleid INT NOT NULL REFERENCES tblRole(roleId),
	PRIMARY KEY(roleid,menuId)
)
GO



INSERT INTO tblDynamicMenu2(menuName,menulocation,parentId,roleid)
VALUES
('Register','frmRegister.aspx',0,3),
('Login','frmLogin.aspx',0,3),
('Logout','',0,1),
('Logout','',0,2),
('Logout','',0,4)
GO



INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',2,1),
('Women','',2,1)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Kids','',2,1),
('Old','',2,1)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',2,2),
('Women','',2,2)
GO

--SELECT * FROM tblRole
--GO

--SELECT * FROM tblDynamicMenu
--GO

--SELECT * FROM tblDynamicMenu WHERE roleid = 1
--GO

--SELECT * FROM tblDynamicMenu WHERE roleid = 2
--GO

--SELECT d.menuId,d.menulocation,d.menuName,d.parentId,d.roleid,r.roleId,r.roleName FROM tblDynamicMenu d INNER JOIN tblRole r ON d.roleid = r.roleId


--SELECT s.id,s.name,s.RoleId,s.userEmail,s.userName,s.userPassword,r.roleId,r.roleName FROM signUp s INNER JOIN tblRole r ON s.RoleId=r.roleId WHERE S.RoleId=4


--SELECT dm.menuId,dm.menulocation,dm.menuName,dm.parentId,dm.roleid,r.roleId,r.roleName FROM tblDynamicMenu dm INNER JOIN tblRole r ON dm.roleid=r.roleId WHERE dm.roleid=1 AND parentId > 0


---------------------------- DYNAMIC MENU END




-- >>> PRODUCT START --------------------------------------->>>

CREATE TABLE tblBrands(
	brandId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	brandName NVARCHAR(MAX) NOT NULL
)
GO

INSERT INTO tblBrands(brandName) VALUES
('Blackberrys'),
('Jack & Jones')
GO

SELECT * FROM tblBrands
GO


CREATE TABLE tblCategorys(
	categoryId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	categoryName NVARCHAR(MAX) NOT NULL
)
GO

INSERT INTO tblCategorys(categoryName) VALUES
('Dress Shirt'),
('Overshirt'),
('Office Shirt')
GO

SELECT * FROM tblCategorys
GO

drop table tblSubCategorys

CREATE TABLE tblSubCategorys(
	subCategoryId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	subCategoryName NVARCHAR(MAX) NOT NULL,
	mainCategoryId INT NOT NULL REFERENCES tblCategorys(categoryId)
)
GO

INSERT INTO tblSubCategorys(subCategoryName,mainCategoryId) VALUES
('American',1),
('Indian',1)
GO


SELECT * FROM tblSubCategorys
GO

SELECT sc.mainCategoryId,sc.subCategoryId,sc.subCategoryName,c.categoryId,c.categoryName FROM tblSubCategorys sc INNER JOIN tblCategorys c ON sc.mainCategoryId=c.categoryId

CREATE TABLE tblGender(
	genderId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	genderName NVARCHAR(MAX) NOT NULL
)
GO

INSERT INTO tblGender(genderName) VALUES
('Men'),
('Women')
GO

SELECT * FROM tblGender
GO



CREATE TABLE tblSizes(
	sizeId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	sizeName NVARCHAR(500) NOT NULL,
	FKbrandId INT NOT NULL REFERENCES tblBrands(brandId),
	FKcategoryId INT NOT NULL REFERENCES tblCategorys(categoryId),
	FKsubCategoryId INT NOT NULL REFERENCES tblSubCategorys(subCategoryId),
	FKgenderId INT NOT NULL REFERENCES tblGender(genderId)	
)
GO

INSERT INTO tblSizes(sizeName,FKbrandId,FKcategoryId,FKsubCategoryId,FKgenderId) VALUES
('S',1,1,1,1)
GO

SELECT * FROM tblSizes
GO



--CREATE TABLE tblProducts(
--	productId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	productName BINARY(50) NOT NULL,
--	productPrice MONEY,
--	productSellPrice MONEY,

--	FKbrandId INT NOT NULL REFERENCES tblBrands(brandId),
--	FKcategoryId INT NOT NULL REFERENCES tblCategorys(categoryId),
--	FKsubCategoryId INT NOT NULL REFERENCES tblSubCategorys(subCategoryId),
--	FKgenderId INT NOT NULL REFERENCES tblGender(genderId),
--	FKsizeId INT NOT NULL REFERENCES tblSizes(sizeId),

--	productDescription NVARCHAR(MAX) NULL,
--	productDetails NVARCHAR(MAX) NULL,
--	productMaterialCare NVARCHAR(MAX) NULL,

--	freeDelivery INT,
--	productReturn INT,
--	COD INT
--)
--GO

--SELECT * FROM tblProducts
--GO



--CREATE TABLE tblProductImages(
--	productImageId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	productImageName NVARCHAR(MAX) NULL,
--	productImageExtension NVARCHAR(500) NULL,
--	FKproductId INT NOT NULL REFERENCES tblProducts(productId)
--)
--GO

--SELECT * FROM tblProductImages
--GO



--CREATE TABLE tblProductSizeQuantity(
--	productSizeQuantityId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	productQuantity INT NOT NULL,
--	FKproductId INT NOT NULL REFERENCES tblProducts(productId),
--	FKsizeId INT NOT NULL REFERENCES tblSizes(sizeId)
--)
--GO

--SELECT * FROM tblProductSizeQuantity
--GO

--SELECT s.FKbrandId,s.FKcategoryId,s.FKgenderId,s.FKsubCategoryId,s.sizeId,s.sizeName,b.brandId,b.brandName,c.categoryId,c.categoryName,sc.mainCategoryId,sc.subCategoryId,sc.subCategoryName,g.genderId,g.genderName FROM tblSizes s INNER JOIN tblBrands b ON s.FKbrandId=b.brandId INNER JOIN tblCategorys c ON s.FKcategoryId=c.categoryId INNER JOIN tblSubCategorys sc ON sc.subCategoryId=s.FKsubCategoryId INNER JOIN tblGender g ON s.FKgenderId=g.genderId

--SELECT * FROM tblSubCategorys


CREATE TABLE tblEmployee
(
	employeeId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	employeeName NVARCHAR(50) NOT NULL,
	employeeEmail NVARCHAR(50) NOT NULL,
	employeeConfirmEmail NVARCHAR(50) NOT NULL,	
	employeeMaterialStatus BIT NULL,
	employeeJoinDate DATE NOT NULL,
	employeePicture NVARCHAR(200) NULL,
	employeeSalary DECIMAL NOT NULL,
	adminId INT REFERENCES tblRole(roleId) NOT NULL
)
GO

select * from tblEmployee

INSERT INTO tblEmployee(employeeName,employeeEmail,employeeConfirmEmail,employeeMaterialStatus,employeeJoinDate,employeeSalary,adminId) VALUES('Md. Mahbur Rahman','mmrradif@gmail.com','mmrradif@gmail.com',1,'10-10-10','120000',1)
GO

INSERT INTO tblEmployee(employeeName,employeeEmail,employeeConfirmEmail,employeeMaterialStatus,employeeJoinDate,employeeSalary,adminId) VALUES('Md. Mahbur Rahman','mmrradif@gmail.com','mmrradif@gmail.com',0,'10-10-10','120000',1)
GO