USE [MASTER]
GO

CREATE DATABASE	ClienteDB
GO

USE [ClienteDB]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 19/8/2022 13:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Ciudad] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 19/8/2022 13:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [nvarchar](max) NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Edad] [int] NOT NULL,
	[CiudadId] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([Id], [Nombre_Ciudad]) VALUES (1, N'Guayaquil')
INSERT [dbo].[Ciudad] ([Id], [Nombre_Ciudad]) VALUES (2, N'Cuenca')
INSERT [dbo].[Ciudad] ([Id], [Nombre_Ciudad]) VALUES (3, N'Quito')
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Cedula], [Nombres], [Apellidos], [Direccion], [Edad], [CiudadId]) VALUES (1, N'093053214896', N'José Guillermo', N'Delgado Piguabe', N'Floresta', 26, 1)
INSERT [dbo].[Cliente] ([Id], [Cedula], [Nombres], [Apellidos], [Direccion], [Edad], [CiudadId]) VALUES (2, N'011123654789', N'Francisca Tatiana', N'Yagual Holguin', N'12 de Abril', 50, 2)
INSERT [dbo].[Cliente] ([Id], [Cedula], [Nombres], [Apellidos], [Direccion], [Edad], [CiudadId]) VALUES (3, N'170025413678', N'Carlos Rubén', N'Benitez Jaramillo', N'Reina Victoria', 82, 3)
INSERT [dbo].[Cliente] ([Id], [Cedula], [Nombres], [Apellidos], [Direccion], [Edad], [CiudadId]) VALUES (4, N'093014236814', N'Adriana Dominique', N'Loor Yagual', N'Urdesa', 30, 1)
INSERT [dbo].[Cliente] ([Id], [Cedula], [Nombres], [Apellidos], [Direccion], [Edad], [CiudadId]) VALUES (5, N'172045896321', N'Bruno Gerardo', N'Yanez Vera', N'12 de Octubre', 41, 3)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Cliente] FOREIGN KEY([CiudadId])
REFERENCES [dbo].[Ciudad] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Ciudad_Cliente]
GO
