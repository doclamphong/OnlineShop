USE [OnlineShop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [varchar](500) NULL,
	[Detail] [ntext] NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[Language] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Address] [nvarchar](250) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[BankAccountNumber] [varchar](50) NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [varchar](500) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [varchar](500) NULL,
	[Language] [nvarchar](50) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credentian]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credentian](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credentian] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footer]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[code] [varchar](20) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [varchar](500) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[IndudedVAT] [bit] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NOT NULL,
	[CompanyID] [bigint] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifidDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[GroupID] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 2017-05-26 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (1, N'Category1', N'Gif  day', 1, 0, NULL, CAST(0x0000A77D0125C92C AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[CategoryProduct] ON 

INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'Son & Chăm sóc môi', NULL, NULL, 0, NULL, CAST(0x0000A77E018893EF AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'Chăm sóc da', NULL, NULL, 0, NULL, CAST(0x0000A77E0188A540 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (3, N'Chăm sóc tóc', NULL, NULL, 0, NULL, CAST(0x0000A77E01895334 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (4, N'Chăm sóc móng', NULL, NULL, 0, NULL, CAST(0x0000A77E01895F16 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (5, N'Trang điểm da', NULL, NULL, 0, NULL, CAST(0x0000A77E018967C5 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (6, N'Trang điểm mắt', NULL, NULL, 0, NULL, CAST(0x0000A77E018975B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (7, N'Tắm & Chăm sóc cơ thể', NULL, NULL, 0, NULL, CAST(0x0000A77E0189B5B7 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (8, N'Chăm sóc móng', NULL, NULL, 0, NULL, CAST(0x0000A77E0189C829 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (9, N'Nước hoa', NULL, NULL, 0, NULL, CAST(0x0000A77E0189D340 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[CategoryProduct] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10, N'Vitamin& Thực phẩm chức năng', NULL, NULL, 0, NULL, CAST(0x0000A77E0189E803 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[CategoryProduct] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (1, N'SHISEIDO
', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (2, N'BOTANI
', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (3, N'LANEIGE
', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (4, N'FARMASI
', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (5, N'BIODERMA
', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (6, N'VICHY', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (7, N'AVENE', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Name], [Description], [Address], [Mobile], [Email], [BankAccountNumber], [ShowOnHome]) VALUES (8, N'EUCERIN', NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags], [Language]) VALUES (1, N'Tin tức', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A77D00978AF1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'English')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags], [Language]) VALUES (2, N'Tin tức 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A77D0097A0C1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'English')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags], [Language]) VALUES (3, N'Tin tức 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A77D0097A2CA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'English')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags], [Language]) VALUES (4, N'Tin tức 3', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A77D0097A4FF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'English')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags], [Language]) VALUES (5, N'Tin tức 4', NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A77D0097A78E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'English')
SET IDENTITY_INSERT [dbo].[Content] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Giới thiệu', N'/gioi-thieu', 1, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Tin tức', N'/tin-tuc', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Sản phẩm', N'/san-pham', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Liên hệ', N'/lien-he', 4, N'_self', 1, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (1, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 1, 1, NULL, NULL, 1, CAST(0x0000A77400000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (2, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 1, 1, NULL, NULL, 1, CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (3, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 2, 2, NULL, NULL, 1, CAST(0x0000A76F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 50)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (4, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 2, 2, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (5, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 3, 3, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (6, N'Son Velvet', N'SP02', NULL, N'Màu Son Chuẩn, Đa Dạng, Tinh Chất Dưỡng Môi, Không Chứa Chì.	', N'Velvet7.png', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 3, 3, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (7, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'Velvet7.png', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 4, 4, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (8, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'Velvet7.png', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 4, 4, NULL, NULL, 1, CAST(0x0000A77E00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (9, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 1, 1, NULL, NULL, 1, CAST(0x0000A77800000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (10, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 2, 2, NULL, NULL, 1, CAST(0x0000A77A00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (11, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 2, 2, NULL, NULL, 1, CAST(0x0000A77900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (12, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'lovite2.jpg', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 3, 3, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (13, N'Son Velvet', N'SP02', NULL, N'Màu Son Chuẩn, Đa Dạng, Tinh Chất Dưỡng Môi, Không Chứa Chì.	', N'Velvet7.png', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 3, 3, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (14, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'Velvet7.png', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 4, 4, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 200)
INSERT [dbo].[Product] ([ID], [Name], [code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [IndudedVAT], [PromotionPrice], [Quantity], [CompanyID], [CategoryID], [Detail], [Warranty], [Status], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount]) VALUES (15, N'Son Lovita', N'SP01', NULL, N'Made In Vietnam 
- tạo màu môi, bổ xung các vitamin tự nhiên, dưỡng ẩm, làm mềm, chống khô môi.', N'Velvet7.png', NULL, CAST(190000 AS Decimal(18, 0)), 0, NULL, 100, 8, 8, NULL, NULL, 1, CAST(0x0000A77F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 100)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'Admin', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'ADMIN', CAST(0x0000A77B00F86D62 AS DateTime), NULL, CAST(0x0000A77B00F86D62 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (3, N'Admin1', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F881D2 AS DateTime), NULL, CAST(0x0000A77B00F881D2 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (4, N'Admin2', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'ADMIN', CAST(0x0000A77B00F884A4 AS DateTime), NULL, CAST(0x0000A77B00F884A4 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (5, N'Admin3', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MOD', CAST(0x0000A77B00F88762 AS DateTime), NULL, CAST(0x0000A77B00F88762 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (6, N'Admin4', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F8896B AS DateTime), NULL, CAST(0x0000A77B00F8896B AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (7, N'Admin5', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F88BEF AS DateTime), NULL, CAST(0x0000A77B00F88BEF AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (8, N'Admin6', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F88E5F AS DateTime), NULL, CAST(0x0000A77B00F88E5F AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (9, N'Admin7', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F890A7 AS DateTime), NULL, CAST(0x0000A77B00F890A7 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (10, N'Admin8', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F892F2 AS DateTime), NULL, CAST(0x0000A77B00F892F2 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (11, N'Admin9', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F89613 AS DateTime), NULL, CAST(0x0000A77B00F89613 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (12, N'Admin10', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F89823 AS DateTime), NULL, CAST(0x0000A77B00F89823 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (13, N'Admin11', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F89A78 AS DateTime), NULL, CAST(0x0000A77B00F89A78 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [GroupID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (14, N'Admin12', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, N'MEMBER', CAST(0x0000A77B00F8A62D AS DateTime), NULL, CAST(0x0000A77B00F8A62D AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Quản lý')
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[CategoryProduct] ADD  CONSTRAINT [DF_CategoryProduct_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[CategoryProduct] ADD  CONSTRAINT [DF_CategoryProduct_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CategoryProduct] ADD  CONSTRAINT [DF_CategoryProduct_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[CategoryProduct] ADD  CONSTRAINT [DF_CategoryProduct_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
