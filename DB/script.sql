USE [BakersLounge]
GO
/****** Object:  Table [dbo].[CategoryInfo]    Script Date: 05/09/2020 20:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryInfo](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnquiryInfo]    Script Date: 05/09/2020 20:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnquiryInfo](
	[EnquiryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[Mobile] [bigint] NULL,
	[Subject] [varchar](10) NULL,
	[Message] [nvarchar](max) NULL,
	[EnquiryDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loginInfo]    Script Date: 05/09/2020 20:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginInfo](
	[LoginInfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Question] [varchar](50) NOT NULL,
	[Answer] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInfo]    Script Date: 05/09/2020 20:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInfo](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTitle] [varchar](max) NOT NULL,
	[PhotoName] [varchar](max) NOT NULL,
	[ExtName] [varchar](10) NOT NULL,
	[PhotoType] [varchar](1000) NOT NULL,
	[PhotoSize] [int] NOT NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryInfo] ON 

INSERT [dbo].[CategoryInfo] ([CategoryId], [CategoryName]) VALUES (33, N'Cake')
INSERT [dbo].[CategoryInfo] ([CategoryId], [CategoryName]) VALUES (34, N'Cookies')
INSERT [dbo].[CategoryInfo] ([CategoryId], [CategoryName]) VALUES (35, N'Cup-cake')
SET IDENTITY_INSERT [dbo].[CategoryInfo] OFF
SET IDENTITY_INSERT [dbo].[EnquiryInfo] ON 

INSERT [dbo].[EnquiryInfo] ([EnquiryId], [Name], [Email], [Mobile], [Subject], [Message], [EnquiryDate]) VALUES (17, N'Gurlal', N'gurlal@gmail.com', 9999999, N'Cake', N'i need cake delivery at my place....<br/> <br/>-Regards<br/>Gurlal | 9999999 | gurlal@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[EnquiryInfo] OFF
SET IDENTITY_INSERT [dbo].[loginInfo] ON 

INSERT [dbo].[loginInfo] ([LoginInfoId], [UserName], [Email], [Password], [Question], [Answer]) VALUES (4, N'baker', N'order@bakerslounge.com', N'baker@1', N'what is ur name', N'Gurlal')
SET IDENTITY_INSERT [dbo].[loginInfo] OFF
SET IDENTITY_INSERT [dbo].[ProductInfo] ON 

INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (27, N'Guitar Shape Cake', N'4ae16abe72a0af4a116286847572603c.jpg', N'.jpg', N'image/jpeg', 43673, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (28, N'Butterscotch Eggless Cake', N'059.-Butter-Scotch-Cake-500x500.png', N'.png', N'image/png', 410690, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (29, N'Choco Chip Cookies', N'087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg', N'.jpg', N'image/jpeg', 80393, 34)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (30, N'Blueberry Cake', N'808ce658a4327b0ecc0c4e6ce52e4983.jpg', N'.jpg', N'image/jpeg', 183960, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (31, N'Chocolate Cake', N'1858_Luxury Chocolate Cake.jpg', N'.jpg', N'image/jpeg', 835709, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (32, N'Photo Cake', N'1486216705-PhotoCake.jpg', N'.jpg', N'image/jpeg', 43808, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (33, N'Butterscotch Cake', N'1570003121IMG_2494-600x600.jpg', N'.jpg', N'image/jpeg', 92251, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (34, N'Egg less Mix-Fruit Cake', N'1425504095014.jpeg', N'.jpeg', N'image/jpeg', 89015, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (35, N'Egg less Blueberry Cake', N'201804201524209070.jpg', N'.jpg', N'image/jpeg', 16290, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (36, N'Chocolate Cake', N'Chocolate-cake-recipe-1200a.jpg', N'.jpg', N'image/jpeg', 74949, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (37, N'Strawberry Cake', N'chocolate-raspberry-cake-recipe-schoko-himbeer-torte-vegan-rezept.jpg', N'.jpg', N'image/jpeg', 315374, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (38, N'Chocolate - Strawberry Cake', N'Chocolate-Velvet-Cake-7.jpg', N'.jpg', N'image/jpeg', 1636157, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (39, N'Mix-Fruit Cup cake', N'cupcakes_93722_16x9.jpg', N'.jpg', N'image/jpeg', 588031, 35)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (44, N'Cat Shape Cake', N'hello_kitty_cake_3.png', N'.png', N'image/png', 1079161, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (45, N'Photo Cake', N'images (2).jpg', N'.jpg', N'image/jpeg', 9149, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (46, N'Kid Photo Cake', N'images (3).jpg', N'.jpg', N'image/jpeg', 7528, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (47, N'Product Shape Cake', N'images (4).jpg', N'.jpg', N'image/jpeg', 11844, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (48, N'Cookies with Gems', N'images (5).jpg', N'.jpg', N'image/jpeg', 10522, 34)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (49, N'Chocolate cookies with Gems', N'images (6).jpg', N'.jpg', N'image/jpeg', 13622, 34)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (50, N'Mix Cup cakes for Parties', N'images (7).jpg', N'.jpg', N'image/jpeg', 16674, 35)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (51, N'Chocolate Mix Cake', N'images.jpg', N'.jpg', N'image/jpeg', 7223, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (52, N'Mango Flavor Cake', N'm3_2_.jpg', N'.jpg', N'image/jpeg', 112736, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (53, N'Chocolate Cup cake', N'maxresdefault (1).jpg', N'.jpg', N'image/jpeg', 108683, 35)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (54, N'Mango twist cake', N'maxresdefault.jpg', N'.jpg', N'image/jpeg', 83077, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (55, N'Photo film cake', N'mutli-photo-cake-600x600.jpg', N'.jpg', N'image/jpeg', 81913, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (56, N'Doll Shape cake', N'pfdegcak014.jpg', N'.jpg', N'image/jpeg', 53526, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (57, N'Choco-chip Cookies', N'photo-1558961363-fa8fdf82db35.jpg', N'.jpg', N'image/jpeg', 42417, 34)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (58, N'Number Shape Cake', N'r_gaem-23.jpg', N'.jpg', N'image/jpeg', 85683, 33)
INSERT [dbo].[ProductInfo] ([ProductId], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [PhotoSize], [CategoryId]) VALUES (59, N'Heart Shape Cake', N'sp-o10_led.jpg', N'.jpg', N'image/jpeg', 110144, 33)
SET IDENTITY_INSERT [dbo].[ProductInfo] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Category__8517B2E081D4FF8F]    Script Date: 05/09/2020 20:07:10 ******/
ALTER TABLE [dbo].[CategoryInfo] ADD UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__loginInf__A9D1053401C289BD]    Script Date: 05/09/2020 20:07:10 ******/
ALTER TABLE [dbo].[loginInfo] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__loginInf__C9F28456397FFB57]    Script Date: 05/09/2020 20:07:10 ******/
ALTER TABLE [dbo].[loginInfo] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductInfo]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryInfo] ([CategoryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
