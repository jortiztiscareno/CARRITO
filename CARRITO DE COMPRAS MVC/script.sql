USE [DBCARRITO]
GO
/****** Object:  Table [dbo].[CARRITO]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARRITO](
	[IdCarrito] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCarrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
	[Clave] [varchar](150) NULL,
	[Reestablecer] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTAMENTO]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTO](
	[IdDepartamento] [varchar](2) NOT NULL,
	[Descripcion] [varchar](45) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[Total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRITO]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRITO](
	[IdDistrito] [varchar](6) NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
	[IdProvincia] [varchar](4) NOT NULL,
	[IdDepartamento] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MARCA]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARCA](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NULL,
	[Descripcion] [varchar](500) NULL,
	[IdMarca] [int] NULL,
	[IdCategoria] [int] NULL,
	[Precio] [decimal](10, 2) NULL,
	[Stock] [int] NULL,
	[RutaImagen] [varchar](100) NULL,
	[NombreImagen] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVINCIA]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVINCIA](
	[IdProvincia] [varchar](4) NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
	[IdDepartamento] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
	[Clave] [varchar](150) NULL,
	[Reestablecer] [bit] NULL,
	[Activo] [bit] NULL,
	[FechaVenta] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[TotalProducto] [int] NULL,
	[MontoTotal] [decimal](10, 2) NULL,
	[Contacto] [varchar](50) NULL,
	[IdDistrito] [varchar](10) NULL,
	[Telefono] [varchar](50) NULL,
	[Direccion] [varchar](500) NULL,
	[IdTransaccion] [varchar](50) NULL,
	[FechaVenta] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORIA] ON 

INSERT [dbo].[CATEGORIA] ([IdCategoria], [Descripcion], [Activo], [FechaRegistro]) VALUES (1, N'Tecnologia', 1, CAST(N'2022-08-16T21:10:27.040' AS DateTime))
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Descripcion], [Activo], [FechaRegistro]) VALUES (2, N'Muebles', 1, CAST(N'2022-08-16T21:10:27.040' AS DateTime))
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Descripcion], [Activo], [FechaRegistro]) VALUES (3, N'Dormitorio', 1, CAST(N'2022-08-16T21:10:27.040' AS DateTime))
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Descripcion], [Activo], [FechaRegistro]) VALUES (4, N'Deportes', 1, CAST(N'2022-08-16T21:10:27.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[CATEGORIA] OFF
GO
SET IDENTITY_INSERT [dbo].[CLIENTE] ON 

INSERT [dbo].[CLIENTE] ([IdCliente], [Nombres], [Apellidos], [Correo], [Clave], [Reestablecer], [FechaRegistro]) VALUES (3, N'Juan Carlos', N'Ortiz Tiscareño', N'jortiztiscareno@gmal.com', N'123', 1, CAST(N'2022-11-15T17:39:21.447' AS DateTime))
INSERT [dbo].[CLIENTE] ([IdCliente], [Nombres], [Apellidos], [Correo], [Clave], [Reestablecer], [FechaRegistro]) VALUES (4, N'Maria Victoria', N'Ortiz De Luna', N'mariaVictoria@gmal.com', N'123', 1, CAST(N'2022-11-15T17:39:21.447' AS DateTime))
INSERT [dbo].[CLIENTE] ([IdCliente], [Nombres], [Apellidos], [Correo], [Clave], [Reestablecer], [FechaRegistro]) VALUES (5, N'Luis Antonio', N'Ortiz Tiscareño', N'jortiztiscareno@gmal.com', N'123', 1, CAST(N'2022-11-15T17:39:21.447' AS DateTime))
SET IDENTITY_INSERT [dbo].[CLIENTE] OFF
GO
INSERT [dbo].[DEPARTAMENTO] ([IdDepartamento], [Descripcion]) VALUES (N'01', N'Arequipa')
INSERT [dbo].[DEPARTAMENTO] ([IdDepartamento], [Descripcion]) VALUES (N'02', N'Ica')
INSERT [dbo].[DEPARTAMENTO] ([IdDepartamento], [Descripcion]) VALUES (N'03', N'Lima')
GO
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'010101', N'Nieva', N'0101', N'01')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'010102', N'El Cenepa', N'0101', N'01')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'010201', N'Camaná', N'0102', N'01')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'010202', N'José María Quimper', N'0102', N'01')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'020101', N'Ica', N'0201', N'02')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'020102', N'La Tinguiña', N'0201', N'02')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'020201', N'Chincha Alta', N'0202', N'02')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'020202', N'Alto Laran', N'0202', N'02')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'030101', N'Lima', N'0301', N'03')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'030102', N'Ancón', N'0301', N'03')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'030201', N'Barranca', N'0302', N'03')
INSERT [dbo].[DISTRITO] ([IdDistrito], [Descripcion], [IdProvincia], [IdDepartamento]) VALUES (N'030202', N'Paramonga', N'0302', N'03')
GO
SET IDENTITY_INSERT [dbo].[MARCA] ON 

INSERT [dbo].[MARCA] ([IdMarca], [Descripcion], [Activo], [FechaRegistro]) VALUES (1, N'SONYTE', 1, CAST(N'2022-08-16T21:12:06.433' AS DateTime))
INSERT [dbo].[MARCA] ([IdMarca], [Descripcion], [Activo], [FechaRegistro]) VALUES (2, N'HP', 1, CAST(N'2022-08-16T21:12:06.433' AS DateTime))
INSERT [dbo].[MARCA] ([IdMarca], [Descripcion], [Activo], [FechaRegistro]) VALUES (3, N'LG', 1, CAST(N'2022-08-16T21:12:06.433' AS DateTime))
INSERT [dbo].[MARCA] ([IdMarca], [Descripcion], [Activo], [FechaRegistro]) VALUES (4, N'HYUNDAITE', 1, CAST(N'2022-08-16T21:12:06.433' AS DateTime))
INSERT [dbo].[MARCA] ([IdMarca], [Descripcion], [Activo], [FechaRegistro]) VALUES (5, N'CANONTE', 1, CAST(N'2022-08-16T21:12:06.433' AS DateTime))
INSERT [dbo].[MARCA] ([IdMarca], [Descripcion], [Activo], [FechaRegistro]) VALUES (6, N'ROBERTA ALLENDE', 1, CAST(N'2022-08-16T21:12:06.433' AS DateTime))
SET IDENTITY_INSERT [dbo].[MARCA] OFF
GO
INSERT [dbo].[PROVINCIA] ([IdProvincia], [Descripcion], [IdDepartamento]) VALUES (N'0101', N'Arequipa', N'01')
INSERT [dbo].[PROVINCIA] ([IdProvincia], [Descripcion], [IdDepartamento]) VALUES (N'0102', N'Camaná', N'01')
INSERT [dbo].[PROVINCIA] ([IdProvincia], [Descripcion], [IdDepartamento]) VALUES (N'0201', N'Ica', N'02')
INSERT [dbo].[PROVINCIA] ([IdProvincia], [Descripcion], [IdDepartamento]) VALUES (N'0202', N'Chincha', N'02')
INSERT [dbo].[PROVINCIA] ([IdProvincia], [Descripcion], [IdDepartamento]) VALUES (N'0301', N'Lima', N'03')
INSERT [dbo].[PROVINCIA] ([IdProvincia], [Descripcion], [IdDepartamento]) VALUES (N'0302', N'Barranca', N'03')
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 

INSERT [dbo].[USUARIO] ([IdUsuario], [Nombres], [Apellidos], [Correo], [Clave], [Reestablecer], [Activo], [FechaVenta]) VALUES (35, N'1', N'1', N'1', N'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae', 1, 1, CAST(N'2022-11-28T21:39:14.397' AS DateTime))
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombres], [Apellidos], [Correo], [Clave], [Reestablecer], [Activo], [FechaVenta]) VALUES (48, N'2', N'2', N'2', N'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae', 1, 1, CAST(N'2022-11-28T21:56:44.060' AS DateTime))
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[CLIENTE] ADD  DEFAULT ((0)) FOR [Reestablecer]
GO
ALTER TABLE [dbo].[CLIENTE] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[MARCA] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[MARCA] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  DEFAULT ((0)) FOR [Precio]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [Reestablecer]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT (getdate()) FOR [FechaVenta]
GO
ALTER TABLE [dbo].[VENTA] ADD  DEFAULT (getdate()) FOR [FechaVenta]
GO
ALTER TABLE [dbo].[CARRITO]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[CLIENTE] ([IdCliente])
GO
ALTER TABLE [dbo].[CARRITO]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[PRODUCTO] ([IdProducto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[PRODUCTO] ([IdProducto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD FOREIGN KEY([IdVenta])
REFERENCES [dbo].[VENTA] ([IdVenta])
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CATEGORIA] ([IdCategoria])
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD FOREIGN KEY([IdMarca])
REFERENCES [dbo].[MARCA] ([IdMarca])
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[CLIENTE] ([IdCliente])
GO
/****** Object:  StoredProcedure [dbo].[SP_EditarUsuarios]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Juan carlos ortiz tiscareño>
-- Create date: <04/09/2022>
-- Description:	<Edita Usuarios>
-- =============================================
CREATE PROCEDURE [dbo].[SP_EditarUsuarios]
	@IdUsuario int,
	@Nombres varchar(100),
	@Apellidos varchar(100),
	@Correo varchar(100),
	@Activo bit,
	@Mensaje varchar(500) output,
	@Resultado bit output
	
AS
BEGIN
set @Resultado=0
if not exists (Select * from USUARIO where Correo =@Correo and IdUsuario!=@IdUsuario)
begin
	Update top(1) USUARIO set
	Nombres=@Nombres,Apellidos=@Apellidos,Correo=@Correo,Activo=@Activo where IdUsuario=@IdUsuario
	set @Resultado=1
	end
	else
	set @Mensaje='El correo del usuario ya existe'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistraUsuarios]    Script Date: 16/12/2022 08:46:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Juan carlos ortiz tiscareño>
-- Create date: <04/09/2022>
-- Description:	<Registra Usuarios>
-- =============================================
CREATE PROCEDURE [dbo].[SP_RegistraUsuarios]
	@Nombres varchar(100),
	@Apellidos varchar(100),
	@Correo varchar(100),
	@Clave varchar(100),
	@Activo bit,
	@Mensaje varchar(500) output,
	@Resultado int output
	
AS
BEGIN
set @Resultado=0
if not exists (Select * from USUARIO where Correo =@Correo)
begin
insert into USUARIO(Nombres,Apellidos,Correo,Clave,Activo)values(@Nombres,@Apellidos,@Correo,@Clave,@Activo)
	set @Resultado=SCOPE_IDENTITY()
	end
	else
	set @Mensaje='El correo del usuario ya existe'
END
GO
