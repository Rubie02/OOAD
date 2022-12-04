CREATE DATABASE OFruit
GO
USE OFruit
GO

--TABLES
CREATE TABLE [dbo].[Blogs](
	[blogId] [int] IDENTITY(1,1) NOT NULL,
	[details] [nvarchar](max) NULL,
	[blogName] [nvarchar](50) NULL,
	[blogImage] [nchar](500) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[blogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
	[employeePhoneNumber] [nchar](10) NOT NULL,
	[salary] [int] NULL,
	[hireDate] [datetime] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OrderDetails](
	[odId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[unitPrice] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[odId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[cusId] [int] NOT NULL,
	[orderDate] [datetime] NULL,
	[employeeId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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

CREATE TABLE [dbo].[Accounts](
	[username] [nchar](30) NOT NULL,
	[password] [nchar](30) NOT NULL,
	[type] [int] NOT NULL,
	[email] [nchar](50) NULL,
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

ALTER TABLE dbo.Customers ADD FOREIGN KEY(username) REFERENCES dbo.Accounts(username)

ALTER TABLE dbo.Orders ADD FOREIGN KEY(cusId) REFERENCES dbo.Customers(cusId)
ALTER TABLE dbo.Orders ADD FOREIGN KEY(employeeId) REFERENCES dbo.Employees(employeeId)

ALTER TABLE dbo.Products ADD FOREIGN KEY(supId) REFERENCES dbo.Suppliers(supId)
ALTER TABLE dbo.Products ADD FOREIGN KEY(cateId) REFERENCES dbo.Categories(cateId)

ALTER TABLE dbo.Categories ADD FOREIGN KEY(blogId) REFERENCES dbo.Blogs(blogId)
GO 

-- 1 is admin, 0 is customer
INSERT INTO Accounts(username, password, type, email) VALUES(N'hoai', N'1',1, N'hoai123@gmail.com') 
INSERT INTO Accounts(username, password, type, email) VALUES(N'luong', N'1',1, N'luong123@gmail.com')
INSERT INTO Accounts(username, password, type, email) VALUES(N'hien', N'1',1, N'hien123@gmail.com')
INSERT INTO Accounts(username, password, type, email) VALUES(N'bach', N'1',1, N'bach123@gmail.com')
INSERT INTO Accounts(username, password, type, email) VALUES(N'bao', N'1',0, N'bao456@gmail.com')
INSERT INTO Accounts(username, password, type, email) VALUES(N'vu', N'1',0, N'vu456@gmail.com')
INSERT INTO Accounts(username, password, type, email) VALUES(N'thuy', N'1',0, N'thuy456@gmail.com')
SELECT * FROM Accounts

INSERT INTO Blogs(details, blogName, blogImage) VALUES(N'Rau củ là các loại thực vật đã bị biến đổi để thích ứng với việc dự trữ chất dinh dưỡng để cây phát triển. Các loại củ thường dùng làm thực phẩm cho con người phải kể đến như: củ khoai lang, củ cà rốt, củ su, củ khoai môn, khoai tây, củ dền,...', N'Rau củ là gì?', N'https://images.baodantoc.vn/uploads/2021/Th%C3%A1ng%209/Ng%C3%A0y_16/Thanh/3538_Rau_1.jpg') 
INSERT INTO Blogs(details, blogName, blogImage) VALUES(N'Trái cây là một trong những loại thực phẩm cần có trong chế độ ăn uống lành mạnh, không chỉ đa dạng, có nguồn vitamin dồi dào mà trái cây còn giúp cơ thể ngăn ngừa những tác động xấu đến sức khoẻ. Vì thế, bổ sung trái cây vào khẩu phần ăn hằng ngày bên cạnh rau xanh, củ quả là điều vô cùng quan trọng.', N'Trái cây', N'https://vinmec-prod.s3.amazonaws.com/images/20210606_142636_766862_tre-nen-an-qua-gi.max-1800x1800.jpg') 
INSERT INTO Blogs(details, blogName, blogImage) VALUES(N'Rau lá là loại thực vật dùng làm thực phẩm cho con người nhưng chủ yếu sử dụng các loại lá trong món ăn. Rau lá, rau sống là những loại rau rất phổ biến bởi giá trị dinh dưỡng cao, dễ tìm mua, dễ ăn mà giá cả lại bình dân phù hợp với nhu cầu của nhiều gia đình.', N'Rau lá', N'http://hn.check.net.vn/data/product/mainimages/original/product9707.jpg') 
SELECT * FROM Blogs

INSERT INTO Categories(blogId, cateName, description, cateImage) VALUES(1, N'Rau củ', N'Rau củ là các loại thực vật đã bị biến đổi để thích ứng với việc dự trữ chất dinh dưỡng để cây phát triển.', N'https://images.baodantoc.vn/uploads/2021/Th%C3%A1ng%209/Ng%C3%A0y_16/Thanh/3538_Rau_1.jpg')
INSERT INTO Categories(blogId, cateName, description, cateImage) VALUES(2, N'Trái cây', N'Trái cây là một trong những loại thực phẩm cần có trong chế độ ăn uống lành mạnh, không chỉ đa dạng, có nguồn vitamin dồi dào mà trái cây còn giúp cơ thể ngăn ngừa những tác động xấu đến sức khoẻ.', N'https://vinmec-prod.s3.amazonaws.com/images/20210606_142636_766862_tre-nen-an-qua-gi.max-1800x1800.jpg')
INSERT INTO Categories(blogId, cateName, description, cateImage) VALUES(3, N'Rau lá', N'Rau lá là loại thực vật dùng làm thực phẩm cho con người nhưng chủ yếu sử dụng các loại lá trong món ăn.', N'http://hn.check.net.vn/data/product/mainimages/original/product9707.jpg')
SELECT * FROM Categories

INSERT INTO Suppliers(supName, supAddress, supPhoneNumber) VALUES(N'Nông Sản Thành Nam', N'Bình Dương', N'0985331366')
INSERT INTO Suppliers(supName, supAddress, supPhoneNumber) VALUES(N'Nông Sản Thái Thịnh', N'Đắk Nông', N'0965749966')
INSERT INTO Suppliers(supName, supAddress, supPhoneNumber) VALUES(N'Nông Sản Galaxy Agro', N'Hồ Chí Minh', N'0983373877')
SELECT * FROM Suppliers

INSERT INTO Products(productName, supId, cateId, information, price, mgf, exp, productImage)
VALUES(N'Xà lách lô lô xanh gói 500g', 1, 3, N'Rau xà lách lô lô xanh của Bách hóa Xanh được trồng tại Lâm Đồng và đóng gói theo những tiêu chuẩn nghiêm ngặt, bảo đảm các tiêu chuẩn xanh - sach.', 19900, GETDATE(), GETDATE()+1, N'https://cdn.tgdd.vn/Products/Images/8820/271485/bhx/xa-lach-lo-lo-xanh-goi-500g-202205181607134610.jpg')
INSERT INTO Products(productName, supId, cateId, information, price, mgf, exp, productImage)
VALUES(N'Rau mồng tơi baby gói 300g', 1, 3, N'Rau mồng tơi là loại rau có hàm lượng calo và chất béo thấp, nhưng lại chứa lượng lớn vitamin, khoáng chất thiết yếu và các hợp chất chống oxy hóa giúp cho quá trình tiêu hóa diễn ra hiệu quả hơn và ngăn ngừa các vấn đề về đường ruột.', 13500, GETDATE(), GETDATE()+1, N'https://cdn.tgdd.vn/Products/Images/8820/223332/bhx/rau-mong-toi-baby-goi-300g-202205240838481864.jpg')
INSERT INTO Products(productName, supId, cateId, information, price, mgf, exp, productImage)
VALUES(N'Táo Diva mini New Zealand hộp 1kg', 2, 2, N'Táo Diva mini là trái cây được nhập khẩu trực tiếp từ New Zealand. Táo Diva có màu đỏ đậm, xem lẫn các sắc vàng nhìn vô cùng bắt mắt và hấp dẫn.', 62000, GETDATE(), GETDATE()+1, N'https://cdn.tgdd.vn/Products/Images/8788/296998/bhx/tao-diva-mini-new-zealand-hop-1kg-8-10-trai-202211081633487727.jpg')
INSERT INTO Products(productName, supId, cateId, information, price, mgf, exp, productImage)
VALUES(N'Bưởi năm roi trái từ 1.3kg - 1.4kg', 2, 2, N'Bưởi năm roi là một trong những trái cây đặc sản nổi tiếng của Việt Nam. Bưởi có mùi hương thanh mát, lúc ăn bạn sẽ cảm nhận được sự hoà quyện xen lẫn giữa vị chua và vị ngọt. Bưởi 5 roi không chỉ ngon mà còn nhiều dưỡng chất tốt cho sức khoẻ, hệ miễn dịch và phù hợp cho người giảm cân và tiểu đường', 45000, GETDATE(), GETDATE()+1, N'https://cdn.tgdd.vn/Products/Images/8788/273343/bhx/buoi-nam-roi-trai-tu-13kg-14kg-202211041008117276.jpg')
INSERT INTO Products(productName, supId, cateId, information, price, mgf, exp, productImage)
VALUES(N'Cà rốt Đà Lạt túi 500g', 3, 1, N'Cà rốt Đà Lạt là một loại củ rất quen thuộc trong các món ăn của người Việt. Cà rốt có hàm lượng chất dinh dưỡng và vitamin A cao, được xem là nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào.', 16900, GETDATE(), GETDATE()+1, N'https://cdn.tgdd.vn/Products/Images/8785/271572/bhx/ca-rot-da-lat-tui-500g-2-5-cu-202203261338249710.jpg')
INSERT INTO Products(productName, supId, cateId, information, price, mgf, exp, productImage)
VALUES(N'Khoai lang Nhật túi 1kg', 3, 1, N'Khoai lang Nhật trồng tại Lâm Đồng là món ăn được rất nhiều người yêu thích, được trồng và có củ quanh năm, ngon nhất là khi được nướng lên trên một bếp than đổ hồng.', 33000, GETDATE(), GETDATE()+1, N'https://cdn.tgdd.vn/Products/Images/8785/271508/bhx/khoai-lang-nhat-tui-1kg-4-10-cu-202205201544144843.jpg')
SELECT * FROM Products

INSERT INTO Customers(cusName, cusAddress, cusPhoneNumber, rank, username) VALUES(N'Huynh Gia Bao', N'HCM', N'0324342564', 0, N'bao')
INSERT INTO Customers(cusName, cusAddress, cusPhoneNumber, rank, username) VALUES(N'Dang Nguyen Vu', N'HCM', N'0343458193', 1, N'vu')
INSERT INTO Customers(cusName, cusAddress, cusPhoneNumber, rank, username) VALUES(N'Ho Bich Thuy', N'HCM', N'0923485325', 2, N'thuy')
SELECT * FROM Customers WHERE cusId=2

INSERT INTO Employees(employeeName, employeeAddress, employeePhoneNumber, salary, hireDate) VALUES(N'Bach', N'DN', N'0293423452', 10000000, N'2022-12-4')
INSERT INTO Employees(employeeName, employeeAddress, employeePhoneNumber, salary, hireDate) VALUES(N'Hoai', N'PY', N'0293423452', 10000000, N'2022-12-4')
INSERT INTO Employees(employeeName, employeeAddress, employeePhoneNumber, salary, hireDate) VALUES(N'Luong', N'BT', N'0293423452', 10000000, N'2022-12-4')
INSERT INTO Employees(employeeName, employeeAddress, employeePhoneNumber, salary, hireDate) VALUES(N'Hien', N'QN', N'0293423452', 10000000, N'2022-12-4')
SELECT * FROM Employees

INSERT INTO Orders(cusId, orderDate, employeeId) VALUES(1, GETDATE(), 1)
INSERT INTO Orders(cusId, orderDate, employeeId) VALUES(2, GETDATE(), 1)
UPDATE Orders set cusId=2, orderDate=GETDATE() WHERE orderId=2
DELETE FROM Orders WHERE orderId=2
SELECT orderId, orderDate, Customers.cusId, cusAddress, cusPhoneNumber, username, rank
FROM Orders INNER JOIN  Customers ON Orders.cusId=Customers.cusId
WHERE orderId=3
SELECT * FROM Orders

INSERT INTO OrderDetails(orderId, productId, unitPrice, quantity, discount)
VALUES(2, 1, 14000, 2, 0)
INSERT INTO OrderDetails(orderId, productId, unitPrice, quantity, discount)
VALUES(1, 3, 16000, 2, 0)
UPDATE OrderDetails SET orderId=3, productId=2, unitPrice=14500, quantity=3
WHERE odId=3
SELECT * FROM OrderDetails
DELETE FROM OrderDetails WHERE odID=1

SELECT odId, quantity, unitPrice, Orders.orderId, Orders.orderDate, Products.productName, Products.price, Products.productImage
FROM OrderDetails INNER JOIN Orders ON OrderDetails.orderId=Orders.orderId
INNER JOIN Products ON OrderDetails.productId=Products.productId
WHERE OrderDetails.odId=2