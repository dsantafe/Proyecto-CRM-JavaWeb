CREATE DATABASE [bdCRM]

USE [bdCRM]
GO
/****** Object:  Table [dbo].[tbCalificaciones]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCalificaciones](
	[caliCodigo] [int] NOT NULL,
	[caliDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbCalificaciones] PRIMARY KEY CLUSTERED 
(
	[caliCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCampañas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCampañas](
	[campCodigo] [int] NOT NULL,
	[ticaCodigo] [int] NULL,
	[campNombre] [varchar](1000) NULL,
	[escaCodigo] [int] NULL,
	[campFechaInicio] [varchar](1000) NULL,
	[campFechaFin] [varchar](1000) NULL,
	[campIngresosEsperados] [float] NULL,
	[campCostePresupuestado] [float] NULL,
	[campCosteReal] [float] NULL,
	[campRespuestaEsperada] [varchar](1000) NULL,
	[campNumerosEnviados] [int] NULL,
	[campDescripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_tbCampañas] PRIMARY KEY CLUSTERED 
(
	[campCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbContactos]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbContactos](
	[contCodigo] [bigint] NOT NULL,
	[fuenCodigo] [int] NULL,
	[contNombres] [varchar](1000) NULL,
	[contApellidos] [varchar](1000) NULL,
	[contNumeroCuenta] [varchar](1000) NULL,
	[contTitulo] [varchar](1000) NULL,
	[contCorreo] [varchar](1000) NULL,
	[contDepartamento] [varchar](1000) NULL,
	[contTelefono] [varchar](1000) NULL,
	[contTelefonoParticular] [varchar](1000) NULL,
	[contOtroTelefono] [varchar](1000) NULL,
	[contFax] [varchar](1000) NULL,
	[contMovil] [varchar](1000) NULL,
	[contFechaNacimiento] [varchar](1000) NULL,
	[contAsistente] [varchar](1000) NULL,
	[contTelefonoAsistente] [varchar](1000) NULL,
	[contRespondeA] [varchar](1000) NULL,
	[contNoParticipacionCorreo] [char](1) NULL,
	[contIdSkype] [varchar](1000) NULL,
	[contCorreoSecundario] [varchar](1000) NULL,
 CONSTRAINT [PK_tbContactos] PRIMARY KEY CLUSTERED 
(
	[contCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEstados]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEstados](
	[estaCodigo] [int] NOT NULL,
	[estaDescripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tbEstados] PRIMARY KEY CLUSTERED 
(
	[estaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEstadosCampañas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEstadosCampañas](
	[escaCodigo] [int] NOT NULL,
	[escaDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbEstadosCampañas] PRIMARY KEY CLUSTERED 
(
	[escaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEstadosClientes]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEstadosClientes](
	[esclCodigo] [int] NOT NULL,
	[esclDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbEstadoPosibleCliente] PRIMARY KEY CLUSTERED 
(
	[esclCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEstadosTareas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEstadosTareas](
	[estarCodigo] [int] NOT NULL,
	[estarDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbEstadosTareas] PRIMARY KEY CLUSTERED 
(
	[estarCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEventos]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEventos](
	[evenCodigo] [int] NOT NULL,
	[evenNombre] [varchar](1000) NULL,
	[evenUbicacion] [varchar](1000) NULL,
	[evenParticipantes] [varchar](1000) NULL,
	[evenTodoDia] [char](1) NULL,
	[evenFecha] [varchar](1000) NULL,
	[recoCodigo] [int] NULL,
	[evenDescripcion] [varchar](100) NULL,
 CONSTRAINT [PK_tbEventos] PRIMARY KEY CLUSTERED 
(
	[evenCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbFases]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFases](
	[faseCodigo] [int] NOT NULL,
	[faseDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbFases] PRIMARY KEY CLUSTERED 
(
	[faseCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbFuentes]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFuentes](
	[fuenCodigo] [int] NOT NULL,
	[fuenDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbFuente] PRIMARY KEY CLUSTERED 
(
	[fuenCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLlamadas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLlamadas](
	[llamCodigo] [int] NOT NULL,
	[llamContacto] [varchar](1000) NULL,
	[llamAsunto] [varchar](1000) NULL,
	[propCodigo] [int] NULL,
	[recoCodigo] [int] NULL,
	[tillCodigo] [int] NULL,
	[llamDetalles] [varchar](1000) NULL,
	[llamFecha] [varchar](1000) NULL,
	[llamDuracion] [int] NULL,
	[llamDescripcion] [varchar](1000) NULL,
	[llamResultado] [varchar](1000) NULL,
 CONSTRAINT [PK_tbLlamadas] PRIMARY KEY CLUSTERED 
(
	[llamCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPosiblesClientes]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPosiblesClientes](
	[poclCodigo] [bigint] NOT NULL,
	[poclEmpresa] [varchar](1000) NULL,
	[poclNombres] [varchar](1000) NULL,
	[poclApellidos] [varchar](1000) NULL,
	[poclTitulo] [varchar](1000) NULL,
	[poclCorreo] [varchar](1000) NULL,
	[poclTelefono] [varchar](1000) NULL,
	[poclFax] [varchar](1000) NULL,
	[poclMovil] [varchar](1000) NULL,
	[poclSitioWeb] [varchar](1000) NULL,
	[fuenCodigo] [int] NULL,
	[esclCodigo] [int] NULL,
	[sectCodigo] [int] NULL,
	[poclCantidadEmpleados] [int] NULL,
	[poclIngresosAnuales] [float] NULL,
	[caliCodigo] [int] NULL,
	[poclNoParticipacionCorreoElectronico] [char](1) NULL,
	[poclIdSkype] [varchar](1000) NULL,
	[poclTwitter] [varchar](1000) NULL,
	[poclCorreoSecundario] [varchar](1000) NULL,
 CONSTRAINT [PK_tbClientes] PRIMARY KEY CLUSTERED 
(
	[poclCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPrioridades]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPrioridades](
	[prioCodigo] [int] NOT NULL,
	[prioDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbPrioridades] PRIMARY KEY CLUSTERED 
(
	[prioCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPropositos]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPropositos](
	[propCodigo] [int] NOT NULL,
	[propDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbPropositos] PRIMARY KEY CLUSTERED 
(
	[propCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRelacionadoCon]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRelacionadoCon](
	[recoCodigo] [int] NOT NULL,
	[recoDescripcion] [varchar](1000) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbRelacionadoCon] PRIMARY KEY CLUSTERED 
(
	[recoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSectores]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSectores](
	[sectCodigo] [int] NOT NULL,
	[sectDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbSectores] PRIMARY KEY CLUSTERED 
(
	[sectCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTareas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTareas](
	[tareCodigo] [int] NOT NULL,
	[tareTitular] [varchar](1000) NULL,
	[tareAsunto] [varchar](1000) NULL,
	[tareFechaVencimiento] [varchar](1000) NULL,
	[tareContacto] [varchar](1000) NULL,
	[tareCuenta] [varchar](1000) NULL,
	[etarCodigo] [int] NULL,
	[prioCodigo] [int] NULL,
	[tareEnvioCorreo] [char](1) NULL,
	[tareRepetir] [char](1) NULL,
	[tareDescripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tbTareas] PRIMARY KEY CLUSTERED 
(
	[tareCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTiposCampañas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTiposCampañas](
	[ticaCodigo] [int] NOT NULL,
	[ticaDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbTiposCampañas] PRIMARY KEY CLUSTERED 
(
	[ticaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTiposLlamadas]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTiposLlamadas](
	[tillCodigo] [int] NOT NULL,
	[tillDescripcion] [varchar](1000) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbTiposLlamadas] PRIMARY KEY CLUSTERED 
(
	[tillCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTiposTratos]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTiposTratos](
	[titrCodigo] [int] NOT NULL,
	[titrDescripcion] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbTiposTratos] PRIMARY KEY CLUSTERED 
(
	[titrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTratos]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTratos](
	[tratCodigo] [int] NOT NULL,
	[tratImporte] [varchar](1000) NULL,
	[tratNombre] [varchar](1000) NULL,
	[tratFechaCierre] [varchar](1000) NULL,
	[tratNumeroCuenta] [varchar](1000) NULL,
	[faseCodigo] [int] NULL,
	[titrCodigo] [int] NULL,
	[tratProbabilidad] [float] NULL,
	[tratSiguientePaso] [varchar](1000) NULL,
	[tratIngresosEsperados] [float] NULL,
	[fuenCodigo] [int] NULL,
	[tratFuente] [varchar](1000) NULL,
	[tratNombreContacto] [varchar](1000) NULL,
	[tratDescripcion] [varchar](100) NULL,
 CONSTRAINT [PK_tbTratos] PRIMARY KEY CLUSTERED 
(
	[tratCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 6/11/2018 12:17:54 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUsuarios](
	[usuaCodigo] [int] NOT NULL,
	[usuaDescripcion] [varchar](50) NULL,
	[usuaLogin] [varchar](50) NULL,
	[usuaPassword] [varchar](50) NULL,
	[estaCodigo] [int] NULL,
 CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED 
(
	[usuaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (1, N'Ninguna', 1)
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (2, N'Adquirido', 1)
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (3, N'Activo', 1)
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (4, N'Contactado', 1)
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (5, N'Fallo de mercado', 1)
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (6, N'Proyecto cancelado', 1)
INSERT [dbo].[tbCalificaciones] ([caliCodigo], [caliDescripcion], [estaCodigo]) VALUES (7, N'Apagar', 1)
INSERT [dbo].[tbEstados] ([estaCodigo], [estaDescripcion]) VALUES (1, N'Activo')
INSERT [dbo].[tbEstados] ([estaCodigo], [estaDescripcion]) VALUES (2, N'Inactivo')
INSERT [dbo].[tbEstadosCampañas] ([escaCodigo], [escaDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbEstadosCampañas] ([escaCodigo], [escaDescripcion], [estaCodigo]) VALUES (2, N'Planificacion', 1)
INSERT [dbo].[tbEstadosCampañas] ([escaCodigo], [escaDescripcion], [estaCodigo]) VALUES (3, N'Activo', 1)
INSERT [dbo].[tbEstadosCampañas] ([escaCodigo], [escaDescripcion], [estaCodigo]) VALUES (4, N'Inactivo', 1)
INSERT [dbo].[tbEstadosCampañas] ([escaCodigo], [escaDescripcion], [estaCodigo]) VALUES (5, N'Completos', 1)
INSERT [dbo].[tbEstadosClientes] ([esclCodigo], [esclDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbEstadosClientes] ([esclCodigo], [esclDescripcion], [estaCodigo]) VALUES (2, N'Intento de contacto', 1)
INSERT [dbo].[tbEstadosClientes] ([esclCodigo], [esclDescripcion], [estaCodigo]) VALUES (3, N'Contactar en el futuro', 1)
INSERT [dbo].[tbEstadosClientes] ([esclCodigo], [esclDescripcion], [estaCodigo]) VALUES (4, N'Contactado', 1)
INSERT [dbo].[tbEstadosClientes] ([esclCodigo], [esclDescripcion], [estaCodigo]) VALUES (5, N'Posible cliente no solicitado', 1)
INSERT [dbo].[tbEstadosClientes] ([esclCodigo], [esclDescripcion], [estaCodigo]) VALUES (6, N'Posible cliente perdido', 1)
INSERT [dbo].[tbEstadosTareas] ([estarCodigo], [estarDescripcion], [estaCodigo]) VALUES (1, N'No iniciado', 1)
INSERT [dbo].[tbEstadosTareas] ([estarCodigo], [estarDescripcion], [estaCodigo]) VALUES (2, N'Aplazados', 1)
INSERT [dbo].[tbEstadosTareas] ([estarCodigo], [estarDescripcion], [estaCodigo]) VALUES (3, N'En curso', 1)
INSERT [dbo].[tbEstadosTareas] ([estarCodigo], [estarDescripcion], [estaCodigo]) VALUES (4, N'Completado', 1)
INSERT [dbo].[tbEstadosTareas] ([estarCodigo], [estarDescripcion], [estaCodigo]) VALUES (5, N'En espera de entrada', 1)
INSERT [dbo].[tbFases] ([faseCodigo], [faseDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbFases] ([faseCodigo], [faseDescripcion], [estaCodigo]) VALUES (2, N'Clasificacion', 1)
INSERT [dbo].[tbFases] ([faseCodigo], [faseDescripcion], [estaCodigo]) VALUES (3, N'Necesita analisis', 1)
INSERT [dbo].[tbFases] ([faseCodigo], [faseDescripcion], [estaCodigo]) VALUES (4, N'Propuesta de valor', 1)
INSERT [dbo].[tbFases] ([faseCodigo], [faseDescripcion], [estaCodigo]) VALUES (5, N'Identificar responsables', 1)
INSERT [dbo].[tbFases] ([faseCodigo], [faseDescripcion], [estaCodigo]) VALUES (6, N'Cotizacion de propuesta/precio', 1)
INSERT [dbo].[tbFuentes] ([fuenCodigo], [fuenDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbFuentes] ([fuenCodigo], [fuenDescripcion], [estaCodigo]) VALUES (2, N'Aviso', 1)
INSERT [dbo].[tbFuentes] ([fuenCodigo], [fuenDescripcion], [estaCodigo]) VALUES (3, N'Llamada no Solicitada', 1)
INSERT [dbo].[tbFuentes] ([fuenCodigo], [fuenDescripcion], [estaCodigo]) VALUES (4, N'Recomendacion de empleado', 1)
INSERT [dbo].[tbFuentes] ([fuenCodigo], [fuenDescripcion], [estaCodigo]) VALUES (5, N'Recomendacion externa', 1)
INSERT [dbo].[tbFuentes] ([fuenCodigo], [fuenDescripcion], [estaCodigo]) VALUES (6, N'Tienda en linea', 1)
INSERT [dbo].[tbPrioridades] ([prioCodigo], [prioDescripcion], [estaCodigo]) VALUES (1, N'Alto', 1)
INSERT [dbo].[tbPrioridades] ([prioCodigo], [prioDescripcion], [estaCodigo]) VALUES (2, N'Mas alto', 1)
INSERT [dbo].[tbPrioridades] ([prioCodigo], [prioDescripcion], [estaCodigo]) VALUES (3, N'Bajo', 1)
INSERT [dbo].[tbPrioridades] ([prioCodigo], [prioDescripcion], [estaCodigo]) VALUES (4, N'Mas bajo', 1)
INSERT [dbo].[tbPrioridades] ([prioCodigo], [prioDescripcion], [estaCodigo]) VALUES (5, N'Normal', 1)
INSERT [dbo].[tbPropositos] ([propCodigo], [propDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbPropositos] ([propCodigo], [propDescripcion], [estaCodigo]) VALUES (2, N'Posible', 1)
INSERT [dbo].[tbPropositos] ([propCodigo], [propDescripcion], [estaCodigo]) VALUES (3, N'Administrativo', 1)
INSERT [dbo].[tbPropositos] ([propCodigo], [propDescripcion], [estaCodigo]) VALUES (4, N'Negociacion', 1)
INSERT [dbo].[tbPropositos] ([propCodigo], [propDescripcion], [estaCodigo]) VALUES (5, N'Demostracion', 1)
INSERT [dbo].[tbPropositos] ([propCodigo], [propDescripcion], [estaCodigo]) VALUES (6, N'Proyecto', 1)
INSERT [dbo].[tbRelacionadoCon] ([recoCodigo], [recoDescripcion], [estaCodigo]) VALUES (1, N'Posible cliente', 1)
INSERT [dbo].[tbRelacionadoCon] ([recoCodigo], [recoDescripcion], [estaCodigo]) VALUES (2, N'Contacto', 1)
INSERT [dbo].[tbRelacionadoCon] ([recoCodigo], [recoDescripcion], [estaCodigo]) VALUES (3, N'Otros', 1)
INSERT [dbo].[tbSectores] ([sectCodigo], [sectDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbSectores] ([sectCodigo], [sectDescripcion], [estaCodigo]) VALUES (2, N'APS (Proveedor de servicios de aplicaciones)', 1)
INSERT [dbo].[tbSectores] ([sectCodigo], [sectDescripcion], [estaCodigo]) VALUES (3, N'OEM de datos', 1)
INSERT [dbo].[tbSectores] ([sectCodigo], [sectDescripcion], [estaCodigo]) VALUES (4, N'ERP (Planificacion de recursos de empresa)', 1)
INSERT [dbo].[tbSectores] ([sectCodigo], [sectDescripcion], [estaCodigo]) VALUES (5, N'Gobierno/Ejercito', 1)
INSERT [dbo].[tbSectores] ([sectCodigo], [sectDescripcion], [estaCodigo]) VALUES (6, N'Empresa grande', 1)
INSERT [dbo].[tbTiposCampañas] ([ticaCodigo], [ticaDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbTiposCampañas] ([ticaCodigo], [ticaDescripcion], [estaCodigo]) VALUES (2, N'Conferencia', 1)
INSERT [dbo].[tbTiposCampañas] ([ticaCodigo], [ticaDescripcion], [estaCodigo]) VALUES (3, N'Seminario web', 1)
INSERT [dbo].[tbTiposCampañas] ([ticaCodigo], [ticaDescripcion], [estaCodigo]) VALUES (4, N'Exposicion comercial', 1)
INSERT [dbo].[tbTiposCampañas] ([ticaCodigo], [ticaDescripcion], [estaCodigo]) VALUES (5, N'Relaciones publicas', 1)
INSERT [dbo].[tbTiposCampañas] ([ticaCodigo], [ticaDescripcion], [estaCodigo]) VALUES (6, N'Socios', 1)
INSERT [dbo].[tbTiposLlamadas] ([tillCodigo], [tillDescripcion], [estaCodigo]) VALUES (1, N'Llamada actual', 1)
INSERT [dbo].[tbTiposLlamadas] ([tillCodigo], [tillDescripcion], [estaCodigo]) VALUES (2, N'Llamada completada', 1)
INSERT [dbo].[tbTiposLlamadas] ([tillCodigo], [tillDescripcion], [estaCodigo]) VALUES (3, N'Programar llamada', 1)
INSERT [dbo].[tbTiposTratos] ([titrCodigo], [titrDescripcion], [estaCodigo]) VALUES (1, N'Ninguno', 1)
INSERT [dbo].[tbTiposTratos] ([titrCodigo], [titrDescripcion], [estaCodigo]) VALUES (2, N'Negocios existentes', 1)
INSERT [dbo].[tbTiposTratos] ([titrCodigo], [titrDescripcion], [estaCodigo]) VALUES (3, N'Nuevo negocio', 1)
INSERT [dbo].[tbUsuarios] ([usuaCodigo], [usuaDescripcion], [usuaLogin], [usuaPassword], [estaCodigo]) VALUES (1, N'Administrador', N'admin@gmail.com', N'123', 1)
ALTER TABLE [dbo].[tbCalificaciones]  WITH CHECK ADD  CONSTRAINT [FK_tbCalificaciones_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbCalificaciones] CHECK CONSTRAINT [FK_tbCalificaciones_tbEstados]
GO
ALTER TABLE [dbo].[tbCampañas]  WITH CHECK ADD  CONSTRAINT [FK_tbCampañas_tbEstadosCampañas] FOREIGN KEY([escaCodigo])
REFERENCES [dbo].[tbEstadosCampañas] ([escaCodigo])
GO
ALTER TABLE [dbo].[tbCampañas] CHECK CONSTRAINT [FK_tbCampañas_tbEstadosCampañas]
GO
ALTER TABLE [dbo].[tbCampañas]  WITH CHECK ADD  CONSTRAINT [FK_tbCampañas_tbTiposCampañas] FOREIGN KEY([ticaCodigo])
REFERENCES [dbo].[tbTiposCampañas] ([ticaCodigo])
GO
ALTER TABLE [dbo].[tbCampañas] CHECK CONSTRAINT [FK_tbCampañas_tbTiposCampañas]
GO
ALTER TABLE [dbo].[tbContactos]  WITH CHECK ADD  CONSTRAINT [FK_tbContactos_tbFuentes] FOREIGN KEY([fuenCodigo])
REFERENCES [dbo].[tbFuentes] ([fuenCodigo])
GO
ALTER TABLE [dbo].[tbContactos] CHECK CONSTRAINT [FK_tbContactos_tbFuentes]
GO
ALTER TABLE [dbo].[tbEstadosCampañas]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCampañas_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbEstadosCampañas] CHECK CONSTRAINT [FK_tbEstadosCampañas_tbEstados]
GO
ALTER TABLE [dbo].[tbEstadosClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadoPosibleCliente_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbEstadosClientes] CHECK CONSTRAINT [FK_tbEstadoPosibleCliente_tbEstados]
GO
ALTER TABLE [dbo].[tbEstadosTareas]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosTareas_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbEstadosTareas] CHECK CONSTRAINT [FK_tbEstadosTareas_tbEstados]
GO
ALTER TABLE [dbo].[tbEventos]  WITH CHECK ADD  CONSTRAINT [FK_tbEventos_tbRelacionadoCon] FOREIGN KEY([recoCodigo])
REFERENCES [dbo].[tbRelacionadoCon] ([recoCodigo])
GO
ALTER TABLE [dbo].[tbEventos] CHECK CONSTRAINT [FK_tbEventos_tbRelacionadoCon]
GO
ALTER TABLE [dbo].[tbFases]  WITH CHECK ADD  CONSTRAINT [FK_tbFases_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbFases] CHECK CONSTRAINT [FK_tbFases_tbEstados]
GO
ALTER TABLE [dbo].[tbFuentes]  WITH CHECK ADD  CONSTRAINT [FK_tbFuente_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbFuentes] CHECK CONSTRAINT [FK_tbFuente_tbEstados]
GO
ALTER TABLE [dbo].[tbLlamadas]  WITH CHECK ADD  CONSTRAINT [FK_tbLlamadas_tbPropositos] FOREIGN KEY([propCodigo])
REFERENCES [dbo].[tbPropositos] ([propCodigo])
GO
ALTER TABLE [dbo].[tbLlamadas] CHECK CONSTRAINT [FK_tbLlamadas_tbPropositos]
GO
ALTER TABLE [dbo].[tbLlamadas]  WITH CHECK ADD  CONSTRAINT [FK_tbLlamadas_tbRelacionadoCon] FOREIGN KEY([recoCodigo])
REFERENCES [dbo].[tbRelacionadoCon] ([recoCodigo])
GO
ALTER TABLE [dbo].[tbLlamadas] CHECK CONSTRAINT [FK_tbLlamadas_tbRelacionadoCon]
GO
ALTER TABLE [dbo].[tbLlamadas]  WITH CHECK ADD  CONSTRAINT [FK_tbLlamadas_tbTiposLlamadas] FOREIGN KEY([tillCodigo])
REFERENCES [dbo].[tbTiposLlamadas] ([tillCodigo])
GO
ALTER TABLE [dbo].[tbLlamadas] CHECK CONSTRAINT [FK_tbLlamadas_tbTiposLlamadas]
GO
ALTER TABLE [dbo].[tbPosiblesClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbCalificaciones] FOREIGN KEY([caliCodigo])
REFERENCES [dbo].[tbCalificaciones] ([caliCodigo])
GO
ALTER TABLE [dbo].[tbPosiblesClientes] CHECK CONSTRAINT [FK_tbClientes_tbCalificaciones]
GO
ALTER TABLE [dbo].[tbPosiblesClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbEstadosClientes] FOREIGN KEY([esclCodigo])
REFERENCES [dbo].[tbEstadosClientes] ([esclCodigo])
GO
ALTER TABLE [dbo].[tbPosiblesClientes] CHECK CONSTRAINT [FK_tbClientes_tbEstadosClientes]
GO
ALTER TABLE [dbo].[tbPosiblesClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbFuentes] FOREIGN KEY([fuenCodigo])
REFERENCES [dbo].[tbFuentes] ([fuenCodigo])
GO
ALTER TABLE [dbo].[tbPosiblesClientes] CHECK CONSTRAINT [FK_tbClientes_tbFuentes]
GO
ALTER TABLE [dbo].[tbPosiblesClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbSectores] FOREIGN KEY([sectCodigo])
REFERENCES [dbo].[tbSectores] ([sectCodigo])
GO
ALTER TABLE [dbo].[tbPosiblesClientes] CHECK CONSTRAINT [FK_tbClientes_tbSectores]
GO
ALTER TABLE [dbo].[tbPrioridades]  WITH CHECK ADD  CONSTRAINT [FK_tbPrioridades_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbPrioridades] CHECK CONSTRAINT [FK_tbPrioridades_tbEstados]
GO
ALTER TABLE [dbo].[tbPropositos]  WITH CHECK ADD  CONSTRAINT [FK_tbPropositos_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbPropositos] CHECK CONSTRAINT [FK_tbPropositos_tbEstados]
GO
ALTER TABLE [dbo].[tbRelacionadoCon]  WITH CHECK ADD  CONSTRAINT [FK_tbRelacionadoCon_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbRelacionadoCon] CHECK CONSTRAINT [FK_tbRelacionadoCon_tbEstados]
GO
ALTER TABLE [dbo].[tbSectores]  WITH CHECK ADD  CONSTRAINT [FK_tbSectores_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbSectores] CHECK CONSTRAINT [FK_tbSectores_tbEstados]
GO
ALTER TABLE [dbo].[tbTareas]  WITH CHECK ADD  CONSTRAINT [FK_tbTareas_tbEstadosTareas] FOREIGN KEY([etarCodigo])
REFERENCES [dbo].[tbEstadosTareas] ([estarCodigo])
GO
ALTER TABLE [dbo].[tbTareas] CHECK CONSTRAINT [FK_tbTareas_tbEstadosTareas]
GO
ALTER TABLE [dbo].[tbTareas]  WITH CHECK ADD  CONSTRAINT [FK_tbTareas_tbPrioridades] FOREIGN KEY([prioCodigo])
REFERENCES [dbo].[tbPrioridades] ([prioCodigo])
GO
ALTER TABLE [dbo].[tbTareas] CHECK CONSTRAINT [FK_tbTareas_tbPrioridades]
GO
ALTER TABLE [dbo].[tbTiposCampañas]  WITH CHECK ADD  CONSTRAINT [FK_tbTiposCampañas_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbTiposCampañas] CHECK CONSTRAINT [FK_tbTiposCampañas_tbEstados]
GO
ALTER TABLE [dbo].[tbTiposLlamadas]  WITH CHECK ADD  CONSTRAINT [FK_tbTiposLlamadas_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbTiposLlamadas] CHECK CONSTRAINT [FK_tbTiposLlamadas_tbEstados]
GO
ALTER TABLE [dbo].[tbTiposTratos]  WITH CHECK ADD  CONSTRAINT [FK_tbTiposTratos_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbTiposTratos] CHECK CONSTRAINT [FK_tbTiposTratos_tbEstados]
GO
ALTER TABLE [dbo].[tbTratos]  WITH CHECK ADD  CONSTRAINT [FK_tbTratos_tbFases] FOREIGN KEY([faseCodigo])
REFERENCES [dbo].[tbFases] ([faseCodigo])
GO
ALTER TABLE [dbo].[tbTratos] CHECK CONSTRAINT [FK_tbTratos_tbFases]
GO
ALTER TABLE [dbo].[tbTratos]  WITH CHECK ADD  CONSTRAINT [FK_tbTratos_tbFuentes] FOREIGN KEY([fuenCodigo])
REFERENCES [dbo].[tbFuentes] ([fuenCodigo])
GO
ALTER TABLE [dbo].[tbTratos] CHECK CONSTRAINT [FK_tbTratos_tbFuentes]
GO
ALTER TABLE [dbo].[tbTratos]  WITH CHECK ADD  CONSTRAINT [FK_tbTratos_tbTiposTratos] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[tbTiposTratos] ([titrCodigo])
GO
ALTER TABLE [dbo].[tbTratos] CHECK CONSTRAINT [FK_tbTratos_tbTiposTratos]
GO
ALTER TABLE [dbo].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbEstados] FOREIGN KEY([estaCodigo])
REFERENCES [dbo].[tbEstados] ([estaCodigo])
GO
ALTER TABLE [dbo].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbEstados]
GO
/****** Object:  StoredProcedure [dbo].[spConsultaEstadoCampana]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultaEstadoCampana]
AS
SELECT [escaCodigo]
      ,[escaDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbEstadosCampañas]
WHERE [estaCodigo] =1;



GO
/****** Object:  StoredProcedure [dbo].[spConsultarCalificacion]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarCalificacion]
AS

SELECT [caliCodigo]
      ,[caliDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbCalificaciones]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarCampanas]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarCampanas]
AS
SELECT campCodigo
      ,tbC.ticaCodigo
	  ,tbTC.ticaDescripcion
      ,campNombre
      ,tbC.escaCodigo
	  ,tbEC.escaDescripcion
      ,campFechaInicio
      ,campFechaFin
      ,campIngresosEsperados
      ,campCostePresupuestado
      ,campCosteReal
      ,campRespuestaEsperada
      ,campNumerosEnviados
      ,campDescripcion

  FROM [dbo].[tbCampañas] tbC

  JOIN [dbo].[tbTiposCampañas] tbTC ON (tbTC.[ticaCodigo] = tbC.[ticaCodigo])
  JOIN [dbo].[tbEstadosCampañas] tbEC ON (tbEC.[escaCodigo] =tbC.[escaCodigo])
  

GO
/****** Object:  StoredProcedure [dbo].[spConsultarContactos]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarContactos]
AS

SELECT [contCodigo]
	  ,tbCT.[fuenCodigo]
	  ,tbF.[fuenDescripcion]
      ,[contNombres]
      ,[contApellidos]
      ,[contNumeroCuenta]
      ,[contTitulo]
      ,[contCorreo]
      ,[contDepartamento]
      ,[contTelefono]
      ,[contTelefonoParticular]
      ,[contOtroTelefono]
      ,[contFax]
      ,[contMovil]
      ,[contFechaNacimiento]
      ,[contAsistente]
      ,[contTelefonoAsistente]
      ,[contRespondeA]
      ,[contNoParticipacionCorreo]
      ,[contIdSkype]
      ,[contCorreoSecundario]
  FROM [dbo].[tbContactos] tbCT
  JOIN [dbo].[tbFuentes] tbF ON (tbF.[fuenCodigo] = tbCT.[fuenCodigo])
GO
/****** Object:  StoredProcedure [dbo].[spConsultarEstadoCliente]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarEstadoCliente]
AS

SELECT [esclCodigo]
      ,[esclDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbEstadosClientes]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarEstadoTarea]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spConsultarEstadoTarea]
AS

SELECT [estarCodigo]
      ,[estarDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbEstadosTareas]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarEventos]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarEventos]
AS	

 SELECT  [evenCodigo]
		,[evenNombre]
		,[evenUbicacion]
		,[evenParticipantes]
		,[evenTodoDia]
		,[evenFecha]
		,tbE.[recoCodigo]
		,tbR.[recoDescripcion]
		,[evenDescripcion]
 FROM [dbo].[tbEventos] tbE
 JOIN [dbo].[tbRelacionadoCon] tbR ON tbR.recoCodigo = tbE.recoCodigo
GO
/****** Object:  StoredProcedure [dbo].[spConsultarFaseTrato]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarFaseTrato]
AS

SELECT [faseCodigo]
      ,[faseDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbFases]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarFuente]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarFuente]
AS

SELECT [fuenCodigo]
      ,[fuenDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbFuentes]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarLlamadas]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarLlamadas]
AS 

SELECT [llamCodigo]
      ,[llamContacto]
      ,[llamAsunto]
      ,tbL.[propCodigo]
	  ,tbP.[propDescripcion]
      ,tbL.[recoCodigo]
	  ,tbR.[recoDescripcion]
      ,tbL.[tillCodigo]
	  ,tbT.[tillDescripcion]
      ,[llamDetalles]
      ,[llamFecha]
      ,[llamDuracion]
      ,[llamDescripcion]
      ,[llamResultado]
  FROM [dbo].[tbLlamadas] tbL
  JOIN [dbo].[tbPropositos] tbP ON tbP.[propCodigo]=tbL.[propCodigo]
  JOIN [dbo].[tbRelacionadoCon] tbR ON tbR.[recoCodigo] = tbL.[recoCodigo]
  JOIN [dbo].[tbTiposLlamadas] tbT ON tbT.[tillCodigo] = tbL.[tillCodigo]
GO
/****** Object:  StoredProcedure [dbo].[spConsultarPosiblesClientes]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarPosiblesClientes]
AS

SELECT [poclCodigo]
      ,[poclEmpresa]
      ,[poclNombres]
      ,[poclApellidos]
      ,[poclTitulo]
      ,[poclCorreo]
      ,[poclTelefono]
      ,[poclFax]
      ,[poclMovil]
      ,[poclSitioWeb]
      ,tbPC.[fuenCodigo]
	  ,tbF.[fuenDescripcion]
      ,tbPC.[esclCodigo]
	  ,tbEC.[esclDescripcion]
      ,tbPC.[sectCodigo]
	  ,tbS.[sectDescripcion]
      ,[poclCantidadEmpleados]
      ,[poclIngresosAnuales]
      ,tbPC.[caliCodigo]
	  ,tbC.[caliDescripcion]
      ,[poclNoParticipacionCorreoElectronico]
      ,[poclIdSkype]
      ,[poclTwitter]
      ,[poclCorreoSecundario]
  FROM [dbo].[tbPosiblesClientes] tbPC
  JOIN [dbo].[tbFuentes] tbF ON (tbF.[fuenCodigo] = tbPC.[fuenCodigo])
  JOIN [dbo].[tbEstadosClientes] tbEC ON (tbEC.[esclCodigo] = tbPC.[esclCodigo])
  JOIN [dbo].[tbSectores] tbS ON (tbS.[sectCodigo] = tbPC.[sectCodigo])
  JOIN [dbo].[tbCalificaciones] tbC ON (tbC.[caliCodigo] = tbPC.[caliCodigo])
GO
/****** Object:  StoredProcedure [dbo].[spConsultarPrioridad]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarPrioridad]
AS

SELECT [prioCodigo]
      ,[prioDescripcion]
      ,[estaCodigo]
FROM [dbo].[tbPrioridades]
WHERE [estaCodigo] = 1; 


GO
/****** Object:  StoredProcedure [dbo].[spConsultarPropositoLlamada]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarPropositoLlamada]
AS
SELECT [propCodigo]
      ,[propDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbPropositos]
WHERE [estaCodigo] = 1;



GO
/****** Object:  StoredProcedure [dbo].[spConsultarRelacionadoCon]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarRelacionadoCon]
AS

SELECT [recoCodigo]
      ,[recoDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbRelacionadoCon]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarSector]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarSector]
AS

SELECT [sectCodigo]
      ,[sectDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbSectores]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarTareas]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarTareas]
AS

SELECT [tareCodigo]
      ,[tareTitular]
      ,[tareAsunto]
      ,[tareFechaVencimiento]
      ,[tareContacto]
      ,[tareCuenta]
      ,tbT.[etarCodigo]
	  ,tbET.[estarDescripcion]
      ,tbT.[prioCodigo]
	  ,tbP.[prioDescripcion]
      ,[tareEnvioCorreo]
      ,[tareRepetir]
      ,[tareDescripcion]
  FROM [dbo].[tbTareas] tbT 
  JOIN [dbo].[tbEstadosTareas] tbET ON (tbET.[estarCodigo] = tbT.[etarCodigo])
  JOIN [dbo].[tbPrioridades] tbP ON (tbP.[prioCodigo] = tbT.[prioCodigo])
GO
/****** Object:  StoredProcedure [dbo].[spConsultarTipoCampana]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarTipoCampana]
AS
SELECT [ticaCodigo]
      ,[ticaDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbTiposCampañas]
WHERE [estaCodigo] = 1;



GO
/****** Object:  StoredProcedure [dbo].[spConsultarTipoLlamada]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarTipoLlamada]
AS

SELECT [tillCodigo]
      ,[tillDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbTiposLlamadas]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarTipoTrato]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarTipoTrato]
AS

SELECT [titrCodigo]
      ,[titrDescripcion]
      ,[estaCodigo]
  FROM [dbo].[tbTiposTratos]
WHERE [estaCodigo] = 1;


GO
/****** Object:  StoredProcedure [dbo].[spConsultarTratos]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarTratos]
AS

SELECT [tratCodigo]
      ,[tratImporte]
      ,[tratNombre]
      ,[tratFechaCierre]
      ,[tratNumeroCuenta]
      ,tbT.[faseCodigo]
	  ,tbF.faseDescripcion
      ,tbT.[titrCodigo]
	  ,tbTT.titrDescripcion
      ,[tratProbabilidad]
      ,[tratSiguientePaso]
      ,[tratIngresosEsperados]
      ,tbT.[fuenCodigo]
	  ,tbFu.fuenDescripcion
      ,[tratFuente]
      ,[tratNombreContacto]
      ,[tratDescripcion]
  FROM [dbo].[tbTratos] tbT
  JOIN [dbo].[tbFases] tbF ON tbF.faseCodigo = tbT.faseCodigo
  JOIN [dbo].[tbTiposTratos] tbTT ON tbTT.titrCodigo = tbT.titrCodigo
  JOIN [dbo].[tbFuentes] tbFu ON tbFu.fuenCodigo = tbT.fuenCodigo
GO
/****** Object:  StoredProcedure [dbo].[spConsultarUsuario]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultarUsuario]
	@cLogin VARCHAR(50),
	@cPassword VARCHAR(50)
AS

SELECT 
[usuaCodigo],
[usuaDescripcion],
[usuaLogin],
[usuaPassword],
[estaCodigo]
FROM [dbo].[tbUsuarios]
WHERE
[usuaLogin] = @cLogin AND
[usuaPassword] = @cPassword AND
[estaCodigo] = 1;
GO
/****** Object:  StoredProcedure [dbo].[spEliminarCampana]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarCampana]
@nCodigo bigint
AS

DELETE FROM tbCampañas
WHERE campCodigo = @nCodigo;

GO
/****** Object:  StoredProcedure [dbo].[spEliminarContacto]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarContacto]
 @nCodigo BIGINT
AS

DELETE FROM [dbo].[tbContactos]
WHERE [contCodigo] = @nCodigo;

GO
/****** Object:  StoredProcedure [dbo].[spEliminarEvento]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarEvento]
	@nCodigo INT
AS

DELETE FROM [dbo].[tbEventos]
WHERE [evenCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spEliminarLlamada]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarLlamada]
@nCodigo INT
AS

DELETE FROM [dbo].[tbLlamadas]
WHERE [llamCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spEliminarPosibleCliente]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarPosibleCliente]
	@nCodigo BIGINT
AS

DELETE FROM [dbo].[tbPosiblesClientes]
WHERE [poclCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spEliminarTarea]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarTarea]
	@nCodigo INT 
AS

DELETE FROM [dbo].[tbTareas]
WHERE [tareCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spEliminarTrato]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarTrato]
@nCodigo INT
AS

DELETE FROM [dbo].[tbTratos]
WHERE [tratCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spInsertarCampana]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarCampana]
@nTicaCodigo int,
@cCampNombre varchar(1000),
@nEscaCodigo int,
@cCampFechaInicio varchar(1000),
@cCampFechaFin varchar(1000),
@cCampIngresosEsperados float,
@cCampCostePresupuestado float,
@cCosteReal float,
@cCampRespuestaEsperada varchar(1000),
@cCampNumerosEnviados int,
@cCampDescripcionvarchar varchar(1000)
AS
	DECLARE @nCodigo INT = 
	(SELECT COALESCE (MAX(campCodigo),0) + 1
	FROM tbCampañas);

IF NOT EXISTS (SELECT 1 FROM tbCampañas WHERE campCodigo= @nCodigo)
BEGIN


	INSERT INTO tbCampañas
	( [campCodigo]
      ,[ticaCodigo]
      ,[campNombre]
      ,[escaCodigo]
      ,[campFechaInicio]
      ,[campFechaFin]
      ,[campIngresosEsperados]
      ,[campCostePresupuestado]
      ,[campCosteReal]
      ,[campRespuestaEsperada]
      ,[campNumerosEnviados]
      ,[campDescripcion]
	   )

	VALUES
	(@nCodigo,
	 @nTicaCodigo,
	 @cCampNombre,
	 @nEscaCodigo,
	 @cCampFechaInicio,
	 @cCampFechaFin,
	 @cCampIngresosEsperados,
	 @cCampCostePresupuestado,
	 @cCosteReal,
	 @cCampRespuestaEsperada,
	 @cCampNumerosEnviados,
	 @cCampDescripcionvarchar
	 );	
END

GO
/****** Object:  StoredProcedure [dbo].[spInsertarContacto]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarContacto]
@nCodFuentes INT,
@cNombre VARCHAR (1000),
@cApellidos VARCHAR (1000),
@cNumeroCuenta VARCHAR (1000),
@cTitulo VARCHAR (1000),
@cCorreo VARCHAR (1000),
@cDepartamento VARCHAR (1000),
@cTelefono VARCHAR (1000),
@cTelefonoParticular VARCHAR (1000),
@cOtroTelefono VARCHAR (1000),
@cFax VARCHAR (1000),
@cMovil VARCHAR (1000),
@cFechaNacimiento VARCHAR (1000),
@cAsistente VARCHAR (1000),
@cTelefonoAsistente VARCHAR (1000),
@cRespondeA VARCHAR (1000),
@cNoParticipacionCorreo VARCHAR (1000),
@cIdSkipe VARCHAR (1000),
@cCorreoSecundario VARCHAR (1000)


AS

DECLARE @nCodigo INT 

SET @nCodigo = (SELECT COALESCE (MAX ([fuenCodigo]),0) + 1
					FROM  [dbo].[tbContactos]);

INSERT INTO [dbo].[tbContactos]
           ([contCodigo]
           ,[fuenCodigo]
           ,[contNombres]
           ,[contApellidos]
           ,[contNumeroCuenta]
           ,[contTitulo]
           ,[contCorreo]
           ,[contDepartamento]
           ,[contTelefono]
           ,[contTelefonoParticular]
           ,[contOtroTelefono]
           ,[contFax]
           ,[contMovil]
           ,[contFechaNacimiento]
           ,[contAsistente]
           ,[contTelefonoAsistente]
           ,[contRespondeA]
           ,[contNoParticipacionCorreo]
           ,[contIdSkype]
           ,[contCorreoSecundario])
 VALUES(  @nCodigo,
					@nCodFuentes,
					@cNombre,
					@cApellidos,
					@cNumeroCuenta ,
					@cTitulo,
					@cCorreo,
					@cDepartamento,
					@cTelefono ,
					@cTelefonoParticular,
					@cOtroTelefono,
					@cFax,
					@cMovil,
					@cFechaNacimiento,
					@cAsistente,
					@cTelefonoAsistente,
					@cRespondeA,
					@cNoParticipacionCorreo,
					@cIdSkipe,
					@cCorreoSecundario);
GO
/****** Object:  StoredProcedure [dbo].[spInsertarEvento]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarEvento]
	@cNombre VARCHAR (1000),
	@cUbicacion VARCHAR (1000),
	@cParticipantes VARCHAR (1000),
	@cTodoDia CHAR(1),
	@cFecha VARCHAR (1000),
	@nCodRelacionadoCon INT,
	@cDescripcion VARCHAR (1000)
AS

DECLARE @nCodigo INT;
SET @nCodigo = (SELECT COALESCE (MAX([evenCodigo]),0)+1
				FROM [dbo].[tbEventos]);

INSERT INTO [dbo].[tbEventos]
           ([evenCodigo]
           ,[evenNombre]
           ,[evenUbicacion]
           ,[evenParticipantes]
           ,[evenTodoDia]
           ,[evenFecha]
           ,[recoCodigo]
           ,[evenDescripcion])
VALUES( @nCodigo,
		@cNombre,
		@cUbicacion,
		@cParticipantes,
		@cTodoDia,
		@cFecha,
		@nCodRelacionadoCon,
		@cDescripcion);
GO
/****** Object:  StoredProcedure [dbo].[spInsertarLlamada]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertarLlamada]
@cContacto VARCHAR (1000),
@cAsunto VARCHAR (1000),
@nCodProposito INT,
@nCodRelaciondoCon INT,
@nCodTipoLlamada INT,
@cDetalles VARCHAR (1000),
@cFecha VARCHAR (1000),
@nDuracion INT,
@cDescripcion VARCHAR (1000),
@cResultado VARCHAR (1000)
AS

DECLARE @nCodigo INT;
SET @nCodigo = (SELECT COALESCE(MAX([llamCodigo]),0) +1
				FROM [dbo].[tbLlamadas]);

INSERT INTO [dbo].[tbLlamadas]
           ([llamCodigo]
           ,[llamContacto]
           ,[llamAsunto]
           ,[propCodigo]
           ,[recoCodigo]
           ,[tillCodigo]
           ,[llamDetalles]
           ,[llamFecha]
           ,[llamDuracion]
           ,[llamDescripcion]
           ,[llamResultado])
VALUES (@nCodigo,
		@cContacto,
		@cAsunto,
		@nCodProposito,
		@nCodRelaciondoCon,
		@nCodTipoLlamada,
		@cDetalles,
		@cFecha,
		@nDuracion,
		@cDescripcion,
		@cResultado);

GO
/****** Object:  StoredProcedure [dbo].[spInsertarPosiblesCliente]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarPosiblesCliente]
 @cEmpresa VARCHAR(1000),
 @cNombres VARCHAR(1000),
 @cApellidos VARCHAR(1000),
 @cTitulo VARCHAR(1000),
 @cCorreo VARCHAR(1000),
 @cTelefono VARCHAR(1000),
 @cFax VARCHAR(1000),
 @cMovil VARCHAR(1000),
 @SitioWeb VARCHAR(1000),
 @nCodFuentes INT,
 @nCodEstadoClientes INT,
 @nCodSector INT,
 @nCantidadEmpleados INT,
 @nIngresosAnuales FLOAT,
 @nCodCalificacion INT,
 @cNoParticipacionCorreoElectronico CHAR(1),
 @cIdSkype VARCHAR(1000),
 @cTwitter VARCHAR(1000),
 @cCorreoSecundario VARCHAR(1000)
AS

DECLARE @nCodigo INT
SET @nCodigo = (SELECT COALESCE(MAX([poclCodigo]),0) + 1
				FROM [dbo].[tbPosiblesClientes]);

INSERT INTO [dbo].[tbPosiblesClientes]
           ([poclCodigo]
           ,[poclEmpresa]
           ,[poclNombres]
           ,[poclApellidos]
           ,[poclTitulo]
           ,[poclCorreo]
           ,[poclTelefono]
           ,[poclFax]
           ,[poclMovil]
           ,[poclSitioWeb]
           ,[fuenCodigo]
           ,[esclCodigo]
           ,[sectCodigo]
           ,[poclCantidadEmpleados]
           ,[poclIngresosAnuales]
           ,[caliCodigo]
           ,[poclNoParticipacionCorreoElectronico]
           ,[poclIdSkype]
           ,[poclTwitter]
           ,[poclCorreoSecundario])
VALUES(  @nCodigo,
		 @cEmpresa,
		 @cNombres,
		 @cApellidos,
		 @cTitulo,
		 @cCorreo,
		 @cTelefono,
		 @cFax,
		 @cMovil,
		 @SitioWeb,
		 @nCodFuentes,
		 @nCodEstadoClientes,
		 @nCodSector,
		 @nCantidadEmpleados,
		 @nIngresosAnuales,
		 @nCodCalificacion,
		 @cNoParticipacionCorreoElectronico,
		 @cIdSkype,
		 @cTwitter,
		 @cCorreoSecundario);
GO
/****** Object:  StoredProcedure [dbo].[spInsertarTarea]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarTarea] 
	@cTitular VARCHAR (1000),
	@cAsunto VARCHAR (1000),
	@cFechaVencimiento VARCHAR (1000),
	@cContacto VARCHAR (1000),
	@cCuenta VARCHAR (1000),
	@nCodEstadoTarea INT,
	@nCodPrioridad INT,
	@cEnvioCorreo CHAR(1),
	@cRepetir CHAR(1),
	@cDescripcion VARCHAR (1000)
AS

DECLARE @nCodigo INT; 
SET @nCodigo = (SELECT COALESCE(MAX([tareCodigo]),0) +1
				FROM [dbo].[tbTareas]);

INSERT INTO [dbo].[tbTareas]
           ([tareCodigo]
           ,[tareTitular]
           ,[tareAsunto]
           ,[tareFechaVencimiento]
           ,[tareContacto]
           ,[tareCuenta]
           ,[etarCodigo]
           ,[prioCodigo]
           ,[tareEnvioCorreo]
           ,[tareRepetir]
           ,[tareDescripcion])
VALUES (@nCodigo,
		@cTitular,
		@cAsunto,
		@cFechaVencimiento,
		@cContacto,
		@cCuenta,
		@nCodEstadoTarea,
		@nCodPrioridad,
		@cEnvioCorreo,
		@cRepetir,
		@cDescripcion);
GO
/****** Object:  StoredProcedure [dbo].[spInsertarTrato]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarTrato]
@cImporte VARCHAR(1000),
@cNombre VARCHAR(1000),
@cFechaCierre VARCHAR(1000),
@cNumeroCuenta VARCHAR(1000),
@nCodFase INT,
@nCodTipoTrato INT,
@fProbabilidad FLOAT,
@cSiguientePaso VARCHAR(1000),
@fIngresosEsperados FLOAT,
@nCodFuente INT,
@cFuente VARCHAR(1000),
@cNombreContacto VARCHAR(1000),
@cDescripcion VARCHAR(1000)
AS

DECLARE @nCodigo INT;
SET @nCodigo = (SELECT COALESCE(MAX([tratCodigo]),0) + 1 FROM [dbo].[tbTratos]);

INSERT INTO [dbo].[tbTratos]
           ([tratCodigo]
           ,[tratImporte]
           ,[tratNombre]
           ,[tratFechaCierre]
           ,[tratNumeroCuenta]
           ,[faseCodigo]
           ,[titrCodigo]
           ,[tratProbabilidad]
           ,[tratSiguientePaso]
           ,[tratIngresosEsperados]
           ,[fuenCodigo]
           ,[tratFuente]
           ,[tratNombreContacto]
           ,[tratDescripcion])
VALUES( @nCodigo,
		@cImporte,
		@cNombre,
		@cFechaCierre,
		@cNumeroCuenta,
		@nCodFase,
		@nCodTipoTrato,
		@fProbabilidad,
		@cSiguientePaso,
		@fIngresosEsperados,
		@nCodFuente,
		@cFuente,
		@cNombreContacto,
		@cDescripcion);
GO
/****** Object:  StoredProcedure [dbo].[spInsertarUsuario]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarUsuario]
	@cLogin VARCHAR(50),
	@cPassword VARCHAR(50)
AS

IF NOT EXISTS(SELECT 1 FROM [dbo].[tbUsuarios] WHERE [usuaLogin] = @cLogin)
BEGIN
	DECLARE @nCodigo INT = 
	(SELECT COALESCE(MAX(usuaCodigo),0) + 1
	FROM [dbo].[tbUsuarios]);

	INSERT INTO [dbo].[tbUsuarios]
	(usuaCodigo,
	usuaLogin,
	usuaPassword,
	estaCodigo)
	VALUES
	(@nCodigo,
	@cLogin,
	@cPassword,
	1);
END
GO
/****** Object:  StoredProcedure [dbo].[spModificarCampana]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarCampana]
@nCodigo bigint,
@nTicaCodigo int,
@cCampNombre varchar(1000),
@nEscaCodigo int,
@cCampFechaInicio varchar(1000),
@cCampFechaFin varchar(1000),
@cCampIngresosEsperados float,
@cCampCostePresupuestado float,
@cCosteReal float,
@cCampRespuestaEsperada varchar(1000),
@cCampNumerosEnviados int,
@cCampDescripcionvarchar varchar(1000)
AS

UPDATE [dbo].[tbCampañas]
   SET [ticaCodigo] = @nTicaCodigo
      ,[campNombre] = @cCampNombre
      ,[escaCodigo] = @nEscaCodigo
      ,[campFechaInicio] = @cCampFechaInicio
      ,[campFechaFin] = @cCampFechaFin
      ,[campIngresosEsperados] = @cCampIngresosEsperados
      ,[campCostePresupuestado] = @cCampCostePresupuestado
      ,[campCosteReal] = @cCosteReal
      ,[campRespuestaEsperada] = @cCampRespuestaEsperada
      ,[campNumerosEnviados] = @cCampNumerosEnviados
      ,[campDescripcion] = @cCampDescripcionvarchar
WHERE [campCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spModificarContacto]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarContacto] 
@nCodigo BIGINT,
  @nCodFuentes INT,
@cNombre VARCHAR (1000),
@cApellidos VARCHAR (1000),
@cNumeroCuenta VARCHAR (1000),
@cTitulo VARCHAR (1000),
@cCorreo VARCHAR (1000),
@cDepartamento VARCHAR (1000),
@cTelefono VARCHAR (1000),
@cTelefonoParticular VARCHAR (1000),
@cOtroTelefono VARCHAR (1000),
@cFax VARCHAR (1000),
@cMovil VARCHAR (1000),
@cFechaNacimiento VARCHAR (1000),
@cAsistente VARCHAR (1000),
@cTelefonoAsistente VARCHAR (1000),
@cRespondeA VARCHAR (1000),
@cNoParticipacionCorreo VARCHAR (1000),
@cIdSkipe VARCHAR (1000),
@cCorreoSecundario VARCHAR (1000)

AS


UPDATE [dbo].[tbContactos]
   SET
      [fuenCodigo] = @nCodFuentes
      ,[contNombres] = @cNombre
      ,[contApellidos] = @cApellidos
      ,[contNumeroCuenta] = @cNumeroCuenta 
      ,[contTitulo] = @cTitulo
      ,[contCorreo] = @cCorreo
      ,[contDepartamento] = @cDepartamento
      ,[contTelefono] = @cTelefono
      ,[contTelefonoParticular] = @cTelefonoParticular
      ,[contOtroTelefono] = @cOtroTelefono
      ,[contFax] = @cFax
      ,[contMovil] = @cMovil
      ,[contFechaNacimiento] = @cFechaNacimiento
      ,[contAsistente] = @cAsistente
      ,[contTelefonoAsistente] = @cTelefonoAsistente 
      ,[contRespondeA] = @cRespondeA
      ,[contNoParticipacionCorreo] = @cNoParticipacionCorreo
      ,[contIdSkype] = @cIdSkipe
      ,[contCorreoSecundario] = @cCorreoSecundario

	  WHERE [contCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spModificarEvento]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarEvento]
	@nCodigo INT,
	@cNombre VARCHAR (1000),
	@cUbicacion VARCHAR (1000),
	@cParticipantes VARCHAR (1000),
	@cTodoDia CHAR(1),
	@cFecha VARCHAR (1000),
	@nCodRelacionadoCon INT,
	@cDescripcion VARCHAR (1000)
AS 

UPDATE [dbo].[tbEventos]
SET  [evenNombre] = @cNombre
	,[evenUbicacion] = @cUbicacion
	,[evenParticipantes] = @cParticipantes
	,[evenTodoDia] = @cTodoDia
	,[evenFecha] = @cFecha
	,[recoCodigo] = @nCodRelacionadoCon
	,[evenDescripcion] = @cDescripcion
WHERE [evenCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spModificarLlamada]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spModificarLlamada]
@nCodigo INT,
@cContacto VARCHAR (1000),
@cAsunto VARCHAR (1000),
@nCodProposito INT,
@nCodRelaciondoCon INT,
@nCodTipoLlamada INT,
@cDetalles VARCHAR (1000),
@cFecha VARCHAR (1000),
@nDuracion INT,
@cDescripcion VARCHAR (1000),
@cResultado VARCHAR (1000)
AS

UPDATE [dbo].[tbLlamadas]
   SET [llamContacto] = @cContacto
      ,[llamAsunto] = @cAsunto
      ,[propCodigo] = @nCodProposito
      ,[recoCodigo] = @nCodRelaciondoCon
      ,[tillCodigo] = @nCodTipoLlamada
      ,[llamDetalles] = @cDetalles
      ,[llamFecha] = @cFecha
      ,[llamDuracion] = @nDuracion
      ,[llamDescripcion] = @cDescripcion
      ,[llamResultado] = @cResultado
 WHERE [llamCodigo] = @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spModificarPosibleCliente]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarPosibleCliente]
 @nCodigo BIGINT,
 @cEmpresa VARCHAR(1000),
 @cNombres VARCHAR(1000),
 @cApellidos VARCHAR(1000),
 @cTitulo VARCHAR(1000),
 @cCorreo VARCHAR(1000),
 @cTelefono VARCHAR(1000),
 @cFax VARCHAR(1000),
 @cMovil VARCHAR(1000),
 @SitioWeb VARCHAR(1000),
 @nCodFuentes INT,
 @nCodEstadoClientes INT,
 @nCodSector INT,
 @nCantidadEmpleados INT,
 @nIngresosAnuales FLOAT,
 @nCodCalificacion INT,
 @cNoParticipacionCorreoElectronico CHAR(1),
 @cIdSkype VARCHAR(1000),
 @cTwitter VARCHAR(1000),
 @cCorreoSecundario VARCHAR(1000)
AS

UPDATE [dbo].[tbPosiblesClientes]
   SET [poclEmpresa] = @cEmpresa
      ,[poclNombres] = @cNombres
      ,[poclApellidos] = @cApellidos
      ,[poclTitulo] = @cTitulo
      ,[poclCorreo] = @cCorreo
      ,[poclTelefono] = @cTelefono
      ,[poclFax] = @cFax
      ,[poclMovil] = @cMovil
      ,[poclSitioWeb] = @SitioWeb
      ,[fuenCodigo] = @nCodFuentes
      ,[esclCodigo] = @nCodEstadoClientes
      ,[sectCodigo] = @nCodSector
      ,[poclCantidadEmpleados] = @nCantidadEmpleados
      ,[poclIngresosAnuales] = @nIngresosAnuales
      ,[caliCodigo] = @nCodCalificacion
      ,[poclNoParticipacionCorreoElectronico] = @cNoParticipacionCorreoElectronico
      ,[poclIdSkype] = @cIdSkype
      ,[poclTwitter] = @cTwitter
      ,[poclCorreoSecundario] = @cCorreoSecundario
WHERE [poclCodigo] = @nCodigo;
	
GO
/****** Object:  StoredProcedure [dbo].[spModificarTarea]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarTarea]
	@nCodigo INT,
	@cTitular VARCHAR (1000),
	@cAsunto VARCHAR (1000),
	@cFechaVencimiento VARCHAR (1000),
	@cContacto VARCHAR (1000),
	@cCuenta VARCHAR (1000),
	@nCodEstadoTarea INT,
	@nCodPrioridad INT,
	@cEnvioCorreo CHAR (1),
	@cRepetir CHAR (1),
	@cDescripcion VARCHAR (1000)
AS

UPDATE [dbo].[tbTareas]
   SET [tareTitular] = @cTitular
      ,[tareAsunto] = @cAsunto
      ,[tareFechaVencimiento] = @cFechaVencimiento
      ,[tareContacto] = @cContacto
      ,[tareCuenta] = @cCuenta
      ,[etarCodigo] = @nCodEstadoTarea
      ,[prioCodigo] = @nCodPrioridad
      ,[tareEnvioCorreo] = @cEnvioCorreo
      ,[tareRepetir] = @cRepetir
      ,[tareDescripcion] = @cDescripcion
WHERE  [tareCodigo]= @nCodigo;
GO
/****** Object:  StoredProcedure [dbo].[spModificarTrato]    Script Date: 6/11/2018 12:17:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarTrato]
@nCodigo INT,
@cImporte VARCHAR(1000),
@cNombre VARCHAR(1000),
@cFechaCierre VARCHAR(1000),
@cNumeroCuenta VARCHAR(1000),
@nCodFase INT,
@nCodTipoTrato INT,
@fProbabilidad FLOAT,
@cSiguientePaso VARCHAR(1000),
@fIngresosEsperados FLOAT,
@nCodFuente INT,
@cFuente VARCHAR(1000),
@cNombreContacto VARCHAR(1000),
@cDescripcion VARCHAR(1000)
AS

UPDATE [dbo].[tbTratos]
SET
[tratImporte] = @cImporte
,[tratNombre] = @cNombre
,[tratFechaCierre] = @cFechaCierre
,[tratNumeroCuenta] = @cNumeroCuenta
,[faseCodigo] = @nCodFase
,[titrCodigo] = @nCodTipoTrato
,[tratProbabilidad] = @fProbabilidad
,[tratSiguientePaso] = @cSiguientePaso
,[tratIngresosEsperados] = @fIngresosEsperados
,[fuenCodigo] = @nCodFuente
,[tratFuente] = @cFuente
,[tratNombreContacto] = @cNombreContacto
,[tratDescripcion] = @cDescripcion
WHERE [tratCodigo] = @nCodigo;
GO
