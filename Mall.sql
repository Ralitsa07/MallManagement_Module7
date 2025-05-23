GO
USE [Mall]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
 [city_id] [int] NOT NULL,
 [city_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
 [city_id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
 [customer_id] [int] NOT NULL,
 [name] [varchar](50) NOT NULL,
 [email] [varchar](50) NULL,
 [telephone_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
 [customer_id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[malls]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[malls](
 [mall_id] [int] NOT NULL,
 [mall_name] [varchar](50) NOT NULL,
 [address] [varchar](50) NOT NULL,
 [area] [int] NOT NULL,
 [floors] [int] NOT NULL,
 [city_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
 [mall_id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personnel_store_mall]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personnel_store_mall](
 [personnel_id] [int] NOT NULL,
 [store_id] [int] NULL,
 [mall_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
 [personnel_id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personnels]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personnels](
 [personnel_id] [int] NOT NULL,
 [first_name] [varchar](50) NOT NULL,
 [middle_name] [varchar](50) NOT NULL,
 [last_name] [varchar](50) NOT NULL,
 [phone_number] [int] NOT NULL,
 [job_title] [varchar](50) NOT NULL,
 [salary] [decimal](19, 4) NOT NULL,
 [hire_date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
 [personnel_id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
 [sale_id] [int] NOT NULL,
 [product_name] [varchar](50) NOT NULL,
 [sale_date] [date] NOT NULL,
 [unit_price] [decimal](10, 2) NOT NULL,
 [quantity] [int] NOT NULL,
 [customer_id] [int] NOT NULL,
 [store_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
 [sale_id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stores]    Script Date: 4/3/2025 10:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stores](
 [store_id] [int] NOT NULL,
 [store_name] [varchar](50) NOT NULL,
 [category] [varchar](50) NOT NULL,
 [floor] [int] NOT NULL,
 [opening_date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
 [store_id] ASC
)
) ON [PRIMARY]
GO
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (1, N'Stara Zagora')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (2, N'Plovdiv')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (3, N'Sofia')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (4, N'Varna')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (5, N'Burgas')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (6, N'Ruse')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (7, N'Montana')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (8, N'Pleven')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (9, N'Sliven')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (10, N'Dobrich')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (11, N'Haskovo')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (12, N'Nova Zagora')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (13, N'Yambol')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (14, N'Veliko Turnovo')
INSERT [dbo].[cities] ([city_id], [city_name]) VALUES (15, N'Gabrovo')
GO
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (1, N'Ivan Ivanov', N'ivan003@abv.bg', 844584558)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (2, N'Kalina Geogieva', N'kalipali79@abv.bg', 876301778)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (3, N'Mirela Stamenova', N'miri1456@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (4, N'Kaloyan Kalinchev', N'kalatagiubi@abv.bg', 845782323)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (5, N'Misho Stoyanov', N'milenial12@abv.bg', 845445122)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (6, N'Ralitsa Stoyanova', NULL, 866501335)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (7, N'Kiril Baldev', N'kircho23@abv.bg', 898651447)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (8, N'Simeon Videnov', N'sim76@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (9, N'Miroslav Tishev', N'tishhh@abv.bg', 875602358)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (10, N'Martina Kamenova', N'martik@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (11, N'Teodora Kostova', NULL, NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (12, N'Boyan Valilev', N'bobi2360@abv.bg', 876123456)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (13, N'Stoyan Mihaylov', N'rockstra64@abv.bg', 898132897)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (14, N'Georgi Popov', N'georgpp@abv.bg', 877123678)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (15, N'Diana Stancheva', N'didi98@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (16, N'Milena Petrova', N'milpetrova@abv.bg', 889654789)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (17, N'Anton Dimitrov', N'antodimi@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (18, N'Kristina Ivanova', N'krisivan@abv.bg', 879123456)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (19, N'Petar Georgiev', N'pgeorgiev@abv.bg', 898001122)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (20, N'Nikolay Petkov', N'nikpetkov@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (21, N'Katya Stoyanova', N'ksty@abv.bg', 887651234)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (22, N'Rumen Kolev', NULL, 876345678)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (23, N'Svetlana Nikolova', N'svetlanik@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (24, N'Aleksandar Marinov', N'aleks_m@abv.bg', 897653421)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (25, N'Viktor Yordanov', N'viktory@abv.bg', 887123456)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (26, N'Desislava Kostova', N'desik@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (27, N'Teodor Dimitrov', NULL, 899001122)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (28, N'Margarita Popova', N'margpopova@abv.bg', 876001234)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (29, N'Valentin Stoyanov', N'valst@abv.bg', 885009876)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (30, N'Aneliya Petrova', N'anepet@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (31, N'Dimitar Ivanov', N'dimivanov@abv.bg', 878001234)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (32, N'Iva Georgieva', N'ivageo@abv.bg', 887125678)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (33, N'Elena Vasileva', N'elvas@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (34, N'Hristo Stoyanov', N'hsto@abv.bg', 896123457)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (35, N'Plamen Nikolov', N'plamen_nik@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (36, N'Borislava Dimitrova', N'borid@abv.bg', 884005678)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (37, N'Kaloyan Ivanov', N'kaloivan@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (38, N'Miroslava Kostova', N'mirko@abv.bg', 875008765)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (39, N'Tsvetomir Marinov', N'tsvetom@abv.bg', 887001234)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (40, N'Lyubomir Petkov', NULL, 894007654)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (41, N'Silviya Ivanova', N'silviaiv@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (42, N'Angel Dimitrov', N'angdim@abv.bg', 883001234)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (43, N'Stanislav Videnov', N'stanvid@abv.bg', 872004321)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (44, N'Zornitsa Petkova', N'zornip@abv.bg', NULL)
INSERT [dbo].[customers] ([customer_id], [name], [email], [telephone_number]) VALUES (45, N'Emil Stanchev', N'emilst@abv.bg', 881009876)
GO
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (1, N'D&R Paradise', N'ul.Han Asparuh 12', 36000, 4, 1)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (2, N'D&R Paradise', N'ul.Hristo Botev 45', 37000, 4, 3)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (3, N'D&R Paradise', N'ul.Ivan Asen II 3', 35000, 4, 6)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (4, N'D&R Paradise', N'ul.Bratya Jekovi 18', 42000, 3, 11)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (5, N'D&R Paradise', N'ul.Stefan Stanbolov 22', 37000, 4, 5)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (6, N'D&R Paradise', N'ul.Georgi Rakovski 30', 39000, 3, 2)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (7, N'D&R Paradise', N'ul.Han Kubrat 7', 34000, 4, 14)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (8, N'D&R Paradise', N'ul.Samara 5', 43000, 2, 3)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (9, N'D&R Paradise', N'ul.Morska Gradina 20', 38000, 4, 4)
INSERT [dbo].[malls] ([mall_id], [mall_name], [address], [area], [floors], [city_id]) VALUES (10, N'D&R Paradise', N'ul.Opulchenska 1', 40000, 3, 1)
GO
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (1, 1, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (2, 5, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (3, 10, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (4, 7, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (5, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (6, 9, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (7, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (8, 3, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (9, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (10, 8, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (11, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (12, 6, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (13, NULL, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (14, 2, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (15, 4, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (16, NULL, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (17, 5, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (18, 10, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (19, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (20, 9, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (21, 3, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (22, NULL, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (23, 8, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (24, 6, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (25, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (26, 7, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (27, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (28, 2, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (29, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (30, 5, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (31, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (32, 9, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (33, 8, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (34, NULL, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (35, 3, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (36, NULL, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (37, 1, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (38, NULL, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (39, 4, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (40, 2, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (41, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (42, 10, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (43, 6, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (44, NULL, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (45, 9, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (46, 3, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (47, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (48, 8, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (49, 7, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (50, NULL, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (51, 2, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (52, NULL, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (53, 5, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (54, 6, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (55, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (56, 10, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (57, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (58, 9, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (59, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (60, 4, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (61, 3, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (62, NULL, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (63, 8, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (64, NULL, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (65, 6, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (66, NULL, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (67, 7, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (68, NULL, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (69, 1, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (70, 2, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (71, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (72, 5, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (73, NULL, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (74, 9, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (75, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (76, 10, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (77, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (78, 3, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (79, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (80, 8, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (81, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (82, 6, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (83, NULL, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (84, 7, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (85, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (86, 1, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (87, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (88, 5, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (89, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (90, 3, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (91, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (92, 4, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (93, NULL, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (94, 9, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (95, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (96, 10, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (97, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (98, 8, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (99, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (100, 7, 1)
GO
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (101, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (102, 2, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (103, NULL, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (104, 6, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (105, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (106, 3, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (107, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (108, 10, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (109, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (110, 1, 1)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (111, NULL, 2)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (112, 5, 3)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (113, NULL, 4)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (114, 9, 5)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (115, NULL, 6)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (116, 8, 7)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (117, NULL, 8)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (118, 6, 9)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (119, NULL, 10)
INSERT [dbo].[personnel_store_mall] ([personnel_id], [store_id], [mall_id]) VALUES (120, 15, 1)
GO
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (1, N'Ivan', N'Petrov', N'Ivanov', 888123456, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-01-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (2, N'Maria', N'Georgieva', N'Dimitrova', 887654321, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-11-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (3, N'Georgi', N'Ivanov', N'Stoyanov', 899123456, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2021-06-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (4, N'Elena', N'Kostova', N'Petrova', 898765432, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2020-03-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (5, N'Petya', N'Dimova', N'Ivanova', 877123456, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2023-07-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (6, N'Stoyan', N'Mihaylov', N'Georgiev', 876123456, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2021-09-30' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (7, N'Diana', N'Stancheva', N'Popova', 888123344, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2022-12-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (8, N'Kiril', N'Popov', N'Dimitrov', 887125678, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2023-02-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (9, N'Svetlana', N'Nikolova', N'Petrova', 879123456, N'Stock Clerk', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2022-05-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (10, N'Boyan', N'Vasilev', N'Stoyanov', 898123897, N'Assistant Manager', CAST(2200.0000 AS Decimal(19, 4)), CAST(N'2021-11-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (11, N'Nikolay', N'Dimitrov', N'Popov', 878001234, N'Security Supervisor', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2020-01-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (12, N'Viktoria', N'Petrova', N'Ivanova', 897001235, N'Marketing Specialist', CAST(2000.0000 AS Decimal(19, 4)), CAST(N'2019-08-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (13, N'Anton', N'Georgiev', N'Petkov', 895001236, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-02-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (14, N'Katya', N'Stoyanova', N'Mihaylova', 876001237, N'Receptionist', CAST(1100.0000 AS Decimal(19, 4)), CAST(N'2022-06-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (15, N'Plamen', N'Ivanov', N'Nikolov', 886001238, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2023-01-30' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (16, N'Iva', N'Dimitrova', N'Kirilova', 877001239, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2022-10-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (17, N'Borislav', N'Petrov', N'Georgiev', 896001240, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2023-03-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (18, N'Lili', N'Nikolova', N'Vasileva', 889001241, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2021-05-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (19, N'Dimitar', N'Kostov', N'Petrov', 879001242, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2023-04-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (20, N'Gergana', N'Stancheva', N'Ivanova', 898001243, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2020-03-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (21, N'Teodor', N'Mihaylov', N'Dimitrov', 888001244, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2021-11-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (22, N'Mariya', N'Kirilova', N'Georgieva', 897001245, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-09-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (23, N'Hristo', N'Ivanov', N'Popov', 878001246, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2021-04-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (24, N'Tsvetomira', N'Vasileva', N'Kostova', 887001247, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-07-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (25, N'Angel', N'Dimitrov', N'Petkov', 877001248, N'Assistant Manager', CAST(2200.0000 AS Decimal(19, 4)), CAST(N'2020-08-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (26, N'Lyubomir', N'Kostov', N'Ivanov', 896001249, N'Stock Clerk', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2021-12-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (27, N'Silviya', N'Petrova', N'Stoyanova', 885001250, N'Marketing Specialist', CAST(2000.0000 AS Decimal(19, 4)), CAST(N'2019-03-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (28, N'Aleksandar', N'Georgiev', N'Dimitrov', 875001251, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2022-01-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (29, N'Kristina', N'Nikolova', N'Petrova', 895001252, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (30, N'Valentin', N'Ivanov', N'Kirilov', 884001253, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2020-09-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (31, N'Petko', N'Dimitrov', N'Popov', 874001254, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-10-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (32, N'Desislava', N'Stoyanova', N'Kirilova', 894001255, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2023-02-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (33, N'Zornitsa', N'Ivanova', N'Dimitrova', 883001256, N'Receptionist', CAST(1100.0000 AS Decimal(19, 4)), CAST(N'2021-07-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (34, N'Rumen', N'Petrov', N'Georgiev', 873001257, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-03-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (35, N'Ivaylo', N'Nikolov', N'Stoyanov', 893001258, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2020-10-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (36, N'Ivona', N'Dimitrova', N'Petkova', 882001259, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-06-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (37, N'Emil', N'Kostov', N'Ivanov', 872001260, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2022-04-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (38, N'Nadezhda', N'Petrova', N'Dimitrova', 892001261, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2021-05-30' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (39, N'Stanislav', N'Ivanov', N'Georgiev', 881001262, N'Assistant Manager', CAST(2200.0000 AS Decimal(19, 4)), CAST(N'2020-11-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (40, N'Milena', N'Georgieva', N'Petrova', 871001263, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2023-09-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (41, N'Veselin', N'Stoyanov', N'Kostov', 891001264, N'Security Supervisor', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2019-02-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (42, N'Aneliya', N'Ivanova', N'Nikolova', 880001265, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2022-08-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (43, N'Todor', N'Dimitrov', N'Petkov', 870001266, N'Stock Clerk', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2021-03-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (44, N'Zdravko', N'Georgiev', N'Popov', 890001267, N'Marketing Specialist', CAST(2000.0000 AS Decimal(19, 4)), CAST(N'2023-05-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (45, N'Denitsa', N'Petrova', N'Kirilova', 889001268, N'Receptionist', CAST(1100.0000 AS Decimal(19, 4)), CAST(N'2020-12-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (46, N'Hristina', N'Kostova', N'Stoyanova', 879001269, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-08-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (47, N'Lyudmil', N'Nikolov', N'Petrov', 899001270, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-10-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (48, N'Stanislava', N'Ivanova', N'Dimitrova', 888001271, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2022-11-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (49, N'Margarita', N'Petkova', N'Ivanova', 878001272, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2021-12-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (50, N'Tihomir', N'Georgiev', N'Nikolov', 898001273, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2020-06-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (51, N'Todor', N'Ivanov', N'Kirilov', 881012345, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2022-01-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (52, N'Rosen', N'Georgiev', N'Petkov', 892112346, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2021-11-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (53, N'Vanya', N'Stoyanova', N'Petrova', 889001234, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2023-05-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (54, N'Yordan', N'Kostov', N'Georgiev', 893001235, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2022-02-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (55, N'Silvia', N'Petrova', N'Stoyanova', 874001236, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2021-04-12' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (56, N'Petar', N'Ivanov', N'Nikolov', 895001237, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-07-21' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (57, N'Aleksandr', N'Mihaylov', N'Stoyanov', 876001238, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2021-10-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (58, N'Dimitar', N'Georgiev', N'Popov', 887001239, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2020-12-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (59, N'Nikolay', N'Dimitrov', N'Georgiev', 898001240, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-06-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (60, N'Iva', N'Stoyanova', N'Petkova', 886001241, N'Marketing Specialist', CAST(2000.0000 AS Decimal(19, 4)), CAST(N'2023-02-08' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (61, N'Viktor', N'Kirilov', N'Georgiev', 891001242, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-11-19' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (62, N'Maya', N'Petrova', N'Ivanova', 878001243, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2021-01-30' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (63, N'Zhenya', N'Stoyanova', N'Dimitrova', 889001244, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2020-10-18' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (64, N'Boris', N'Nikolov', N'Petrov', 897001245, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-06-12' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (65, N'Kristina', N'Mihaylova', N'Ivanova', 874001246, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2021-07-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (66, N'Tsvetelina', N'Petrova', N'Stoyanova', 892001247, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2023-04-22' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (67, N'Emil', N'Dimitrov', N'Nikolov', 885001248, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2022-08-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (68, N'Svetoslav', N'Georgiev', N'Petrov', 894001249, N'Security Supervisor', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2023-03-17' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (69, N'Ivana', N'Stoyanova', N'Popova', 879001250, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2021-09-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (70, N'Mihail', N'Popov', N'Georgiev', 888001251, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-04-22' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (71, N'Valentina', N'Dimitrova', N'Stoyanova', 876001252, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-05-18' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (72, N'Yana', N'Petrova', N'Kirilova', 887001253, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2020-11-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (73, N'Radoslava', N'Georgieva', N'Ivanova', 895001254, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-02-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (74, N'Anastasia', N'Stoyanova', N'Petkova', 871001255, N'Assistant Manager', CAST(2200.0000 AS Decimal(19, 4)), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (75, N'Nikol', N'Kostov', N'Dimitrov', 882001256, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2020-07-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (76, N'Veronika', N'Ivanova', N'Kirilova', 893001257, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (77, N'Galia', N'Stoyanova', N'Popova', 884001258, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2022-07-17' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (78, N'Ivo', N'Dimitrov', N'Georgiev', 895001259, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2023-01-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (79, N'Lidia', N'Georgieva', N'Kirilova', 876001260, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2021-03-18' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (80, N'Vasil', N'Ivanov', N'Popov', 887001261, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2022-04-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (81, N'Boryana', N'Petrova', N'Dimitrova', 898001262, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-06-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (82, N'Tanya', N'Nikolova', N'Mihaylova', 889001263, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (83, N'Stanimir', N'Georgiev', N'Petkov', 891001264, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2020-12-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (84, N'Martina', N'Dimitrova', N'Popova', 892001265, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2021-01-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (85, N'Krasimir', N'Kostov', N'Nikolov', 883001266, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2023-02-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (86, N'Snezhana', N'Ivanova', N'Stoyanova', 874001267, N'Assistant Manager', CAST(2200.0000 AS Decimal(19, 4)), CAST(N'2022-09-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (87, N'Radoslav', N'Georgiev', N'Popov', 895001268, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2021-05-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (88, N'Yuliana', N'Petrova', N'Kirilova', 886001269, N'Security Supervisor', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2020-11-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (89, N'Todor', N'Mihaylov', N'Stoyanov', 877001270, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2022-08-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (90, N'Lachezar', N'Georgiev', N'Petrov', 898001271, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2021-07-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (91, N'Teodora', N'Ivanova', N'Popova', 889001272, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2023-03-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (92, N'Bojidar', N'Dimitrov', N'Georgiev', 879001273, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-02-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (93, N'Ivelina', N'Nikolova', N'Petrova', 891001274, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-06-30' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (94, N'Simeon', N'Kostov', N'Popov', 882001275, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2023-06-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (95, N'Ivayla', N'Stoyanova', N'Dimitrova', 873001276, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2022-07-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (96, N'Boryana', N'Petrova', N'Stoyanova', 894001277, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2021-04-12' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (97, N'Nikola', N'Ivanov', N'Petkov', 885001278, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2023-05-18' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (98, N'Emilia', N'Dimitrova', N'Kirilova', 876001279, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (99, N'Hristo', N'Georgiev', N'Popov', 897001280, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2022-11-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (100, N'Radka', N'Ivanova', N'Petrova', 888001281, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2021-09-01' AS Date))
GO
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (101, N'Yordan', N'Stoyanov', N'Kirilov', 899001282, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2020-10-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (102, N'Teodora', N'Georgieva', N'Ivanova', 878001283, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (103, N'Albena', N'Dimitrova', N'Kirilova', 889001284, N'Cleaner', CAST(1000.0000 AS Decimal(19, 4)), CAST(N'2023-01-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (104, N'Dimitar', N'Stoyanov', N'Popov', 893001285, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2022-02-12' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (105, N'Vladimir', N'Kostov', N'Stoyanov', 874001286, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2021-11-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (106, N'Lilian', N'Petrova', N'Georgieva', 887001287, N'Assistant Manager', CAST(2200.0000 AS Decimal(19, 4)), CAST(N'2023-09-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (107, N'Emil', N'Stoyanova', N'Popov', 896001288, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2020-12-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (108, N'Bozhidar', N'Dimitrov', N'Georgiev', 888001289, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2023-04-01' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (109, N'Angelina', N'Georgieva', N'Kirilova', 891001290, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2021-05-17' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (110, N'Tihomir', N'Kostov', N'Popov', 876001291, N'Security Supervisor', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2022-07-12' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (111, N'Petar', N'Ivanov', N'Dimitrova', 898001292, N'Store Manager', CAST(2500.0000 AS Decimal(19, 4)), CAST(N'2023-03-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (112, N'Lili', N'Nikolova', N'Petkova', 881001293, N'Sales Assistant', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-08-28' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (113, N'Gergana', N'Stoyanova', N'Georgiev', 897001294, N'Cashier', CAST(1200.0000 AS Decimal(19, 4)), CAST(N'2021-10-10' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (114, N'Iliyan', N'Dimitrov', N'Stoyanov', 878001295, N'Security Guard', CAST(1500.0000 AS Decimal(19, 4)), CAST(N'2023-05-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (115, N'Vera', N'Kirilova', N'Petrova', 896001296, N'Warehouse Worker', CAST(1300.0000 AS Decimal(19, 4)), CAST(N'2022-12-05' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (116, N'Zornitsa', N'Ivanova', N'Popova', 872001297, N'Customer Service', CAST(1400.0000 AS Decimal(19, 4)), CAST(N'2021-07-25' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (117, N'Dimitra', N'Georgieva', N'Nikolova', 883001298, N'Technician', CAST(1600.0000 AS Decimal(19, 4)), CAST(N'2020-04-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (118, N'Boyka', N'Stoyanova', N'Petrova', 891001299, N'Visual Merchandiser', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2023-01-20' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (119, N'Bozhidar', N'Kostov', N'Stoyanov', 884001300, N'Security Supervisor', CAST(1800.0000 AS Decimal(19, 4)), CAST(N'2022-11-15' AS Date))
INSERT [dbo].[personnels] ([personnel_id], [first_name], [middle_name], [last_name], [phone_number], [job_title], [salary], [hire_date]) VALUES (120, N'Maria', N'Petrova', N'Dimitrova', 876001301, N'Sales Representative', CAST(1700.0000 AS Decimal(19, 4)), CAST(N'2023-04-05' AS Date))
GO
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (1, N'T-Shirt', CAST(N'2025-01-01' AS Date), CAST(19.99 AS Decimal(10, 2)), 2, 41, 1)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (2, N'Sneakers', CAST(N'2025-01-02' AS Date), CAST(79.99 AS Decimal(10, 2)), 1, 32, 5)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (3, N'Jeans', CAST(N'2025-01-03' AS Date), CAST(49.99 AS Decimal(10, 2)), 3, 43, 1)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (4, N'Sunglasses', CAST(N'2025-01-04' AS Date), CAST(24.99 AS Decimal(10, 2)), 1, 21, 20)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (5, N'Backpack', CAST(N'2025-01-05' AS Date), CAST(34.99 AS Decimal(10, 2)), 1, 10, 8)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (6, N'Smartphone Case', CAST(N'2025-01-06' AS Date), CAST(14.99 AS Decimal(10, 2)), 2, 2, 10)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (7, N'Headphones', CAST(N'2025-01-07' AS Date), CAST(99.99 AS Decimal(10, 2)), 1, 17, 15)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (8, N'Notebook', CAST(N'2025-01-08' AS Date), CAST(4.99 AS Decimal(10, 2)), 5, 8, 8)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (9, N'Water Bottle', CAST(N'2025-01-09' AS Date), CAST(9.99 AS Decimal(10, 2)), 2, 4, 9)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (10, N'Laptop Bag', CAST(N'2025-01-10' AS Date), CAST(39.99 AS Decimal(10, 2)), 1, 13, 7)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (11, N'Watch', CAST(N'2025-01-11' AS Date), CAST(129.99 AS Decimal(10, 2)), 1, 11, 7)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (12, N'Perfume', CAST(N'2025-01-12' AS Date), CAST(59.99 AS Decimal(10, 2)), 1, 45, 16)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (13, N'Gaming Mouse', CAST(N'2025-01-13' AS Date), CAST(49.99 AS Decimal(10, 2)), 1, 33, 10)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (14, N'Charger', CAST(N'2025-01-14' AS Date), CAST(19.99 AS Decimal(10, 2)), 3, 27, 15)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (15, N'LED Lamp', CAST(N'2025-01-15' AS Date), CAST(29.99 AS Decimal(10, 2)), 2, 15, 7)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (16, N'Diamond Necklace', CAST(N'2025-02-03' AS Date), CAST(1890.90 AS Decimal(10, 2)), 1, 29, 20)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (17, N'Jacket', CAST(N'2025-01-16' AS Date), CAST(89.99 AS Decimal(10, 2)), 1, 5, 2)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (18, N'Pants', CAST(N'2025-01-17' AS Date), CAST(39.99 AS Decimal(10, 2)), 2, 22, 4)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (19, N'Boots', CAST(N'2025-01-18' AS Date), CAST(99.99 AS Decimal(10, 2)), 1, 14, 5)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (20, N'Burger Combo', CAST(N'2025-01-19' AS Date), CAST(7.99 AS Decimal(10, 2)), 2, 3, 6)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (21, N'Power Bank', CAST(N'2025-01-20' AS Date), CAST(49.99 AS Decimal(10, 2)), 1, 19, 7)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (22, N'Children’s Toys', CAST(N'2025-01-21' AS Date), CAST(14.99 AS Decimal(10, 2)), 3, 12, 8)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (23, N'Kitchen Utensils', CAST(N'2025-01-22' AS Date), CAST(24.99 AS Decimal(10, 2)), 2, 30, 9)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (24, N'Microwave Oven', CAST(N'2025-01-23' AS Date), CAST(149.99 AS Decimal(10, 2)), 1, 28, 10)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (25, N'Running Shoes', CAST(N'2025-01-24' AS Date), CAST(119.99 AS Decimal(10, 2)), 1, 36, 11)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (26, N'Sports Bag', CAST(N'2025-01-25' AS Date), CAST(69.99 AS Decimal(10, 2)), 1, 39, 12)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (27, N'Groceries', CAST(N'2025-01-26' AS Date), CAST(24.99 AS Decimal(10, 2)), 4, 9, 13)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (28, N'Espresso', CAST(N'2025-01-27' AS Date), CAST(4.99 AS Decimal(10, 2)), 3, 31, 14)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (29, N'MacBook Pro', CAST(N'2025-01-28' AS Date), CAST(1999.99 AS Decimal(10, 2)), 1, 7, 15)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (30, N'Shampoo', CAST(N'2025-01-29' AS Date), CAST(9.99 AS Decimal(10, 2)), 2, 26, 16)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (31, N'Sweater', CAST(N'2025-01-30' AS Date), CAST(29.99 AS Decimal(10, 2)), 1, 16, 17)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (32, N'Blouse', CAST(N'2025-01-31' AS Date), CAST(19.99 AS Decimal(10, 2)), 2, 25, 18)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (33, N'T-shirt', CAST(N'2025-02-01' AS Date), CAST(14.99 AS Decimal(10, 2)), 3, 6, 19)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (34, N'MacBook Air', CAST(N'2025-02-02' AS Date), CAST(1469.99 AS Decimal(10, 2)), 1, 13, 15)
INSERT [dbo].[sales] ([sale_id], [product_name], [sale_date], [unit_price], [quantity], [customer_id], [store_id]) VALUES (35, N'Washing Machine', CAST(N'2025-02-02' AS Date), CAST(559.99 AS Decimal(10, 2)), 1, 27, 7)
GO
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (1, N'H&M', N'clothes', 2, CAST(N'2019-10-12' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (2, N'Bershka', N'clothes', 2, CAST(N'2021-08-22' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (3, N'KFC', N'food', 4, CAST(N'2024-11-11' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (4, N'Stradivarius', N'clothes', 3, CAST(N'2018-02-01' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (5, N'Deichmann', N'shoes', 3, CAST(N'2020-12-10' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (6, N'McDonalds', N'food', 4, CAST(N'2012-05-27' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (7, N'Technopolis', N'technique', 1, CAST(N'2021-01-15' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (8, N'Jumbo', N'everything', 0, CAST(N'2020-04-22' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (9, N'Pepko', N'everything', 3, CAST(N'2019-07-30' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (10, N'Technomarket', N'technique', 1, CAST(N'2020-09-21' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (11, N'Nike', N'sports', 2, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (12, N'Adidas', N'sports', 3, CAST(N'2023-08-15' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (13, N'Lidl', N'food', 4, CAST(N'2021-04-10' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (14, N'Starbucks', N'food', 2, CAST(N'2022-01-10' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (15, N'Apple', N'technique', 1, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (16, N'Lilly Drogerie', N'cosmetics', 3, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (17, N'C&A', N'clothes', 2, CAST(N'2021-09-15' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (18, N'Pull&Bear', N'clothes', 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (19, N'Stradivarius', N'clothes', 4, CAST(N'2023-01-21' AS Date))
INSERT [dbo].[stores] ([store_id], [store_name], [category], [floor], [opening_date]) VALUES (20, N'Swarovski', N'accessories', 3, CAST(N'2022-06-18' AS Date))
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (NULL) FOR [telephone_number]
GO
ALTER TABLE [dbo].[personnel_store_mall] ADD  DEFAULT (NULL) FOR [store_id]
GO
ALTER TABLE [dbo].[malls]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[cities] ([city_id])
GO
ALTER TABLE [dbo].[personnel_store_mall]  WITH CHECK ADD FOREIGN KEY([mall_id])
REFERENCES [dbo].[malls] ([mall_id])
GO
ALTER TABLE [dbo].[personnel_store_mall]  WITH CHECK ADD FOREIGN KEY([personnel_id])
REFERENCES [dbo].[personnels] ([personnel_id])
GO
ALTER TABLE [dbo].[personnel_store_mall]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [dbo].[stores] ([store_id])
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [dbo].[stores] ([store_id])
GO
USE [master]
GO
ALTER DATABASE [Mall] SET  READ_WRITE 
GO