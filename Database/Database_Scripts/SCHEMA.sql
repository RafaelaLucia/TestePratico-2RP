USE [DECELIS2RP]
GO
/****** Object:  Table [dbo].[class]    Script Date: 29/07/2022 10:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[idClass] [int] IDENTITY(1,1) NOT NULL,
	[idLevel] [smallint] NULL,
	[idTime] [smallint] NULL,
	[nameClass] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[skillLevel]    Script Date: 29/07/2022 10:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skillLevel](
	[idLevel] [smallint] IDENTITY(1,1) NOT NULL,
	[skillLevel] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusType]    Script Date: 29/07/2022 10:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusType](
	[idStatus] [smallint] IDENTITY(1,1) NOT NULL,
	[activeStatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timeClass]    Script Date: 29/07/2022 10:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeClass](
	[idTime] [smallint] IDENTITY(1,1) NOT NULL,
	[periodTime] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userInfo]    Script Date: 29/07/2022 10:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userInfo](
	[idUser] [uniqueidentifier] NOT NULL,
	[idUserType] [smallint] NULL,
	[idStatus] [smallint] NULL,
	[idClass] [int] NULL,
	[nameUser] [varchar](150) NOT NULL,
	[email] [varchar](256) NOT NULL,
	[passwordUser] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userType]    Script Date: 29/07/2022 10:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userType](
	[idUserType] [smallint] IDENTITY(1,1) NOT NULL,
	[titleUserType] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[class] ON 

INSERT [dbo].[class] ([idClass], [idLevel], [idTime], [nameClass]) VALUES (1, 2, 2, N'Basic-A1')
INSERT [dbo].[class] ([idClass], [idLevel], [idTime], [nameClass]) VALUES (2, 3, 1, N'Middle-C3')
INSERT [dbo].[class] ([idClass], [idLevel], [idTime], [nameClass]) VALUES (3, 4, 3, N'Advanced-B4')
INSERT [dbo].[class] ([idClass], [idLevel], [idTime], [nameClass]) VALUES (4, 1, 2, N'Baby-D9')
SET IDENTITY_INSERT [dbo].[class] OFF
GO
SET IDENTITY_INSERT [dbo].[skillLevel] ON 

INSERT [dbo].[skillLevel] ([idLevel], [skillLevel]) VALUES (1, N'Baby Class')
INSERT [dbo].[skillLevel] ([idLevel], [skillLevel]) VALUES (2, N'Básico')
INSERT [dbo].[skillLevel] ([idLevel], [skillLevel]) VALUES (3, N'Intermediário')
INSERT [dbo].[skillLevel] ([idLevel], [skillLevel]) VALUES (4, N'Avançado')
SET IDENTITY_INSERT [dbo].[skillLevel] OFF
GO
SET IDENTITY_INSERT [dbo].[statusType] ON 

INSERT [dbo].[statusType] ([idStatus], [activeStatus]) VALUES (4, 0)
INSERT [dbo].[statusType] ([idStatus], [activeStatus]) VALUES (5, 1)
SET IDENTITY_INSERT [dbo].[statusType] OFF
GO
SET IDENTITY_INSERT [dbo].[timeClass] ON 

INSERT [dbo].[timeClass] ([idTime], [periodTime]) VALUES (1, N'Manhã')
INSERT [dbo].[timeClass] ([idTime], [periodTime]) VALUES (2, N'Tarde')
INSERT [dbo].[timeClass] ([idTime], [periodTime]) VALUES (3, N'Noite')
SET IDENTITY_INSERT [dbo].[timeClass] OFF
GO
INSERT [dbo].[userInfo] ([idUser], [idUserType], [idStatus], [idClass], [nameUser], [email], [passwordUser]) VALUES (N'8ac619c1-01e1-4460-8e6a-1493e736c6ca', 2, 5, 3, N'Jéssica', N'jessica@gmail.com', N'jessica123')
GO
SET IDENTITY_INSERT [dbo].[userType] ON 

INSERT [dbo].[userType] ([idUserType], [titleUserType]) VALUES (2, N'Admin')
INSERT [dbo].[userType] ([idUserType], [titleUserType]) VALUES (1, N'Geral')
INSERT [dbo].[userType] ([idUserType], [titleUserType]) VALUES (3, N'Root')
SET IDENTITY_INSERT [dbo].[userType] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__userType__190546070CBC1A51]    Script Date: 29/07/2022 10:36:48 ******/
ALTER TABLE [dbo].[userType] ADD UNIQUE NONCLUSTERED 
(
	[titleUserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[userInfo] ADD  DEFAULT (newid()) FOR [idUser]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD FOREIGN KEY([idLevel])
REFERENCES [dbo].[skillLevel] ([idLevel])
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD FOREIGN KEY([idTime])
REFERENCES [dbo].[timeClass] ([idTime])
GO
ALTER TABLE [dbo].[userInfo]  WITH CHECK ADD FOREIGN KEY([idClass])
REFERENCES [dbo].[class] ([idClass])
GO
ALTER TABLE [dbo].[userInfo]  WITH CHECK ADD FOREIGN KEY([idStatus])
REFERENCES [dbo].[statusType] ([idStatus])
GO
ALTER TABLE [dbo].[userInfo]  WITH CHECK ADD FOREIGN KEY([idUserType])
REFERENCES [dbo].[userType] ([idUserType])
GO
