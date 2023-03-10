USE [master]
GO
/****** Object:  Database [aspProject]    Script Date: 11/20/2022 10:09:02 AM ******/
CREATE DATABASE [aspProject]
GO

USE [aspProject]
GO
/****** Object:  Table [dbo].[signUp]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[signUp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[userName] [nvarchar](100) NOT NULL,
	[userPassword] [nvarchar](100) NOT NULL,
	[userEmail] [nvarchar](100) NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBrands]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrands](
	[brandId] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategorys]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategorys](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDynamicMenu]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDynamicMenu](
	[menuId] [int] IDENTITY(1,1) NOT NULL,
	[menuName] [nvarchar](50) NULL,
	[menulocation] [nvarchar](max) NULL,
	[parentId] [int] NOT NULL,
	[roleid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleid] ASC,
	[menuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDynamicMenu2]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDynamicMenu2](
	[menuId] [int] IDENTITY(1,1) NOT NULL,
	[menuName] [nvarchar](50) NULL,
	[menulocation] [nvarchar](max) NULL,
	[parentId] [int] NULL,
	[roleid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleid] ASC,
	[menuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[employeeId] [int] IDENTITY(1,1) NOT NULL,
	[employeeName] [nvarchar](50) NOT NULL,
	[employeeEmail] [nvarchar](50) NOT NULL,
	[employeeConfirmEmail] [nvarchar](50) NOT NULL,
	[employeeMaterialStatus] [bit] NULL,
	[employeeJoinDate] [date] NOT NULL,
	[employeePicture] [nvarchar](200) NULL,
	[employeeSalary] [decimal](18, 0) NOT NULL,
	[adminId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGender]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGender](
	[genderId] [int] IDENTITY(1,1) NOT NULL,
	[genderName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[genderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductImages]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductImages](
	[productImageId] [int] IDENTITY(1,1) NOT NULL,
	[productImageName] [nvarchar](max) NULL,
	[productImageExtension] [nvarchar](500) NULL,
	[FKproductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [binary](50) NOT NULL,
	[productPrice] [money] NULL,
	[productSellPrice] [money] NULL,
	[FKbrandId] [int] NOT NULL,
	[FKcategoryId] [int] NOT NULL,
	[FKsubCategoryId] [int] NOT NULL,
	[FKgenderId] [int] NOT NULL,
	[FKsizeId] [int] NOT NULL,
	[productDescription] [nvarchar](max) NULL,
	[productDetails] [nvarchar](max) NULL,
	[productMaterialCare] [nvarchar](max) NULL,
	[freeDelivery] [int] NULL,
	[productReturn] [int] NULL,
	[COD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductSizeQuantity]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductSizeQuantity](
	[productSizeQuantityId] [int] IDENTITY(1,1) NOT NULL,
	[productQuantity] [int] NOT NULL,
	[FKproductId] [int] NOT NULL,
	[FKsizeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productSizeQuantityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSizes]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSizes](
	[sizeId] [int] IDENTITY(1,1) NOT NULL,
	[sizeName] [nvarchar](500) NOT NULL,
	[FKbrandId] [int] NOT NULL,
	[FKcategoryId] [int] NOT NULL,
	[FKsubCategoryId] [int] NOT NULL,
	[FKgenderId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubCategorys]    Script Date: 11/20/2022 10:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubCategorys](
	[subCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[subCategoryName] [nvarchar](max) NOT NULL,
	[mainCategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[signUp] ON 

INSERT [dbo].[signUp] ([id], [name], [userName], [userPassword], [userEmail], [RoleId]) VALUES (1, N'Mahbur', N'mahbur', N'mahbur', N'mahbur@gmail.com', 1)
INSERT [dbo].[signUp] ([id], [name], [userName], [userPassword], [userEmail], [RoleId]) VALUES (2, N'Radif', N'radif', N'radif', N'radif@gmail.com', 2)
INSERT [dbo].[signUp] ([id], [name], [userName], [userPassword], [userEmail], [RoleId]) VALUES (3, N'Rayhan', N'rayhan', N'rayhan', N'rayjan@gmail.com', 4)
INSERT [dbo].[signUp] ([id], [name], [userName], [userPassword], [userEmail], [RoleId]) VALUES (4, N'rana', N'rana', N'rana', N'rana@gmail.com', 2)
INSERT [dbo].[signUp] ([id], [name], [userName], [userPassword], [userEmail], [RoleId]) VALUES (5, N'raza', N'raza', N'raza', N'raza@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[signUp] OFF
GO
SET IDENTITY_INSERT [dbo].[tblBrands] ON 

INSERT [dbo].[tblBrands] ([brandId], [brandName]) VALUES (1, N'Blackberrys 2')
INSERT [dbo].[tblBrands] ([brandId], [brandName]) VALUES (3, N'Jack & Jones 2')
INSERT [dbo].[tblBrands] ([brandId], [brandName]) VALUES (5, N'Jack & Jones 3')
INSERT [dbo].[tblBrands] ([brandId], [brandName]) VALUES (10, N'Radif2')
SET IDENTITY_INSERT [dbo].[tblBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategorys] ON 

INSERT [dbo].[tblCategorys] ([categoryId], [categoryName]) VALUES (1, N'Dress Shirt')
INSERT [dbo].[tblCategorys] ([categoryId], [categoryName]) VALUES (2, N'Overshirt')
INSERT [dbo].[tblCategorys] ([categoryId], [categoryName]) VALUES (3, N'Office Shirt')
INSERT [dbo].[tblCategorys] ([categoryId], [categoryName]) VALUES (4, N'Chambray Shirt')
SET IDENTITY_INSERT [dbo].[tblCategorys] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDynamicMenu] ON 

INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (1, N'Home', N'frmHome.aspx', 0, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (2, N'Products', N'frmAddProducts.aspx', 0, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (3, N'Employee', N'frmEmployee.aspx', 0, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (4, N'Customize Menu', N'frmAdminDashBoard.aspx', 0, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (6, N'Meat', N'#', 2, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (7, N'Add Employee', N'frmNewEmployee.aspx', 3, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (100, N'Registered User', N'frmRegisterdUser.aspx', 0, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (101, N'Fish', N'#', 2, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (102, N'Vegetables', N'#', 2, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (103, N'Report', N'frmReport.aspx', 0, 1)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (9, N'Home', N'frmHome.aspx', 0, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (10, N'Products', N'#', 0, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (11, N'Cart', N'#', 0, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (12, N'Meat', N'#', 10, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (13, N'Fish', N'#', 10, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (105, N'Vegetables', N'#', 10, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (106, N'Hot Offers', N'#', 10, 2)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (14, N'Home', N'frmHome.aspx', 0, 3)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (15, N'Product', N'#', 0, 3)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (17, N'Hot Offers', N'#', 15, 3)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (18, N'Home', N'frmHome.aspx', 0, 4)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (19, N'Products', N'frmAddProducts.aspx', 0, 4)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (21, N'Meat', N'#', 19, 4)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (22, N'Fish', N'#', 19, 4)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (23, N'Vegetables', NULL, 19, 4)
INSERT [dbo].[tblDynamicMenu] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (104, N'Report', N'frmReport.aspx', 0, 4)
SET IDENTITY_INSERT [dbo].[tblDynamicMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDynamicMenu2] ON 

INSERT [dbo].[tblDynamicMenu2] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (3, N'Logout', N'', 0, 1)
INSERT [dbo].[tblDynamicMenu2] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (4, N'Logout', N'', 0, 2)
INSERT [dbo].[tblDynamicMenu2] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (1, N'Register', N'frmRegister.aspx', 0, 3)
INSERT [dbo].[tblDynamicMenu2] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (2, N'Login', N'frmLogin.aspx', 0, 3)
INSERT [dbo].[tblDynamicMenu2] ([menuId], [menuName], [menulocation], [parentId], [roleid]) VALUES (5, N'Logout', N'', 0, 4)
SET IDENTITY_INSERT [dbo].[tblDynamicMenu2] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([employeeId], [employeeName], [employeeEmail], [employeeConfirmEmail], [employeeMaterialStatus], [employeeJoinDate], [employeePicture], [employeeSalary], [adminId]) VALUES (1, N'Md. Mahbur Rahman', N'mmrradif@gmail.com', N'mmrradif@gmail.com', 0, CAST(N'2010-10-10' AS Date), N'f8855a92-73e7-4452-9b38-a83e7fa86b8c_.jpg', CAST(120000 AS Decimal(18, 0)), 1)
INSERT [dbo].[tblEmployee] ([employeeId], [employeeName], [employeeEmail], [employeeConfirmEmail], [employeeMaterialStatus], [employeeJoinDate], [employeePicture], [employeeSalary], [adminId]) VALUES (2, N'Md. Mahbur Rahman', N'mmrradif@gmail.com', N'mmrradif@gmail.com', 0, CAST(N'2010-10-10' AS Date), N'd9c8525e-d64c-47f2-b41b-af58dc21bf50_.jpg', CAST(120000 AS Decimal(18, 0)), 1)
INSERT [dbo].[tblEmployee] ([employeeId], [employeeName], [employeeEmail], [employeeConfirmEmail], [employeeMaterialStatus], [employeeJoinDate], [employeePicture], [employeeSalary], [adminId]) VALUES (3, N'Md. Mahbur Rahman', N'radif@gmail.com', N'radif@gmail.com', 0, CAST(N'2022-11-08' AS Date), N'2c55a823-1e6b-4e18-a2b7-2ca9eaac8a14_.jpg', CAST(25000 AS Decimal(18, 0)), 4)
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[tblGender] ON 

INSERT [dbo].[tblGender] ([genderId], [genderName]) VALUES (1, N'Men')
INSERT [dbo].[tblGender] ([genderId], [genderName]) VALUES (2, N'Women')
INSERT [dbo].[tblGender] ([genderId], [genderName]) VALUES (3, N'UniSex')
SET IDENTITY_INSERT [dbo].[tblGender] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([roleId], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[tblRole] ([roleId], [roleName]) VALUES (2, N'user')
INSERT [dbo].[tblRole] ([roleId], [roleName]) VALUES (3, N'unRegisteredUser')
INSERT [dbo].[tblRole] ([roleId], [roleName]) VALUES (4, N'Employee')
SET IDENTITY_INSERT [dbo].[tblRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSizes] ON 

INSERT [dbo].[tblSizes] ([sizeId], [sizeName], [FKbrandId], [FKcategoryId], [FKsubCategoryId], [FKgenderId]) VALUES (1, N'S', 1, 1, 1, 1)
INSERT [dbo].[tblSizes] ([sizeId], [sizeName], [FKbrandId], [FKcategoryId], [FKsubCategoryId], [FKgenderId]) VALUES (7, N'M', 1, 4, 1, 1)
SET IDENTITY_INSERT [dbo].[tblSizes] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubCategorys] ON 

INSERT [dbo].[tblSubCategorys] ([subCategoryId], [subCategoryName], [mainCategoryId]) VALUES (1, N'American', 1)
INSERT [dbo].[tblSubCategorys] ([subCategoryId], [subCategoryName], [mainCategoryId]) VALUES (2, N'Indian', 1)
SET IDENTITY_INSERT [dbo].[tblSubCategorys] OFF
GO
ALTER TABLE [dbo].[signUp]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[tblRole] ([roleId])
GO
ALTER TABLE [dbo].[tblDynamicMenu]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[tblRole] ([roleId])
GO
ALTER TABLE [dbo].[tblDynamicMenu2]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[tblRole] ([roleId])
GO
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD FOREIGN KEY([adminId])
REFERENCES [dbo].[tblRole] ([roleId])
GO
ALTER TABLE [dbo].[tblProductImages]  WITH CHECK ADD FOREIGN KEY([FKproductId])
REFERENCES [dbo].[tblProducts] ([productId])
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD FOREIGN KEY([FKbrandId])
REFERENCES [dbo].[tblBrands] ([brandId])
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD FOREIGN KEY([FKcategoryId])
REFERENCES [dbo].[tblCategorys] ([categoryId])
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD FOREIGN KEY([FKgenderId])
REFERENCES [dbo].[tblGender] ([genderId])
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD FOREIGN KEY([FKsizeId])
REFERENCES [dbo].[tblSizes] ([sizeId])
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD FOREIGN KEY([FKsubCategoryId])
REFERENCES [dbo].[tblSubCategorys] ([subCategoryId])
GO
ALTER TABLE [dbo].[tblProductSizeQuantity]  WITH CHECK ADD FOREIGN KEY([FKproductId])
REFERENCES [dbo].[tblProducts] ([productId])
GO
ALTER TABLE [dbo].[tblProductSizeQuantity]  WITH CHECK ADD FOREIGN KEY([FKsizeId])
REFERENCES [dbo].[tblSizes] ([sizeId])
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD FOREIGN KEY([FKbrandId])
REFERENCES [dbo].[tblBrands] ([brandId])
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD FOREIGN KEY([FKcategoryId])
REFERENCES [dbo].[tblCategorys] ([categoryId])
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD FOREIGN KEY([FKgenderId])
REFERENCES [dbo].[tblGender] ([genderId])
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD FOREIGN KEY([FKsubCategoryId])
REFERENCES [dbo].[tblSubCategorys] ([subCategoryId])
GO
ALTER TABLE [dbo].[tblSubCategorys]  WITH CHECK ADD FOREIGN KEY([mainCategoryId])
REFERENCES [dbo].[tblCategorys] ([categoryId])
GO
USE [master]
GO
ALTER DATABASE [aspProject] SET  READ_WRITE 
GO
