CREATE DATABASE  bloodbog_bd
USE [bloodbog_bd]
GO
/****** Object:  Table [bloodbog_admin].[Agendamiento_Campana]    Script Date: 14/11/2020 10:55:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Agendamiento_Campana](
	[IdAgendamiento] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Asistencia] [datetime] NOT NULL,
	[IdCampana_Donacion] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAgendamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Banner]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Banner](
	[IdBanner] [int] IDENTITY(1,1) NOT NULL,
	[Url_Imagen] [varchar](max) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[IdUsuario_Sube] [int] NOT NULL,
	[Fecha_Subida] [datetime] NOT NULL,
	[Fecha_Hasta] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Campanas_Donacion]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Campanas_Donacion](
	[IdCampanas_Donacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[LNG] [varchar](50) NOT NULL,
	[LTD] [varchar](50) NOT NULL,
	[Fecha_Inicio] [date] NULL,
	[Fecha_Fin] [date] NULL,
	[IdUsuario] [int] NOT NULL,
	[Telefono_1] [varchar](20) NULL,
	[Telefono_2] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCampanas_Donacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Clinicas_Bancos_Sangre]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Clinicas_Bancos_Sangre](
	[Idclinicas_Bancos_Sangre] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[LNG] [varchar](50) NOT NULL,
	[LTD] [varchar](50) NOT NULL,
	[Telefono_1] [varchar](20) NOT NULL,
	[Telefono_2] [varchar](20) NOT NULL,
	[Telefono_3] [varchar](20) NOT NULL,
	[IdUsuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idclinicas_Bancos_Sangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Estado_Solicitud]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Estado_Solicitud](
	[IdEstado_Solicitud] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado_Solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Lineas_Atencion]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Lineas_Atencion](
	[IdLineas_Atencion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Telefono_1] [varchar](20) NOT NULL,
	[Telefono_2] [varchar](20) NOT NULL,
	[Telefono_3] [varchar](20) NOT NULL,
	[Telefono_4] [varchar](20) NOT NULL,
	[Telefono_5] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLineas_Atencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Menu]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Menu](
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Icono] [varchar](100) NOT NULL,
	[urlRedirect] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Menu_Rol]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Menu_Rol](
	[IdMenu_Rol] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NOT NULL,
	[IdMenu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMenu_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Rol]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Solicitud_Recoleccion]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Solicitud_Recoleccion](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[Direccion_Donde] [varchar](200) NOT NULL,
	[LGN_Donde] [varchar](50) NOT NULL,
	[LTD_Donde] [varchar](50) NOT NULL,
	[IdEstado_Solicitud] [int] NOT NULL,
	[IdUsuario_Solicita] [int] NOT NULL,
	[IdUsuario_Recolecta] [int] NOT NULL,
	[Fecha_Recoleccion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Tipo_Documento]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Tipo_Documento](
	[IdTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Tipo_Sangre]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Tipo_Sangre](
	[IdTipoSangre] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoSangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bloodbog_admin].[Usuario]    Script Date: 14/11/2020 10:55:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bloodbog_admin].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[PrimerApellido] [varchar](100) NOT NULL,
	[SegundoApellido] [varchar](100) NOT NULL,
	[CorreoElectronico] [varchar](100) NOT NULL,
	[Peso] [int] NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[NumeroDocumento] [varchar](15) NOT NULL,
	[HashContrasena] [varchar](max) NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[IdTipoSangre] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [bloodbog_admin].[Agendamiento_Campana]  WITH CHECK ADD FOREIGN KEY([IdCampana_Donacion])
REFERENCES [bloodbog_admin].[Campanas_Donacion] ([IdCampanas_Donacion])
GO
ALTER TABLE [bloodbog_admin].[Agendamiento_Campana]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Banner]  WITH CHECK ADD FOREIGN KEY([IdUsuario_Sube])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Campanas_Donacion]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Clinicas_Bancos_Sangre]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Clinicas_Bancos_Sangre]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Estado_Solicitud]  WITH CHECK ADD FOREIGN KEY([IdEstado_Solicitud])
REFERENCES [bloodbog_admin].[Estado_Solicitud] ([IdEstado_Solicitud])
GO
ALTER TABLE [bloodbog_admin].[Menu_Rol]  WITH CHECK ADD FOREIGN KEY([IdMenu])
REFERENCES [bloodbog_admin].[Menu] ([IdMenu])
GO
ALTER TABLE [bloodbog_admin].[Menu_Rol]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [bloodbog_admin].[Rol] ([IdRol])
GO
ALTER TABLE [bloodbog_admin].[Solicitud_Recoleccion]  WITH CHECK ADD FOREIGN KEY([IdEstado_Solicitud])
REFERENCES [bloodbog_admin].[Estado_Solicitud] ([IdEstado_Solicitud])
GO
ALTER TABLE [bloodbog_admin].[Solicitud_Recoleccion]  WITH CHECK ADD FOREIGN KEY([IdUsuario_Solicita])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Solicitud_Recoleccion]  WITH CHECK ADD FOREIGN KEY([IdUsuario_Recolecta])
REFERENCES [bloodbog_admin].[Usuario] ([IdUsuario])
GO
ALTER TABLE [bloodbog_admin].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [bloodbog_admin].[Rol] ([IdRol])
GO
ALTER TABLE [bloodbog_admin].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdTipoDocumento])
REFERENCES [bloodbog_admin].[Tipo_Documento] ([IdTipoDocumento])
GO
ALTER TABLE [bloodbog_admin].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdTipoSangre])
REFERENCES [bloodbog_admin].[Tipo_Sangre] ([IdTipoSangre])
GO
