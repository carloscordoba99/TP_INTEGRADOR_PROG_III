USE [master]
GO
/****** Object:  Database [ProyectoProg3]    Script Date: 17/11/2021 2:35:24 ******/
CREATE DATABASE [ProyectoProg3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoProg3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProyectoProg3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoProg3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProyectoProg3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoProg3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoProg3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoProg3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoProg3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoProg3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoProg3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoProg3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoProg3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoProg3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoProg3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoProg3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoProg3] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoProg3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoProg3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoProg3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoProg3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoProg3] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProyectoProg3]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[CodArticulo] [int] IDENTITY(1,1) NOT NULL,
	[NombreArticulo] [varchar](25) NULL,
	[Descripcion] [varchar](50) NULL,
	[PrecioUnitario] [decimal](8, 2) NULL,
	[Estado] [bit] NULL,
	[CodCategoria] [int] NULL,
	[Stock] [int] NULL,
	[ImagenUrl] [varchar](50) NULL,
	[CodProveedor] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[CodArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CodCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CodCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDeVentas]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDeVentas](
	[Cod_DetalleVenta_DV] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Venta_DV] [int] NOT NULL,
	[Cod_Articulo_DV] [int] NOT NULL,
	[Cantidad_DV] [int] NOT NULL,
	[PrecioUnitario_DV] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_DetalleDeVentas] PRIMARY KEY CLUSTERED 
(
	[Cod_DetalleVenta_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[IdLocalidad] [int] NOT NULL,
	[NombreLocalidad] [varchar](30) NOT NULL,
	[IdProvincia] [int] NOT NULL,
 CONSTRAINT [PK_LOCALIDAD] PRIMARY KEY CLUSTERED 
(
	[IdLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Cod_Proveedor_Pr] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial_Pr] [varchar](25) NULL,
	[Marca_Pr] [varchar](25) NULL,
	[Direccion_Pr] [varchar](25) NULL,
	[Ciudad_Pr] [varchar](25) NULL,
	[Provincia_Pr] [varchar](25) NULL,
	[Cuit_Pr] [varchar](25) NULL,
	[Telefono_Pr] [varchar](25) NULL,
	[Contacto_Pr] [varchar](25) NULL,
	[Web_Pr] [varchar](25) NULL,
	[Email_Pr] [varchar](25) NULL,
	[CBU_Pr] [varchar](25) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Cod_Proveedor_Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[IdProvincia] [int] NOT NULL,
	[NombreProvincia] [varchar](25) NOT NULL,
 CONSTRAINT [PK_PROVINCIAS] PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[CodUser] [int] NOT NULL,
	[tipoUsuario] [bit] NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Password_] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[CodUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Apellido] [varchar](25) NOT NULL,
	[Provincia] [varchar](25) NOT NULL,
	[Celular] [varchar](25) NOT NULL,
	[Dni] [varchar](25) NOT NULL,
	[Direccion] [varchar](25) NOT NULL,
	[CodUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Cod_Venta_V] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Cliente_V] [int] NOT NULL,
	[TotalFactura_V] [decimal](8, 2) NULL,
	[FechaFactura_V] [datetime] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Cod_Venta_V] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (1, N'RAM', N'MEMORIA 4GB DDR4 2666 KINGSTON FURY BEAST', CAST(3550.00 AS Decimal(8, 2)), 1, 1, 120, N'/Imagenes/img1.jpg', NULL)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (2, N'Monitor', N'MONITOR 24" SAMSUNG CF390 CURVO FREESYNC', CAST(29000.00 AS Decimal(8, 2)), 1, 2, 120, N'/Imagenes/img2.jpg', NULL)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (3, N'Auriculares', N'AURICULARES HYPERX CLOUD FLIGHT WIRELESS', CAST(12800.00 AS Decimal(8, 2)), 1, 3, 100, N'/Imagenes/img3.jpg', NULL)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (4, N'Memoria RAM', N'MEMORIA 32GB (2x16GB) DDR4 4000 NEO FORZA BLACK', CAST(43000.00 AS Decimal(8, 2)), 1, 1, 120, N'/Imagenes/img4.jpg', NULL)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (5, N'Monitor', N'MONITOR 27" HP P27V HDMI IPS', CAST(31000.00 AS Decimal(8, 2)), 0, 2, 0, N'/Imagenes/img5.jpg', NULL)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (6, N'Memoria RAM', N'MEMORIA 16GB (2X8GB) DDR4 4000MHZ PNY EPIC X RGB', CAST(19000.00 AS Decimal(8, 2)), 1, 1, 120, N'/Imagenes/img6.jpg', NULL)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (7, N'Teclado', N'Teclado 70%', CAST(15999.00 AS Decimal(8, 2)), 1, 1, 30, NULL, 5)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (8, N'MICROFONO', N'MICROFONO RGB', CAST(15999.00 AS Decimal(8, 2)), 0, 1, 5000, NULL, 8)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (9, N'MotherBoard', N'MotherBoard TX', CAST(20456.00 AS Decimal(8, 2)), 1, 3, 59, NULL, 59)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (10, N'Mouse', N'Mouse Razer', CAST(4596.00 AS Decimal(8, 2)), 1, 4, 100, NULL, 2)
INSERT [dbo].[Articulos] ([CodArticulo], [NombreArticulo], [Descripcion], [PrecioUnitario], [Estado], [CodCategoria], [Stock], [ImagenUrl], [CodProveedor]) VALUES (11, N'Monitor t32', N'Monitor 4k', CAST(29999.00 AS Decimal(8, 2)), 1, 1, 69, NULL, 1)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CodCategoria], [NombreCategoria], [Descripcion]) VALUES (1, N'Memorias RAM', N'Contiene los tipos de memorias ram')
INSERT [dbo].[Categorias] ([CodCategoria], [NombreCategoria], [Descripcion]) VALUES (2, N'Monitores', N'Contiene los tipos de monitores')
INSERT [dbo].[Categorias] ([CodCategoria], [NombreCategoria], [Descripcion]) VALUES (3, N'Auriculares', N'Contiene los tipos de auriculares')
INSERT [dbo].[Categorias] ([CodCategoria], [NombreCategoria], [Descripcion]) VALUES (4, N'HDD', N'Contiene discos HDD')
INSERT [dbo].[Categorias] ([CodCategoria], [NombreCategoria], [Descripcion]) VALUES (5, N'Parlante', N'Parlantes 7.1')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (1, N'CABA', 1)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (2, N'Mar del Plata', 1)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (3, N'Cordoba', 2)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (4, N'Rio Cuarto', 2)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (5, N'Rosario', 3)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (6, N'Ciudad de Santa Fe', 3)
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([Cod_Proveedor_Pr], [RazonSocial_Pr], [Marca_Pr], [Direccion_Pr], [Ciudad_Pr], [Provincia_Pr], [Cuit_Pr], [Telefono_Pr], [Contacto_Pr], [Web_Pr], [Email_Pr], [CBU_Pr]) VALUES (1, N'Logitech Srl', N'Logitech', N'Corrientes 156', N'CABA', N'Buenos aires', N'3045987', N'13', N'1', N'www.Logitech.com', N'lg@gmail.com', N'12')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
INSERT [dbo].[Provincias] ([IdProvincia], [NombreProvincia]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[Provincias] ([IdProvincia], [NombreProvincia]) VALUES (2, N'Cordoba')
INSERT [dbo].[Provincias] ([IdProvincia], [NombreProvincia]) VALUES (3, N'Santa Fe')
GO
ALTER TABLE [dbo].[DetalleDeVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeVentas_Articulos] FOREIGN KEY([Cod_Articulo_DV])
REFERENCES [dbo].[Articulos] ([CodArticulo])
GO
ALTER TABLE [dbo].[DetalleDeVentas] CHECK CONSTRAINT [FK_DetalleDeVentas_Articulos]
GO
ALTER TABLE [dbo].[DetalleDeVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeVentas_Ventas] FOREIGN KEY([Cod_Venta_DV])
REFERENCES [dbo].[Ventas] ([Cod_Venta_V])
GO
ALTER TABLE [dbo].[DetalleDeVentas] CHECK CONSTRAINT [FK_DetalleDeVentas_Ventas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[Users] ([CodUser])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Usuarios] FOREIGN KEY([Cod_Cliente_V])
REFERENCES [dbo].[Usuarios] ([IdCliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[spActualizarArticulo]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarArticulo]
(	
	@CODART INT,
	@NOMART VARCHAR(25),
	@DESC VARCHAR(50),
	@PU DECIMAL (8,2),
	@ESTADO BIT,
	@CODCAT INT,
	@STOCK INT,
	@CODPROV INT
)
AS
UPDATE Articulos
SET
NombreArticulo = @NOMART,
Descripcion = @DESC,
PrecioUnitario= @PU,
Estado = @ESTADO,
CodCategoria = @CODCAT, 
Stock = @STOCK, 
CodProveedor = @CODPROV
WHERE CodArticulo = @CODART
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spActualizarCategoria]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarCategoria]
(	
	@CODCAT INT,
	@NOMCAT VARCHAR(50),
	@DESC VARCHAR(100)
)
AS
UPDATE Categorias set
NombreCategoria = @NOMCAT,
Descripcion = @DESC
WHERE CodCategoria = @CODCAT
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spAgregarArticulo]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarArticulo]
(
	@NOMBREARTICULO varchar(25),
	@DESCRIPCION VARCHAR(25),
	@PRECIOUNITARIO DECIMAL(8,2),
	@ESTADO BIT = true,
	@IDCATEGORIA INT,
	@STOCK INT,
	@CODPROVEEDOR INT
)
AS
	INSERT INTO Articulos(NombreArticulo,Descripcion,PrecioUnitario,Estado,CodCategoria,Stock,CodProveedor)
	VALUES(@NOMBREARTICULO,@DESCRIPCION,@PRECIOUNITARIO,@ESTADO,@IDCATEGORIA,@STOCK,@CODPROVEEDOR)
GO
/****** Object:  StoredProcedure [dbo].[spAgregarCategoria]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAgregarCategoria]
(

	@NOMBRECATEGORIA VARCHAR(50),
	@DESCRIPCION VARCHAR(100)
)

	AS
	INSERT INTO Categorias(NombreCategoria,Descripcion)
	VALUES (@NOMBRECATEGORIA,@DESCRIPCION)
GO
/****** Object:  StoredProcedure [dbo].[spAgregarProveedor]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarProveedor]
@RazonSocial varchar(25),
@Marca varchar(25),
@Direccion varchar(25),
@Ciudad varchar(25),
@Provincia varchar(25),
@Cuit varchar(25),
@Telefono varchar(25),
@Contacto varchar(25),
@Web varchar(25),
@Email varchar(25),
@Cbu varchar(25)
AS
	INSERT INTO Proveedores(RazonSocial_Pr,Marca_Pr,Direccion_Pr,Ciudad_Pr,Provincia_Pr,Cuit_Pr,Telefono_Pr,Contacto_Pr,Web_Pr,Email_Pr,CBU_Pr)
	VALUES (@RazonSocial, @Marca, @Direccion,@Ciudad,@Provincia,@Cuit,@Telefono,@Contacto,@Web,@Email,@Cbu)
GO
/****** Object:  StoredProcedure [dbo].[spAgregarVenta]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarVenta]
(
	@CodCliente int,
	@TotalFactura decimal(8,2),
	@FechaFactura datetime
)
AS
	INSERT INTO Ventas (Cod_Cliente_V, TotalFactura_V, FechaFactura_V)
	VALUES (@CodCliente,@TotalFactura,@FechaFactura)
GO
/****** Object:  StoredProcedure [dbo].[spBuscarArticulo]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarArticulo]
(
	@CODARTICULO INT
)
AS
BEGIN
	SELECT * FROM Articulos WHERE  CodArticulo = @CODARTICULO
END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarCategoria]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarCategoria]
(
	@NOMBRECATEGORIA NVARCHAR(20)
)
AS
BEGIN
	SELECT * FROM Categorias WHERE NombreCategoria = @NOMBRECATEGORIA
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarArticulo]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarArticulo]
(
	@CODCARTICULO INT
)
AS
BEGIN
	delete from Articulos where CodArticulo = @CODCARTICULO
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarCategoria]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarCategoria]
(
	@CODCATEGORIA INT
)
AS
BEGIN
	DELETE FROM Categorias WHERE CodCategoria = @CODCATEGORIA
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarProveedor]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarProveedor]
(
	@CodProveedor int
)
AS
	DELETE FROM Proveedores where Cod_Proveedor_Pr = @CodProveedor
GO
/****** Object:  StoredProcedure [dbo].[spEliminarVenta]    Script Date: 17/11/2021 2:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarVenta]
(
	@CodVenta int
)
AS
	DELETE FROM Ventas where Cod_Venta_V = @CodVenta
GO
USE [master]
GO
ALTER DATABASE [ProyectoProg3] SET  READ_WRITE 
GO
