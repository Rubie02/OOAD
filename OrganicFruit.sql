CREATE DATABASE OFruit
GO
USE OFruit
GO

--TABLES
CREATE TABLE [dbo].[Blogs](
	[blogId] [int] IDENTITY(1,1) NOT NULL,
	[details] [nvarchar](2000) NULL,
	[blogName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[blogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Categories](
	[cateId] [int] IDENTITY(1,1) NOT NULL,
	[blogId] [int] NULL,
	[cateName] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[cateImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[cateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Customers](
	[cusId] [int] IDENTITY(1,1) NOT NULL,
	[cusName] [nvarchar](50) NULL,
	[cusAddress] [nvarchar](50) NULL,
	[cusPhoneNumber] [nchar](10) NOT NULL,
	[rank] [int] NULL,
	[username] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[cusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Employees](
	[employeeId] [int] IDENTITY(1,1) NOT NULL,
	[employeeName] [nvarchar](50) NOT NULL,
	[employeeAddress] [nvarchar](50) NULL,
	[enmployeePhoneNumber] [nchar](10) NOT NULL,
	[salary] [int] NULL,
	[hireDate] [datetime] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Logins](
	[username] [nchar](30) NOT NULL,
	[password] [nchar](30) NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OrderDetails](
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[unitPrice] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[discount] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[cusId] [int] NOT NULL,
	[orderDate] [datetime] NULL,
	[employeeId] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Products](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[supId] [int] NULL,
	[cateId] [int] NULL,
	[information] [nvarchar](500) NULL,
	[price] [float] NOT NULL,
	[MGF] [date] NULL,
	[EXP] [date] NULL,
	[productImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Registers](
	[username] [nchar](30) NOT NULL,
	[password] [nchar](30) NOT NULL,
	[confirmPassword] [nchar](30) NOT NULL,
	[email] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Registers] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Suppliers](
	[supId] [int] IDENTITY(1,1) NOT NULL,
	[supName] [nvarchar](50) NULL,
	[supAddress] [nvarchar](50) NULL,
	[supPhoneNumber] [nchar](10) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[supId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Ràng buộc khóa ngoại và khóa chính
ALTER TABLE dbo.Logins ADD FOREIGN KEY(username) REFERENCES dbo.Registers(username)

ALTER TABLE dbo.Customers ADD FOREIGN KEY(username) REFERENCES dbo.Logins(username)

ALTER TABLE dbo.Orders ADD FOREIGN KEY(cusId) REFERENCES dbo.Customers(cusId)
ALTER TABLE dbo.Orders ADD FOREIGN KEY(employeeId) REFERENCES dbo.Employees(employeeId)

ALTER TABLE dbo.OrderDetails ADD FOREIGN KEY(orderId) REFERENCES dbo.Orders(orderId)
ALTER TABLE dbo.OrderDetails ADD FOREIGN KEY(productId) REFERENCES dbo.Products(productId)

ALTER TABLE dbo.Products ADD FOREIGN KEY(supId) REFERENCES dbo.Suppliers(supId)
ALTER TABLE dbo.Products ADD FOREIGN KEY(cateId) REFERENCES dbo.Categories(cateId)

ALTER TABLE dbo.Categories ADD FOREIGN KEY(blogId) REFERENCES dbo.Blogs(blogId)
GO 
