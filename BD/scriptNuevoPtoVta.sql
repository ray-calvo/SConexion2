USE [Zirandaro] 
GO
/****** Object:  Table [dbo].[ScanPedido]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScanPedido](
	[Proveedor] [int] NOT NULL,
	[Folio_Referencia] [char](12) NOT NULL,
	[Pedido] [char](11) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Renglon] [int] NOT NULL,
	[Cod_Interno] [int] NOT NULL,
	[Cod_Relacionado] [char](13) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_ScanPedido] PRIMARY KEY NONCLUSTERED 
(
	[Proveedor] ASC,
	[Folio_Referencia] ASC,
	[Pedido] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol_Pedido]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol_Pedido](
	[Producto] [int] NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
 CONSTRAINT [PK_Rol_Pedido] PRIMARY KEY NONCLUSTERED 
(
	[Producto] ASC,
	[Proveedor] ASC,
	[Sucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RevisionPedMed]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RevisionPedMed](
	[Proveedor] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Cant] [money] NOT NULL,
	[CantConCargo] [money] NOT NULL,
	[CantSinCargo] [money] NOT NULL,
	[Precio] [money] NOT NULL,
	[DesctoOfer] [money] NOT NULL,
	[DesctoFin] [money] NOT NULL,
	[TasaIVA] [money] NOT NULL,
	[Depto] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](40) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retiros]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retiros](
	[Folio] [char](11) NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[TipoPago] [int] NOT NULL,
	[Importe] [money] NOT NULL,
	[FolioFajilla] [char](11) NOT NULL,
	[Caja] [smallint] NOT NULL,
	[Total] [money] NOT NULL,
	[TipoCambio] [smallmoney] NOT NULL,
	[Concepto] [char](500) NOT NULL,
	[FondoCaja] [bit] NOT NULL,
 CONSTRAINT [PK_Retiros] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportesSelec 12]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportesSelec 12](
	[codigo] [int] NOT NULL,
	[descripcion] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegFedCau]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegFedCau](
	[Rfc] [varchar](15) NOT NULL,
	[Curp] [char](18) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Direccion] [char](60) NOT NULL,
	[Colonia] [char](40) NOT NULL,
	[Ciudad] [char](30) NOT NULL,
	[Estado] [char](30) NOT NULL,
	[CP] [char](8) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegAsistencias]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegAsistencias](
	[Sucursal] [tinyint] NOT NULL,
	[Codigo] [char](8) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Entrada1] [datetime] NOT NULL,
	[Salida1] [datetime] NOT NULL,
	[Entrada2] [datetime] NOT NULL,
	[Salida2] [datetime] NOT NULL,
 CONSTRAINT [PK_RegAsistencias] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Codigo] ASC,
	[Fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibidosCtaDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibidosCtaDet](
	[Empresa] [int] NOT NULL,
	[Sucursal] [int] NOT NULL,
	[Folio] [char](10) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Importe] [money] NOT NULL,
	[Comision] [money] NOT NULL,
	[Dato1] [char](30) NOT NULL,
	[Dato2] [char](30) NOT NULL,
	[Dato3] [char](30) NOT NULL,
	[Dato4] [char](30) NOT NULL,
	[Dato5] [char](30) NOT NULL,
	[Caja] [smallint] NOT NULL,
	[Cajero] [int] NOT NULL,
 CONSTRAINT [PK_RecibidosCtaDet] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibidoPedidosDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibidoPedidosDet](
	[Sucursal] [tinyint] NOT NULL,
	[Almacen] [tinyint] NOT NULL,
	[FolioPedido] [char](11) NOT NULL,
	[FolioSurtido] [char](11) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](16) NOT NULL,
	[CantRecibida] [money] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CostoUnit] [smallmoney] NOT NULL,
 CONSTRAINT [PK_RecibidoPedidosDet] PRIMARY KEY CLUSTERED 
(
	[Sucursal] ASC,
	[Almacen] ASC,
	[FolioPedido] ASC,
	[FolioSurtido] ASC,
	[CodigoInt] ASC,
	[CodigoEAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibeSurDir]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibeSurDir](
	[Codigo] [int] NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](40) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibeSur]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibeSur](
	[Codigo] [int] NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](40) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecetasDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecetasDet](
	[Sucursal] [tinyint] NOT NULL,
	[Folio] [int] NOT NULL,
	[Renglon] [int] NOT NULL,
	[Cod_Prod] [char](13) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Usuario] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_RecetasDet] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecetasCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecetasCab](
	[Sucursal] [tinyint] NOT NULL,
	[Folio] [int] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Cve_Doctor] [smallint] NOT NULL,
	[Nombre_Doctor] [varchar](80) NOT NULL,
	[Nombre_Paciente] [varchar](80) NOT NULL,
	[Usuario] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_RecetasCab] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecepValesDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecepValesDet](
	[Farmacia] [tinyint] NOT NULL,
	[Folio] [char](9) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FarmaciaOrigen] [tinyint] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[Estatus] [char](1) NOT NULL,
 CONSTRAINT [PK_RecepValesDet] PRIMARY KEY NONCLUSTERED 
(
	[Farmacia] ASC,
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecepValesCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecepValesCab](
	[Farmacia] [tinyint] NOT NULL,
	[Folio] [char](9) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FolioOrigen] [char](11) NOT NULL,
	[FarmaciaOrigen] [tinyint] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Estatus] [char](1) NOT NULL,
 CONSTRAINT [PK_RecepValesCab] PRIMARY KEY NONCLUSTERED 
(
	[Farmacia] ASC,
	[Folio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Codigo] [int] NOT NULL,
	[Proveedor] [varchar](80) NOT NULL,
	[Domicilio] [char](50) NOT NULL,
	[Ciudad] [char](20) NOT NULL,
	[Colonia] [char](20) NOT NULL,
	[RFC] [char](15) NOT NULL,
	[TipoProveedor] [tinyint] NOT NULL,
	[ContCompras] [char](50) NOT NULL,
	[ContPagos] [char](50) NOT NULL,
	[CompAnuales] [money] NOT NULL,
	[RutaFactLayout] [char](40) NOT NULL,
	[PrefijoFacturas] [char](20) NOT NULL,
	[FechaUltCompra] [smalldatetime] NOT NULL,
	[SalActual] [smallmoney] NOT NULL,
	[FechaUltPago] [smalldatetime] NOT NULL,
	[Estado] [char](20) NOT NULL,
	[Telefono] [char](25) NOT NULL,
	[DesctoFinan] [money] NOT NULL,
	[DiasCredito] [char](2) NOT NULL,
	[CtaContable] [char](16) NOT NULL,
	[CtaAnticipo] [char](16) NOT NULL,
	[CtaGastos] [char](16) NOT NULL,
	[CtaInversion] [char](16) NOT NULL,
	[CapGasInv] [bit] NOT NULL,
	[FechaAlta] [smalldatetime] NOT NULL,
	[Surtimiento] [money] NOT NULL,
	[Prioridad] [char](2) NOT NULL,
	[Cve_Gasto] [tinyint] NOT NULL,
	[PagChecSuc] [bit] NOT NULL,
	[Factura] [bit] NOT NULL,
	[Remision] [bit] NOT NULL,
	[PorcentajeNotasCredito] [smallmoney] NOT NULL,
	[RazonSocial] [varchar](80) NOT NULL,
	[Status] [char](1) NOT NULL,
	[OmitirArchivoPagos] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PromocXFarma]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PromocXFarma](
	[CodigoInt] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[PtjPromocion] [smallmoney] NOT NULL,
	[FecInicio] [datetime] NOT NULL,
	[FecFin] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarmaTemp]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarmaTemp](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NOT NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarmaResp130807]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarmaResp130807](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarmaRESP]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarmaRESP](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarmaR]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarmaR](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NULL,
	[No_Pedir] [bit] NOT NULL,
	[CodSal] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarmaPedido]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarmaPedido](
	[Codigo] [int] NOT NULL,
	[Codrelacionado] [char](13) NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[Pedir] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarma11]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoFarma11](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [nvarchar](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoFarma_Resp19Mar]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarma_Resp19Mar](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NOT NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarma_Resp16]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarma_Resp16](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NOT NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarma_Resp]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarma_Resp](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NOT NULL,
	[No_Pedir] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFarma]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFarma](
	[Farmacia] [tinyint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [smalldatetime] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[OrdenInvSelectivo] [int] NOT NULL,
	[OrdenInvTotal] [int] NOT NULL,
	[ExistFisicaSelect] [money] NOT NULL,
	[ExistFisicaTot] [money] NOT NULL,
	[CostoInventarioIni] [money] NOT NULL,
	[Existencia_Ini] [money] NOT NULL,
	[Fecha_Inv_Ini] [smalldatetime] NOT NULL,
	[Localizacion] [char](10) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Maximo] [money] NOT NULL,
	[Minimo] [money] NOT NULL,
	[PtoReorden] [money] NOT NULL,
	[InvOptimo] [money] NOT NULL,
	[Cant_Pedida] [money] NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Intentos] [smallint] NULL,
	[No_Pedir] [bit] NOT NULL,
	[CodSal] [char](10) NULL,
 CONSTRAINT [PK_ProductoFarma] PRIMARY KEY NONCLUSTERED 
(
	[Farmacia] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PresupuestoVta]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresupuestoVta](
	[Sucursal] [smallint] NOT NULL,
	[Presp_01] [money] NOT NULL,
	[Presp_02] [money] NOT NULL,
	[Presp_03] [money] NOT NULL,
	[Presp_04] [money] NOT NULL,
	[Presp_05] [money] NOT NULL,
	[Presp_06] [money] NOT NULL,
	[Presp_07] [money] NOT NULL,
	[Presp_08] [money] NOT NULL,
	[Presp_09] [money] NOT NULL,
	[Presp_10] [money] NOT NULL,
	[Presp_11] [money] NOT NULL,
	[Presp_12] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrePedidos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrePedidos](
	[Fecha] [smalldatetime] NOT NULL,
	[TipoPedido] [char](1) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[CantPedida] [money] NOT NULL,
	[CantPedidaEscala] [money] NOT NULL,
	[CantPedidaEscalaSC] [money] NOT NULL,
	[CantConCargo] [money] NOT NULL,
	[CantSinCargo] [money] NOT NULL,
	[ProvUnit] [int] NOT NULL,
	[PrecFarmaUnit] [smallmoney] NOT NULL,
	[DesctoOferUnit] [smallmoney] NOT NULL,
	[DesctoFinUnit] [smallmoney] NOT NULL,
	[ProvEscala] [int] NOT NULL,
	[PrecFarmaEscala] [smallmoney] NOT NULL,
	[DesctoOferEscala] [smallmoney] NOT NULL,
	[DesctoFinEscala] [smallmoney] NOT NULL,
	[TipoOfertaElegido] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[PedidoAprov] [bit] NOT NULL,
	[Renglon] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[CantNecesaria] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrecSinOfer]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrecSinOfer](
	[Fecha] [smalldatetime] NOT NULL,
	[CodProv] [int] NOT NULL,
	[CodEAN] [char](13) NOT NULL,
	[PrecioFarmacia] [smallmoney] NOT NULL,
	[PorcDesctoFin] [smallmoney] NOT NULL,
	[CodigoInt] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrecConOfer]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrecConOfer](
	[Fecha] [smalldatetime] NOT NULL,
	[CodEAN] [char](13) NOT NULL,
	[ProvSinEscala] [int] NOT NULL,
	[Zona] [char](12) NOT NULL,
	[PrecioSinEscala] [smallmoney] NOT NULL,
	[DesctoSinEscala] [smallmoney] NOT NULL,
	[DesctoFinSinEscala] [smallmoney] NOT NULL,
	[ProvConEscala] [int] NOT NULL,
	[CantConCargo] [smallmoney] NOT NULL,
	[CantSinCargo] [smallmoney] NOT NULL,
	[CantMaxSinCargo] [smallmoney] NOT NULL,
	[PrecioConEscala] [smallmoney] NOT NULL,
	[DesctoFinConEscala] [smallmoney] NOT NULL,
	[DesctoOfertaEscala] [smallmoney] NOT NULL,
	[CodigoInt] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidosDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidosDet](
	[Folio] [char](11) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoRel] [char](13) NOT NULL,
	[CantPedida] [money] NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[PrecioUnit] [smallmoney] NOT NULL,
	[ImpIVA] [smallmoney] NOT NULL,
	[TasaIVA] [smallmoney] NOT NULL,
	[Status] [char](1) NOT NULL,
	[Renglon] [int] NOT NULL,
	[Departamento] [smallint] NOT NULL,
	[TipoPedido] [char](1) NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
	[CantConCargo] [smallmoney] NOT NULL,
	[CantSinCargo] [smallmoney] NOT NULL,
	[DesctoOfer] [smallmoney] NOT NULL,
	[DesctoFin] [smallmoney] NOT NULL,
	[FolioSurtido] [char](11) NOT NULL,
	[FechaSurtido] [smalldatetime] NOT NULL,
	[NumBulto] [smallint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_PedidosDet] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[CodigoInt] ASC,
	[Renglon] ASC,
	[TipoPedido] ASC,
	[Sucursal] ASC,
	[FolioSurtido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidosCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidosCab](
	[Sucursal] [tinyint] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Fecha_Surtido] [smalldatetime] NOT NULL,
	[Almacen] [tinyint] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[IVA] [smallmoney] NOT NULL,
	[Total] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[Usuario] [int] NOT NULL,
	[TipoPedido] [char](1) NOT NULL,
	[Desctos] [money] NOT NULL,
	[FolioSurtido] [char](11) NOT NULL,
	[FolioControl] [int] NOT NULL,
	[Canti_Bultos] [smallint] NOT NULL,
	[UsuarioSurtido] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_PedidosCab] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[Proveedor] ASC,
	[Almacen] ASC,
	[TipoPedido] ASC,
	[FolioSurtido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pais]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pais](
	[idpais] [numeric](18, 0) NOT NULL,
	[pais] [char](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Optimos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Optimos](
	[Cantidad] [money] NOT NULL,
	[Codigo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accesos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accesos](
	[CodUsuario] [int] NOT NULL,
	[Forma] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].['30#tmp$']    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['30#tmp$'](
	[736085445053 ] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[1] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevolCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DevolCab](
	[Folio] [char](11) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FolioVenta] [char](13) NOT NULL,
	[Cajero] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Cliente] [int] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Descto] [money] NOT NULL,
	[Abono] [money] NOT NULL,
	[CoPago] [money] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Origen] [char](1) NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[FormaDev] [bit] NOT NULL,
	[ComisionBan] [money] NOT NULL,
	[Dato1] [char](60) NOT NULL,
	[Dato2] [char](60) NOT NULL,
	[Dato3] [char](60) NOT NULL,
	[Caja] [smallint] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[ImpteDevol] [money] NOT NULL,
 CONSTRAINT [PK_DevolCab] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Farmacia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CambioPrecio]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CambioPrecio](
	[Fecha] [smalldatetime] NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Codigoint] [int] NOT NULL,
	[CodigoRel] [varchar](13) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[PrecPublico] [money] NOT NULL,
	[PrecFarmacia] [money] NOT NULL,
	[PrecVenta] [money] NOT NULL,
	[PFarma_Mayor] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CambioPassword]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CambioPassword](
	[Codigo] [int] NOT NULL,
	[NewPassword] [varchar](300) NOT NULL,
	[RetryPassword] [varchar](300) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CajPag]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CajPag](
	[Folio] [char](13) NOT NULL,
	[FormaPago] [int] NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
	[FechaPago] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Documento] [char](16) NOT NULL,
	[NumAutoriza] [char](8) NOT NULL,
	[ImptePago] [money] NOT NULL,
	[ComisionBan] [money] NOT NULL,
	[TipoCambio] [smallmoney] NOT NULL,
	[Caja] [smallint] NOT NULL,
 CONSTRAINT [PK_CajPag] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[FormaPago] ASC,
	[Sucursal] ASC,
	[Caja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BitacoraAutorizaciones]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BitacoraAutorizaciones](
	[UsuarioAutoriz] [char](25) NOT NULL,
	[UsuarioSistema] [char](25) NOT NULL,
	[Autorizacion] [char](150) NOT NULL,
	[FechaAutoriz] [datetime] NOT NULL,
	[Caja] [smallint] NOT NULL,
	[Sucursal] [smallint] NOT NULL,
	[Maquina] [char](150) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BitacoraAutorizaciones] PRIMARY KEY CLUSTERED 
(
	[UsuarioAutoriz] ASC,
	[FechaAutoriz] ASC,
	[Maquina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArticulosNegados]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticulosNegados](
	[Sucursal] [tinyint] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[CodInt] [int] NOT NULL,
	[CodRelacionado] [char](13) NOT NULL,
	[Descripcion] [char](50) NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Cantidad] [money] NOT NULL,
 CONSTRAINT [PK_ArticulosNegados] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Fecha] ASC,
	[CodInt] ASC,
	[Descripcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AltaProductos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltaProductos](
	[Sucursal] [smallint] NOT NULL,
	[Producto] [int] NOT NULL,
	[CantidadPedida] [money] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_AltaProductos] PRIMARY KEY CLUSTERED 
(
	[Sucursal] ASC,
	[Producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupadorFajillas]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgrupadorFajillas](
	[Folio] [char](8) NOT NULL,
	[Renglon] [int] NOT NULL,
	[FolioFajilla] [char](11) NOT NULL,
	[Importe] [money] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_AgrupadorFajillas] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Renglon] ASC,
	[FolioFajilla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcuMovtosRespaldo]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcuMovtosRespaldo](
	[Cve_Producto] [int] NOT NULL,
	[Año] [smallint] NOT NULL,
	[Mes] [smallint] NOT NULL,
	[Cant_Ent] [money] NOT NULL,
	[Impte_Ent] [money] NOT NULL,
	[Cant_Sal] [money] NOT NULL,
	[Impte_Sal] [money] NOT NULL,
	[Ult_Costo] [money] NOT NULL,
 CONSTRAINT [PK_AcuMovtosRespaldo] PRIMARY KEY NONCLUSTERED 
(
	[Cve_Producto] ASC,
	[Año] ASC,
	[Mes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcuMovtosResp130807]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcuMovtosResp130807](
	[Cve_Producto] [int] NOT NULL,
	[Año] [smallint] NOT NULL,
	[Mes] [smallint] NOT NULL,
	[Cant_Ent] [money] NOT NULL,
	[Impte_Ent] [money] NOT NULL,
	[Cant_Sal] [money] NOT NULL,
	[Impte_Sal] [money] NOT NULL,
	[Ult_Costo] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcuMovtos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcuMovtos](
	[Cve_Producto] [int] NOT NULL,
	[Año] [smallint] NOT NULL,
	[Mes] [smallint] NOT NULL,
	[Cant_Ent] [money] NOT NULL,
	[Impte_Ent] [money] NOT NULL,
	[Cant_Sal] [money] NOT NULL,
	[Impte_Sal] [money] NOT NULL,
	[Ult_Costo] [money] NOT NULL,
 CONSTRAINT [PK_AcuMovtos] PRIMARY KEY NONCLUSTERED 
(
	[Cve_Producto] ASC,
	[Año] ASC,
	[Mes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaXProd]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaXProd](
	[CodigoInt] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmacias]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Farmacias](
	[Cod_Farma] [tinyint] NOT NULL,
	[Almacen] [bit] NOT NULL,
	[Zona] [tinyint] NOT NULL,
	[CodEmpresa] [char](4) NOT NULL,
	[Nom_Farmacia] [varchar](60) NOT NULL,
	[Direccion] [char](70) NOT NULL,
	[Colonia] [char](40) NOT NULL,
	[CP] [char](8) NOT NULL,
	[Ciudad] [char](40) NOT NULL,
	[Estado] [char](40) NOT NULL,
	[Telefono] [char](40) NOT NULL,
	[Encargado] [char](70) NOT NULL,
	[Centro_Costo] [smallint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Disponible] [bit] NOT NULL,
	[CtaMayVtasContado] [char](4) NOT NULL,
	[SubCVtasContado] [char](4) NOT NULL,
	[SSbCVtasContado] [char](4) NOT NULL,
	[SssVtasContado] [char](4) NOT NULL,
	[CtaMayCtesxFact] [char](4) NOT NULL,
	[SubCCtesxFact] [char](4) NOT NULL,
	[SsbCCtesxFact] [char](4) NOT NULL,
	[SssCCtesxFact] [char](4) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fajillas]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fajillas](
	[Folio] [char](11) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Importe] [money] NOT NULL,
	[FolioAgrupador] [char](8) NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[FolioRetiro] [char](11) NOT NULL,
 CONSTRAINT [PK_Fajillas] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Fecha] ASC,
	[FolioAgrupador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FactElect]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactElect](
	[Fecha] [smalldatetime] NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Sucursal] [int] NOT NULL,
	[Folio_Fact] [char](12) NOT NULL,
	[Fecha_Fact] [smalldatetime] NOT NULL,
	[Codigo_Int] [int] NOT NULL,
	[Codigo_Rel] [char](16) NOT NULL,
	[Renglon] [int] NOT NULL,
	[Cantidad_ConCargo] [int] NOT NULL,
	[Cantidad_SinCargo] [int] NOT NULL,
	[PFarmacia] [money] NOT NULL,
	[TasaIva] [money] NOT NULL,
	[PorDesctoOferta] [money] NOT NULL,
	[PorDesctoFinanciero] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estado]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado](
	[idestado] [numeric](18, 0) NOT NULL,
	[estado] [char](50) NOT NULL,
	[idpais] [numeric](18, 0) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ErrorNotaCredito]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ErrorNotaCredito](
	[FolioCompra] [char](11) NOT NULL,
	[Sucursal] [int] NOT NULL,
	[CodProveedor] [int] NOT NULL,
	[RenglonNC] [int] NOT NULL,
	[RenglonIncidencias] [int] NOT NULL,
	[Factura] [char](12) NOT NULL,
	[FolioNota] [char](11) NOT NULL,
	[CodInterno] [int] NOT NULL,
	[CodRelacionado] [char](20) NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[CantFacturada] [money] NOT NULL,
	[CantDevuelta] [money] NOT NULL,
	[CantNC] [money] NOT NULL,
	[PFarmacia] [money] NOT NULL,
	[PorcOferta] [money] NOT NULL,
	[PorcFinanciero] [money] NOT NULL,
	[PorcIva] [money] NOT NULL,
	[Incidencia] [bit] NOT NULL,
	[NoPedido] [bit] NOT NULL,
	[MasFacturado] [bit] NOT NULL,
	[MasCaro] [bit] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_ErrorNotaCredito] PRIMARY KEY NONCLUSTERED 
(
	[FolioCompra] ASC,
	[Sucursal] ASC,
	[CodProveedor] ASC,
	[RenglonNC] ASC,
	[RenglonIncidencias] ASC,
	[Factura] ASC,
	[FolioNota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleados](
	[idempleado] [numeric](18, 0) NOT NULL,
	[clave] [char](50) NOT NULL,
	[nombre] [char](50) NOT NULL,
	[apellido_p] [char](50) NOT NULL,
	[apellido_m] [char](50) NOT NULL,
	[direccion] [char](50) NOT NULL,
	[colonia] [char](50) NOT NULL,
	[cp] [numeric](18, 0) NOT NULL,
	[rfc] [char](25) NOT NULL,
	[curp] [char](25) NOT NULL,
	[idciudad] [numeric](18, 0) NOT NULL,
	[path_foto] [char](250) NOT NULL,
	[idtipoempleado] [numeric](18, 0) NOT NULL,
	[fecharegistro] [datetime] NOT NULL,
	[nosegurosocial] [char](15) NOT NULL,
	[nocontrolinterno] [numeric](18, 0) NOT NULL,
	[telefono] [char](16) NOT NULL,
	[salario] [float] NOT NULL,
	[fecharegistroimss] [datetime] NOT NULL,
	[idsucursal] [numeric](18, 0) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorNotFound]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorNotFound](
	[Codigo] [smallint] IDENTITY(1,1) NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
	[APaterno] [varchar](20) NOT NULL,
	[AMaterno] [varchar](20) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Direccion] [char](40) NOT NULL,
	[Colonia] [char](30) NOT NULL,
	[CP] [char](5) NOT NULL,
	[Telefono] [char](15) NOT NULL,
	[Especialidad] [char](40) NOT NULL,
	[CorreoElec] [char](30) NOT NULL,
	[Movil] [char](15) NOT NULL,
	[Cedula] [char](25) NOT NULL,
	[Ciudad] [char](25) NOT NULL,
 CONSTRAINT [PK_DoctorNotFound] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC,
	[Sucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctores]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctores](
	[Codigo] [smallint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[A_Paterno] [varchar](50) NOT NULL,
	[A_Materno] [varchar](50) NOT NULL,
	[Direccion] [char](40) NOT NULL,
	[Colonia] [char](30) NOT NULL,
	[CP] [char](5) NOT NULL,
	[Telefono] [char](15) NOT NULL,
	[Especialidad] [smallint] NOT NULL,
	[Registro] [char](25) NOT NULL,
	[Cedula] [char](25) NOT NULL,
	[CorreoElec] [char](30) NOT NULL,
	[Biper] [char](15) NOT NULL,
	[FechaNac] [datetime] NOT NULL,
	[Ciudad] [char](30) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesctosXFarma1]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesctosXFarma1](
	[CodigoInt] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[msrepl_synctran_ts] [binary](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesctosXFarma]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesctosXFarma](
	[CodigoInt] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesctosCodigos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesctosCodigos](
	[CodigoRel] [char](13) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[Permanente] [bit] NOT NULL,
	[FechaIni] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[CodFam1] [char](4) NOT NULL,
	[CodFam2] [char](4) NOT NULL,
	[CodFam3] [char](4) NOT NULL,
	[CodFam4] [char](4) NOT NULL,
	[CodLab] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesctosClientes]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesctosClientes](
	[Cliente] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Familia1] [char](4) NOT NULL,
	[Familia2] [char](4) NOT NULL,
	[Familia3] [char](4) NOT NULL,
	[Familia4] [char](4) NOT NULL,
	[Laboratorio] [int] NOT NULL,
	[Descto] [smallmoney] NOT NULL,
	[Prod_Credito] [bit] NOT NULL,
	[Tipo] [char](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CtesLocales]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CtesLocales](
	[Cve_CteLocal] [int] IDENTITY(1,1) NOT NULL,
	[Telefono] [varchar](15) NOT NULL,
	[NombreCte] [varchar](50) NOT NULL,
	[Direccion] [char](60) NOT NULL,
	[Colonia] [int] NOT NULL,
	[RFC] [char](13) NOT NULL,
	[Entre] [char](50) NOT NULL,
	[Referencia] [char](60) NOT NULL,
	[CiudEdo] [char](60) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FolioUltVta] [char](9) NOT NULL,
	[FechaUltVta] [datetime] NOT NULL,
	[Comentarios] [text] NOT NULL,
	[Depurarlo] [bit] NOT NULL,
	[Titular] [int] NOT NULL,
	[Empleado] [smallint] NOT NULL,
	[Dependiente] [smallint] NOT NULL,
	[Parentesco] [char](20) NOT NULL,
 CONSTRAINT [PK_CtesLocales] PRIMARY KEY NONCLUSTERED 
(
	[Cve_CteLocal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CotizDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CotizDet](
	[Folio] [char](9) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Cliente] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnit] [money] NOT NULL,
	[ImpteIVA] [money] NOT NULL,
	[TasaIVA] [smallmoney] NOT NULL,
	[PorcDescto] [smallmoney] NOT NULL,
	[ImpteDescto] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[TipoDescto] [char](1) NOT NULL,
	[RengCodRel] [tinyint] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[CodDoctor] [int] NOT NULL,
	[NomDoctor] [char](60) NOT NULL,
 CONSTRAINT [PK_CotizDet] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Renglon] ASC,
	[Farmacia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CotizCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CotizCab](
	[Folio] [char](9) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Cliente] [int] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Descuento] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Redondeo] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Vendedor] [int] NOT NULL,
 CONSTRAINT [PK_CotizCab] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Farmacia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CorteZ]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CorteZ](
	[Folio] [char](11) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Caja] [smallint] NOT NULL,
 CONSTRAINT [PK_CorteZ] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CorteX]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CorteX](
	[Cajero] [int] NOT NULL,
	[Folio] [char](10) NOT NULL,
	[FormaPago] [int] NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Hora] [smalldatetime] NOT NULL,
	[UltFolioVenta] [char](13) NOT NULL,
	[UltFolioDevol] [char](11) NOT NULL,
	[ImpteFisico] [money] NOT NULL,
	[ImpteTeorico] [money] NOT NULL,
	[ImpteRetiro] [money] NOT NULL,
	[CambioEfect] [money] NOT NULL,
	[DevolsEfect] [money] NOT NULL,
	[Caja] [smallint] NOT NULL,
	[Auditoria] [bit] NOT NULL,
 CONSTRAINT [PK_CorteX] PRIMARY KEY NONCLUSTERED 
(
	[Cajero] ASC,
	[Folio] ASC,
	[FormaPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConGastos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConGastos](
	[CodCon] [tinyint] NOT NULL,
	[Concepto] [varchar](40) NOT NULL,
	[Afecta] [char](1) NOT NULL,
	[CtaCont] [char](16) NOT NULL,
	[msrepl_synctran_ts] [binary](8) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[configuracionusuario]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[configuracionusuario](
	[idconfiguracionusuario] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[mnuABC] [int] NOT NULL,
	[mnuIntegraciondeInformacion] [int] NOT NULL,
	[mnuCajaGen] [int] NOT NULL,
	[mnuVentas] [int] NOT NULL,
	[mnuCompras] [int] NOT NULL,
	[mnuInventarios] [int] NOT NULL,
	[mnuCtasXCob] [int] NOT NULL,
	[mnuCtasXPag] [int] NOT NULL,
	[MnuContabilidad] [int] NOT NULL,
	[mnuBancos] [int] NOT NULL,
	[mnuConfig] [int] NOT NULL,
	[mnuSeguridad] [int] NOT NULL,
	[menupopup] [int] NOT NULL,
	[checadormenu] [int] NOT NULL,
	[usuario] [char](25) NOT NULL,
 CONSTRAINT [PK_configuracionusuario] PRIMARY KEY CLUSTERED 
(
	[idconfiguracionusuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfiguraBO]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfiguraBO](
	[Clave] [smallint] NOT NULL,
	[PtjUtiMin] [smallmoney] NOT NULL,
	[RutaImagen] [char](80) NOT NULL,
	[Surt_Prior] [char](1) NOT NULL,
	[TiempoPassword] [char](5) NOT NULL,
	[PtjSelDescto] [smallmoney] NOT NULL,
	[ValesDev1] [char](30) NOT NULL,
	[ValesDev2] [char](30) NOT NULL,
	[ValesDev3] [char](30) NOT NULL,
	[VentasNetas] [char](1) NOT NULL,
	[DiasPassword] [smallint] NOT NULL,
	[Promocion1] [char](60) NOT NULL,
	[Promocion2] [char](60) NOT NULL,
	[Promocion3] [char](60) NOT NULL,
	[P1_Inicial] [smallint] NOT NULL,
	[P1_Final] [smallint] NOT NULL,
	[P2_Inicial] [smallint] NOT NULL,
	[P2_Final] [smallint] NOT NULL,
	[P3_Inicial] [smallint] NOT NULL,
	[P3_Final] [smallint] NOT NULL,
	[Prefijo] [char](1) NOT NULL,
	[CodProdIni] [tinyint] NOT NULL,
	[CodProdFin] [tinyint] NOT NULL,
	[GramosIni] [tinyint] NOT NULL,
	[GramosFin] [tinyint] NOT NULL,
	[CantProv] [tinyint] NOT NULL,
	[VecesSurtido] [tinyint] NOT NULL,
	[CompraDirecta] [bit] NOT NULL,
	[ruta_fondo] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigTicketVentaCre_Resp]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigTicketVentaCre_Resp](
	[Renglon] [tinyint] NOT NULL,
	[Etiqueta] [char](25) NOT NULL,
	[Formula] [char](100) NOT NULL,
	[Columna] [tinyint] NOT NULL,
	[Saltos] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigTicketVentaCre]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigTicketVentaCre](
	[Renglon] [tinyint] NOT NULL,
	[Etiqueta] [char](25) NOT NULL,
	[Formula] [char](100) NOT NULL,
	[Columna] [tinyint] NOT NULL,
	[Saltos] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigTicketVenta_resp]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigTicketVenta_resp](
	[Renglon] [tinyint] NOT NULL,
	[Etiqueta] [char](25) NOT NULL,
	[Formula] [char](100) NOT NULL,
	[Columna] [tinyint] NOT NULL,
	[Saltos] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigTicketVenta]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigTicketVenta](
	[Renglon] [tinyint] NOT NULL,
	[Etiqueta] [char](25) NOT NULL,
	[Formula] [char](100) NOT NULL,
	[Columna] [tinyint] NOT NULL,
	[Saltos] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigTicketSAD]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigTicketSAD](
	[Renglon] [tinyint] NOT NULL,
	[Etiqueta] [char](25) NOT NULL,
	[Formula] [char](100) NOT NULL,
	[Columna] [tinyint] NOT NULL,
	[Saltos] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigSAD]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigSAD](
	[Serv_24Hrs] [bit] NOT NULL,
	[Password_Repart] [bit] NOT NULL,
	[Incentivo] [smallmoney] NOT NULL,
	[Monto_Min_NoSAD] [smallmoney] NOT NULL,
	[EditarClientes] [bit] NOT NULL,
	[CancelarVentas] [bit] NOT NULL,
	[IVA] [smallmoney] NOT NULL,
	[Tiempo_X_Surtir] [tinyint] NOT NULL,
	[Tiempo_X_Regresar] [tinyint] NOT NULL,
	[Pregunta_Hora_Entrega] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigFactura]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigFactura](
	[RenTotales] [smallint] NOT NULL,
	[RenEmpresa] [smallint] NOT NULL,
	[ColEmpresa] [smallint] NOT NULL,
	[RenRFC] [smallint] NOT NULL,
	[ColRFC] [smallint] NOT NULL,
	[RenFecha] [smallint] NOT NULL,
	[ColFecha] [smallint] NOT NULL,
	[RenFolio] [smallint] NOT NULL,
	[ColFolio] [smallint] NOT NULL,
	[RenCalle] [smallint] NOT NULL,
	[ColCalle] [smallint] NOT NULL,
	[RenColonia] [smallint] NOT NULL,
	[ColColonia] [smallint] NOT NULL,
	[RenCiudad] [smallint] NOT NULL,
	[ColCiudad] [smallint] NOT NULL,
	[RenEstado] [smallint] NOT NULL,
	[ColEstado] [smallint] NOT NULL,
	[RenCP] [smallint] NOT NULL,
	[ColCP] [smallint] NOT NULL,
	[RenTelefono] [smallint] NOT NULL,
	[ColTelefono] [smallint] NOT NULL,
	[RenSubtotal] [smallint] NOT NULL,
	[ColSubtotal] [smallint] NOT NULL,
	[RenIva] [smallint] NOT NULL,
	[ColIva] [smallint] NOT NULL,
	[RenTotal] [smallint] NOT NULL,
	[ColTotal] [smallint] NOT NULL,
	[RenDescto] [smallint] NOT NULL,
	[ColDescto] [smallint] NOT NULL,
	[RenImpLetra] [smallint] NOT NULL,
	[ColImpLetra] [smallint] NOT NULL,
	[RenLugarExped] [smallint] NOT NULL,
	[ColLugarExped] [smallint] NOT NULL,
	[CantRenXDet] [smallint] NOT NULL,
	[RenPrimerPartida] [smallint] NOT NULL,
	[ColCodigo] [smallint] NOT NULL,
	[ColCantidad] [smallint] NOT NULL,
	[ColDescripcion] [smallint] NOT NULL,
	[ColDesctoDetalle] [smallint] NOT NULL,
	[ColPromocion] [smallint] NOT NULL,
	[ColPrecioVenta] [smallint] NOT NULL,
	[ColImporte] [smallint] NOT NULL,
	[ColIVAPartida] [smallint] NOT NULL,
	[Ticket] [bit] NOT NULL,
	[ColLeyenda] [smallint] NOT NULL,
	[RenLeyenda] [smallint] NOT NULL,
	[Leyenda] [char](200) NOT NULL,
	[TamLetra] [tinyint] NOT NULL,
	[LongCliente] [tinyint] NOT NULL,
	[LongDireccion] [tinyint] NOT NULL,
	[LongColonia] [tinyint] NOT NULL,
	[LongCiudad] [tinyint] NOT NULL,
	[LongEstado] [tinyint] NOT NULL,
	[LongProducto] [tinyint] NOT NULL,
	[LongLeyenda] [tinyint] NOT NULL,
	[PrecioNeto] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigEtiqCenefas_2]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigEtiqCenefas_2](
	[Tipo] [char](1) NOT NULL,
	[Linea] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigEtiqCenefas]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigEtiqCenefas](
	[Tipo] [char](1) NOT NULL,
	[Altura] [smallint] NOT NULL,
	[CodigoEANX] [smallint] NOT NULL,
	[CodigoEANY] [smallint] NOT NULL,
	[CodigoEANC] [smallint] NOT NULL,
	[CodigoEANTL] [char](50) NOT NULL,
	[CodigoEANT] [smallint] NOT NULL,
	[CodigoIntX] [smallint] NOT NULL,
	[CodigoIntY] [smallint] NOT NULL,
	[CodigoIntC] [smallint] NOT NULL,
	[CodigoIntTL] [char](50) NOT NULL,
	[CodigoIntT] [smallint] NOT NULL,
	[DescripcionX] [smallint] NOT NULL,
	[DescripcionY] [smallint] NOT NULL,
	[DescripcionC] [smallint] NOT NULL,
	[DescripcionTL] [char](50) NOT NULL,
	[DescripcionT] [smallint] NOT NULL,
	[FamiliaX] [smallint] NOT NULL,
	[FamiliaY] [smallint] NOT NULL,
	[FamiliaC] [smallint] NOT NULL,
	[FamiliaTL] [char](50) NOT NULL,
	[FamiliaT] [smallint] NOT NULL,
	[PPX] [smallint] NOT NULL,
	[PPY] [smallint] NOT NULL,
	[PPTL] [char](50) NOT NULL,
	[PPT] [smallint] NOT NULL,
	[PVX] [smallint] NOT NULL,
	[PVY] [smallint] NOT NULL,
	[PVTL] [char](50) NOT NULL,
	[PVT] [smallint] NOT NULL,
	[DesctoX] [smallint] NOT NULL,
	[DesctoY] [smallint] NOT NULL,
	[DesctoTL] [char](50) NOT NULL,
	[DesctoT] [smallint] NOT NULL,
	[PNX] [smallint] NOT NULL,
	[PNY] [smallint] NOT NULL,
	[PNTL] [char](50) NOT NULL,
	[PNT] [smallint] NOT NULL,
	[Separacion] [smallmoney] NOT NULL,
	[AlPaso] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigCodigosICD]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigCodigosICD](
	[RutaArchivo] [nvarchar](200) NOT NULL,
	[CodigoICDIni] [smallint] NOT NULL,
	[CodigoICDFin] [smallint] NOT NULL,
	[DescripcionIni] [smallint] NOT NULL,
	[DescripcionFin] [smallint] NOT NULL,
	[Etiqueta1Ini] [smallint] NOT NULL,
	[Etiqueta1Fin] [smallint] NOT NULL,
	[Etiqueta2Ini] [smallint] NOT NULL,
	[Etiqueta2Fin] [smallint] NOT NULL,
	[Etiqueta3Ini] [smallint] NOT NULL,
	[Etiqueta3Fin] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Config](
	[Tipo_Cambio] [smallmoney] NOT NULL,
	[UtilMinima] [smallmoney] NOT NULL,
	[CantDecimal] [tinyint] NOT NULL,
	[EfectMaxCaja] [money] NOT NULL,
	[VentasSinExist] [bit] NOT NULL,
	[Redondeo] [smallmoney] NOT NULL,
	[SimboloPesos] [char](3) NOT NULL,
	[AumentarDescto] [bit] NOT NULL,
	[DisminuirDescto] [bit] NOT NULL,
	[ImpFajRet] [bit] NOT NULL,
	[MensNormal] [char](120) NOT NULL,
	[MensVenta] [char](120) NOT NULL,
	[MensDevol] [char](120) NOT NULL,
	[MensSAD] [char](120) NOT NULL,
	[AlmaMedica] [tinyint] NOT NULL,
	[AlmaAbarrote] [tinyint] NOT NULL,
	[CapturaCantidad] [bit] NOT NULL,
	[Devoluciones] [bit] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[DigitosTel] [tinyint] NOT NULL,
	[Autoriza] [bit] NOT NULL,
	[DiasVenta] [smallint] NOT NULL,
	[RutaImagen] [char](80) NOT NULL,
	[RutadeReporte] [char](80) NOT NULL,
	[FechaApertura] [datetime] NOT NULL,
	[Variacion] [smallmoney] NOT NULL,
	[RutaDescarga] [char](40) NOT NULL,
	[NombreDescarga] [char](12) NOT NULL,
	[CapturaXDescrip] [bit] NOT NULL,
	[MensFiscal] [char](120) NOT NULL,
	[CambioCodigo] [bit] NOT NULL,
	[SuprimirLinea] [bit] NOT NULL,
	[AbandonarCaptura] [bit] NOT NULL,
	[VariacionCompras] [smallmoney] NOT NULL,
	[CambiarPedido] [bit] NOT NULL,
	[CapturaUnidades] [bit] NOT NULL,
	[IndicaNoSoportaD] [bit] NOT NULL,
	[ConsultarFolios] [bit] NOT NULL,
	[MostrarExistencias] [bit] NOT NULL,
	[ImpresionTrans] [bit] NOT NULL,
	[CaracterSeparador] [char](1) NOT NULL,
	[Espacios] [tinyint] NOT NULL,
	[ComprasMayNC] [tinyint] NOT NULL,
	[MultipleSesiones] [bit] NOT NULL,
	[PermValesDev] [bit] NOT NULL,
	[ProveedorEspecifico] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompraDirDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompraDirDet](
	[Sucursal] [tinyint] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CodProveedor] [int] NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Depto] [smallint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PUnitario] [money] NOT NULL,
	[PPublico] [money] NOT NULL,
	[TasaIVA] [money] NOT NULL,
	[FechaConta] [smalldatetime] NOT NULL,
	[Status] [char](1) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_CompraDirDet] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[CodProveedor] ASC,
	[Renglon] ASC,
	[CodigoInt] ASC,
	[CodigoEAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompraDirCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompraDirCab](
	[Folio] [char](11) NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
	[CodProveedor] [int] NOT NULL,
	[Referencia] [char](12) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[FechaConta] [smalldatetime] NOT NULL,
	[Status] [char](1) NOT NULL,
	[StatusFac] [char](1) NOT NULL,
	[Fecha_Captura] [smalldatetime] NOT NULL,
	[Usuario] [int] NOT NULL,
	[TipoCompra] [char](1) NOT NULL,
	[Plazos] [tinyint] NOT NULL,
	[FechaVenc] [smalldatetime] NOT NULL,
	[IvaGastos] [money] NOT NULL,
	[ImpteGastos] [money] NOT NULL,
	[TipoAbarrote] [bit] NOT NULL,
 CONSTRAINT [PK_CompraDirCab] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Sucursal] ASC,
	[CodProveedor] ASC,
	[Referencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompraDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompraDet](
	[Sucursal] [int] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CodProveedor] [int] NOT NULL,
	[CodInterno] [int] NOT NULL,
	[CodRelacionado] [char](16) NOT NULL,
	[Referencia] [char](12) NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[Departamento] [smallint] NOT NULL,
	[CantPedCon] [money] NOT NULL,
	[CantPedSin] [money] NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[CantFacturada] [money] NOT NULL,
	[CantDevuelta] [money] NOT NULL,
	[PorcDescto] [money] NOT NULL,
	[PorcFinan] [money] NOT NULL,
	[PorcIVA] [money] NOT NULL,
	[PFarmacia] [money] NOT NULL,
	[FechaContable] [smalldatetime] NOT NULL,
	[Status] [char](1) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[GastoUnit] [money] NOT NULL,
	[NotaCredito] [money] NOT NULL,
 CONSTRAINT [PK_CompraDet] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Fecha] ASC,
	[CodProveedor] ASC,
	[CodInterno] ASC,
	[Referencia] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompraCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompraCab](
	[Sucursal] [int] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[CodProveedor] [int] NOT NULL,
	[Referencia] [char](12) NOT NULL,
	[Pedido] [char](11) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[FechaCaptura] [smalldatetime] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[SubOferta] [money] NOT NULL,
	[SubDescFin] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[FechaVenc] [smalldatetime] NOT NULL,
	[FechaPago] [smalldatetime] NOT NULL,
	[FechaCont] [smalldatetime] NOT NULL,
	[ImpteGastos] [money] NOT NULL,
	[DifSubDescFac] [money] NOT NULL,
	[DifIvaFac] [money] NOT NULL,
	[Plazos] [smallint] NOT NULL,
	[IvaGastos] [money] NOT NULL,
	[TipoAbarrote] [bit] NOT NULL,
	[IvaDescFin] [money] NOT NULL,
 CONSTRAINT [PK_CompraCab] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[CodProveedor] ASC,
	[Referencia] ASC,
	[Pedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colonias]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colonias](
	[Codigo] [smallint] NOT NULL,
	[Colonia] [varchar](40) NOT NULL,
	[CP] [char](5) NOT NULL,
	[Restringida] [bit] NOT NULL,
	[HoraIniDia] [smalldatetime] NOT NULL,
	[HoraFinDia] [smalldatetime] NOT NULL,
	[ImpteDia] [money] NOT NULL,
	[HoraIniNoche] [smalldatetime] NOT NULL,
	[HoraFinNoche] [smalldatetime] NOT NULL,
	[ImpteNoche] [money] NOT NULL,
	[lunesIni] [smalldatetime] NOT NULL,
	[LunesFin] [smalldatetime] NOT NULL,
	[MartesIni] [smalldatetime] NOT NULL,
	[MartesFin] [smalldatetime] NOT NULL,
	[MiercolesIni] [smalldatetime] NOT NULL,
	[MiercolesFin] [smalldatetime] NOT NULL,
	[JuevesIni] [smalldatetime] NOT NULL,
	[JuevesFin] [smalldatetime] NOT NULL,
	[ViernesIni] [smalldatetime] NOT NULL,
	[ViernesFin] [smalldatetime] NOT NULL,
	[SabadoIni] [smalldatetime] NOT NULL,
	[SabadoFin] [smalldatetime] NOT NULL,
	[DomingoIni] [smalldatetime] NOT NULL,
	[DomingoFin] [smalldatetime] NOT NULL,
	[TarifEspecial] [money] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CodigosRelrep]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodigosRelrep](
	[CodigoInt] [int] NOT NULL,
	[CodRelacionado] [char](13) NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[Renglon] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CodigosRel]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodigosRel](
	[CodigoInt] [int] NOT NULL,
	[CodRelacionado] [char](13) NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[Renglon] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ciudad](
	[idciudad] [numeric](18, 0) NOT NULL,
	[ciudad] [char](50) NOT NULL,
	[idestado] [numeric](18, 0) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Circular]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Circular](
	[FechaPrecio] [smalldatetime] NOT NULL,
	[CodigoInterno] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatUsuarios]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatUsuarios](
	[Codigo] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Clave] [varchar](300) NOT NULL,
	[Grupo] [bit] NOT NULL,
	[CodGrupo] [int] NOT NULL,
	[Confirmado] [bit] NOT NULL,
	[FechaExp] [smalldatetime] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Estatus] [char](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatTiposCliente]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatTiposCliente](
	[CodTipoCliente] [int] NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[FacturarGlobal] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatSucursalesListasDesctos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatSucursalesListasDesctos](
	[CodFarmacia] [int] NOT NULL,
	[CodListaDesctos] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatSales]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatSales](
	[CodigoInt] [numeric](18, 0) NOT NULL,
	[Descripcion] [char](100) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatRecibidosCta]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatRecibidosCta](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
	[Mensaje1] [char](40) NOT NULL,
	[Mensaje2] [char](40) NOT NULL,
	[Mensaje3] [char](40) NOT NULL,
	[Mensaje4] [char](40) NOT NULL,
	[Mensaje5] [char](40) NOT NULL,
	[ImpteComision] [money] NOT NULL,
	[CtaMay] [char](4) NOT NULL,
	[SubCta] [char](4) NOT NULL,
	[SSbCta] [char](4) NOT NULL,
	[SSsCta] [char](4) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatProductosRep]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatProductosRep](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[CodFam1] [char](4) NOT NULL,
	[CodFam2] [char](4) NOT NULL,
	[CodFam3] [char](4) NOT NULL,
	[CodFam4] [char](4) NOT NULL,
	[Laboratorio] [int] NOT NULL,
	[DeptoCompra] [smallint] NOT NULL,
	[DeptoVenta] [smallint] NOT NULL,
	[PtjComiVta] [smallmoney] NOT NULL,
	[ImpteComiVta] [smallmoney] NOT NULL,
	[CodClas1] [char](3) NOT NULL,
	[CodClas2] [char](3) NOT NULL,
	[Granel] [bit] NOT NULL,
	[TipoEtiqueta] [tinyint] NOT NULL,
	[Descuento] [bit] NOT NULL,
	[Seguimiento] [bit] NOT NULL,
	[TipoMedic] [tinyint] NOT NULL,
	[PrecioPublico] [money] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[PrecioFarmacia] [money] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [datetime] NOT NULL,
	[FecUltiVenta] [datetime] NOT NULL,
	[CambioPrec] [char](1) NOT NULL,
	[TipoProducto] [char](1) NOT NULL,
	[TipoCompra] [char](1) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[DiasMaxInv] [smallint] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[Formulado] [bit] NOT NULL,
	[PrecioVentaMixto] [money] NOT NULL,
	[PrecioCostoMixto] [money] NOT NULL,
	[FechaUltCompraSuc] [char](30) NOT NULL,
	[FechaUltVentaSuc] [char](30) NOT NULL,
	[CodSales] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatProductos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatProductos](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[CodFam1] [char](4) NOT NULL,
	[CodFam2] [char](4) NOT NULL,
	[CodFam3] [char](4) NOT NULL,
	[CodFam4] [char](4) NOT NULL,
	[Laboratorio] [int] NOT NULL,
	[DeptoCompra] [smallint] NOT NULL,
	[DeptoVenta] [smallint] NOT NULL,
	[PtjComiVta] [smallmoney] NOT NULL,
	[ImpteComiVta] [smallmoney] NOT NULL,
	[CodClas1] [char](3) NOT NULL,
	[CodClas2] [char](3) NOT NULL,
	[Granel] [bit] NOT NULL,
	[TipoEtiqueta] [tinyint] NOT NULL,
	[Descuento] [bit] NOT NULL,
	[Seguimiento] [bit] NOT NULL,
	[TipoMedic] [tinyint] NOT NULL,
	[PrecioPublico] [money] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[PrecioFarmacia] [money] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[FecUltCompra] [datetime] NOT NULL,
	[FecUltiVenta] [datetime] NOT NULL,
	[CambioPrec] [char](1) NOT NULL,
	[TipoProducto] [char](1) NOT NULL,
	[TipoCompra] [char](1) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[DiasMaxInv] [smallint] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[Formulado] [bit] NOT NULL,
	[PrecioVentaMixto] [money] NOT NULL,
	[PrecioCostoMixto] [money] NOT NULL,
	[FechaUltCompraSuc] [char](30) NOT NULL,
	[FechaUltVentaSuc] [char](30) NOT NULL,
	[CodSales] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatLlave2]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatLlave2](
	[CodCliente] [int] NOT NULL,
	[CodLlave] [char](10) NOT NULL,
	[Etiqueta1] [char](150) NOT NULL,
	[Etiqueta2] [char](150) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatLlave1]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatLlave1](
	[CodCliente] [int] NOT NULL,
	[CodLlave] [char](10) NOT NULL,
	[Etiqueta1] [char](150) NOT NULL,
	[Etiqueta2] [char](150) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatLaboratorios]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatLaboratorios](
	[Codigo] [int] NOT NULL,
	[Descripcion] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatFamilias]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatFamilias](
	[Codigo1] [nvarchar](4) NOT NULL,
	[Codigo2] [nvarchar](4) NOT NULL,
	[Codigo3] [nvarchar](4) NOT NULL,
	[Codigo4] [nvarchar](4) NOT NULL,
	[Descripcion] [nvarchar](30) NOT NULL,
	[Hijos] [tinyint] NOT NULL,
	[NomCorto] [nvarchar](10) NOT NULL,
	[NomCConcatenado] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatEmpresas]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatEmpresas](
	[CodEmpresa] [char](4) NOT NULL,
	[NomEmpresa] [varchar](80) NOT NULL,
	[RFC] [char](15) NOT NULL,
	[RegSSA] [char](20) NOT NULL,
	[DireccionFiscal] [char](80) NOT NULL,
	[Colonia] [char](40) NOT NULL,
	[CP] [char](8) NOT NULL,
	[Ciudad] [char](40) NOT NULL,
	[Estado] [char](40) NOT NULL,
	[Servidor] [varchar](60) NOT NULL,
	[BaseDatos] [varchar](60) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatEmpleadosClientes]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatEmpleadosClientes](
	[CodCliente] [int] NOT NULL,
	[NumNomina] [char](10) NOT NULL,
	[NomEmpleado] [char](80) NOT NULL,
	[Status] [char](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatEmpleados]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatEmpleados](
	[Codigo] [char](8) NOT NULL,
	[Apellido] [char](60) NOT NULL,
	[Nombre] [char](40) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatDepartamentos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatDepartamentos](
	[Codigo] [smallint] NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
	[TasaIVA] [money] NOT NULL,
	[MayCompras] [char](4) NOT NULL,
	[SubCompras] [char](4) NOT NULL,
	[SsbCompras] [char](4) NOT NULL,
	[SssCompras] [char](4) NOT NULL,
	[MayDesctosCompras] [char](4) NOT NULL,
	[SubDesctosCompras] [char](4) NOT NULL,
	[SsbDesctosCompras] [char](4) NOT NULL,
	[SssDesctosCompras] [char](4) NOT NULL,
	[MayDevolsCompras] [char](4) NOT NULL,
	[SubDevolsCompras] [char](4) NOT NULL,
	[SsbDevolsCompras] [char](4) NOT NULL,
	[SssDevolsCompras] [char](4) NOT NULL,
	[MayAlmVentas] [char](4) NOT NULL,
	[SubAlmVentas] [char](4) NOT NULL,
	[SsbAlmVentas] [char](4) NOT NULL,
	[SssAlmVentas] [char](4) NOT NULL,
	[MayAlmDevolsVentas] [char](4) NOT NULL,
	[SubAlmDevolsVentas] [char](4) NOT NULL,
	[SsbAlmDevolsVentas] [char](4) NOT NULL,
	[SssAlmDevolsVentas] [char](4) NOT NULL,
	[MayMovtosAjuste] [char](4) NOT NULL,
	[SubMovtosAjuste] [char](4) NOT NULL,
	[SsbMovtosAjuste] [char](4) NOT NULL,
	[SssMovtosAjuste] [char](4) NOT NULL,
	[MayFaltanSobran] [char](4) NOT NULL,
	[SubFaltanSobran] [char](4) NOT NULL,
	[SsbFaltanSobran] [char](4) NOT NULL,
	[SssFaltanSobran] [char](4) NOT NULL,
	[MayCaducidades] [char](4) NOT NULL,
	[SubCaducidades] [char](4) NOT NULL,
	[SsbCaducidades] [char](4) NOT NULL,
	[SssCaducidades] [char](4) NOT NULL,
	[MayMermas] [char](4) NOT NULL,
	[SubMermas] [char](4) NOT NULL,
	[SsbMermas] [char](4) NOT NULL,
	[SssMermas] [char](4) NOT NULL,
	[MayRobo] [char](4) NOT NULL,
	[SubRobo] [char](4) NOT NULL,
	[SsbRobo] [char](4) NOT NULL,
	[SssRobo] [char](4) NOT NULL,
	[MayOtrasEnt] [char](4) NOT NULL,
	[SubOtrasEnt] [char](4) NOT NULL,
	[SsbOtrasEnt] [char](4) NOT NULL,
	[SssOtrasEnt] [char](4) NOT NULL,
	[MayOtrasSal] [char](4) NOT NULL,
	[SubOtrasSal] [char](4) NOT NULL,
	[SsbOtrasSal] [char](4) NOT NULL,
	[SssOtrasSal] [char](4) NOT NULL,
	[MayResVentas] [char](4) NOT NULL,
	[SubResVentas] [char](4) NOT NULL,
	[SsbResVentas] [char](4) NOT NULL,
	[SssResVentas] [char](4) NOT NULL,
	[MayDesctosVentas] [char](4) NOT NULL,
	[SubDesctosVentas] [char](4) NOT NULL,
	[SsbDesctosVentas] [char](4) NOT NULL,
	[SssDesctosVentas] [char](4) NOT NULL,
	[MayDevolsVentas] [char](4) NOT NULL,
	[SubDevolsVentas] [char](4) NOT NULL,
	[SsbDevolsVentas] [char](4) NOT NULL,
	[SssDevolsVentas] [char](4) NOT NULL,
	[MayCostosVentas] [char](4) NOT NULL,
	[SubCostosVentas] [char](4) NOT NULL,
	[SsbCostosVentas] [char](4) NOT NULL,
	[SssCostosVentas] [char](4) NOT NULL,
	[MayIVACob] [char](4) NOT NULL,
	[SubIVACob] [char](4) NOT NULL,
	[SsbIVACob] [char](4) NOT NULL,
	[SssIVACob] [char](4) NOT NULL,
	[MayIVAPag] [char](4) NOT NULL,
	[SubIVAPag] [char](4) NOT NULL,
	[SsbIVAPag] [char](4) NOT NULL,
	[SssbIVAPag] [char](4) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatDenominaciones]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatDenominaciones](
	[Codigo] [smallint] NOT NULL,
	[Descripcion] [money] NOT NULL,
	[ForPag] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCodigosICD]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatCodigosICD](
	[CodigoICD] [char](8) NOT NULL,
	[Descripcion] [char](150) NOT NULL,
	[Etiqueta1] [char](150) NOT NULL,
	[Etiqueta2] [char](150) NOT NULL,
	[Etiqueta3] [char](150) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatClientes]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatClientes](
	[Codigo] [int] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Rfc] [char](15) NOT NULL,
	[Direccion] [char](60) NOT NULL,
	[Colonia] [char](50) NOT NULL,
	[Ciud_Edo] [char](60) NOT NULL,
	[CP] [char](12) NOT NULL,
	[Telefono] [varchar](25) NOT NULL,
	[ImpLimCre] [money] NOT NULL,
	[DiasLimCre] [smallint] NOT NULL,
	[ConCompras] [char](60) NOT NULL,
	[ConPagos] [char](60) NOT NULL,
	[DiaRev] [char](10) NOT NULL,
	[DiaPag] [char](10) NOT NULL,
	[TipoFac] [tinyint] NOT NULL,
	[TipoLis] [tinyint] NOT NULL,
	[DescGlobal] [smallmoney] NOT NULL,
	[CtaMay] [char](4) NOT NULL,
	[SubCta] [char](4) NOT NULL,
	[SSbCta] [char](4) NOT NULL,
	[SSSCta] [char](4) NOT NULL,
	[CtaConCli] [char](16) NOT NULL,
	[Suspendido] [bit] NOT NULL,
	[LimCred] [bit] NOT NULL,
	[PerCopago] [bit] NOT NULL,
	[PorcCopago] [smallmoney] NOT NULL,
	[ImpCopago] [smallmoney] NOT NULL,
	[RegCtes] [bit] NOT NULL,
	[PerSubCtes] [bit] NOT NULL,
	[ResProd] [bit] NOT NULL,
	[Observaciones] [char](150) NOT NULL,
	[TipoPre] [bit] NOT NULL,
	[TipoCli] [char](1) NOT NULL,
	[PerVales] [bit] NOT NULL,
	[ConceEmp] [smallint] NOT NULL,
	[Corte1] [smallint] NOT NULL,
	[Corte2] [smallint] NOT NULL,
	[Corte3] [smallint] NOT NULL,
	[Corte4] [smallint] NOT NULL,
	[Etiqueta1] [char](30) NOT NULL,
	[Etiqueta2] [char](30) NOT NULL,
	[Etiqueta3] [char](30) NOT NULL,
	[Etiqueta4] [char](30) NOT NULL,
	[Etiqueta5] [char](30) NOT NULL,
	[Etiqueta6] [char](30) NOT NULL,
	[Etiqueta7] [char](30) NOT NULL,
	[Etiqueta8] [char](30) NOT NULL,
	[Etiqueta9] [char](30) NOT NULL,
	[Etiqueta10] [char](30) NOT NULL,
	[Etiqueta11] [char](30) NOT NULL,
	[Etiqueta12] [char](30) NOT NULL,
	[Etiqueta13] [char](30) NOT NULL,
	[Etiqueta14] [char](30) NOT NULL,
	[Etiqueta15] [char](30) NOT NULL,
	[Doctores] [tinyint] NOT NULL,
	[Saldo] [money] NOT NULL,
	[VentasAcum] [money] NOT NULL,
	[VentasAnteriores] [money] NOT NULL,
	[FechaUltVta] [datetime] NOT NULL,
	[LeerTarjeta] [bit] NOT NULL,
	[CodigoTarjeta] [char](20) NOT NULL,
	[SepararIva] [bit] NOT NULL,
	[SinUtilidad] [bit] NOT NULL,
	[Status] [char](1) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CodTipoCLiente] [int] NULL,
	[TipoNomina] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Ficha] [varchar](50) NULL,
	[LimitePeriodoInicial] [datetime] NULL,
	[LimitePeriodoFinal] [datetime] NULL,
	[AcumuladoVentas] [money] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatClasificaciones]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatClasificaciones](
	[Codigo1] [char](3) NOT NULL,
	[Codigo2] [char](3) NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
	[MensajeEnt] [char](150) NOT NULL,
	[MensajeSal] [char](150) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatCentrosCostos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatCentrosCostos](
	[Codigo] [smallint] NOT NULL,
	[Descripcion] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatCajeros]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatCajeros](
	[Cod_Caja] [smallint] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Fecha_Operacion] [smalldatetime] NOT NULL,
	[Dotacion_Inicial] [money] NOT NULL,
	[Cierre] [bit] NOT NULL,
	[FondoCaja] [money] NOT NULL,
	[Apertura] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCajas]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatCajas](
	[Cod_Caja] [int] NOT NULL,
	[Abre_Cajon] [bit] NOT NULL,
	[Puerto_Cajon] [tinyint] NOT NULL,
	[Puerto_Impresora] [tinyint] NOT NULL,
	[Consec_Vtas] [int] NOT NULL,
	[Consec_Dev] [int] NOT NULL,
	[Consec_ReaCta] [int] NOT NULL,
	[Total_Ventas] [money] NOT NULL,
	[Disponible] [bit] NOT NULL,
	[FechaApertura] [smalldatetime] NOT NULL,
	[Consec_Retiro] [int] NOT NULL,
	[Consec_Fajilla] [int] NOT NULL,
	[CortarPapel] [char](30) NOT NULL,
	[AbrirCajon] [char](30) NOT NULL,
	[FechaCierre] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_CatCajas] PRIMARY KEY NONCLUSTERED 
(
	[Cod_Caja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CatBeneficiarios]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatBeneficiarios](
	[CodCliente] [int] NOT NULL,
	[NumNomina] [char](10) NOT NULL,
	[NumBeneficiario] [char](10) NOT NULL,
	[NomBeneficiario] [char](80) NOT NULL,
	[Parentesco] [char](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VerificaPedidos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VerificaPedidos](
	[FolioPedido] [char](11) NOT NULL,
	[Farmacia] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatModulos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_CatModulos    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSupd_CatModulos] 
 @c1 smallint,@c2 varchar(40),@c3 smallint,@c4 binary(8),@pkc1 smallint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatModulos" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"Consecutivo" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Consecutivo" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatModulos" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"Consecutivo" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Consecutivo" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatModulos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_CatModulos    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSins_CatModulos] @c1 smallint,@c2 varchar(40),@c3 smallint,@c4 binary(8)

AS
BEGIN


insert into "CatModulos"( 
"Codigo", "Descripcion", "Consecutivo", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatFunciones]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_CatFunciones    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSupd_CatFunciones] 
 @c1 smallint,@c2 smallint,@c3 varchar(50),@c4 varchar(25),@c5 binary(8),@pkc1 smallint,@pkc2 smallint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2
begin
update "CatFunciones" set
"CodModulo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodModulo" end
,"Codigo" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Descripcion" end
,"Forma" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Forma" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "msrepl_synctran_ts" end
where "CodModulo" = @pkc1 and "Codigo" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatFunciones" set
"Descripcion" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Descripcion" end
,"Forma" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Forma" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "msrepl_synctran_ts" end
where "CodModulo" = @pkc1 and "Codigo" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  Table [dbo].[VentaProductos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaProductos](
	[CodigoInt] [int] NOT NULL,
	[FechaVta] [datetime] NOT NULL,
	[Unidades] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaOptimos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaOptimos](
	[CodigoInt] [int] NOT NULL,
	[FechaVta] [datetime] NOT NULL,
	[Unidades] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaOptimoCalculado]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VentaOptimoCalculado](
	[CodigoInt] [char](13) NOT NULL,
	[Media] [money] NOT NULL,
	[DesvSt] [money] NOT NULL,
	[Moda] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VentaFechas]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaFechas](
	[FechaVta] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatFunciones]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_CatFunciones    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSdel_CatFunciones] @pkc1 smallint,@pkc2 smallint
as
delete "CatFunciones"
where "CodModulo" = @pkc1 and "Codigo" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatEspecialidades]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_CatEspecialidades    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSins_CatEspecialidades] @c1 int,@c2 varchar(30),@c3 binary(8)

AS
BEGIN


insert into "CatEspecialidades"( 
"Codigo", "Descripcion", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ConceptoFactuEsp]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_ConceptoFactuEsp    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSins_ConceptoFactuEsp] @c1 smallint,@c2 smalldatetime,@c3 varchar(100),@c4 char(4),@c5 char(4),@c6 char(4),@c7 char(4),@c8 binary(8)

AS
BEGIN


insert into "ConceptoFactuEsp"( 
"Codigo", "Fecha", "Concepto", "CtaMay", "SubCta", "SsbCta", "SssCta", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatModulos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_CatModulos    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSdel_CatModulos] @pkc1 smallint
as
delete "CatModulos"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatFunciones]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_CatFunciones    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSins_CatFunciones] @c1 smallint,@c2 smallint,@c3 varchar(50),@c4 varchar(25),@c5 binary(8)

AS
BEGIN


insert into "CatFunciones"( 
"CodModulo", "Codigo", "Descripcion", "Forma", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3, @c4, @c5
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatEspecialidades]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_CatEspecialidades    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSupd_CatEspecialidades] 
 @c1 int,@c2 varchar(30),@c3 binary(8),@pkc1 int
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatEspecialidades" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatEspecialidades" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ConceptoFactuEsp]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_ConceptoFactuEsp    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSupd_ConceptoFactuEsp] 
 @c1 smallint,@c2 smalldatetime,@c3 varchar(100),@c4 char(4),@c5 char(4),@c6 char(4),@c7 char(4),@c8 binary(8),@pkc1 smallint
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ConceptoFactuEsp" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Fecha" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Fecha" end
,"Concepto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Concepto" end
,"CtaMay" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CtaMay" end
,"SubCta" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "SubCta" end
,"SsbCta" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "SsbCta" end
,"SssCta" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "SssCta" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ConceptoFactuEsp" set
"Fecha" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Fecha" end
,"Concepto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Concepto" end
,"CtaMay" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CtaMay" end
,"SubCta" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "SubCta" end
,"SsbCta" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "SsbCta" end
,"SssCta" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "SssCta" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  Table [dbo].[VenCab]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VenCab](
	[Folio] [char](13) NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Cliente] [int] NOT NULL,
	[Empleado] [smallint] NOT NULL,
	[Dependiente] [smallint] NOT NULL,
	[Parentesco] [char](20) NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Descuento] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[CoPago] [money] NOT NULL,
	[CambioEfect] [smallmoney] NOT NULL,
	[ComisionBan] [smallmoney] NOT NULL,
	[ComBanFarma] [smallmoney] NOT NULL,
	[Redondeo] [smallmoney] NOT NULL,
	[PagoComision] [bit] NOT NULL,
	[Status] [char](1) NOT NULL,
	[ReferPedido] [char](9) NOT NULL,
	[TipoPrecio] [char](1) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[TipoVenta] [char](1) NOT NULL,
	[FolFacturaInt] [char](9) NOT NULL,
	[FolFacturaIni] [char](9) NOT NULL,
	[FolFacturaFin] [char](9) NOT NULL,
	[CajeroFactura] [int] NOT NULL,
	[RFCClienteFact] [char](13) NOT NULL,
	[FechaFactura] [datetime] NOT NULL,
	[ImpteSAD] [money] NOT NULL,
	[ImpteIVASAD] [money] NOT NULL,
	[Caja] [smallint] NOT NULL,
	[Label1] [char](30) NOT NULL,
	[Label2] [char](30) NOT NULL,
	[Label3] [char](30) NOT NULL,
	[Label4] [char](30) NOT NULL,
	[Label5] [char](30) NOT NULL,
	[Label6] [char](30) NOT NULL,
	[Label7] [char](30) NOT NULL,
	[Label8] [char](30) NOT NULL,
	[Label9] [char](30) NOT NULL,
	[Label10] [char](30) NOT NULL,
	[Label11] [char](30) NOT NULL,
	[Label12] [char](30) NOT NULL,
	[Label13] [char](30) NOT NULL,
	[Label14] [char](30) NOT NULL,
	[Label15] [char](30) NOT NULL,
	[FechaVtaSinHora] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_VenCab] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ValesRecibidos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ValesRecibidos](
	[Farmacia] [tinyint] NOT NULL,
	[Folio] [char](9) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FolioOrigen] [char](11) NOT NULL,
	[FarmaciaOrigen] [tinyint] NOT NULL,
	[Cajero] [int] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[Caja] [smallint] NOT NULL,
	[CostoUnit] [money] NOT NULL,
	[Depto] [tinyint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_ValesRecibidos] PRIMARY KEY NONCLUSTERED 
(
	[Farmacia] ASC,
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ValesEmitidos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ValesEmitidos](
	[Farmacia] [tinyint] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cajero] [char](10) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[Titular] [int] NOT NULL,
	[Empleado] [int] NOT NULL,
	[Dependiente] [int] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[Caja] [smallint] NOT NULL,
	[CostoUnit] [money] NOT NULL,
	[Depto] [tinyint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_ValesEmitidos] PRIMARY KEY NONCLUSTERED 
(
	[Farmacia] ASC,
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ValesDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ValesDet](
	[Sucursal] [tinyint] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[CostoUnit] [money] NOT NULL,
	[FolioVenta] [char](13) NOT NULL,
	[Depto] [tinyint] NOT NULL,
 CONSTRAINT [PK_ValesDet] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[Renglon] ASC,
	[CodigoInt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ValesCab]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ValesCab](
	[Sucursal] [tinyint] NOT NULL,
	[Folio] [char](11) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Titular] [int] NOT NULL,
	[Empleado] [int] NOT NULL,
	[Dependiente] [int] NOT NULL,
	[Estatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ValesCab] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[Folio] ASC,
	[Cajero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TomaInveLec4]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TomaInveLec4](
	[CodigoEan] [char](15) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Cantidad] [char](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TomaInveLec3]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TomaInveLec3](
	[CodigoEan] [char](15) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Cantidad] [char](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TomaInveLec2]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TomaInveLec2](
	[CodigoEan] [char](15) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Cantidad] [char](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TomaInveLec]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TomaInveLec](
	[CodigoEan] [char](15) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Cantidad] [char](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpTransDetalle]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpTransDetalle](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Sucursal_Ref] [tinyint] NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Fecha_Movto] [datetime] NOT NULL,
	[Cve_Producto] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[CostoPromedio] [money] NOT NULL,
	[Importe] [money] NOT NULL,
	[Usuario] [int] NOT NULL,
	[FechaInic] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpRepTransImp]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpRepTransImp](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Sucursal_Ref] [tinyint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Importe] [money] NOT NULL,
	[FechaInic] [smalldatetime] NOT NULL,
	[FechaFin] [smalldatetime] NOT NULL,
	[Usuario] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpReporteCompras]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpReporteCompras](
	[Usuario] [int] NOT NULL,
	[Proveedor] [int] NOT NULL,
	[TipoCompra] [char](1) NOT NULL,
	[FolioCompra] [char](11) NOT NULL,
	[Referencia] [char](12) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Oferta] [money] NOT NULL,
	[Financiero] [money] NOT NULL,
	[Iva] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[NotaCredito] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpOptimosABC]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpOptimosABC](
	[Codigo] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Venta] [float] NULL,
	[Optimo] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpOptDiario]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpOptDiario](
	[Codigo] [nvarchar](13) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Venta] [int] NOT NULL,
	[Factor] [money] NOT NULL,
	[Piezas7] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMovtos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoMovtos](
	[Cve_Movto] [int] NOT NULL,
	[Descripcion_Movto] [varchar](40) NOT NULL,
	[TipoMovto] [char](1) NOT NULL,
	[Status_Movto] [char](1) NOT NULL,
	[Entrada_Con_Costo] [char](1) NOT NULL,
	[Modificable] [bit] NOT NULL,
	[Selecciona] [bit] NOT NULL,
	[Cancela] [bit] NOT NULL,
	[NotaCredito] [bit] NOT NULL,
	[Fijo] [bit] NOT NULL,
	[Contabilizable] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipoempleado]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoempleado](
	[idtipoempleado] [numeric](18, 0) NOT NULL,
	[tipo] [char](25) NOT NULL,
	[descripcion] [char](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempVtasXPto]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempVtasXPto](
	[Usuario] [int] NOT NULL,
	[FechaVtas] [smalldatetime] NOT NULL,
	[FolVtaVtas] [char](13) NOT NULL,
	[CantVtas] [smallint] NOT NULL,
	[PrecUnitVtas] [money] NOT NULL,
	[DesctoVtas] [money] NOT NULL,
	[ImpteVtas] [money] NOT NULL,
	[FechaDev] [smalldatetime] NOT NULL,
	[FolDev] [char](13) NOT NULL,
	[CantDev] [smallint] NOT NULL,
	[Precunitdev] [money] NOT NULL,
	[DesctoDev] [money] NOT NULL,
	[ImpteDev] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempVtasXHoras]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempVtasXHoras](
	[Usuario] [int] NOT NULL,
	[CodZona] [int] NOT NULL,
	[NomZona] [char](35) NOT NULL,
	[CodFarma] [int] NOT NULL,
	[NomFarma] [char](35) NOT NULL,
	[Hora] [tinyint] NOT NULL,
	[NoVentas] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[ImpteVtas] [money] NOT NULL,
	[Devoluciones] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempVtasXDia]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempVtasXDia](
	[Usuario] [int] NOT NULL,
	[Folio] [char](13) NOT NULL,
	[FolioVenta] [char](13) NOT NULL,
	[Farmacia] [int] NOT NULL,
	[Nom_Farmacia] [char](100) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Nombre] [char](100) NOT NULL,
	[Cajero] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Iva] [money] NOT NULL,
	[ImpteDescto] [money] NOT NULL,
	[ImpteCaj] [money] NOT NULL,
	[VtaORDevo] [bit] NOT NULL,
	[DevSinVtas] [char](1) NOT NULL,
	[TipoVenta] [char](1) NOT NULL,
	[TipoDescto] [char](1) NOT NULL,
	[ImpteSAD] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempVtasSinExist]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempVtasSinExist](
	[CodigoInt] [int] NOT NULL,
	[Unidades] [money] NOT NULL,
	[Tickets] [money] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Ult_Vta] [datetime] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempVtasMesDia]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempVtasMesDia](
	[No] [smallint] NOT NULL,
	[UnidBrutas] [money] NOT NULL,
	[UnidDevueltas] [money] NOT NULL,
	[ImpteBruto] [money] NOT NULL,
	[ImpteDesctos] [money] NOT NULL,
	[ImptedelIVA] [money] NOT NULL,
	[ImpteDevoluciones] [money] NOT NULL,
	[ImpteVtasConIVA] [money] NOT NULL,
	[Dia] [smallint] NOT NULL,
	[Usuario] [char](250) NOT NULL,
	[NoVentas] [int] NOT NULL,
	[Mes] [char](4) NOT NULL,
	[Año] [char](4) NOT NULL,
	[FechaEsp] [char](11) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempSurtidoPedidosDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempSurtidoPedidosDet](
	[FolioPedido] [char](16) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Descripcion] [varchar](120) NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[CantRecibida] [money] NOT NULL,
	[Diferencia] [money] NOT NULL,
	[CodigoEAN] [char](16) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempReportes]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempReportes](
	[Codigo] [int] NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[EAN] [char](13) NOT NULL,
	[Familia] [char](30) NOT NULL,
	[Laboratorio] [char](40) NOT NULL,
	[Precio1] [money] NOT NULL,
	[Precio2] [money] NOT NULL,
	[Lab1] [char](40) NOT NULL,
	[Lab2] [char](40) NOT NULL,
	[Fam1] [char](30) NOT NULL,
	[Fam2] [char](30) NOT NULL,
	[Farmacia] [char](60) NOT NULL,
	[Empresa] [char](60) NOT NULL,
	[Orden] [int] NOT NULL,
	[CodFarma] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempReporteIncidencias]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempReporteIncidencias](
	[CodigoUsuario] [char](500) NOT NULL,
	[CodigoInterno] [int] NOT NULL,
	[CodigoRelacionado] [char](16) NOT NULL,
	[DescripcionProducto] [char](100) NOT NULL,
	[CantidadFacturada] [money] NOT NULL,
	[CantidadSurtida] [money] NOT NULL,
	[CantidadDevolverFisicamente] [money] NOT NULL,
	[CantidadNotaCredito] [money] NOT NULL,
 CONSTRAINT [PK_TempReporteIncidencias] PRIMARY KEY NONCLUSTERED 
(
	[CodigoUsuario] ASC,
	[CodigoInterno] ASC,
	[CodigoRelacionado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempProvSurtimiento]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempProvSurtimiento](
	[Proveedor] [int] NOT NULL,
	[Surtimiento] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempProvEmpate]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempProvEmpate](
	[Codigo] [int] NOT NULL,
	[Proveedor] [int] NOT NULL,
	[TipoOferta] [char](1) NOT NULL,
	[PrecioNeto] [money] NOT NULL,
	[Precio] [money] NOT NULL,
	[PtjOferta] [smallmoney] NOT NULL,
	[PtjFinan] [smallmoney] NOT NULL,
	[ConCargo] [smallmoney] NOT NULL,
	[SinCargo] [smallmoney] NOT NULL,
	[CantAPedir] [smallmoney] NOT NULL,
	[CantPedida] [smallmoney] NOT NULL,
	[PedidaAProv] [smallmoney] NOT NULL,
	[Surtimiento] [smallmoney] NOT NULL,
	[Piezas] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempProvEmpatados]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempProvEmpatados](
	[Codigo] [int] NOT NULL,
	[PrecioNeto] [smallmoney] NOT NULL,
	[Prov1] [int] NOT NULL,
	[Precio1] [smallmoney] NOT NULL,
	[Oferta1] [smallmoney] NOT NULL,
	[Fin1] [smallmoney] NOT NULL,
	[CC1] [smallmoney] NOT NULL,
	[SC1] [smallmoney] NOT NULL,
	[Prov2] [int] NOT NULL,
	[Precio2] [smallmoney] NOT NULL,
	[Oferta2] [smallmoney] NOT NULL,
	[Fin2] [smallmoney] NOT NULL,
	[CC2] [smallmoney] NOT NULL,
	[SC2] [smallmoney] NOT NULL,
	[Prov3] [int] NOT NULL,
	[Precio3] [smallmoney] NOT NULL,
	[Oferta3] [smallmoney] NOT NULL,
	[Fin3] [smallmoney] NOT NULL,
	[CC3] [smallmoney] NOT NULL,
	[SC3] [smallmoney] NOT NULL,
	[Prov4] [int] NOT NULL,
	[Precio4] [smallmoney] NOT NULL,
	[Oferta4] [smallmoney] NOT NULL,
	[Fin4] [smallmoney] NOT NULL,
	[CC4] [smallmoney] NOT NULL,
	[SC4] [smallmoney] NOT NULL,
	[Prov5] [int] NOT NULL,
	[Precio5] [smallmoney] NOT NULL,
	[Oferta5] [smallmoney] NOT NULL,
	[Fin5] [smallmoney] NOT NULL,
	[CC5] [smallmoney] NOT NULL,
	[SC5] [smallmoney] NOT NULL,
	[Prov6] [int] NOT NULL,
	[Precio6] [smallmoney] NOT NULL,
	[Oferta6] [smallmoney] NOT NULL,
	[Fin6] [smallmoney] NOT NULL,
	[CC6] [smallmoney] NOT NULL,
	[SC6] [smallmoney] NOT NULL,
	[Prov7] [int] NOT NULL,
	[Precio7] [smallmoney] NOT NULL,
	[Oferta7] [smallmoney] NOT NULL,
	[Fin7] [smallmoney] NOT NULL,
	[CC7] [smallmoney] NOT NULL,
	[SC7] [smallmoney] NOT NULL,
	[Prov8] [int] NOT NULL,
	[Precio8] [smallmoney] NOT NULL,
	[Oferta8] [smallmoney] NOT NULL,
	[Fin8] [smallmoney] NOT NULL,
	[CC8] [smallmoney] NOT NULL,
	[SC8] [smallmoney] NOT NULL,
	[Prov9] [int] NOT NULL,
	[Precio9] [smallmoney] NOT NULL,
	[Oferta9] [smallmoney] NOT NULL,
	[Fin9] [smallmoney] NOT NULL,
	[CC9] [smallmoney] NOT NULL,
	[SC9] [smallmoney] NOT NULL,
	[Prov10] [int] NOT NULL,
	[Precio10] [smallmoney] NOT NULL,
	[Oferta10] [smallmoney] NOT NULL,
	[Fin10] [smallmoney] NOT NULL,
	[CC10] [smallmoney] NOT NULL,
	[SC10] [smallmoney] NOT NULL,
	[Prov11] [int] NOT NULL,
	[Precio11] [smallmoney] NOT NULL,
	[Oferta11] [smallmoney] NOT NULL,
	[Fin11] [smallmoney] NOT NULL,
	[CC11] [smallmoney] NOT NULL,
	[SC11] [smallmoney] NOT NULL,
	[Prov12] [int] NOT NULL,
	[Precio12] [smallmoney] NOT NULL,
	[Oferta12] [smallmoney] NOT NULL,
	[Fin12] [smallmoney] NOT NULL,
	[CC12] [smallmoney] NOT NULL,
	[SC12] [smallmoney] NOT NULL,
	[Prov13] [int] NOT NULL,
	[Precio13] [smallmoney] NOT NULL,
	[Oferta13] [smallmoney] NOT NULL,
	[Fin13] [smallmoney] NOT NULL,
	[CC13] [smallmoney] NOT NULL,
	[SC13] [smallmoney] NOT NULL,
	[Prov14] [int] NOT NULL,
	[Precio14] [smallmoney] NOT NULL,
	[Oferta14] [smallmoney] NOT NULL,
	[Fin14] [smallmoney] NOT NULL,
	[CC14] [smallmoney] NOT NULL,
	[SC14] [smallmoney] NOT NULL,
	[Prov15] [int] NOT NULL,
	[Precio15] [smallmoney] NOT NULL,
	[Oferta15] [smallmoney] NOT NULL,
	[Fin15] [smallmoney] NOT NULL,
	[CC15] [smallmoney] NOT NULL,
	[SC15] [smallmoney] NOT NULL,
	[Prov16] [int] NOT NULL,
	[Precio16] [smallmoney] NOT NULL,
	[Oferta16] [smallmoney] NOT NULL,
	[Fin16] [smallmoney] NOT NULL,
	[CC16] [smallmoney] NOT NULL,
	[SC16] [smallmoney] NOT NULL,
	[Prov17] [int] NOT NULL,
	[Precio17] [smallmoney] NOT NULL,
	[Oferta17] [smallmoney] NOT NULL,
	[Fin17] [smallmoney] NOT NULL,
	[CC17] [smallmoney] NOT NULL,
	[SC17] [smallmoney] NOT NULL,
	[Prov18] [int] NOT NULL,
	[Precio18] [smallmoney] NOT NULL,
	[Oferta18] [smallmoney] NOT NULL,
	[Fin18] [smallmoney] NOT NULL,
	[CC18] [smallmoney] NOT NULL,
	[SC18] [smallmoney] NOT NULL,
	[Prov19] [int] NOT NULL,
	[Precio19] [smallmoney] NOT NULL,
	[Oferta19] [smallmoney] NOT NULL,
	[Fin19] [smallmoney] NOT NULL,
	[CC19] [smallmoney] NOT NULL,
	[SC19] [smallmoney] NOT NULL,
	[Prov20] [int] NOT NULL,
	[Precio20] [smallmoney] NOT NULL,
	[Oferta20] [smallmoney] NOT NULL,
	[Fin20] [smallmoney] NOT NULL,
	[CC20] [smallmoney] NOT NULL,
	[SC20] [smallmoney] NOT NULL,
	[PedidoA] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempPedidosTipo]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempPedidosTipo](
	[FolioPedido] [char](11) NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Sucursal] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempPed27]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempPed27](
	[proveedor] [int] NULL,
	[codigo] [int] NULL,
	[codigoean] [char](13) NULL,
	[cant] [money] NULL,
	[cantconcargo] [smallmoney] NULL,
	[cantsincargo] [smallmoney] NULL,
	[precio] [smallmoney] NULL,
	[desctoofer] [smallmoney] NULL,
	[desctofin] [smallmoney] NULL,
	[TasaIVA] [smallmoney] NULL,
	[Depto] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempNotaCreditoMayoristas]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempNotaCreditoMayoristas](
	[UsuarioMaquina] [char](250) NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[FolioNota] [char](20) NOT NULL,
	[CodigoRelacionado] [char](20) NOT NULL,
	[Descripcion] [char](130) NOT NULL,
	[CantNC] [money] NOT NULL,
	[PFarmacia] [money] NOT NULL,
	[PorOferta] [money] NOT NULL,
	[PorFinanciero] [money] NOT NULL,
	[PorIva] [money] NOT NULL,
	[Importe] [money] NOT NULL,
	[NoPedido] [bit] NOT NULL,
	[MasFacturado] [bit] NOT NULL,
	[MasCaro] [bit] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_TempNotaCreditoMayoristas] PRIMARY KEY NONCLUSTERED 
(
	[UsuarioMaquina] ASC,
	[Renglon] ASC,
	[FolioNota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempListado4]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempListado4](
	[Usuario] [char](250) NOT NULL,
	[Empleado] [char](60) NOT NULL,
	[Dependiente] [char](60) NOT NULL,
	[Parentesco] [char](30) NOT NULL,
	[Nomina] [char](35) NOT NULL,
	[Importe] [money] NOT NULL,
	[Descto] [money] NOT NULL,
	[Iva] [money] NOT NULL,
	[CoPago] [money] NOT NULL,
 CONSTRAINT [PK_TempListado4] PRIMARY KEY NONCLUSTERED 
(
	[Usuario] ASC,
	[Empleado] ASC,
	[Dependiente] ASC,
	[Parentesco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempInvValReporte]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempInvValReporte](
	[Nivel1] [char](4) NOT NULL,
	[Nivel2] [char](4) NOT NULL,
	[Nivel3] [char](4) NOT NULL,
	[Nivel4] [char](4) NOT NULL,
	[Familia] [char](50) NOT NULL,
	[Existencia] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[ImpTotal] [money] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempInvValorizado]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempInvValorizado](
	[Codigoint] [int] NOT NULL,
	[CodRelacionado] [char](13) NULL,
	[Cant_Entradas] [money] NOT NULL,
	[Imp_Entradas] [money] NOT NULL,
	[Cant_Salidas] [money] NOT NULL,
	[Imp_Salidas] [money] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NULL,
	[Nivel1] [char](30) NULL,
	[Nivel2] [char](30) NULL,
	[Nivel3] [char](30) NULL,
	[Nivel4] [char](30) NULL,
	[Farmacia] [tinyint] NOT NULL,
	[CostoProm] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempInvValFam]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempInvValFam](
	[Nivel1] [char](4) NOT NULL,
	[Nivel2] [char](4) NOT NULL,
	[Nivel3] [char](4) NOT NULL,
	[Nivel4] [char](4) NOT NULL,
	[Familia] [char](50) NOT NULL,
	[SubFamilia] [char](30) NOT NULL,
	[SSubFamilia] [char](30) NOT NULL,
	[SSSubFamilia] [char](30) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Cant_Entradas] [money] NOT NULL,
	[Cant_Salidas] [money] NOT NULL,
	[Imp_Entradas] [money] NOT NULL,
	[Imp_Salidas] [money] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempIncidencias]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempIncidencias](
	[Nom_Farmacia] [varchar](60) NOT NULL,
	[NomEmpresa] [varchar](80) NOT NULL,
	[CodRelacionado] [char](13) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[PrecioPublico] [money] NOT NULL,
	[FecUltiVenta] [smalldatetime] NOT NULL,
	[Existencia] [money] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL,
	[Farmacia] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempHistoPedidos]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempHistoPedidos](
	[Hora] [char](11) NOT NULL,
	[Lunes] [tinyint] NOT NULL,
	[Martes] [tinyint] NOT NULL,
	[Miercoles] [tinyint] NOT NULL,
	[Jueves] [tinyint] NOT NULL,
	[Viernes] [tinyint] NOT NULL,
	[Sabado] [tinyint] NOT NULL,
	[Domingo] [tinyint] NOT NULL,
	[PtjLun] [smallmoney] NOT NULL,
	[PtjMar] [smallmoney] NOT NULL,
	[PtjMier] [smallmoney] NOT NULL,
	[PtjJue] [smallmoney] NOT NULL,
	[PtjVie] [smallmoney] NOT NULL,
	[PtjSab] [smallmoney] NOT NULL,
	[PtjDom] [smallmoney] NOT NULL,
	[Usuario] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempFrecCtes]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempFrecCtes](
	[Sistema] [char](100) NOT NULL,
	[Sucursal] [char](100) NOT NULL,
	[Modulo] [char](100) NOT NULL,
	[Titulo] [char](100) NOT NULL,
	[TipoVenta] [char](10) NOT NULL,
	[Cliente] [char](60) NOT NULL,
	[Telefono] [char](15) NOT NULL,
	[Direccion] [char](60) NOT NULL,
	[FecUltPed] [datetime] NOT NULL,
	[Treinta] [smallint] NOT NULL,
	[Sesenta] [smallint] NOT NULL,
	[Noventa] [smallint] NOT NULL,
	[Total] [smallint] NOT NULL,
	[Importe] [money] NOT NULL,
	[Usuario] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempEncabRep]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempEncabRep](
	[NumReporte] [tinyint] NOT NULL,
	[Sistema] [char](100) NOT NULL,
	[CodSucursal] [tinyint] NOT NULL,
	[Sucursal] [char](100) NOT NULL,
	[Modulo] [char](100) NOT NULL,
	[Titulo] [char](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cantidad] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempEC]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempEC](
	[EAN] [char](13) NOT NULL,
	[Producto] [int] NOT NULL,
	[Grupo] [char](60) NOT NULL,
	[Existencia] [money] NOT NULL,
	[Ultimocosto] [money] NOT NULL,
	[CostoPromedio] [money] NOT NULL,
	[Rango1] [char](60) NOT NULL,
	[Rango2] [char](60) NOT NULL,
	[FechaCorte] [datetime] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempDoctores]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempDoctores](
	[Codigo] [smallint] NOT NULL,
	[Nombre] [char](80) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempDiarioVtas]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempDiarioVtas](
	[Farmacia] [tinyint] NOT NULL,
	[Depto] [tinyint] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Descuentos] [money] NOT NULL,
	[DevolucionesDesc] [money] NOT NULL,
	[IvaVentas] [money] NOT NULL,
	[IvaDevoluciones] [money] NOT NULL,
	[Usuario] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempDescarga]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempDescarga](
	[Codigo] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[Renglon] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempConsultaKardex]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempConsultaKardex](
	[EAN] [char](13) NOT NULL,
	[Producto] [char](100) NOT NULL,
	[Fecha_Inicial] [char](30) NOT NULL,
	[Fecha_Final] [smalldatetime] NOT NULL,
	[ExistenciaAnt] [char](60) NOT NULL,
	[Fecha_Movto] [datetime] NOT NULL,
	[Referencia] [char](40) NOT NULL,
	[Entrada] [money] NOT NULL,
	[Salida] [money] NOT NULL,
	[Existencia] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[Fecha_Captura] [smalldatetime] NOT NULL,
	[Orden] [int] NOT NULL,
	[UCosto] [money] NOT NULL,
	[Rango1] [char](50) NOT NULL,
	[Rango2] [char](50) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](65) NOT NULL,
	[FolioMovto] [char](15) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempCons]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempCons](
	[Codigo] [char](4) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Direccion] [char](80) NOT NULL,
	[Donativo] [money] NOT NULL,
	[Fecha] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempComisionVtas]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempComisionVtas](
	[Usuario] [int] NOT NULL,
	[Hora] [smalldatetime] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Tipo] [char](10) NOT NULL,
	[Folio] [char](13) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Producto] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Comision] [money] NOT NULL,
	[TotalComision] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempArticulosNegados]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempArticulosNegados](
	[Folio] [char](8) NOT NULL,
	[Renglon] [int] NOT NULL,
	[FolioFajilla] [char](11) NOT NULL,
	[Importe] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tarjetachecadora]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tarjetachecadora](
	[idtarjeta] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fecha] [datetime] NOT NULL,
	[idempleado] [numeric](18, 0) NOT NULL,
	[horaentradam] [char](15) NOT NULL,
	[horasalidam] [char](15) NOT NULL,
	[horaentradat] [char](15) NOT NULL,
	[horasalidat] [char](15) NOT NULL,
	[horaentradah] [char](15) NOT NULL,
	[horasalidah] [char](15) NOT NULL,
	[actualizado] [char](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tarjetachecadora] PRIMARY KEY CLUSTERED 
(
	[idtarjeta] ASC,
	[fecha] ASC,
	[idempleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurtidosDirDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurtidosDirDet](
	[Sucursal] [tinyint] NOT NULL,
	[FolioSurtido] [char](11) NOT NULL,
	[FechaSurtido] [smalldatetime] NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[Almacen] [int] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoRel] [char](16) NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[CantidadRecibida] [money] NOT NULL,
	[CostoUnitario] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[NodeBulto] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_SurtidosDirDet] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[FolioSurtido] ASC,
	[Renglon] ASC,
	[Almacen] ASC,
	[CodigoInt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurtidosDirCab]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurtidosDirCab](
	[Sucursal] [tinyint] NOT NULL,
	[FolioSurtido] [char](11) NOT NULL,
	[FechaSurtido] [smalldatetime] NOT NULL,
	[Almacen] [tinyint] NOT NULL,
	[FolioControl] [int] NOT NULL,
	[CantidadBultos] [smallint] NOT NULL,
	[Total] [money] NOT NULL,
	[UsuarioSurtido] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[FolioMovimiento] [char](12) NOT NULL,
	[UsuarioRecibe] [int] NOT NULL,
	[FechaRecibe] [smalldatetime] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_SurtidosDirCab] PRIMARY KEY NONCLUSTERED 
(
	[Sucursal] ASC,
	[FolioSurtido] ASC,
	[Almacen] ASC,
	[FolioMovimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurtidoPedidosDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurtidoPedidosDet](
	[Sucursal] [tinyint] NOT NULL,
	[Almacen] [tinyint] NOT NULL,
	[FolioPedido] [char](11) NOT NULL,
	[FolioSurtido] [char](11) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](16) NOT NULL,
	[NumBulto] [smallint] NOT NULL,
	[CantSurtida] [money] NOT NULL,
	[CantRecibida] [money] NOT NULL,
	[EstatusSurt] [char](11) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CostoUnit] [smallmoney] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_SurtidoPedidosDet] PRIMARY KEY CLUSTERED 
(
	[Sucursal] ASC,
	[Almacen] ASC,
	[FolioPedido] ASC,
	[FolioSurtido] ASC,
	[CodigoInt] ASC,
	[CodigoEAN] ASC,
	[NumBulto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SucursalProv]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SucursalProv](
	[Proveedor] [int] NOT NULL,
	[SucProv] [char](12) NOT NULL,
	[Zona] [char](12) NOT NULL,
	[Sucursal] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sucursales](
	[idsucursal] [numeric](18, 0) NOT NULL,
	[sucursal] [char](25) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubClientes]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubClientes](
	[Cliente] [int] NOT NULL,
	[Empleado] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Nomina] [char](30) NOT NULL,
	[NumDep] [int] NOT NULL,
	[NombreDep] [varchar](50) NOT NULL,
	[Parentesco] [char](20) NOT NULL,
	[ConceDep] [tinyint] NOT NULL,
	[ImpCredito] [bit] NOT NULL,
	[Saldo] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ListasDescuentosDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListasDescuentosDet](
	[CodLista] [int] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[PtjDescto] [smallmoney] NOT NULL,
	[VenderSinUtil] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListasDescuentosCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ListasDescuentosCab](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](80) NOT NULL,
	[msrepl_synctran_ts] [binary](8) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ListasClientes]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListasClientes](
	[Lista] [int] NOT NULL,
	[Cliente] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LecturaPuente]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LecturaPuente](
	[Codigo] [char](13) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[ExistFisica] [money] NOT NULL,
	[Capturado] [char](1) NOT NULL,
	[Renglon] [int] IDENTITY(1,1) NOT NULL,
	[Arreglado] [char](1) NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Unidad] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LecturaMarbete]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LecturaMarbete](
	[CodigoRel] [char](13) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Cantidad] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lectura]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lectura](
	[Codigo] [char](13) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[ExistFisica] [money] NOT NULL,
	[Capturado] [char](1) NOT NULL,
	[Renglon] [int] NOT NULL,
	[Arreglado] [char](1) NOT NULL,
	[Congelado] [money] NOT NULL,
	[CapturaAbortada] [bit] NOT NULL,
	[Unidad] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvValorizadoReporte]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvValorizadoReporte](
	[Nivel1] [char](4) NOT NULL,
	[Nivel2] [char](4) NOT NULL,
	[Nivel3] [char](4) NOT NULL,
	[Nivel4] [char](4) NOT NULL,
	[Familia] [char](50) NOT NULL,
	[Existencia] [money] NOT NULL,
	[CostoProm] [money] NOT NULL,
	[ImpTotal] [money] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Maquina] [char](40) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvElectronico]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvElectronico](
	[CodigoInt] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Congelado] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncidenciasInv]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IncidenciasInv](
	[Etiqueta] [char](25) NOT NULL,
	[Codigo] [char](13) NOT NULL,
	[Descripcion] [char](100) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Renglon] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[huellas]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[huellas](
	[idhuella] [numeric](18, 0) NOT NULL,
	[imagen] [image] NOT NULL,
	[idempleado] [numeric](18, 0) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForPag]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ForPag](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
	[Tecla_Rap] [char](1) NOT NULL,
	[Abre_Cajon] [bit] NOT NULL,
	[Dolar] [bit] NOT NULL,
	[Req_Docto] [bit] NOT NULL,
	[Req_Autor] [bit] NOT NULL,
	[Com_Bancar] [smallmoney] NOT NULL,
	[Tipo_Cambio] [smallmoney] NOT NULL,
	[Restringe_Factur] [bit] NOT NULL,
	[Restringe_Cambio] [bit] NOT NULL,
	[Descto_Comision] [bit] NOT NULL,
	[IVAComision] [smallmoney] NOT NULL,
	[PagoSAD] [bit] NOT NULL,
	[DesgloceMonedas] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FoliosMovGral]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FoliosMovGral](
	[Year] [char](4) NOT NULL,
	[Mes] [char](2) NOT NULL,
	[Consecutivo] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Folios]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folios](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
	[Prefijo] [char](1) NOT NULL,
	[Consecutiv] [int] NOT NULL,
 CONSTRAINT [PK_Folios] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLT_TmpVtasProv]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLT_TmpVtasProv](
	[codigo] [bigint] NOT NULL,
	[nom_farmacia] [varchar](50) NOT NULL,
	[familia] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[proveedor] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[ventas] [money] NOT NULL,
	[existencia] [int] NOT NULL,
	[equipo] [char](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLT_OptimosNuevos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLT_OptimosNuevos](
	[Codigo] [int] NULL,
	[Descripcion] [nvarchar](255) NULL,
	[InvOptimoNvo] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLT_Optimos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLT_Optimos](
	[Codigo] [int] NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Familia] [nvarchar](255) NULL,
	[SubFamilia] [nvarchar](255) NULL,
	[Ventas] [int] NULL,
	[Existencia] [int] NULL,
	[InvOptimo] [money] NULL,
	[DiasMaxInv] [int] NULL,
	[Promedio] [money] NULL,
	[Stock] [money] NULL,
	[Valuacion] [nvarchar](255) NULL,
	[StockFijo] [float] NULL,
	[OptimoFijo] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLT_CostosNuevos]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLT_CostosNuevos](
	[Codigo] [float] NULL,
	[CodRelacionado] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](255) NULL,
	[PrecioVenta] [float] NULL,
	[UltimoCosto] [float] NULL,
	[CostosNuevos] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLT_CorteX]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLT_CorteX](
	[Sucursal] [int] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Folio] [char](10) NOT NULL,
	[FormaPago] [int] NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Hora] [smalldatetime] NOT NULL,
	[UltFolioVenta] [char](13) NOT NULL,
	[UltFolioDevol] [char](11) NOT NULL,
	[ImpteFisico] [money] NOT NULL,
	[ImpteTeorico] [money] NOT NULL,
	[ImpteRetiro] [money] NOT NULL,
	[CambioEfect] [money] NOT NULL,
	[DevolsEfect] [money] NOT NULL,
	[Caja] [smallint] NOT NULL,
	[Auditoria] [bit] NOT NULL,
 CONSTRAINT [PK_FLT_CorteX] PRIMARY KEY CLUSTERED 
(
	[Sucursal] ASC,
	[Cajero] ASC,
	[Folio] ASC,
	[FormaPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLT_Checador]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLT_Checador](
	[Sucursal] [smallint] NOT NULL,
	[Seguro] [char](12) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Registro] [bit] NOT NULL,
 CONSTRAINT [PK_FLT_Checador] PRIMARY KEY CLUSTERED 
(
	[Sucursal] ASC,
	[Seguro] ASC,
	[FechaHora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLT_CatPersonalN]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLT_CatPersonalN](
	[Nomina] [char](5) NOT NULL,
	[Seguro] [char](12) NOT NULL,
	[Nombre] [char](50) NOT NULL,
	[Paterno] [char](50) NOT NULL,
	[Materno] [char](50) NOT NULL,
	[Puesto] [char](50) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Maquina] [char](10) NOT NULL,
	[Alta] [datetime] NOT NULL,
	[Entrada] [smalldatetime] NOT NULL,
	[Salida] [smalldatetime] NOT NULL,
	[Descanso] [char](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovAlmCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovAlmCab](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Folio_Movto] [char](9) NOT NULL,
	[Fecha_Movto] [smalldatetime] NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Cve_Almacen] [tinyint] NOT NULL,
	[Referencia] [char](9) NOT NULL,
	[Nom_entrega] [char](60) NOT NULL,
	[Nom_Receptor] [char](60) NOT NULL,
	[Observaciones] [char](150) NOT NULL,
	[Usuario] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[FolioControl] [int] NOT NULL,
 CONSTRAINT [PK_MovAlmCab] PRIMARY KEY NONCLUSTERED 
(
	[Cve_Farmacia] ASC,
	[Folio_Movto] ASC,
	[Fecha_Movto] ASC,
	[Cve_Movto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatEspecialidades]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_CatEspecialidades    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSdel_CatEspecialidades] @pkc1 int
as
delete "CatEspecialidades"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ConceptoFactuEsp]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_ConceptoFactuEsp    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSdel_ConceptoFactuEsp] @pkc1 smallint
as
delete "ConceptoFactuEsp"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatCuentasContables]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_CatCuentasContables    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSdel_CatCuentasContables] @pkc1 char(4),@pkc2 char(4),@pkc3 char(4),@pkc4 char(4)
as
delete "CatCuentasContables"
where "CtaMay" = @pkc1 and "SubCta" = @pkc2 and "SSbCta" = @pkc3 and "SSSCta" = @pkc4
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  Table [dbo].[optimo]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[optimo](
	[Expr1] [char](1) NOT NULL,
	[Expr2] [int] NOT NULL,
	[Expr3] [varchar](100) NOT NULL,
	[Expr4] [money] NOT NULL,
	[Expr5] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotaCreditoDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NotaCreditoDet](
	[Folio] [char](11) NOT NULL,
	[CodFarmacia] [smallint] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[CodProveedor] [int] NOT NULL,
	[Referencia] [char](12) NOT NULL,
	[FechaConta] [smalldatetime] NOT NULL,
	[CodInterno] [int] NOT NULL,
	[CodRelacionado] [char](13) NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PorOfert] [money] NOT NULL,
	[PorDescto] [money] NOT NULL,
	[PorIVA] [money] NOT NULL,
	[PrecioFarmacia] [money] NOT NULL,
	[Depto] [smallint] NOT NULL,
	[Status] [char](1) NOT NULL,
	[Tipo] [char](1) NOT NULL,
 CONSTRAINT [PK_NotaCreditoDet] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[CodFarmacia] ASC,
	[Fecha] ASC,
	[CodProveedor] ASC,
	[Referencia] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotaCreditoCab]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NotaCreditoCab](
	[Folio] [char](11) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[FechaCont] [smalldatetime] NOT NULL,
	[CodProv] [int] NOT NULL,
	[FolioFactura] [char](12) NOT NULL,
	[CodFarmacia] [smallint] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Ofertas] [money] NOT NULL,
	[SubDesctFinanc] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[FechaCaptura] [smalldatetime] NOT NULL,
	[Origen] [char](1) NOT NULL,
 CONSTRAINT [PK_NotaCreditoCab] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[CodProv] ASC,
	[FolioFactura] ASC,
	[CodFarmacia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovGralInvResp130807]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovGralInvResp130807](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Fol_MovAlm] [char](12) NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Fecha_Movto] [smalldatetime] NOT NULL,
	[Referencia] [varchar](13) NOT NULL,
	[Cve_Producto] [int] NOT NULL,
	[CodigoRel] [char](16) NOT NULL,
	[Cve_Renglon] [smallint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[CostoPromedio] [smallmoney] NOT NULL,
	[Impte_Descto] [smallmoney] NOT NULL,
	[Porc_Descto] [smallmoney] NOT NULL,
	[Impte_Iva] [smallmoney] NOT NULL,
	[Porc_Iva] [smallmoney] NOT NULL,
	[Porc_DesctoFin] [smallmoney] NOT NULL,
	[Fecha_Conta] [smalldatetime] NOT NULL,
	[NumPoliza] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[CostoTotal] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Fecha_Captura] [smalldatetime] NOT NULL,
	[Sucursal_Ref] [tinyint] NOT NULL,
	[Ultimo_Costo] [money] NOT NULL,
	[FolTransf_Refer] [char](14) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovGralInv_Resp]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovGralInv_Resp](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Fol_MovAlm] [char](12) NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Fecha_Movto] [smalldatetime] NOT NULL,
	[Referencia] [varchar](13) NOT NULL,
	[Cve_Producto] [int] NOT NULL,
	[CodigoRel] [char](16) NOT NULL,
	[Cve_Renglon] [smallint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[CostoPromedio] [smallmoney] NOT NULL,
	[Impte_Descto] [smallmoney] NOT NULL,
	[Porc_Descto] [smallmoney] NOT NULL,
	[Impte_Iva] [smallmoney] NOT NULL,
	[Porc_Iva] [smallmoney] NOT NULL,
	[Porc_DesctoFin] [smallmoney] NOT NULL,
	[Fecha_Conta] [smalldatetime] NOT NULL,
	[NumPoliza] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[CostoTotal] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Fecha_Captura] [smalldatetime] NOT NULL,
	[Sucursal_Ref] [tinyint] NOT NULL,
	[Ultimo_Costo] [money] NOT NULL,
	[FolTransf_Refer] [char](14) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[movgralinv_old]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movgralinv_old](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Fol_MovAlm] [char](12) NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Fecha_Movto] [smalldatetime] NOT NULL,
	[Referencia] [varchar](13) NOT NULL,
	[Cve_Producto] [int] NOT NULL,
	[CodigoRel] [char](16) NOT NULL,
	[Cve_Renglon] [smallint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[CostoPromedio] [smallmoney] NOT NULL,
	[Impte_Descto] [smallmoney] NOT NULL,
	[Porc_Descto] [smallmoney] NOT NULL,
	[Impte_Iva] [smallmoney] NOT NULL,
	[Porc_Iva] [smallmoney] NOT NULL,
	[Porc_DesctoFin] [smallmoney] NOT NULL,
	[Fecha_Conta] [smalldatetime] NOT NULL,
	[NumPoliza] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[CostoTotal] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Fecha_Captura] [smalldatetime] NOT NULL,
	[Sucursal_Ref] [tinyint] NOT NULL,
	[Ultimo_Costo] [money] NOT NULL,
	[FolTransf_Refer] [char](14) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovGralInv]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovGralInv](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Fol_MovAlm] [char](12) NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Fecha_Movto] [smalldatetime] NOT NULL,
	[Referencia] [varchar](13) NOT NULL,
	[Cve_Producto] [int] NOT NULL,
	[CodigoRel] [char](16) NOT NULL,
	[Cve_Renglon] [smallint] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[CostoPromedio] [smallmoney] NOT NULL,
	[Impte_Descto] [smallmoney] NOT NULL,
	[Porc_Descto] [smallmoney] NOT NULL,
	[Impte_Iva] [smallmoney] NOT NULL,
	[Porc_Iva] [smallmoney] NOT NULL,
	[Porc_DesctoFin] [smallmoney] NOT NULL,
	[Fecha_Conta] [smalldatetime] NOT NULL,
	[NumPoliza] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[CostoTotal] [money] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Fecha_Captura] [smalldatetime] NOT NULL,
	[Sucursal_Ref] [tinyint] NOT NULL,
	[Ultimo_Costo] [money] NOT NULL,
	[FolTransf_Refer] [char](14) NOT NULL,
 CONSTRAINT [PK_MovGralInv] PRIMARY KEY NONCLUSTERED 
(
	[Cve_Farmacia] ASC,
	[Fol_MovAlm] ASC,
	[Fecha_Movto] ASC,
	[Referencia] ASC,
	[Cve_Producto] ASC,
	[Cve_Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatCuentasContables]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_CatCuentasContables    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSins_CatCuentasContables] @c1 char(1),@c2 char(4),@c3 char(4),@c4 char(4),@c5 char(4),@c6 varchar(40),@c7 char(1),@c8 char(1),@c9 char(1),@c10 char(1),@c11 char(1),@c12 smallint,@c13 money,@c14 money,@c15 money,@c16 bit,@c17 money,@c18 money,@c19 money,@c20 money,@c21 money,@c22 money,@c23 money,@c24 money,@c25 money,@c26 money,@c27 money,@c28 money,@c29 money,@c30 money,@c31 money,@c32 money,@c33 money,@c34 money,@c35 money,@c36 money,@c37 money,@c38 money,@c39 money,@c40 money,@c41 money,@c42 money,@c43 money,@c44 money,@c45 money,@c46 money,@c47 money,@c48 money,@c49 money,@c50 money,@c51 money,@c52 money,@c53 char(1),@c54 bit,@c55 binary(8)

AS
BEGIN


insert into "CatCuentasContables"( 
"Status", "CtaMay", "SubCta", "SSbCta", "SSSCta", "Descripcion", "Naturaleza", "Resultados", "Presupuestos", "Departam", "Afectacion", "NumHijos", "SalAñoAnt", "SalIniEjer", "SaldInic", "Autorizacion", "Cargos_01", "Cargos_02", "Cargos_03", "Cargos_04", "Cargos_05", "Cargos_06", "Cargos_07", "Cargos_08", "Cargos_09", "Cargos_10", "Cargos_11", "Cargos_12", "Abonos_01", "Abonos_02", "Abonos_03", "Abonos_04", "Abonos_05", "Abonos_06", "Abonos_07", "Abonos_08", "Abonos_09", "Abonos_10", "Abonos_11", "Abonos_12", "Presp_01", "Presp_02", "Presp_03", "Presp_04", "Presp_05", "Presp_06", "Presp_07", "Presp_08", "Presp_09", "Presp_10", "Presp_11", "Presp_12", "Tipo_Presupuesto", "Cta_Gastos", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34, @c35, @c36, @c37, @c38, @c39, @c40, @c41, @c42, @c43, @c44, @c45, @c46, @c47, @c48, @c49, @c50, @c51, @c52, @c53, @c54, @c55
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatCuentasContables]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_CatCuentasContables    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSupd_CatCuentasContables] 
 @c1 char(1),@c2 char(4),@c3 char(4),@c4 char(4),@c5 char(4),@c6 varchar(40),@c7 char(1),@c8 char(1),@c9 char(1),@c10 char(1),@c11 char(1),@c12 smallint,@c13 money,@c14 money,@c15 money,@c16 bit,@c17 money,@c18 money,@c19 money,@c20 money,@c21 money,@c22 money,@c23 money,@c24 money,@c25 money,@c26 money,@c27 money,@c28 money,@c29 money,@c30 money,@c31 money,@c32 money,@c33 money,@c34 money,@c35 money,@c36 money,@c37 money,@c38 money,@c39 money,@c40 money,@c41 money,@c42 money,@c43 money,@c44 money,@c45 money,@c46 money,@c47 money,@c48 money,@c49 money,@c50 money,@c51 money,@c52 money,@c53 char(1),@c54 bit,@c55 binary(8),@pkc1 char(4),@pkc2 char(4),@pkc3 char(4),@pkc4 char(4)
,@bitmap binary(7)
as
if substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4 or substring(@bitmap,1,1) & 8 = 8 or substring(@bitmap,1,1) & 16 = 16
begin
update "CatCuentasContables" set
"Status" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Status" end
,"CtaMay" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "CtaMay" end
,"SubCta" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "SubCta" end
,"SSbCta" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "SSbCta" end
,"SSSCta" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "SSSCta" end
,"Descripcion" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Descripcion" end
,"Naturaleza" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Naturaleza" end
,"Resultados" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Resultados" end
,"Presupuestos" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Presupuestos" end
,"Departam" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Departam" end
,"Afectacion" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Afectacion" end
,"NumHijos" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "NumHijos" end
,"SalAñoAnt" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "SalAñoAnt" end
,"SalIniEjer" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "SalIniEjer" end
,"SaldInic" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "SaldInic" end
,"Autorizacion" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Autorizacion" end
,"Cargos_01" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Cargos_01" end
,"Cargos_02" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "Cargos_02" end
,"Cargos_03" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "Cargos_03" end
,"Cargos_04" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "Cargos_04" end
,"Cargos_05" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "Cargos_05" end
,"Cargos_06" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "Cargos_06" end
,"Cargos_07" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "Cargos_07" end
,"Cargos_08" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "Cargos_08" end
,"Cargos_09" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "Cargos_09" end
,"Cargos_10" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "Cargos_10" end
,"Cargos_11" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "Cargos_11" end
,"Cargos_12" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "Cargos_12" end
,"Abonos_01" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "Abonos_01" end
,"Abonos_02" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "Abonos_02" end
,"Abonos_03" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Abonos_03" end
,"Abonos_04" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Abonos_04" end
,"Abonos_05" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "Abonos_05" end
,"Abonos_06" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "Abonos_06" end
,"Abonos_07" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "Abonos_07" end
,"Abonos_08" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "Abonos_08" end
,"Abonos_09" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "Abonos_09" end
,"Abonos_10" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "Abonos_10" end
,"Abonos_11" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "Abonos_11" end
,"Abonos_12" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "Abonos_12" end
,"Presp_01" = case substring(@bitmap,6,1) & 1 when 1 then @c41 else "Presp_01" end
,"Presp_02" = case substring(@bitmap,6,1) & 2 when 2 then @c42 else "Presp_02" end
,"Presp_03" = case substring(@bitmap,6,1) & 4 when 4 then @c43 else "Presp_03" end
,"Presp_04" = case substring(@bitmap,6,1) & 8 when 8 then @c44 else "Presp_04" end
,"Presp_05" = case substring(@bitmap,6,1) & 16 when 16 then @c45 else "Presp_05" end
,"Presp_06" = case substring(@bitmap,6,1) & 32 when 32 then @c46 else "Presp_06" end
,"Presp_07" = case substring(@bitmap,6,1) & 64 when 64 then @c47 else "Presp_07" end
,"Presp_08" = case substring(@bitmap,6,1) & 128 when 128 then @c48 else "Presp_08" end
,"Presp_09" = case substring(@bitmap,7,1) & 1 when 1 then @c49 else "Presp_09" end
,"Presp_10" = case substring(@bitmap,7,1) & 2 when 2 then @c50 else "Presp_10" end
,"Presp_11" = case substring(@bitmap,7,1) & 4 when 4 then @c51 else "Presp_11" end
,"Presp_12" = case substring(@bitmap,7,1) & 8 when 8 then @c52 else "Presp_12" end
,"Tipo_Presupuesto" = case substring(@bitmap,7,1) & 16 when 16 then @c53 else "Tipo_Presupuesto" end
,"Cta_Gastos" = case substring(@bitmap,7,1) & 32 when 32 then @c54 else "Cta_Gastos" end
,"msrepl_synctran_ts" = case substring(@bitmap,7,1) & 64 when 64 then @c55 else "msrepl_synctran_ts" end
where "CtaMay" = @pkc1 and "SubCta" = @pkc2 and "SSbCta" = @pkc3 and "SSSCta" = @pkc4
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatCuentasContables" set
"Status" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Status" end
,"Descripcion" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Descripcion" end
,"Naturaleza" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Naturaleza" end
,"Resultados" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Resultados" end
,"Presupuestos" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Presupuestos" end
,"Departam" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Departam" end
,"Afectacion" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Afectacion" end
,"NumHijos" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "NumHijos" end
,"SalAñoAnt" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "SalAñoAnt" end
,"SalIniEjer" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "SalIniEjer" end
,"SaldInic" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "SaldInic" end
,"Autorizacion" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Autorizacion" end
,"Cargos_01" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Cargos_01" end
,"Cargos_02" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "Cargos_02" end
,"Cargos_03" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "Cargos_03" end
,"Cargos_04" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "Cargos_04" end
,"Cargos_05" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "Cargos_05" end
,"Cargos_06" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "Cargos_06" end
,"Cargos_07" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "Cargos_07" end
,"Cargos_08" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "Cargos_08" end
,"Cargos_09" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "Cargos_09" end
,"Cargos_10" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "Cargos_10" end
,"Cargos_11" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "Cargos_11" end
,"Cargos_12" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "Cargos_12" end
,"Abonos_01" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "Abonos_01" end
,"Abonos_02" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "Abonos_02" end
,"Abonos_03" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Abonos_03" end
,"Abonos_04" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Abonos_04" end
,"Abonos_05" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "Abonos_05" end
,"Abonos_06" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "Abonos_06" end
,"Abonos_07" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "Abonos_07" end
,"Abonos_08" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "Abonos_08" end
,"Abonos_09" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "Abonos_09" end
,"Abonos_10" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "Abonos_10" end
,"Abonos_11" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "Abonos_11" end
,"Abonos_12" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "Abonos_12" end
,"Presp_01" = case substring(@bitmap,6,1) & 1 when 1 then @c41 else "Presp_01" end
,"Presp_02" = case substring(@bitmap,6,1) & 2 when 2 then @c42 else "Presp_02" end
,"Presp_03" = case substring(@bitmap,6,1) & 4 when 4 then @c43 else "Presp_03" end
,"Presp_04" = case substring(@bitmap,6,1) & 8 when 8 then @c44 else "Presp_04" end
,"Presp_05" = case substring(@bitmap,6,1) & 16 when 16 then @c45 else "Presp_05" end
,"Presp_06" = case substring(@bitmap,6,1) & 32 when 32 then @c46 else "Presp_06" end
,"Presp_07" = case substring(@bitmap,6,1) & 64 when 64 then @c47 else "Presp_07" end
,"Presp_08" = case substring(@bitmap,6,1) & 128 when 128 then @c48 else "Presp_08" end
,"Presp_09" = case substring(@bitmap,7,1) & 1 when 1 then @c49 else "Presp_09" end
,"Presp_10" = case substring(@bitmap,7,1) & 2 when 2 then @c50 else "Presp_10" end
,"Presp_11" = case substring(@bitmap,7,1) & 4 when 4 then @c51 else "Presp_11" end
,"Presp_12" = case substring(@bitmap,7,1) & 8 when 8 then @c52 else "Presp_12" end
,"Tipo_Presupuesto" = case substring(@bitmap,7,1) & 16 when 16 then @c53 else "Tipo_Presupuesto" end
,"Cta_Gastos" = case substring(@bitmap,7,1) & 32 when 32 then @c54 else "Cta_Gastos" end
,"msrepl_synctran_ts" = case substring(@bitmap,7,1) & 64 when 64 then @c55 else "msrepl_synctran_ts" end
where "CtaMay" = @pkc1 and "SubCta" = @pkc2 and "SSbCta" = @pkc3 and "SSSCta" = @pkc4
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  Table [dbo].[Zonas]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zonas](
	[Codigo] [tinyint] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VwVenCab02]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto: vista dbo.VwVenCab02    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/










CREATE VIEW [dbo].[VwVenCab02]
AS
SELECT dbo.VenCab.Folio, dbo.VenCab.FechaVenta, 
    dbo.VenCab.Status, dbo.VenCab.TipoVenta, 
    dbo.ForPag.Restringe_Factur, dbo.VenCab.SubTotal, 
    dbo.VenCab.Descuento, dbo.VenCab.IVA
FROM dbo.VenCab INNER JOIN
    dbo.CajPag ON 
    dbo.VenCab.Folio = dbo.CajPag.Folio INNER JOIN
    dbo.ForPag ON dbo.CajPag.FormaPago = dbo.ForPag.Codigo
GO
/****** Object:  View [dbo].[VwVenCab01]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto: vista dbo.VwVenCab01    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/

















CREATE VIEW [dbo].[VwVenCab01]
AS
SELECT dbo.VenCab.Folio, dbo.VenCab.FechaVenta, 
    dbo.CatUsuarios.Nombre AS CAJERO, 
    CatUsuarios1.Nombre AS VENDEDOR, 
    dbo.CatClientes.Nombre AS CLIENTE, dbo.VenCab.SubTotal, 
    dbo.VenCab.Descuento, dbo.VenCab.IVA, dbo.VenCab.CoPago, 
    dbo.VenCab.ComisionBan, dbo.VenCab.Redondeo, 
    dbo.VenCab.TipoVenta, dbo.VenCab.Farmacia, 
    dbo.VenCab.CambioEfect, dbo.VenCab.ReferPedido, 
    dbo.VenCab.Status, dbo.VenCab.Empleado, 
    dbo.VenCab.Dependiente, dbo.VenCab.Cliente AS Titular, 
    dbo.VenCab.ImpteSAD, dbo.VenCab.ImpteIVASAD
FROM dbo.VenCab INNER JOIN
    dbo.CatUsuarios ON 
    dbo.VenCab.Cajero = dbo.CatUsuarios.Codigo INNER JOIN
    dbo.CatUsuarios CatUsuarios1 ON 
    dbo.VenCab.Vendedor = CatUsuarios1.Codigo INNER JOIN
    dbo.CatClientes ON 
    dbo.VenCab.Cliente = dbo.CatClientes.Codigo
GO
/****** Object:  View [dbo].[VwListasClientes01]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto: vista dbo.VwListasClientes01    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwListasClientes01]
AS
SELECT dbo.CatClientes.Codigo, 
    dbo.ListasDescuentosDet.CodLista, 
    dbo.ListasDescuentosDet.CodigoInt, 
    dbo.ListasDescuentosDet.PtjDescto
FROM dbo.CatClientes INNER JOIN
    dbo.ListasClientes ON 
    dbo.CatClientes.Codigo = dbo.ListasClientes.Cliente INNER JOIN
    dbo.ListasDescuentosDet ON 
    dbo.ListasClientes.Lista = dbo.ListasDescuentosDet.CodLista
GO
/****** Object:  View [dbo].[VwFarmacia]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto: vista dbo.VwFarmacia    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/

















CREATE VIEW [dbo].[VwFarmacia]
AS
SELECT dbo.CatEmpresas.NomEmpresa, 
    dbo.Farmacias.Nom_Farmacia, dbo.Farmacias.Direccion, 
    dbo.Farmacias.Colonia, dbo.Farmacias.Ciudad, 
    dbo.Farmacias.Estado, dbo.CatEmpresas.RFC, 
    dbo.CatEmpresas.CodEmpresa, dbo.Farmacias.Cod_Farma, 
    RTRIM(dbo.CatEmpresas.DireccionFiscal) 
    + ', ' + RTRIM(dbo.CatEmpresas.Colonia) AS DIRECCIONEMP, 
    RTRIM(dbo.CatEmpresas.Ciudad) 
    + ', ' + RTRIM(dbo.CatEmpresas.Estado) AS CIUEDOEMP, 
    dbo.Config.RutaImagen, dbo.CatEmpresas.RegSSA, 
    dbo.Config.Tipo_Cambio
FROM dbo.CatEmpresas INNER JOIN
    dbo.Farmacias ON 
    dbo.CatEmpresas.CodEmpresa = dbo.Farmacias.CodEmpresa INNER
     JOIN
    dbo.Config ON 
    dbo.Farmacias.Cod_Farma = dbo.Config.Farmacia
GO
/****** Object:  View [dbo].[VwProductosVenta]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwProductosVenta    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/









CREATE VIEW [dbo].[VwProductosVenta]
AS
SELECT dbo.CatProductos.Codigo, dbo.CatProductos.Descripcion, 
    dbo.CatProductos.CodFam1, dbo.CatProductos.CodFam2, 
    dbo.CatProductos.CodFam3, dbo.CatProductos.CodFam4, 
    dbo.CatProductos.Laboratorio, dbo.CatProductos.DeptoVenta, 
    dbo.CatProductos.PtjComiVta, dbo.CatProductos.ImpteComiVta, 
    dbo.CatProductos.PrecioPublico, 
    dbo.CatProductos.PrecioVenta, dbo.CatProductos.TipoProducto, 
    dbo.CatProductos.Descuento, dbo.CatProductos.Seguimiento, 
    dbo.ProductoFarma.UltimoCosto, 
    dbo.ProductoFarma.CostoProm, dbo.ProductoFarma.Farmacia, 
    dbo.ProductoFarma.Existencia, 
    dbo.CodigosRel.CodRelacionado, dbo.CodigosRel.Unidad, 
    dbo.CatDepartamentos.TasaIVA, dbo.CodigosRel.Renglon, 
    dbo.CatProductos.Estatus, dbo.CatProductos.Formulado
FROM dbo.CatProductos INNER JOIN
    dbo.ProductoFarma ON 
    dbo.CatProductos.Codigo = dbo.ProductoFarma.Codigo INNER JOIN
    dbo.CodigosRel ON 
    dbo.CatProductos.Codigo = dbo.CodigosRel.CodigoInt INNER JOIN
    dbo.CatDepartamentos ON 
    dbo.CatProductos.DeptoVenta = dbo.CatDepartamentos.Codigo
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatClientes]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatClientes] 
 @c1 int,@c2 smalldatetime,@c3 varchar(80),@c4 char(15),@c5 char(60),@c6 char(50),@c7 char(60),@c8 char(12),@c9 varchar(25),@c10 money,@c11 smallint,@c12 char(60),@c13 char(60),@c14 char(10),@c15 char(10),@c16 tinyint,@c17 tinyint,@c18 smallmoney,@c19 char(4),@c20 char(4),@c21 char(4),@c22 char(4),@c23 char(16),@c24 bit,@c25 bit,@c26 bit,@c27 smallmoney,@c28 smallmoney,@c29 bit,@c30 bit,@c31 bit,@c32 char(150),@c33 bit,@c34 char(1),@c35 bit,@c36 smallint,@c37 smallint,@c38 smallint,@c39 smallint,@c40 smallint,@c41 char(30),@c42 char(30),@c43 char(30),@c44 char(30),@c45 char(30),@c46 char(30),@c47 char(30),@c48 char(30),@c49 char(30),@c50 char(30),@c51 char(30),@c52 char(30),@c53 char(30),@c54 char(30),@c55 char(30),@c56 tinyint,@c57 money,@c58 money,@c59 money,@c60 datetime,@c61 bit,@c62 char(20),@c63 bit,@c64 bit,@c65 char(1),@c66 uniqueidentifier,@c67 int,@c68 varchar(50),@c69 varchar(50),@c70 varchar(50),@c71 datetime,@c72 datetime,@c73 money,@pkc1 int
,@bitmap binary(10)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatClientes" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Fecha" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Fecha" end
,"Nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Nombre" end
,"Rfc" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Rfc" end
,"Direccion" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Direccion" end
,"Colonia" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Colonia" end
,"Ciud_Edo" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Ciud_Edo" end
,"CP" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CP" end
,"Telefono" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Telefono" end
,"ImpLimCre" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "ImpLimCre" end
,"DiasLimCre" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "DiasLimCre" end
,"ConCompras" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "ConCompras" end
,"ConPagos" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "ConPagos" end
,"DiaRev" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "DiaRev" end
,"DiaPag" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "DiaPag" end
,"TipoFac" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "TipoFac" end
,"TipoLis" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "TipoLis" end
,"DescGlobal" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "DescGlobal" end
,"CtaMay" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "CtaMay" end
,"SubCta" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "SubCta" end
,"SSbCta" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "SSbCta" end
,"SSSCta" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "SSSCta" end
,"CtaConCli" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CtaConCli" end
,"Suspendido" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "Suspendido" end
,"LimCred" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "LimCred" end
,"PerCopago" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "PerCopago" end
,"PorcCopago" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "PorcCopago" end
,"ImpCopago" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "ImpCopago" end
,"RegCtes" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "RegCtes" end
,"PerSubCtes" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "PerSubCtes" end
,"ResProd" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "ResProd" end
,"Observaciones" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Observaciones" end
,"TipoPre" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "TipoPre" end
,"TipoCli" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "TipoCli" end
,"PerVales" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "PerVales" end
,"ConceEmp" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "ConceEmp" end
,"Corte1" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "Corte1" end
,"Corte2" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "Corte2" end
,"Corte3" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "Corte3" end
,"Corte4" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "Corte4" end
,"Etiqueta1" = case substring(@bitmap,6,1) & 1 when 1 then @c41 else "Etiqueta1" end
,"Etiqueta2" = case substring(@bitmap,6,1) & 2 when 2 then @c42 else "Etiqueta2" end
,"Etiqueta3" = case substring(@bitmap,6,1) & 4 when 4 then @c43 else "Etiqueta3" end
,"Etiqueta4" = case substring(@bitmap,6,1) & 8 when 8 then @c44 else "Etiqueta4" end
,"Etiqueta5" = case substring(@bitmap,6,1) & 16 when 16 then @c45 else "Etiqueta5" end
,"Etiqueta6" = case substring(@bitmap,6,1) & 32 when 32 then @c46 else "Etiqueta6" end
,"Etiqueta7" = case substring(@bitmap,6,1) & 64 when 64 then @c47 else "Etiqueta7" end
,"Etiqueta8" = case substring(@bitmap,6,1) & 128 when 128 then @c48 else "Etiqueta8" end
,"Etiqueta9" = case substring(@bitmap,7,1) & 1 when 1 then @c49 else "Etiqueta9" end
,"Etiqueta10" = case substring(@bitmap,7,1) & 2 when 2 then @c50 else "Etiqueta10" end
,"Etiqueta11" = case substring(@bitmap,7,1) & 4 when 4 then @c51 else "Etiqueta11" end
,"Etiqueta12" = case substring(@bitmap,7,1) & 8 when 8 then @c52 else "Etiqueta12" end
,"Etiqueta13" = case substring(@bitmap,7,1) & 16 when 16 then @c53 else "Etiqueta13" end
,"Etiqueta14" = case substring(@bitmap,7,1) & 32 when 32 then @c54 else "Etiqueta14" end
,"Etiqueta15" = case substring(@bitmap,7,1) & 64 when 64 then @c55 else "Etiqueta15" end
,"Doctores" = case substring(@bitmap,7,1) & 128 when 128 then @c56 else "Doctores" end
,"Saldo" = case substring(@bitmap,8,1) & 1 when 1 then @c57 else "Saldo" end
,"VentasAcum" = case substring(@bitmap,8,1) & 2 when 2 then @c58 else "VentasAcum" end
,"VentasAnteriores" = case substring(@bitmap,8,1) & 4 when 4 then @c59 else "VentasAnteriores" end
,"FechaUltVta" = case substring(@bitmap,8,1) & 8 when 8 then @c60 else "FechaUltVta" end
,"LeerTarjeta" = case substring(@bitmap,8,1) & 16 when 16 then @c61 else "LeerTarjeta" end
,"CodigoTarjeta" = case substring(@bitmap,8,1) & 32 when 32 then @c62 else "CodigoTarjeta" end
,"SepararIva" = case substring(@bitmap,8,1) & 64 when 64 then @c63 else "SepararIva" end
,"SinUtilidad" = case substring(@bitmap,8,1) & 128 when 128 then @c64 else "SinUtilidad" end
,"Status" = case substring(@bitmap,9,1) & 1 when 1 then @c65 else "Status" end
,"rowguid" = case substring(@bitmap,9,1) & 2 when 2 then @c66 else "rowguid" end
,"CodTipoCLiente" = case substring(@bitmap,9,1) & 4 when 4 then @c67 else "CodTipoCLiente" end
,"TipoNomina" = case substring(@bitmap,9,1) & 8 when 8 then @c68 else "TipoNomina" end
,"Departamento" = case substring(@bitmap,9,1) & 16 when 16 then @c69 else "Departamento" end
,"Ficha" = case substring(@bitmap,9,1) & 32 when 32 then @c70 else "Ficha" end
,"LimitePeriodoInicial" = case substring(@bitmap,9,1) & 64 when 64 then @c71 else "LimitePeriodoInicial" end
,"LimitePeriodoFinal" = case substring(@bitmap,9,1) & 128 when 128 then @c72 else "LimitePeriodoFinal" end
,"AcumuladoVentas" = case substring(@bitmap,10,1) & 1 when 1 then @c73 else "AcumuladoVentas" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatClientes" set
"Fecha" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Fecha" end
,"Nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Nombre" end
,"Rfc" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Rfc" end
,"Direccion" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Direccion" end
,"Colonia" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Colonia" end
,"Ciud_Edo" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Ciud_Edo" end
,"CP" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CP" end
,"Telefono" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Telefono" end
,"ImpLimCre" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "ImpLimCre" end
,"DiasLimCre" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "DiasLimCre" end
,"ConCompras" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "ConCompras" end
,"ConPagos" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "ConPagos" end
,"DiaRev" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "DiaRev" end
,"DiaPag" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "DiaPag" end
,"TipoFac" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "TipoFac" end
,"TipoLis" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "TipoLis" end
,"DescGlobal" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "DescGlobal" end
,"CtaMay" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "CtaMay" end
,"SubCta" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "SubCta" end
,"SSbCta" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "SSbCta" end
,"SSSCta" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "SSSCta" end
,"CtaConCli" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CtaConCli" end
,"Suspendido" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "Suspendido" end
,"LimCred" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "LimCred" end
,"PerCopago" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "PerCopago" end
,"PorcCopago" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "PorcCopago" end
,"ImpCopago" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "ImpCopago" end
,"RegCtes" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "RegCtes" end
,"PerSubCtes" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "PerSubCtes" end
,"ResProd" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "ResProd" end
,"Observaciones" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Observaciones" end
,"TipoPre" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "TipoPre" end
,"TipoCli" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "TipoCli" end
,"PerVales" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "PerVales" end
,"ConceEmp" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "ConceEmp" end
,"Corte1" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "Corte1" end
,"Corte2" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "Corte2" end
,"Corte3" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "Corte3" end
,"Corte4" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "Corte4" end
,"Etiqueta1" = case substring(@bitmap,6,1) & 1 when 1 then @c41 else "Etiqueta1" end
,"Etiqueta2" = case substring(@bitmap,6,1) & 2 when 2 then @c42 else "Etiqueta2" end
,"Etiqueta3" = case substring(@bitmap,6,1) & 4 when 4 then @c43 else "Etiqueta3" end
,"Etiqueta4" = case substring(@bitmap,6,1) & 8 when 8 then @c44 else "Etiqueta4" end
,"Etiqueta5" = case substring(@bitmap,6,1) & 16 when 16 then @c45 else "Etiqueta5" end
,"Etiqueta6" = case substring(@bitmap,6,1) & 32 when 32 then @c46 else "Etiqueta6" end
,"Etiqueta7" = case substring(@bitmap,6,1) & 64 when 64 then @c47 else "Etiqueta7" end
,"Etiqueta8" = case substring(@bitmap,6,1) & 128 when 128 then @c48 else "Etiqueta8" end
,"Etiqueta9" = case substring(@bitmap,7,1) & 1 when 1 then @c49 else "Etiqueta9" end
,"Etiqueta10" = case substring(@bitmap,7,1) & 2 when 2 then @c50 else "Etiqueta10" end
,"Etiqueta11" = case substring(@bitmap,7,1) & 4 when 4 then @c51 else "Etiqueta11" end
,"Etiqueta12" = case substring(@bitmap,7,1) & 8 when 8 then @c52 else "Etiqueta12" end
,"Etiqueta13" = case substring(@bitmap,7,1) & 16 when 16 then @c53 else "Etiqueta13" end
,"Etiqueta14" = case substring(@bitmap,7,1) & 32 when 32 then @c54 else "Etiqueta14" end
,"Etiqueta15" = case substring(@bitmap,7,1) & 64 when 64 then @c55 else "Etiqueta15" end
,"Doctores" = case substring(@bitmap,7,1) & 128 when 128 then @c56 else "Doctores" end
,"Saldo" = case substring(@bitmap,8,1) & 1 when 1 then @c57 else "Saldo" end
,"VentasAcum" = case substring(@bitmap,8,1) & 2 when 2 then @c58 else "VentasAcum" end
,"VentasAnteriores" = case substring(@bitmap,8,1) & 4 when 4 then @c59 else "VentasAnteriores" end
,"FechaUltVta" = case substring(@bitmap,8,1) & 8 when 8 then @c60 else "FechaUltVta" end
,"LeerTarjeta" = case substring(@bitmap,8,1) & 16 when 16 then @c61 else "LeerTarjeta" end
,"CodigoTarjeta" = case substring(@bitmap,8,1) & 32 when 32 then @c62 else "CodigoTarjeta" end
,"SepararIva" = case substring(@bitmap,8,1) & 64 when 64 then @c63 else "SepararIva" end
,"SinUtilidad" = case substring(@bitmap,8,1) & 128 when 128 then @c64 else "SinUtilidad" end
,"Status" = case substring(@bitmap,9,1) & 1 when 1 then @c65 else "Status" end
,"rowguid" = case substring(@bitmap,9,1) & 2 when 2 then @c66 else "rowguid" end
,"CodTipoCLiente" = case substring(@bitmap,9,1) & 4 when 4 then @c67 else "CodTipoCLiente" end
,"TipoNomina" = case substring(@bitmap,9,1) & 8 when 8 then @c68 else "TipoNomina" end
,"Departamento" = case substring(@bitmap,9,1) & 16 when 16 then @c69 else "Departamento" end
,"Ficha" = case substring(@bitmap,9,1) & 32 when 32 then @c70 else "Ficha" end
,"LimitePeriodoInicial" = case substring(@bitmap,9,1) & 64 when 64 then @c71 else "LimitePeriodoInicial" end
,"LimitePeriodoFinal" = case substring(@bitmap,9,1) & 128 when 128 then @c72 else "LimitePeriodoFinal" end
,"AcumuladoVentas" = case substring(@bitmap,10,1) & 1 when 1 then @c73 else "AcumuladoVentas" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatClasificaciones]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatClasificaciones] 
 @c1 char(3),@c2 char(3),@c3 varchar(40),@c4 char(150),@c5 char(150),@pkc1 char(3),@pkc2 char(3)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2
begin
update "CatClasificaciones" set
"Codigo1" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo1" end
,"Codigo2" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Codigo2" end
,"Descripcion" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Descripcion" end
,"MensajeEnt" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "MensajeEnt" end
,"MensajeSal" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "MensajeSal" end
where "Codigo1" = @pkc1 and "Codigo2" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatClasificaciones" set
"Descripcion" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Descripcion" end
,"MensajeEnt" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "MensajeEnt" end
,"MensajeSal" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "MensajeSal" end
where "Codigo1" = @pkc1 and "Codigo2" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatCentrosCostos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatCentrosCostos] 
 @c1 smallint,@c2 varchar(40),@pkc1 smallint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatCentrosCostos" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatCentrosCostos" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_AltaProductos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_AltaProductos    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSupd_AltaProductos] 
 @c1 smallint,@c2 int,@c3 money,@pkc1 smallint,@pkc2 int
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2
begin
update "AltaProductos" set
"Sucursal" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Sucursal" end
,"Producto" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Producto" end
,"CantidadPedida" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CantidadPedida" end
where "Sucursal" = @pkc1 and "Producto" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "AltaProductos" set
"CantidadPedida" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CantidadPedida" end
where "Sucursal" = @pkc1 and "Producto" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_Accesos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_Accesos] 
 @c1 int,@c2 varchar(25),@pkc1 int,@pkc2 varchar(25)
,@bitmap binary(1)
as
begin
update "Accesos" set
"CodUsuario" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodUsuario" end
,"Forma" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Forma" end
where "CodUsuario" = @pkc1 and "Forma" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_Zonas]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_Zonas] @c1 tinyint,@c2 varchar(50)

AS
BEGIN


insert into "Zonas"( 
"Codigo", "Descripcion"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_TipoMovtos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_TipoMovtos] @c1 int,@c2 varchar(40),@c3 char(1),@c4 char(1),@c5 char(1),@c6 bit,@c7 bit,@c8 bit,@c9 bit,@c10 bit,@c11 bit

AS
BEGIN


insert into "TipoMovtos"( 
"Cve_Movto", "Descripcion_Movto", "TipoMovto", "Status_Movto", "Entrada_Con_Costo", "Modificable", "Selecciona", "Cancela", "NotaCredito", "Fijo", "Contabilizable"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_tipoempleado]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_tipoempleado] @c1 numeric(18,0),@c2 char(25),@c3 char(50),@c4 uniqueidentifier

AS
BEGIN


insert into "tipoempleado"( 
"idtipoempleado", "tipo", "descripcion", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_SurtidoPedidosDet]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_SurtidoPedidosDet] @c1 tinyint,@c2 tinyint,@c3 char(11),@c4 char(11),@c5 int,@c6 char(16),@c7 smallint,@c8 money,@c9 money,@c10 char(11),@c11 datetime,@c12 smallmoney,@c13 uniqueidentifier

AS
BEGIN


insert into "SurtidoPedidosDet"( 
"Sucursal", "Almacen", "FolioPedido", "FolioSurtido", "CodigoInt", "CodigoEAN", "NumBulto", "CantSurtida", "CantRecibida", "EstatusSurt", "Fecha", "CostoUnit", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_sucursales]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_sucursales] @c1 numeric(18,0),@c2 char(25),@c3 uniqueidentifier

AS
BEGIN


insert into "sucursales"( 
"idsucursal", "sucursal", "rowguid"
 )

values ( 
@c1, @c2, @c3
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_SubClientes]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_SubClientes] @c1 int,@c2 int,@c3 varchar(50),@c4 char(30),@c5 int,@c6 varchar(50),@c7 char(20),@c8 tinyint,@c9 bit,@c10 money

AS
BEGIN


insert into "SubClientes"( 
"Cliente", "Empleado", "Nombre", "Nomina", "NumDep", "NombreDep", "Parentesco", "ConceDep", "ImpCredito", "Saldo"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_Proveedores]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_Proveedores] @c1 int,@c2 varchar(80),@c3 char(50),@c4 char(20),@c5 char(20),@c6 char(15),@c7 tinyint,@c8 char(50),@c9 char(50),@c10 money,@c11 char(40),@c12 char(20),@c13 smalldatetime,@c14 smallmoney,@c15 smalldatetime,@c16 char(20),@c17 char(25),@c18 money,@c19 char(2),@c20 char(16),@c21 char(16),@c22 char(16),@c23 char(16),@c24 bit,@c25 smalldatetime,@c26 money,@c27 char(2),@c28 tinyint,@c29 bit,@c30 bit,@c31 bit,@c32 smallmoney,@c33 varchar(80),@c34 char(1),@c35 bit

AS
BEGIN


insert into "Proveedores"( 
"Codigo", "Proveedor", "Domicilio", "Ciudad", "Colonia", "RFC", "TipoProveedor", "ContCompras", "ContPagos", "CompAnuales", "RutaFactLayout", "PrefijoFacturas", "FechaUltCompra", "SalActual", "FechaUltPago", "Estado", "Telefono", "DesctoFinan", "DiasCredito", "CtaContable", "CtaAnticipo", "CtaGastos", "CtaInversion", "CapGasInv", "FechaAlta", "Surtimiento", "Prioridad", "Cve_Gasto", "PagChecSuc", "Factura", "Remision", "PorcentajeNotasCredito", "RazonSocial", "Status", "OmitirArchivoPagos"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34, @c35
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_PromocXFarma]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_PromocXFarma] @c1 int,@c2 tinyint,@c3 char(1),@c4 smallmoney,@c5 datetime,@c6 datetime

AS
BEGIN


insert into "PromocXFarma"( 
"CodigoInt", "Farmacia", "Tipo", "PtjPromocion", "FecInicio", "FecFin"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ProductoFarma]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ProductoFarma] @c1 tinyint,@c2 int,@c3 money,@c4 money,@c5 smalldatetime,@c6 smalldatetime,@c7 money,@c8 int,@c9 int,@c10 money,@c11 money,@c12 money,@c13 money,@c14 smalldatetime,@c15 char(10),@c16 int,@c17 money,@c18 money,@c19 money,@c20 money,@c21 money,@c22 money,@c23 bit,@c24 smallint,@c25 bit,@c26 char(10)

AS
BEGIN


insert into "ProductoFarmaR"( 
"Farmacia", "Codigo", "UltimoCosto", "CostoProm", "FecUltCompra", "FecUltiVenta", "Existencia", "OrdenInvSelectivo", "OrdenInvTotal", "ExistFisicaSelect", "ExistFisicaTot", "CostoInventarioIni", "Existencia_Ini", "Fecha_Inv_Ini", "Localizacion", "Proveedor", "Maximo", "Minimo", "PtoReorden", "InvOptimo", "Cant_Pedida", "Congelado", "CapturaAbortada", "Intentos", "No_Pedir", "CodSal"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_PresupuestoVta]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_PresupuestoVta] @c1 smallint,@c2 money,@c3 money,@c4 money,@c5 money,@c6 money,@c7 money,@c8 money,@c9 money,@c10 money,@c11 money,@c12 money,@c13 money

AS
BEGIN


insert into "PresupuestoVta"( 
"Sucursal", "Presp_01", "Presp_02", "Presp_03", "Presp_04", "Presp_05", "Presp_06", "Presp_07", "Presp_08", "Presp_09", "Presp_10", "Presp_11", "Presp_12"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_PrecConOfer]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_PrecConOfer    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/






create procedure [dbo].[sp_MSins_PrecConOfer] @c1 smalldatetime,@c2 char(13),@c3 int,@c4 tinyint,@c5 smallmoney,@c6 smallmoney,@c7 smallmoney,@c8 smallmoney,@c9 smallmoney,@c10 smallmoney,@c11 smallmoney,@c12 smallmoney,@c13 smallmoney,@c14 smallmoney,@c15 int
as
insert into "PrecConOfer" values ( @c1,@c2,@c3,@c4,@c5,@c6,@c7,@c8,@c9,@c10,@c11,@c12,@c13,@c14,@c15 )
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_pais]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_pais] @c1 numeric(18,0),@c2 char(50),@c3 uniqueidentifier

AS
BEGIN


insert into "pais"( 
"idpais", "pais", "rowguid"
 )

values ( 
@c1, @c2, @c3
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ListasDescuentosDet]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ListasDescuentosDet] @c1 int,@c2 int,@c3 smallmoney,@c4 bit

AS
BEGIN


insert into "ListasDescuentosDet"( 
"CodLista", "CodigoInt", "PtjDescto", "VenderSinUtil"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ListasDescuentosCab]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_ListasDescuentosCab    fecha de la secuencia de comandos: 11/03/2005 12:11:21 a.m. ******/



create procedure [dbo].[sp_MSins_ListasDescuentosCab] @c1 int,@c2 varchar(80),@c3 binary(8)

AS
BEGIN


insert into "ListasDescuentosCab"( 
"Codigo", "Descripcion", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ListasClientes]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ListasClientes] @c1 int,@c2 int

AS
BEGIN


insert into "ListasClientes"( 
"Lista", "Cliente"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_huellas]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_huellas] @c1 numeric(18,0),@c2 image,@c3 numeric(18,0),@c4 uniqueidentifier

AS
BEGIN


insert into "huellas"( 
"idhuella", "imagen", "idempleado", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ForPag]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ForPag] @c1 int,@c2 varchar(30),@c3 char(1),@c4 bit,@c5 bit,@c6 bit,@c7 bit,@c8 smallmoney,@c9 smallmoney,@c10 bit,@c11 bit,@c12 bit,@c13 smallmoney,@c14 bit,@c15 bit

AS
BEGIN


insert into "ForPag"( 
"Codigo", "Descripcion", "Tecla_Rap", "Abre_Cajon", "Dolar", "Req_Docto", "Req_Autor", "Com_Bancar", "Tipo_Cambio", "Restringe_Factur", "Restringe_Cambio", "Descto_Comision", "IVAComision", "PagoSAD", "DesgloceMonedas"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_FarmaXProd]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_FarmaXProd] @c1 int,@c2 tinyint

AS
BEGIN


insert into "FarmaXProd"( 
"CodigoInt", "Farmacia"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_Farmacias]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_Farmacias] @c1 tinyint,@c2 bit,@c3 tinyint,@c4 char(4),@c5 varchar(60),@c6 char(70),@c7 char(40),@c8 char(8),@c9 char(40),@c10 char(40),@c11 char(40),@c12 char(70),@c13 smallint,@c14 int,@c15 bit,@c16 char(4),@c17 char(4),@c18 char(4),@c19 char(4),@c20 char(4),@c21 char(4),@c22 char(4),@c23 char(4)

AS
BEGIN


insert into "Farmacias"( 
"Cod_Farma", "Almacen", "Zona", "CodEmpresa", "Nom_Farmacia", "Direccion", "Colonia", "CP", "Ciudad", "Estado", "Telefono", "Encargado", "Centro_Costo", "Usuario", "Disponible", "CtaMayVtasContado", "SubCVtasContado", "SSbCVtasContado", "SssVtasContado", "CtaMayCtesxFact", "SubCCtesxFact", "SsbCCtesxFact", "SssCCtesxFact"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_FactElect]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_FactElect] @c1 smalldatetime,@c2 int,@c3 int,@c4 char(12),@c5 smalldatetime,@c6 int,@c7 char(16),@c8 int,@c9 int,@c10 int,@c11 money,@c12 money,@c13 money,@c14 money

AS
BEGIN


insert into "FactElect"( 
"Fecha", "Proveedor", "Sucursal", "Folio_Fact", "Fecha_Fact", "Codigo_Int", "Codigo_Rel", "Renglon", "Cantidad_ConCargo", "Cantidad_SinCargo", "PFarmacia", "TasaIva", "PorDesctoOferta", "PorDesctoFinanciero"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_estado]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_estado] @c1 numeric(18,0),@c2 char(50),@c3 numeric(18,0),@c4 uniqueidentifier

AS
BEGIN


insert into "estado"( 
"idestado", "estado", "idpais", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_empleados]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_empleados] @c1 numeric(18,0),@c2 char(50),@c3 char(50),@c4 char(50),@c5 char(50),@c6 char(50),@c7 char(50),@c8 numeric(18,0),@c9 char(25),@c10 char(25),@c11 numeric(18,0),@c12 char(250),@c13 numeric(18,0),@c14 datetime,@c15 char(15),@c16 numeric(18,0),@c17 char(16),@c18 float,@c19 datetime,@c20 numeric(18,0),@c21 uniqueidentifier

AS
BEGIN


insert into "empleados"( 
"idempleado", "clave", "nombre", "apellido_p", "apellido_m", "direccion", "colonia", "cp", "rfc", "curp", "idciudad", "path_foto", "idtipoempleado", "fecharegistro", "nosegurosocial", "nocontrolinterno", "telefono", "salario", "fecharegistroimss", "idsucursal", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_Doctores]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_Doctores] @c1 smallint,@c2 varchar(50),@c3 varchar(50),@c4 varchar(50),@c5 char(40),@c6 char(30),@c7 char(5),@c8 char(15),@c9 smallint,@c10 char(25),@c11 char(25),@c12 char(30),@c13 char(15),@c14 datetime,@c15 char(30)

AS
BEGIN


insert into "Doctores"( 
"Codigo", "Nombre", "A_Paterno", "A_Materno", "Direccion", "Colonia", "CP", "Telefono", "Especialidad", "Registro", "Cedula", "CorreoElec", "Biper", "FechaNac", "Ciudad"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_DesctosXFarma]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_DesctosXFarma] @c1 int,@c2 tinyint,@c3 char(1),@c4 smallmoney

AS
BEGIN


insert into "DesctosXFarma"( 
"CodigoInt", "Farmacia", "Tipo", "PtjDescto"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_DesctosCodigos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_DesctosCodigos] @c1 char(13),@c2 int,@c3 smallmoney,@c4 bit,@c5 datetime,@c6 datetime,@c7 char(4),@c8 char(4),@c9 char(4),@c10 char(4),@c11 int,@c12 uniqueidentifier

AS
BEGIN


insert into "DesctosCodigos"( 
"CodigoRel", "CodigoInt", "PtjDescto", "Permanente", "FechaIni", "FechaFin", "CodFam1", "CodFam2", "CodFam3", "CodFam4", "CodLab", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_DesctosClientes]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_DesctosClientes] @c1 int,@c2 int,@c3 char(4),@c4 char(4),@c5 char(4),@c6 char(4),@c7 int,@c8 smallmoney,@c9 bit,@c10 char(1)

AS
BEGIN


insert into "DesctosClientes"( 
"Cliente", "Codigo", "Familia1", "Familia2", "Familia3", "Familia4", "Laboratorio", "Descto", "Prod_Credito", "Tipo"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ConGastos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_ConGastos    fecha de la secuencia de comandos: 11/03/2005 12:11:21 a.m. ******/



create procedure [dbo].[sp_MSins_ConGastos] @c1 tinyint,@c2 varchar(40),@c3 char(1),@c4 char(16),@c5 binary(8)

AS
BEGIN


insert into "ConGastos"( 
"CodCon", "Concepto", "Afecta", "CtaCont", "msrepl_synctran_ts"
 )

values ( 
@c1, @c2, @c3, @c4, @c5
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ConfiguraBO]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ConfiguraBO] @c1 smallint,@c2 smallmoney,@c3 char(80),@c4 char(1),@c5 char(5),@c6 smallmoney,@c7 char(30),@c8 char(30),@c9 char(30),@c10 char(1),@c11 smallint,@c12 char(60),@c13 char(60),@c14 char(60),@c15 smallint,@c16 smallint,@c17 smallint,@c18 smallint,@c19 smallint,@c20 smallint,@c21 char(1),@c22 tinyint,@c23 tinyint,@c24 tinyint,@c25 tinyint,@c26 tinyint,@c27 tinyint,@c28 bit,@c29 char(10)

AS
BEGIN


insert into "ConfiguraBO"( 
"Clave", "PtjUtiMin", "RutaImagen", "Surt_Prior", "TiempoPassword", "PtjSelDescto", "ValesDev1", "ValesDev2", "ValesDev3", "VentasNetas", "DiasPassword", "Promocion1", "Promocion2", "Promocion3", "P1_Inicial", "P1_Final", "P2_Inicial", "P2_Final", "P3_Inicial", "P3_Final", "Prefijo", "CodProdIni", "CodProdFin", "GramosIni", "GramosFin", "CantProv", "VecesSurtido", "CompraDirecta", "ruta_fondo"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ConfigEtiqCenefas_2]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ConfigEtiqCenefas_2] @c1 char(1),@c2 smallint

AS
BEGIN


insert into "ConfigEtiqCenefas_2"( 
"Tipo", "Linea"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ConfigEtiqCenefas]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ConfigEtiqCenefas] @c1 char(1),@c2 smallint,@c3 smallint,@c4 smallint,@c5 smallint,@c6 char(50),@c7 smallint,@c8 smallint,@c9 smallint,@c10 smallint,@c11 char(50),@c12 smallint,@c13 smallint,@c14 smallint,@c15 smallint,@c16 char(50),@c17 smallint,@c18 smallint,@c19 smallint,@c20 smallint,@c21 char(50),@c22 smallint,@c23 smallint,@c24 smallint,@c25 char(50),@c26 smallint,@c27 smallint,@c28 smallint,@c29 char(50),@c30 smallint,@c31 smallint,@c32 smallint,@c33 char(50),@c34 smallint,@c35 smallint,@c36 smallint,@c37 char(50),@c38 smallint,@c39 smallmoney,@c40 smallint

AS
BEGIN


insert into "ConfigEtiqCenefas"( 
"Tipo", "Altura", "CodigoEANX", "CodigoEANY", "CodigoEANC", "CodigoEANTL", "CodigoEANT", "CodigoIntX", "CodigoIntY", "CodigoIntC", "CodigoIntTL", "CodigoIntT", "DescripcionX", "DescripcionY", "DescripcionC", "DescripcionTL", "DescripcionT", "FamiliaX", "FamiliaY", "FamiliaC", "FamiliaTL", "FamiliaT", "PPX", "PPY", "PPTL", "PPT", "PVX", "PVY", "PVTL", "PVT", "DesctoX", "DesctoY", "DesctoTL", "DesctoT", "PNX", "PNY", "PNTL", "PNT", "Separacion", "AlPaso"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34, @c35, @c36, @c37, @c38, @c39, @c40
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatClientes]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatClientes] @c1 int,@c2 smalldatetime,@c3 varchar(80),@c4 char(15),@c5 char(60),@c6 char(50),@c7 char(60),@c8 char(12),@c9 varchar(25),@c10 money,@c11 smallint,@c12 char(60),@c13 char(60),@c14 char(10),@c15 char(10),@c16 tinyint,@c17 tinyint,@c18 smallmoney,@c19 char(4),@c20 char(4),@c21 char(4),@c22 char(4),@c23 char(16),@c24 bit,@c25 bit,@c26 bit,@c27 smallmoney,@c28 smallmoney,@c29 bit,@c30 bit,@c31 bit,@c32 char(150),@c33 bit,@c34 char(1),@c35 bit,@c36 smallint,@c37 smallint,@c38 smallint,@c39 smallint,@c40 smallint,@c41 char(30),@c42 char(30),@c43 char(30),@c44 char(30),@c45 char(30),@c46 char(30),@c47 char(30),@c48 char(30),@c49 char(30),@c50 char(30),@c51 char(30),@c52 char(30),@c53 char(30),@c54 char(30),@c55 char(30),@c56 tinyint,@c57 money,@c58 money,@c59 money,@c60 datetime,@c61 bit,@c62 char(20),@c63 bit,@c64 bit,@c65 char(1),@c66 uniqueidentifier,@c67 int,@c68 varchar(50),@c69 varchar(50),@c70 varchar(50),@c71 datetime,@c72 datetime,@c73 money

AS
BEGIN


insert into "CatClientes"( 
"Codigo", "Fecha", "Nombre", "Rfc", "Direccion", "Colonia", "Ciud_Edo", "CP", "Telefono", "ImpLimCre", "DiasLimCre", "ConCompras", "ConPagos", "DiaRev", "DiaPag", "TipoFac", "TipoLis", "DescGlobal", "CtaMay", "SubCta", "SSbCta", "SSSCta", "CtaConCli", "Suspendido", "LimCred", "PerCopago", "PorcCopago", "ImpCopago", "RegCtes", "PerSubCtes", "ResProd", "Observaciones", "TipoPre", "TipoCli", "PerVales", "ConceEmp", "Corte1", "Corte2", "Corte3", "Corte4", "Etiqueta1", "Etiqueta2", "Etiqueta3", "Etiqueta4", "Etiqueta5", "Etiqueta6", "Etiqueta7", "Etiqueta8", "Etiqueta9", "Etiqueta10", "Etiqueta11", "Etiqueta12", "Etiqueta13", "Etiqueta14", "Etiqueta15", "Doctores", "Saldo", "VentasAcum", "VentasAnteriores", "FechaUltVta", "LeerTarjeta", "CodigoTarjeta", "SepararIva", "SinUtilidad", "Status", "rowguid", "CodTipoCLiente", "TipoNomina", "Departamento", "Ficha", "LimitePeriodoInicial", "LimitePeriodoFinal", "AcumuladoVentas"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34, @c35, @c36, @c37, @c38, @c39, @c40, @c41, @c42, @c43, @c44, @c45, @c46, @c47, @c48, @c49, @c50, @c51, @c52, @c53, @c54, @c55, @c56, @c57, @c58, @c59, @c60, @c61, @c62, @c63, @c64, @c65, @c66, @c67, @c68, @c69, @c70, @c71, @c72, @c73
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatClasificaciones]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatClasificaciones] @c1 char(3),@c2 char(3),@c3 varchar(40),@c4 char(150),@c5 char(150)

AS
BEGIN


insert into "CatClasificaciones"( 
"Codigo1", "Codigo2", "Descripcion", "MensajeEnt", "MensajeSal"
 )

values ( 
@c1, @c2, @c3, @c4, @c5
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatCentrosCostos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatCentrosCostos] @c1 smallint,@c2 varchar(40)

AS
BEGIN


insert into "CatCentrosCostos"( 
"Codigo", "Descripcion"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_AltaProductos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_AltaProductos    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSins_AltaProductos] @c1 smallint,@c2 int,@c3 money

AS
BEGIN


insert into "AltaProductos"( 
"Sucursal", "Producto", "CantidadPedida"
 )

values ( 
@c1, @c2, @c3
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_Accesos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_Accesos] @c1 int,@c2 varchar(25)

AS
BEGIN


insert into "Accesos"( 
"CodUsuario", "Forma"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_Zonas]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_Zonas] @pkc1 tinyint
as
delete "Zonas"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_TipoMovtos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_TipoMovtos] @pkc1 int
as
delete "TipoMovtos"
where "Cve_Movto" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_tipoempleado]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_tipoempleado] @pkc1 numeric(18,0)
as
delete "tipoempleado"
where "idtipoempleado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_SurtidoPedidosDet]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_SurtidoPedidosDet] @pkc1 tinyint,@pkc2 tinyint,@pkc3 char(11),@pkc4 char(11),@pkc5 int,@pkc6 char(16),@pkc7 smallint
as
delete "SurtidoPedidosDet"
where "Sucursal" = @pkc1 and "Almacen" = @pkc2 and "FolioPedido" = @pkc3 and "FolioSurtido" = @pkc4 and "CodigoInt" = @pkc5 and "CodigoEAN" = @pkc6 and "NumBulto" = @pkc7
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_sucursales]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_sucursales] @pkc1 numeric(18,0)
as
delete "sucursales"
where "idsucursal" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_SubClientes]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_SubClientes] @pkc1 int,@pkc2 int,@pkc3 varchar(50),@pkc4 varchar(50),@pkc5 char(20)
as
delete "SubClientes"
where "Cliente" = @pkc1 and "Empleado" = @pkc2 and "Nombre" = @pkc3 and "NombreDep" = @pkc4 and "Parentesco" = @pkc5
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_Proveedores]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_Proveedores] @pkc1 int
as
delete "Proveedores"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_PromocXFarma]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_PromocXFarma] @pkc1 int,@pkc2 tinyint,@pkc3 char(1)
as
delete "PromocXFarma"
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2 and "Tipo" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ProductoFarma]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ProductoFarma] @pkc1 tinyint,@pkc2 int
as
delete "ProductoFarmaR"
where "Farmacia" = @pkc1 and "Codigo" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_PresupuestoVta]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_PresupuestoVta] @pkc1 smallint
as
delete "PresupuestoVta"
where "Sucursal" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_PrecSinOfer]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_PrecSinOfer    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/






create procedure [dbo].[sp_MSdel_PrecSinOfer] @pkc1 smalldatetime,@pkc2 int,@pkc3 char(13),@pkc4 int
as
delete "PrecSinOfer"
where "Fecha" = @pkc1 and "CodProv" = @pkc2 and "CodEAN" = @pkc3 and "CodigoInt" = @pkc4
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_pais]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_pais] @pkc1 numeric(18,0)
as
delete "pais"
where "idpais" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ListasDescuentosDet]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ListasDescuentosDet] @pkc1 int,@pkc2 int
as
delete "ListasDescuentosDet"
where "CodLista" = @pkc1 and "CodigoInt" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ListasDescuentosCab]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_ListasDescuentosCab    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSdel_ListasDescuentosCab] @pkc1 int
as
delete "ListasDescuentosCab"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ListasClientes]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ListasClientes] @pkc1 int,@pkc2 int
as
delete "ListasClientes"
where "Lista" = @pkc1 and "Cliente" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_huellas]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_huellas] @pkc1 numeric(18,0)
as
delete "huellas"
where "idhuella" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ForPag]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ForPag] @pkc1 int
as
delete "ForPag"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_FarmaXProd]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_FarmaXProd] @pkc1 int,@pkc2 tinyint
as
delete "FarmaXProd"
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_Farmacias]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_Farmacias] @pkc1 tinyint
as
delete "Farmacias"
where "Cod_Farma" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_FactElect]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_FactElect] @pkc1 int,@pkc2 int,@pkc3 char(12),@pkc4 int,@pkc5 int
as
delete "FactElect"
where "Proveedor" = @pkc1 and "Sucursal" = @pkc2 and "Folio_Fact" = @pkc3 and "Codigo_Int" = @pkc4 and "Renglon" = @pkc5
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_estado]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_estado] @pkc1 numeric(18,0)
as
delete "estado"
where "idestado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_empleados]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_empleados] @pkc1 numeric(18,0)
as
delete "empleados"
where "idempleado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_Doctores]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_Doctores] @pkc1 smallint
as
delete "Doctores"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_DesctosXFarma]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_DesctosXFarma] @pkc1 int,@pkc2 tinyint,@pkc3 char(1)
as
delete "DesctosXFarma"
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2 and "Tipo" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_DesctosCodigos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_DesctosCodigos] @pkc1 char(13),@pkc2 int
as
delete "DesctosCodigos"
where "CodigoRel" = @pkc1 and "CodigoInt" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_DesctosClientes]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_DesctosClientes] @pkc1 int,@pkc2 int,@pkc3 char(4),@pkc4 char(4),@pkc5 char(4),@pkc6 char(4),@pkc7 int,@pkc8 char(1)
as
delete "DesctosClientes"
where "Cliente" = @pkc1 and "Codigo" = @pkc2 and "Familia1" = @pkc3 and "Familia2" = @pkc4 and "Familia3" = @pkc5 and "Familia4" = @pkc6 and "Laboratorio" = @pkc7 and "Tipo" = @pkc8
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ConGastos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_ConGastos    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



create procedure [dbo].[sp_MSdel_ConGastos] @pkc1 tinyint
as
delete "ConGastos"
where "CodCon" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ConfiguraBO]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ConfiguraBO] @pkc1 smallint
as
delete "ConfiguraBO"
where "Clave" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ConfigEtiqCenefas_2]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ConfigEtiqCenefas_2] @pkc1 char(1)
as
delete "ConfigEtiqCenefas_2"
where "Tipo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ConfigEtiqCenefas]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ConfigEtiqCenefas] @pkc1 char(1)
as
delete "ConfigEtiqCenefas"
where "Tipo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  Table [dbo].[MovAlmDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovAlmDet](
	[Cve_Farmacia] [tinyint] NOT NULL,
	[Folio_Movto] [char](9) NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[Cve_Movto] [tinyint] NOT NULL,
	[Fecha_Movto] [smalldatetime] NOT NULL,
	[Cve_Producto] [int] NOT NULL,
	[CodigoRel] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[CostoUnit] [smallmoney] NOT NULL,
	[DesctoUnit] [smallmoney] NOT NULL,
	[IvaUnit] [smallmoney] NOT NULL,
	[Cve_Almacen] [tinyint] NOT NULL,
	[TasaIva] [smallmoney] NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_MovAlmDet] PRIMARY KEY NONCLUSTERED 
(
	[Cve_Farmacia] ASC,
	[Folio_Movto] ASC,
	[Renglon] ASC,
	[Fecha_Movto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatClientes]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatClientes] @pkc1 int
as
delete "CatClientes"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatClasificaciones]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatClasificaciones] @pkc1 char(3),@pkc2 char(3)
as
delete "CatClasificaciones"
where "Codigo1" = @pkc1 and "Codigo2" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatCentrosCostos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatCentrosCostos] @pkc1 smallint
as
delete "CatCentrosCostos"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CambioPrecio]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_CambioPrecio    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/






create procedure [dbo].[sp_MSdel_CambioPrecio] @pkc1 smalldatetime,@pkc2 int,@pkc3 int,@pkc4 varchar(13)
as
delete "CambioPrecio"
where "Fecha" = @pkc1 and "Proveedor" = @pkc2 and "Codigoint" = @pkc3 and "CodigoRel" = @pkc4
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_AltaProductos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_AltaProductos    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/



create procedure [dbo].[sp_MSdel_AltaProductos] @pkc1 smallint,@pkc2 int
as
delete "AltaProductos"
where "Sucursal" = @pkc1 and "Producto" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_Accesos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_Accesos] @pkc1 int,@pkc2 varchar(25)
as
delete "Accesos"
where "CodUsuario" = @pkc1 and "Forma" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CodigosRelRep]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CodigosRelRep] @pkc1 int,@pkc2 char(13),@pkc3 tinyint
as
delete "CodigosRelRep"
where "CodigoInt" = @pkc1 and "CodRelacionado" = @pkc2 and "Renglon" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CodigosRel]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CodigosRel] @pkc1 int,@pkc2 char(13),@pkc3 tinyint
as
delete "CodigosRelrep"
where "CodigoInt" = @pkc1 and "CodRelacionado" = @pkc2 and "Renglon" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_ciudad]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_ciudad] @pkc1 numeric(18,0)
as
delete "ciudad"
where "idciudad" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_Circular]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_Circular] @pkc1 int
as
delete "Circular"
where "CodigoInterno" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatUsuarios]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatUsuarios] @pkc1 int
as
delete "CatUsuarios"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatSucursalesListasDesctos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatSucursalesListasDesctos] @pkc1 int,@pkc2 smallint
as
delete "CatSucursalesListasDesctos"
where "CodFarmacia" = @pkc1 and "CodListaDesctos" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatSales]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatSales] @pkc1 numeric(18,0)
as
delete "CatSales"
where "CodigoInt" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatRecibidosCta]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatRecibidosCta] @pkc1 int
as
delete "CatRecibidosCta"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatProductosRep]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatProductosRep] @pkc1 int
as
delete "CatProductosRep"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatProductos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatProductos] @pkc1 int
as
delete "CatProductosRep"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatEmpresas]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatEmpresas] @pkc1 char(4)
as
delete "CatEmpresas"
where "CodEmpresa" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatEmpleados]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSdel_CatEmpleados    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/





create procedure [dbo].[sp_MSdel_CatEmpleados] @pkc1 char(8)
as
delete "CatEmpleados"
where "Codigo" = @pkc1
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatDepartamentos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatDepartamentos] @pkc1 smallint
as
delete "CatDepartamentos"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatDenominaciones]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatDenominaciones] @pkc1 smallint
as
delete "CatDenominaciones"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[FLSP_TablasAdicionales]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.FLSP_TablasAdicionales    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/


/**   	
	Procedimiento que borra la tabla FLT_CorteX  y la actualiza con la tabla CorteX asignandole la Sucursal
	Farmacias Leyva SA de CV
	12/08/2003
	Desarrollado por Omar Rodríguez	
**/

CREATE PROCEDURE [dbo].[FLSP_TablasAdicionales]
 AS
BEGIN TRAN

	DELETE FLT_CorteX

	INSERT INTO FLT_CorteX (Sucursal, Cajero, Folio, FormaPago, Renglon, Fecha, Hora, 
	UltFolioVenta, UltFolioDevol, ImpteFisico, ImpteTeorico, ImpteRetiro, CambioEfect, DevolsEfect, Caja, Auditoria)
	SELECT  2, Cajero, Folio, FormaPago, Renglon, Fecha, Hora, UltFolioVenta, 
	UltFolioDevol, ImpteFisico, ImpteTeorico, ImpteRetiro, CambioEfect, DevolsEfect, Caja, Auditoria
	FROM CorteX

COMMIT TRAN
GO
/****** Object:  UserDefinedFunction [dbo].[fCodigoSucursal]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  función definida por el usuario dbo.fCodigoSucursal    Fecha de la secuencia de comandos: 08/08/2006 01:57:14 p.m. ******/



CREATE FUNCTION [dbo].[fCodigoSucursal] () 
RETURNS TinyInt AS  
BEGIN 
   DECLARE @nCodSuc  money
   
   Select @nCodSuc = Farmacia
   From Config (NoLock)
   RETURN  @nCodSuc
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RecalculoExistencias_2de2]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.SP_RecalculoExistencias_2de2    fecha de la secuencia de comandos: 08/08/2006 01:57:14 p.m. ******/



-- ***** CORRECCION DE EXISTECIAS EN BASE AL DETALLE DE LOS MOVIMIENTOS
--- Este Procedimiento Almacenado Recalculará las existencias en los acumulados 
--- PRODUCTOFARMA y ACUMOVTOS
--- Business Intelligent Software S.A. de C.V.
--- Carla Rocha
--- 16-Nov-2004
--- Parte 2 : ACUMOVTOS
--- Ejecutar el último día del mes, por la noche y antes de que cambie al siguiente mes.

CREATE PROCEDURE [dbo].[SP_RecalculoExistencias_2de2] AS
	Begin Tran

	-- Para Corregir el AcuMovtos
	-- 1.- Respaldar AcuMovtos a la Fecha
	Delete 	AcuMovtosRespaldo
	Where	Año  = Year (GetDate()) And 
		Mes = Month (GetDate()) 
	
	Insert Into AcuMovtosRespaldo (Cve_Producto,Año,Mes,Cant_Ent,Impte_Ent,Cant_Sal,Impte_Sal,Ult_Costo)
	Select 	Cve_Producto,Año,Mes,Cant_Ent,Impte_Ent,Cant_Sal,Impte_Sal,Ult_Costo
	From 	AcuMovtos
	Where	Año  = Year (GetDate()) And 
		Mes = Month (GetDate()) 
	
	-- 1.- Eliminar el Acumulado del Mes Actual
	Delete 	AcuMovtos
	Where	Año  = Year (GetDate()) And 
		Mes = Month (GetDate()) 
	-- 2.- Recalcular el Acumulado del Mes Actual
	Insert Into AcuMovtos (Cve_Producto,Año,Mes,Cant_Ent,Impte_Ent,Cant_Sal,Impte_Sal)
	Select 	Cve_Producto,
		Year(Fecha_Movto) As Año,
		Month(Fecha_Movto) As Mes,
		Sum(Case When T.TipoMovto = 'E' Then Cantidad Else 0 End) As Cant_Ent,
		Sum(Case When T.TipoMovto = 'E' Then Cantidad Else 0 End * CostoPromedio) As Impte_Ent,
		Sum(Case When T.TipoMovto = 'S' Then Cantidad Else 0 End) As Cant_Sal,
		Sum(Case When T.TipoMovto = 'S' Then Cantidad Else 0 End * CostoPromedio) As Impte_Sal
	From 	MovGralInv M 
	Inner Join TipoMovtos T On M.Cve_Movto = T.Cve_Movto
	Where 	Year(Fecha_Movto) = Year(GetDate()) And Month(Fecha_Movto) = Month(GetDate())
	Group By Cve_Producto,Year(Fecha_Movto),Month(Fecha_Movto)
	-- 3.- Asignar el valor del último costo por mes.
	Update 	AcuMovtos 
	Set	Ult_Costo = IsNull((	Select 	Top 1 MGI.Ultimo_Costo 
				From 	MovGralInv MGI 
				Where 	Year(MGI.Fecha_Movto) = AcuMovtos.Año And
					Month(MGI.Fecha_Movto) = AcuMovtos.Mes And
					MGI.Cve_Movto = 16 And MGI.Cve_Producto = AcuMovtos.Cve_Producto
				Order 	By Fecha_Captura Desc),0)
	Where	Año  = Year (GetDate()) And 
		Mes = Month (GetDate()) 
		
	Commit Tran
GO
/****** Object:  StoredProcedure [dbo].[SP_RecalculoExistencias_1de2]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.SP_RecalculoExistencias_1de2    fecha de la secuencia de comandos: 08/08/2006 01:57:14 p.m. ******/



-- ***** CORRECCION DE EXISTECIAS EN BASE AL DETALLE DE LOS MOVIMIENTOS
--- Este Procedimiento Almacenado Recalculará las existencias en los acumulados 
--- PRODUCTOFARMA y ACUMOVTOS
--- Business Intelligent Software S.A. de C.V.
--- Carla Rocha
--- 16-Nov-2004
--- Parte 1 : PRODUCTOFARMA 
--- Ejecutar Diariamente por la noche

CREATE PROCEDURE [dbo].[SP_RecalculoExistencias_1de2] AS
	Begin Tran

	--- Corrección de ProductoFarma ** Unicamente en los que hay diferencia ** 
	Update 	ProductoFarma 
	Set 	Existencia = 	Existencia_Ini + 
				IsNull((Select 	Sum(Cantidad) 
				From 	MovGralInv M 
				Inner Join TipoMovtos T On M.Cve_Movto = T.Cve_Movto
				Where T.TipoMovto = 'E' And M.Cve_Producto = ProductoFarma.Codigo),0)-
				IsNull((Select 	Sum(Cantidad) 
				From 	MovGralInv M 
				Inner Join TipoMovtos T On M.Cve_Movto = T.Cve_Movto
				Where T.TipoMovto = 'S' And M.Cve_Producto = ProductoFarma.Codigo),0)
	Where 	Existencia <> 	Existencia_Ini + 
				IsNull((Select 	Sum(Cantidad) 
				From 	MovGralInv M 
				Inner Join TipoMovtos T On M.Cve_Movto = T.Cve_Movto
				Where T.TipoMovto = 'E' And M.Cve_Producto = ProductoFarma.Codigo),0)-
				IsNull((Select 	Sum(Cantidad) 
				From 	MovGralInv M 
				Inner Join TipoMovtos T On M.Cve_Movto = T.Cve_Movto
				Where T.TipoMovto = 'S' And M.Cve_Producto = ProductoFarma.Codigo),0)
		
	Commit Tran
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductosReplicados]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ProductosReplicados] AS
/*
PROCEDIMIENTO ALMACENADO SP_ProductosReplicados
ELABORADO POR : Edgar Gárate
ULTIMA MODIFICACIÓN : 06-Oct-2003
DESCRIPCIÓN : Inserta o modifica los registros a CatProductos que tambien se encuentren en CatProductosRep 
              , dicha tabla CatProductosRep es replicada via SnapShot desde BackOfice hacia los puntos de venta. 
	      Esto con el fin de que en los puntos de venta
	      no se bloqueen las tablas por estar como destino en una suscripción. 
	      Para la tabla CodigosRelRep se le agregó un campo adicional que se llama ParaEliminar que funciona como
	      bandera para conocer en el punto de venta que registros fueron eliminados en BackOffice, y así
	      elimnarlos tambien en PtoVta.
*/

BEGIN TRAN

	---REALIZA LAS MODIFICACIONES DE LOS REGISTROS QUE ESTEN DIFERENTES ENTRE EL CatProductos Y EL CatProductosRep
	UPDATE CatProductos SET CatProductos.Codigo = CatProductosRep.Codigo , CatProductos.Descripcion = CatProductosRep.Descripcion ,
		CatProductos.CodFam1 = CatProductosRep.CodFam1 , CatProductos.CodFam2 = CatProductosRep.CodFam2 ,
		CatProductos.CodFam3 = CatProductosRep.CodFam3 , CatProductos.CodFam4 = CatProductosRep.CodFam4 ,
		CatProductos.Laboratorio = CatProductosRep.Laboratorio , CatProductos.DeptoCompra = CatProductosRep.DeptoCompra ,
		CatProductos.DeptoVenta = CatProductosRep.DeptoVenta , CatProductos.PtjComiVta = CatProductosRep.PtjComiVta ,
		CatProductos.ImpteComiVta = CatProductosRep.ImpteComiVta , CatProductos.CodClas1 = CatProductosRep.CodClas1 ,
		CatProductos.CodClas2 = CatProductosRep.CodClas2 , CatProductos.Granel = CatProductosRep.Granel , 
		CatProductos.TipoEtiqueta = CatProductosRep.TipoEtiqueta , CatProductos.Descuento = CatProductosRep.Descuento ,
		CatProductos.Seguimiento = CatProductosRep.Seguimiento , CatProductos.TipoMedic = CatProductosRep.TipoMedic ,
		CatProductos.PrecioPublico = CatProductosRep.PrecioPublico , CatProductos.PrecioVenta = CatProductosRep.PrecioVenta ,
		CatProductos.PrecioFarmacia = CatProductosRep.PrecioFarmacia , CatProductos.UltimoCosto = CatProductosRep.UltimoCosto ,
		CatProductos.CostoProm = CatProductosRep.CostoProm , CatProductos.FecUltCompra = CatProductosRep.FecUltCompra , 
		CatProductos.FecUltiVenta = CatProductosRep.FecUltiVenta , CatProductos.CambioPrec = CatProductosRep.CambioPrec ,
		CatProductos.TipoProducto = CatProductosRep.TipoProducto , CatProductos.TipoCompra = CatProductosRep.TipoCompra ,
		CatProductos.Proveedor = CatProductosRep.Proveedor , CatProductos.DiasMaxInv = CatProductosRep.DiasMaxInv , 
		CatProductos.Estatus = CatProductosRep.Estatus , CatProductos.Formulado = CatProductosRep.Formulado ,
		CatProductos.PrecioVentaMixto = CatProductosRep.PrecioVentaMixto , CatProductos.PrecioCostoMixto = CatProductosRep.PrecioCostoMixto,
                          CatProductos.FechaUltCompraSuc= CatProductosRep.FechaUltCompraSuc, CatProductos.FechaUltVentaSuc=CatProductosRep.FechaUltVentaSuc,
                          CatProductos.CodSales=CatProductosRep.CodSales
	FROM CatProductosRep
	WHERE  CatProductos.Codigo = CatProductosRep.Codigo AND (CatProductos.Descripcion <> CatProductosRep.Descripcion OR
		CatProductos.CodFam1 <> CatProductosRep.CodFam1 OR CatProductos.CodFam2 <> CatProductosRep.CodFam2 OR
		CatProductos.CodFam3 <> CatProductosRep.CodFam3 OR CatProductos.CodFam4 <> CatProductosRep.CodFam4 OR
		CatProductos.Laboratorio <> CatProductosRep.Laboratorio OR CatProductos.DeptoCompra <> CatProductosRep.DeptoCompra OR
		CatProductos.DeptoVenta <> CatProductosRep.DeptoVenta OR CatProductos.PtjComiVta <> CatProductosRep.PtjComiVta OR
		CatProductos.ImpteComiVta <> CatProductosRep.ImpteComiVta OR CatProductos.CodClas1 <> CatProductosRep.CodClas1 OR
		CatProductos.CodClas2 <> CatProductosRep.CodClas2 OR CatProductos.Granel <> CatProductosRep.Granel OR 
		CatProductos.TipoEtiqueta <> CatProductosRep.TipoEtiqueta OR CatProductos.Descuento <> CatProductosRep.Descuento OR
		CatProductos.Seguimiento <> CatProductosRep.Seguimiento OR CatProductos.TipoMedic <> CatProductosRep.TipoMedic OR
		CatProductos.PrecioPublico <> CatProductosRep.PrecioPublico OR CatProductos.PrecioVenta <> CatProductosRep.PrecioVenta OR
		CatProductos.PrecioFarmacia <> CatProductosRep.PrecioFarmacia OR CatProductos.UltimoCosto <> CatProductosRep.UltimoCosto OR
		CatProductos.CostoProm <> CatProductosRep.CostoProm OR CatProductos.FecUltCompra <> CatProductosRep.FecUltCompra OR 
		CatProductos.FecUltiVenta <> CatProductosRep.FecUltiVenta OR CatProductos.CambioPrec <> CatProductosRep.CambioPrec OR
		CatProductos.TipoProducto <> CatProductosRep.TipoProducto OR CatProductos.TipoCompra <> CatProductosRep.TipoCompra OR
		CatProductos.Proveedor <> CatProductosRep.Proveedor OR CatProductos.DiasMaxInv <> CatProductosRep.DiasMaxInv OR 
		CatProductos.Estatus <> CatProductosRep.Estatus OR CatProductos.Formulado <> CatProductosRep.Formulado OR
		CatProductos.PrecioVentaMixto <> CatProductosRep.PrecioVentaMixto OR CatProductos.PrecioCostoMixto <> CatProductosRep.PrecioCostoMixto OR
                           CatProductos.FechaUltCompraSuc<>CatProductosRep.FechaUltCompraSuc OR CatProductos.FechaUltVentaSuc <> CatProductosRep.FechaUltVentaSuc OR
                           CatProductos.CodSales <> CatProductosRep.CodSales)
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END
	
	---INSERTA LOS REGISTROS NUEVOS
	INSERT INTO CatProductos (Codigo,Descripcion,CodFam1,CodFam2,CodFam3,CodFam4,Laboratorio,DeptoCompra,
                    DeptoVenta,PtjComiVta,ImpteComiVta,CodClas1,CodClas2,Granel,TipoEtiqueta,Descuento,Seguimiento,
                    TipoMedic,PrecioPublico,PrecioVenta,PrecioFarmacia,UltimoCosto,CostoProm,FecUltCompra,
		    FecUltiVenta,CambioPrec,TipoProducto,TipoCompra,Proveedor,DiasMaxInv,Estatus,Formulado,
                    PrecioVentaMixto,PrecioCostoMixto,FechaUltCompraSuc,FechaUltVentaSuc,CodSales)
	SELECT * FROM CatProductosRep 
	WHERE Codigo NOT IN (SELECT Codigo FROM CatProductos)
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END

	
	---ELIMINA LOS PRODUCTOS QUE ESTAN MARCADOS PARA ELIMINAR EN CodigosRelRep
	/*
	DELETE FROM CodigosRel 	WHERE CAST(CodigoInt AS Char(10)) + CAST(CodRelacionado AS Char(20)) + CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10))
	IN (SELECT CAST(CodigoInt AS Char(10)) + CAST(CodRelacionado AS Char(20)) + CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10))
		FROM CodigosRelRep WHERE ParaEliminar = 1)
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END


	---ELIMINA LOS REGISTRO QUE SE MODIFICARON O SE AGREGARON COMO NUEVOS
	DELETE FROM CodigosRel 	
	WHERE CAST(CodigoInt AS Char(10)) + CAST(CodRelacionado AS Char(20)) + CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10))
	IN (SELECT CAST(CodigoInt AS Char(10)) + CAST(CodRelacionado AS Char(20)) + CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10))
		FROM CodigosRelRep WHERE ParaEliminar = 0)
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END	

	---INSERTA LOS REGISTROS QUE SE MODIFICARON O SE AGREGARON COMO NUEVOS
	INSERT INTO  CodigosRel(CodigoInt,CodRelacionado,Unidad,Renglon)
	SELECT CodigoInt,CodRelacionado,Unidad,Renglon FROM CodigosRelRep 
	WHERE CAST(codigoInt AS CHAR(10)) + CAST(CodRelacionado AS CHAR(20)) 
	+ CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10)) NOT IN (SELECT CAST(codigoInt AS CHAR(10)) + CAST(CodRelacionado AS CHAR(20)) 
	+ CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10)) FROM CodigosRel) AND ParaEliminar = 0
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END
	*/
	DELETE FROM CodigosRel 	WHERE CAST(CodigoInt AS Char(10)) + CAST(CodRelacionado AS Char(20)) + CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10))
	NOT IN (SELECT CAST(CodigoInt AS Char(10)) + CAST(CodRelacionado AS Char(20)) + CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10))
		FROM CodigosRelRep )
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END

	INSERT INTO  CodigosRel(CodigoInt,CodRelacionado,Unidad,Renglon)
	SELECT CodigoInt,CodRelacionado,Unidad,Renglon FROM CodigosRelRep 
	WHERE CAST(codigoInt AS CHAR(10)) + CAST(CodRelacionado AS CHAR(20)) 
	+ CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10)) NOT IN (SELECT CAST(codigoInt AS CHAR(10)) + CAST(CodRelacionado AS CHAR(20)) 
	+ CAST(Unidad AS CHAR(10)) + CAST(Renglon AS CHAR(10)) FROM CodigosRel)
	If @@Error <>0
		BEGIN
		RollBack Tran
		Return
		END

COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_Zonas]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_Zonas] 
 @c1 tinyint,@c2 varchar(50),@pkc1 tinyint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "Zonas" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "Zonas" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_TipoMovtos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_TipoMovtos] 
 @c1 int,@c2 varchar(40),@c3 char(1),@c4 char(1),@c5 char(1),@c6 bit,@c7 bit,@c8 bit,@c9 bit,@c10 bit,@c11 bit,@pkc1 int
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "TipoMovtos" set
"Cve_Movto" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Cve_Movto" end
,"Descripcion_Movto" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion_Movto" end
,"TipoMovto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "TipoMovto" end
,"Status_Movto" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Status_Movto" end
,"Entrada_Con_Costo" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Entrada_Con_Costo" end
,"Modificable" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Modificable" end
,"Selecciona" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Selecciona" end
,"Cancela" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Cancela" end
,"NotaCredito" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "NotaCredito" end
,"Fijo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Fijo" end
,"Contabilizable" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Contabilizable" end
where "Cve_Movto" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "TipoMovtos" set
"Descripcion_Movto" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion_Movto" end
,"TipoMovto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "TipoMovto" end
,"Status_Movto" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Status_Movto" end
,"Entrada_Con_Costo" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Entrada_Con_Costo" end
,"Modificable" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Modificable" end
,"Selecciona" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Selecciona" end
,"Cancela" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Cancela" end
,"NotaCredito" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "NotaCredito" end
,"Fijo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Fijo" end
,"Contabilizable" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Contabilizable" end
where "Cve_Movto" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_tipoempleado]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_tipoempleado] 
 @c1 numeric(18,0),@c2 char(25),@c3 char(50),@c4 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "tipoempleado" set
"idtipoempleado" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idtipoempleado" end
,"tipo" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "tipo" end
,"descripcion" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "descripcion" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idtipoempleado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "tipoempleado" set
"tipo" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "tipo" end
,"descripcion" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "descripcion" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idtipoempleado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_SurtidoPedidosDet]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_SurtidoPedidosDet] 
 @c1 tinyint,@c2 tinyint,@c3 char(11),@c4 char(11),@c5 int,@c6 char(16),@c7 smallint,@c8 money,@c9 money,@c10 char(11),@c11 datetime,@c12 smallmoney,@c13 uniqueidentifier,@pkc1 tinyint,@pkc2 tinyint,@pkc3 char(11),@pkc4 char(11),@pkc5 int,@pkc6 char(16),@pkc7 smallint
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4 or substring(@bitmap,1,1) & 8 = 8 or substring(@bitmap,1,1) & 16 = 16 or substring(@bitmap,1,1) & 32 = 32 or substring(@bitmap,1,1) & 64 = 64
begin
update "SurtidoPedidosDet" set
"Sucursal" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Sucursal" end
,"Almacen" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Almacen" end
,"FolioPedido" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "FolioPedido" end
,"FolioSurtido" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "FolioSurtido" end
,"CodigoInt" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodigoInt" end
,"CodigoEAN" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodigoEAN" end
,"NumBulto" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "NumBulto" end
,"CantSurtida" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CantSurtida" end
,"CantRecibida" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CantRecibida" end
,"EstatusSurt" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "EstatusSurt" end
,"Fecha" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Fecha" end
,"CostoUnit" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CostoUnit" end
,"rowguid" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "rowguid" end
where "Sucursal" = @pkc1 and "Almacen" = @pkc2 and "FolioPedido" = @pkc3 and "FolioSurtido" = @pkc4 and "CodigoInt" = @pkc5 and "CodigoEAN" = @pkc6 and "NumBulto" = @pkc7
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "SurtidoPedidosDet" set
"CantSurtida" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CantSurtida" end
,"CantRecibida" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CantRecibida" end
,"EstatusSurt" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "EstatusSurt" end
,"Fecha" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Fecha" end
,"CostoUnit" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CostoUnit" end
,"rowguid" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "rowguid" end
where "Sucursal" = @pkc1 and "Almacen" = @pkc2 and "FolioPedido" = @pkc3 and "FolioSurtido" = @pkc4 and "CodigoInt" = @pkc5 and "CodigoEAN" = @pkc6 and "NumBulto" = @pkc7
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_sucursales]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_sucursales] 
 @c1 numeric(18,0),@c2 char(25),@c3 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "sucursales" set
"idsucursal" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idsucursal" end
,"sucursal" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "sucursal" end
,"rowguid" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "rowguid" end
where "idsucursal" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "sucursales" set
"sucursal" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "sucursal" end
,"rowguid" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "rowguid" end
where "idsucursal" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_SubClientes]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_SubClientes] 
 @c1 int,@c2 int,@c3 varchar(50),@c4 char(30),@c5 int,@c6 varchar(50),@c7 char(20),@c8 tinyint,@c9 bit,@c10 money,@pkc1 int,@pkc2 int,@pkc3 varchar(50),@pkc4 varchar(50),@pkc5 char(20)
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4 or substring(@bitmap,1,1) & 32 = 32 or substring(@bitmap,1,1) & 64 = 64
begin
update "SubClientes" set
"Cliente" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Cliente" end
,"Empleado" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Empleado" end
,"Nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Nombre" end
,"Nomina" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Nomina" end
,"NumDep" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "NumDep" end
,"NombreDep" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "NombreDep" end
,"Parentesco" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Parentesco" end
,"ConceDep" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ConceDep" end
,"ImpCredito" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "ImpCredito" end
,"Saldo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Saldo" end
where "Cliente" = @pkc1 and "Empleado" = @pkc2 and "Nombre" = @pkc3 and "NombreDep" = @pkc4 and "Parentesco" = @pkc5
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "SubClientes" set
"Nomina" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Nomina" end
,"NumDep" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "NumDep" end
,"ConceDep" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ConceDep" end
,"ImpCredito" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "ImpCredito" end
,"Saldo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Saldo" end
where "Cliente" = @pkc1 and "Empleado" = @pkc2 and "Nombre" = @pkc3 and "NombreDep" = @pkc4 and "Parentesco" = @pkc5
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_Proveedores]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_Proveedores] 
 @c1 int,@c2 varchar(80),@c3 char(50),@c4 char(20),@c5 char(20),@c6 char(15),@c7 tinyint,@c8 char(50),@c9 char(50),@c10 money,@c11 char(40),@c12 char(20),@c13 smalldatetime,@c14 smallmoney,@c15 smalldatetime,@c16 char(20),@c17 char(25),@c18 money,@c19 char(2),@c20 char(16),@c21 char(16),@c22 char(16),@c23 char(16),@c24 bit,@c25 smalldatetime,@c26 money,@c27 char(2),@c28 tinyint,@c29 bit,@c30 bit,@c31 bit,@c32 smallmoney,@c33 varchar(80),@c34 char(1),@c35 bit,@pkc1 int
,@bitmap binary(5)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "Proveedores" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Proveedor" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Proveedor" end
,"Domicilio" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Domicilio" end
,"Ciudad" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Ciudad" end
,"Colonia" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Colonia" end
,"RFC" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "RFC" end
,"TipoProveedor" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "TipoProveedor" end
,"ContCompras" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ContCompras" end
,"ContPagos" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "ContPagos" end
,"CompAnuales" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "CompAnuales" end
,"RutaFactLayout" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "RutaFactLayout" end
,"PrefijoFacturas" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "PrefijoFacturas" end
,"FechaUltCompra" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "FechaUltCompra" end
,"SalActual" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "SalActual" end
,"FechaUltPago" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "FechaUltPago" end
,"Estado" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Estado" end
,"Telefono" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Telefono" end
,"DesctoFinan" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "DesctoFinan" end
,"DiasCredito" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "DiasCredito" end
,"CtaContable" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "CtaContable" end
,"CtaAnticipo" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "CtaAnticipo" end
,"CtaGastos" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "CtaGastos" end
,"CtaInversion" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CtaInversion" end
,"CapGasInv" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "CapGasInv" end
,"FechaAlta" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "FechaAlta" end
,"Surtimiento" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "Surtimiento" end
,"Prioridad" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "Prioridad" end
,"Cve_Gasto" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "Cve_Gasto" end
,"PagChecSuc" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "PagChecSuc" end
,"Factura" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "Factura" end
,"Remision" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Remision" end
,"PorcentajeNotasCredito" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "PorcentajeNotasCredito" end
,"RazonSocial" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "RazonSocial" end
,"Status" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "Status" end
,"OmitirArchivoPagos" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "OmitirArchivoPagos" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "Proveedores" set
"Proveedor" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Proveedor" end
,"Domicilio" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Domicilio" end
,"Ciudad" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Ciudad" end
,"Colonia" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Colonia" end
,"RFC" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "RFC" end
,"TipoProveedor" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "TipoProveedor" end
,"ContCompras" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ContCompras" end
,"ContPagos" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "ContPagos" end
,"CompAnuales" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "CompAnuales" end
,"RutaFactLayout" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "RutaFactLayout" end
,"PrefijoFacturas" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "PrefijoFacturas" end
,"FechaUltCompra" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "FechaUltCompra" end
,"SalActual" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "SalActual" end
,"FechaUltPago" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "FechaUltPago" end
,"Estado" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Estado" end
,"Telefono" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Telefono" end
,"DesctoFinan" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "DesctoFinan" end
,"DiasCredito" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "DiasCredito" end
,"CtaContable" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "CtaContable" end
,"CtaAnticipo" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "CtaAnticipo" end
,"CtaGastos" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "CtaGastos" end
,"CtaInversion" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CtaInversion" end
,"CapGasInv" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "CapGasInv" end
,"FechaAlta" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "FechaAlta" end
,"Surtimiento" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "Surtimiento" end
,"Prioridad" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "Prioridad" end
,"Cve_Gasto" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "Cve_Gasto" end
,"PagChecSuc" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "PagChecSuc" end
,"Factura" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "Factura" end
,"Remision" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Remision" end
,"PorcentajeNotasCredito" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "PorcentajeNotasCredito" end
,"RazonSocial" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "RazonSocial" end
,"Status" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "Status" end
,"OmitirArchivoPagos" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "OmitirArchivoPagos" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_PromocXFarma]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_PromocXFarma] 
 @c1 int,@c2 tinyint,@c3 char(1),@c4 smallmoney,@c5 datetime,@c6 datetime,@pkc1 int,@pkc2 tinyint,@pkc3 char(1)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4
begin
update "PromocXFarma" set
"CodigoInt" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodigoInt" end
,"Farmacia" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Farmacia" end
,"Tipo" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Tipo" end
,"PtjPromocion" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "PtjPromocion" end
,"FecInicio" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "FecInicio" end
,"FecFin" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "FecFin" end
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2 and "Tipo" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "PromocXFarma" set
"PtjPromocion" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "PtjPromocion" end
,"FecInicio" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "FecInicio" end
,"FecFin" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "FecFin" end
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2 and "Tipo" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ProductoFarma]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ProductoFarma] 
 @c1 tinyint,@c2 int,@c3 money,@c4 money,@c5 smalldatetime,@c6 smalldatetime,@c7 money,@c8 int,@c9 int,@c10 money,@c11 money,@c12 money,@c13 money,@c14 smalldatetime,@c15 char(10),@c16 int,@c17 money,@c18 money,@c19 money,@c20 money,@c21 money,@c22 money,@c23 bit,@c24 smallint,@c25 bit,@c26 char(10),@pkc1 tinyint,@pkc2 int
,@bitmap binary(4)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2
begin
update "ProductoFarmaR" set
"Farmacia" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Farmacia" end
,"Codigo" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Codigo" end
,"UltimoCosto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "UltimoCosto" end
,"CostoProm" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CostoProm" end
,"FecUltCompra" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "FecUltCompra" end
,"FecUltiVenta" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "FecUltiVenta" end
,"Existencia" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Existencia" end
,"OrdenInvSelectivo" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "OrdenInvSelectivo" end
,"OrdenInvTotal" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "OrdenInvTotal" end
,"ExistFisicaSelect" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "ExistFisicaSelect" end
,"ExistFisicaTot" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "ExistFisicaTot" end
,"CostoInventarioIni" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CostoInventarioIni" end
,"Existencia_Ini" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Existencia_Ini" end
,"Fecha_Inv_Ini" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Fecha_Inv_Ini" end
,"Localizacion" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "Localizacion" end
,"Proveedor" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Proveedor" end
,"Maximo" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Maximo" end
,"Minimo" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "Minimo" end
,"PtoReorden" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "PtoReorden" end
,"InvOptimo" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "InvOptimo" end
,"Cant_Pedida" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "Cant_Pedida" end
,"Congelado" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "Congelado" end
,"CapturaAbortada" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CapturaAbortada" end
,"Intentos" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "Intentos" end
,"No_Pedir" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "No_Pedir" end
,"CodSal" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CodSal" end
where "Farmacia" = @pkc1 and "Codigo" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ProductoFarmaR" set
"UltimoCosto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "UltimoCosto" end
,"CostoProm" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CostoProm" end
,"FecUltCompra" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "FecUltCompra" end
,"FecUltiVenta" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "FecUltiVenta" end
,"Existencia" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Existencia" end
,"OrdenInvSelectivo" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "OrdenInvSelectivo" end
,"OrdenInvTotal" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "OrdenInvTotal" end
,"ExistFisicaSelect" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "ExistFisicaSelect" end
,"ExistFisicaTot" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "ExistFisicaTot" end
,"CostoInventarioIni" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CostoInventarioIni" end
,"Existencia_Ini" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Existencia_Ini" end
,"Fecha_Inv_Ini" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Fecha_Inv_Ini" end
,"Localizacion" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "Localizacion" end
,"Proveedor" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Proveedor" end
,"Maximo" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Maximo" end
,"Minimo" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "Minimo" end
,"PtoReorden" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "PtoReorden" end
,"InvOptimo" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "InvOptimo" end
,"Cant_Pedida" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "Cant_Pedida" end
,"Congelado" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "Congelado" end
,"CapturaAbortada" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CapturaAbortada" end
,"Intentos" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "Intentos" end
,"No_Pedir" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "No_Pedir" end
,"CodSal" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CodSal" end
where "Farmacia" = @pkc1 and "Codigo" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_PresupuestoVta]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_PresupuestoVta] 
 @c1 smallint,@c2 money,@c3 money,@c4 money,@c5 money,@c6 money,@c7 money,@c8 money,@c9 money,@c10 money,@c11 money,@c12 money,@c13 money,@pkc1 smallint
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "PresupuestoVta" set
"Sucursal" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Sucursal" end
,"Presp_01" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Presp_01" end
,"Presp_02" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Presp_02" end
,"Presp_03" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Presp_03" end
,"Presp_04" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Presp_04" end
,"Presp_05" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Presp_05" end
,"Presp_06" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Presp_06" end
,"Presp_07" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Presp_07" end
,"Presp_08" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Presp_08" end
,"Presp_09" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Presp_09" end
,"Presp_10" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Presp_10" end
,"Presp_11" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Presp_11" end
,"Presp_12" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Presp_12" end
where "Sucursal" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "PresupuestoVta" set
"Presp_01" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Presp_01" end
,"Presp_02" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Presp_02" end
,"Presp_03" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Presp_03" end
,"Presp_04" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Presp_04" end
,"Presp_05" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Presp_05" end
,"Presp_06" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Presp_06" end
,"Presp_07" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Presp_07" end
,"Presp_08" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Presp_08" end
,"Presp_09" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Presp_09" end
,"Presp_10" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Presp_10" end
,"Presp_11" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Presp_11" end
,"Presp_12" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Presp_12" end
where "Sucursal" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_pais]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_pais] 
 @c1 numeric(18,0),@c2 char(50),@c3 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "pais" set
"idpais" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idpais" end
,"pais" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "pais" end
,"rowguid" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "rowguid" end
where "idpais" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "pais" set
"pais" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "pais" end
,"rowguid" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "rowguid" end
where "idpais" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ListasDescuentosDet]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ListasDescuentosDet] 
 @c1 int,@c2 int,@c3 smallmoney,@c4 bit,@pkc1 int,@pkc2 int
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2
begin
update "ListasDescuentosDet" set
"CodLista" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodLista" end
,"CodigoInt" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "CodigoInt" end
,"PtjDescto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "PtjDescto" end
,"VenderSinUtil" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "VenderSinUtil" end
where "CodLista" = @pkc1 and "CodigoInt" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ListasDescuentosDet" set
"PtjDescto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "PtjDescto" end
,"VenderSinUtil" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "VenderSinUtil" end
where "CodLista" = @pkc1 and "CodigoInt" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ListasDescuentosCab]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_ListasDescuentosCab    fecha de la secuencia de comandos: 11/03/2005 12:11:22 a.m. ******/



create procedure [dbo].[sp_MSupd_ListasDescuentosCab] 
 @c1 int,@c2 varchar(80),@c3 binary(8),@pkc1 int
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ListasDescuentosCab" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ListasDescuentosCab" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "msrepl_synctran_ts" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ListasClientes]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ListasClientes] 
 @c1 int,@c2 int,@pkc1 int,@pkc2 int
,@bitmap binary(1)
as
begin
update "ListasClientes" set
"Lista" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Lista" end
,"Cliente" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Cliente" end
where "Lista" = @pkc1 and "Cliente" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_huellas]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_huellas] 
 @c1 numeric(18,0),@c2 image,@c3 numeric(18,0),@c4 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "huellas" set
"idhuella" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idhuella" end
,"imagen" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "imagen" end
,"idempleado" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "idempleado" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idhuella" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "huellas" set
"imagen" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "imagen" end
,"idempleado" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "idempleado" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idhuella" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ForPag]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ForPag] 
 @c1 int,@c2 varchar(30),@c3 char(1),@c4 bit,@c5 bit,@c6 bit,@c7 bit,@c8 smallmoney,@c9 smallmoney,@c10 bit,@c11 bit,@c12 bit,@c13 smallmoney,@c14 bit,@c15 bit,@pkc1 int
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ForPag" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"Tecla_Rap" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Tecla_Rap" end
,"Abre_Cajon" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Abre_Cajon" end
,"Dolar" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Dolar" end
,"Req_Docto" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Req_Docto" end
,"Req_Autor" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Req_Autor" end
,"Com_Bancar" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Com_Bancar" end
,"Tipo_Cambio" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Tipo_Cambio" end
,"Restringe_Factur" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Restringe_Factur" end
,"Restringe_Cambio" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Restringe_Cambio" end
,"Descto_Comision" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Descto_Comision" end
,"IVAComision" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "IVAComision" end
,"PagoSAD" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "PagoSAD" end
,"DesgloceMonedas" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "DesgloceMonedas" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ForPag" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"Tecla_Rap" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Tecla_Rap" end
,"Abre_Cajon" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Abre_Cajon" end
,"Dolar" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Dolar" end
,"Req_Docto" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Req_Docto" end
,"Req_Autor" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Req_Autor" end
,"Com_Bancar" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Com_Bancar" end
,"Tipo_Cambio" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Tipo_Cambio" end
,"Restringe_Factur" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Restringe_Factur" end
,"Restringe_Cambio" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Restringe_Cambio" end
,"Descto_Comision" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Descto_Comision" end
,"IVAComision" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "IVAComision" end
,"PagoSAD" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "PagoSAD" end
,"DesgloceMonedas" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "DesgloceMonedas" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_FarmaXProd]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_FarmaXProd] 
 @c1 int,@c2 tinyint,@pkc1 int,@pkc2 tinyint
,@bitmap binary(1)
as
begin
update "FarmaXProd" set
"CodigoInt" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodigoInt" end
,"Farmacia" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Farmacia" end
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_Farmacias]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_Farmacias] 
 @c1 tinyint,@c2 bit,@c3 tinyint,@c4 char(4),@c5 varchar(60),@c6 char(70),@c7 char(40),@c8 char(8),@c9 char(40),@c10 char(40),@c11 char(40),@c12 char(70),@c13 smallint,@c14 int,@c15 bit,@c16 char(4),@c17 char(4),@c18 char(4),@c19 char(4),@c20 char(4),@c21 char(4),@c22 char(4),@c23 char(4),@pkc1 tinyint
,@bitmap binary(3)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "Farmacias" set
"Cod_Farma" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Cod_Farma" end
,"Almacen" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Almacen" end
,"Zona" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Zona" end
,"CodEmpresa" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodEmpresa" end
,"Nom_Farmacia" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Nom_Farmacia" end
,"Direccion" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Direccion" end
,"Colonia" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Colonia" end
,"CP" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CP" end
,"Ciudad" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Ciudad" end
,"Estado" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Estado" end
,"Telefono" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Telefono" end
,"Encargado" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Encargado" end
,"Centro_Costo" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Centro_Costo" end
,"Usuario" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Usuario" end
,"Disponible" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "Disponible" end
,"CtaMayVtasContado" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "CtaMayVtasContado" end
,"SubCVtasContado" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "SubCVtasContado" end
,"SSbCVtasContado" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "SSbCVtasContado" end
,"SssVtasContado" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "SssVtasContado" end
,"CtaMayCtesxFact" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "CtaMayCtesxFact" end
,"SubCCtesxFact" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "SubCCtesxFact" end
,"SsbCCtesxFact" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "SsbCCtesxFact" end
,"SssCCtesxFact" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "SssCCtesxFact" end
where "Cod_Farma" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "Farmacias" set
"Almacen" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Almacen" end
,"Zona" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Zona" end
,"CodEmpresa" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodEmpresa" end
,"Nom_Farmacia" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Nom_Farmacia" end
,"Direccion" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Direccion" end
,"Colonia" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Colonia" end
,"CP" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CP" end
,"Ciudad" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Ciudad" end
,"Estado" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Estado" end
,"Telefono" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Telefono" end
,"Encargado" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Encargado" end
,"Centro_Costo" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Centro_Costo" end
,"Usuario" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Usuario" end
,"Disponible" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "Disponible" end
,"CtaMayVtasContado" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "CtaMayVtasContado" end
,"SubCVtasContado" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "SubCVtasContado" end
,"SSbCVtasContado" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "SSbCVtasContado" end
,"SssVtasContado" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "SssVtasContado" end
,"CtaMayCtesxFact" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "CtaMayCtesxFact" end
,"SubCCtesxFact" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "SubCCtesxFact" end
,"SsbCCtesxFact" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "SsbCCtesxFact" end
,"SssCCtesxFact" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "SssCCtesxFact" end
where "Cod_Farma" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_FactElect]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_FactElect] 
 @c1 smalldatetime,@c2 int,@c3 int,@c4 char(12),@c5 smalldatetime,@c6 int,@c7 char(16),@c8 int,@c9 int,@c10 int,@c11 money,@c12 money,@c13 money,@c14 money,@pkc1 int,@pkc2 int,@pkc3 char(12),@pkc4 int,@pkc5 int
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4 or substring(@bitmap,1,1) & 8 = 8 or substring(@bitmap,1,1) & 32 = 32 or substring(@bitmap,1,1) & 128 = 128
begin
update "FactElect" set
"Fecha" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Fecha" end
,"Proveedor" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Proveedor" end
,"Sucursal" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Sucursal" end
,"Folio_Fact" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Folio_Fact" end
,"Fecha_Fact" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Fecha_Fact" end
,"Codigo_Int" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Codigo_Int" end
,"Codigo_Rel" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Codigo_Rel" end
,"Renglon" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Renglon" end
,"Cantidad_ConCargo" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Cantidad_ConCargo" end
,"Cantidad_SinCargo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Cantidad_SinCargo" end
,"PFarmacia" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "PFarmacia" end
,"TasaIva" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "TasaIva" end
,"PorDesctoOferta" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "PorDesctoOferta" end
,"PorDesctoFinanciero" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "PorDesctoFinanciero" end
where "Proveedor" = @pkc1 and "Sucursal" = @pkc2 and "Folio_Fact" = @pkc3 and "Codigo_Int" = @pkc4 and "Renglon" = @pkc5
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "FactElect" set
"Fecha" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Fecha" end
,"Fecha_Fact" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Fecha_Fact" end
,"Codigo_Rel" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Codigo_Rel" end
,"Cantidad_ConCargo" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Cantidad_ConCargo" end
,"Cantidad_SinCargo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Cantidad_SinCargo" end
,"PFarmacia" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "PFarmacia" end
,"TasaIva" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "TasaIva" end
,"PorDesctoOferta" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "PorDesctoOferta" end
,"PorDesctoFinanciero" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "PorDesctoFinanciero" end
where "Proveedor" = @pkc1 and "Sucursal" = @pkc2 and "Folio_Fact" = @pkc3 and "Codigo_Int" = @pkc4 and "Renglon" = @pkc5
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_estado]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_estado] 
 @c1 numeric(18,0),@c2 char(50),@c3 numeric(18,0),@c4 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "estado" set
"idestado" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idestado" end
,"estado" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "estado" end
,"idpais" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "idpais" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idestado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "estado" set
"estado" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "estado" end
,"idpais" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "idpais" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idestado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_empleados]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_empleados] 
 @c1 numeric(18,0),@c2 char(50),@c3 char(50),@c4 char(50),@c5 char(50),@c6 char(50),@c7 char(50),@c8 numeric(18,0),@c9 char(25),@c10 char(25),@c11 numeric(18,0),@c12 char(250),@c13 numeric(18,0),@c14 datetime,@c15 char(15),@c16 numeric(18,0),@c17 char(16),@c18 float,@c19 datetime,@c20 numeric(18,0),@c21 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(3)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "empleados" set
"idempleado" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idempleado" end
,"clave" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "clave" end
,"nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "nombre" end
,"apellido_p" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "apellido_p" end
,"apellido_m" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "apellido_m" end
,"direccion" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "direccion" end
,"colonia" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "colonia" end
,"cp" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "cp" end
,"rfc" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "rfc" end
,"curp" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "curp" end
,"idciudad" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "idciudad" end
,"path_foto" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "path_foto" end
,"idtipoempleado" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "idtipoempleado" end
,"fecharegistro" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "fecharegistro" end
,"nosegurosocial" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "nosegurosocial" end
,"nocontrolinterno" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "nocontrolinterno" end
,"telefono" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "telefono" end
,"salario" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "salario" end
,"fecharegistroimss" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "fecharegistroimss" end
,"idsucursal" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "idsucursal" end
,"rowguid" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "rowguid" end
where "idempleado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "empleados" set
"clave" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "clave" end
,"nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "nombre" end
,"apellido_p" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "apellido_p" end
,"apellido_m" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "apellido_m" end
,"direccion" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "direccion" end
,"colonia" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "colonia" end
,"cp" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "cp" end
,"rfc" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "rfc" end
,"curp" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "curp" end
,"idciudad" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "idciudad" end
,"path_foto" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "path_foto" end
,"idtipoempleado" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "idtipoempleado" end
,"fecharegistro" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "fecharegistro" end
,"nosegurosocial" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "nosegurosocial" end
,"nocontrolinterno" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "nocontrolinterno" end
,"telefono" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "telefono" end
,"salario" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "salario" end
,"fecharegistroimss" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "fecharegistroimss" end
,"idsucursal" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "idsucursal" end
,"rowguid" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "rowguid" end
where "idempleado" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_Doctores]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_Doctores] 
 @c1 smallint,@c2 varchar(50),@c3 varchar(50),@c4 varchar(50),@c5 char(40),@c6 char(30),@c7 char(5),@c8 char(15),@c9 smallint,@c10 char(25),@c11 char(25),@c12 char(30),@c13 char(15),@c14 datetime,@c15 char(30),@pkc1 smallint
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "Doctores" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Nombre" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Nombre" end
,"A_Paterno" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "A_Paterno" end
,"A_Materno" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "A_Materno" end
,"Direccion" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Direccion" end
,"Colonia" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Colonia" end
,"CP" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CP" end
,"Telefono" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Telefono" end
,"Especialidad" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Especialidad" end
,"Registro" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Registro" end
,"Cedula" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Cedula" end
,"CorreoElec" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CorreoElec" end
,"Biper" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Biper" end
,"FechaNac" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "FechaNac" end
,"Ciudad" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "Ciudad" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "Doctores" set
"Nombre" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Nombre" end
,"A_Paterno" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "A_Paterno" end
,"A_Materno" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "A_Materno" end
,"Direccion" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Direccion" end
,"Colonia" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Colonia" end
,"CP" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CP" end
,"Telefono" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Telefono" end
,"Especialidad" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Especialidad" end
,"Registro" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Registro" end
,"Cedula" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "Cedula" end
,"CorreoElec" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CorreoElec" end
,"Biper" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Biper" end
,"FechaNac" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "FechaNac" end
,"Ciudad" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "Ciudad" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_DesctosXFarma]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_DesctosXFarma] 
 @c1 int,@c2 tinyint,@c3 char(1),@c4 smallmoney,@pkc1 int,@pkc2 tinyint,@pkc3 char(1)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4
begin
update "DesctosXFarma" set
"CodigoInt" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodigoInt" end
,"Farmacia" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Farmacia" end
,"Tipo" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Tipo" end
,"PtjDescto" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "PtjDescto" end
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2 and "Tipo" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "DesctosXFarma" set
"PtjDescto" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "PtjDescto" end
where "CodigoInt" = @pkc1 and "Farmacia" = @pkc2 and "Tipo" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_DesctosCodigos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_DesctosCodigos] 
 @c1 char(13),@c2 int,@c3 smallmoney,@c4 bit,@c5 datetime,@c6 datetime,@c7 char(4),@c8 char(4),@c9 char(4),@c10 char(4),@c11 int,@c12 uniqueidentifier,@pkc1 char(13),@pkc2 int
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2
begin
update "DesctosCodigos" set
"CodigoRel" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodigoRel" end
,"CodigoInt" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "CodigoInt" end
,"PtjDescto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "PtjDescto" end
,"Permanente" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Permanente" end
,"FechaIni" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "FechaIni" end
,"FechaFin" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "FechaFin" end
,"CodFam1" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CodFam1" end
,"CodFam2" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CodFam2" end
,"CodFam3" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CodFam3" end
,"CodFam4" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "CodFam4" end
,"CodLab" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "CodLab" end
,"rowguid" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "rowguid" end
where "CodigoRel" = @pkc1 and "CodigoInt" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "DesctosCodigos" set
"PtjDescto" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "PtjDescto" end
,"Permanente" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Permanente" end
,"FechaIni" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "FechaIni" end
,"FechaFin" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "FechaFin" end
,"CodFam1" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CodFam1" end
,"CodFam2" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CodFam2" end
,"CodFam3" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CodFam3" end
,"CodFam4" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "CodFam4" end
,"CodLab" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "CodLab" end
,"rowguid" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "rowguid" end
where "CodigoRel" = @pkc1 and "CodigoInt" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_DesctosClientes]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_DesctosClientes] 
 @c1 int,@c2 int,@c3 char(4),@c4 char(4),@c5 char(4),@c6 char(4),@c7 int,@c8 smallmoney,@c9 bit,@c10 char(1),@pkc1 int,@pkc2 int,@pkc3 char(4),@pkc4 char(4),@pkc5 char(4),@pkc6 char(4),@pkc7 int,@pkc8 char(1)
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4 or substring(@bitmap,1,1) & 8 = 8 or substring(@bitmap,1,1) & 16 = 16 or substring(@bitmap,1,1) & 32 = 32 or substring(@bitmap,1,1) & 64 = 64 or substring(@bitmap,2,1) & 2 = 2
begin
update "DesctosClientes" set
"Cliente" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Cliente" end
,"Codigo" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Codigo" end
,"Familia1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Familia1" end
,"Familia2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Familia2" end
,"Familia3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Familia3" end
,"Familia4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Familia4" end
,"Laboratorio" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Laboratorio" end
,"Descto" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Descto" end
,"Prod_Credito" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Prod_Credito" end
,"Tipo" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Tipo" end
where "Cliente" = @pkc1 and "Codigo" = @pkc2 and "Familia1" = @pkc3 and "Familia2" = @pkc4 and "Familia3" = @pkc5 and "Familia4" = @pkc6 and "Laboratorio" = @pkc7 and "Tipo" = @pkc8
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "DesctosClientes" set
"Descto" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Descto" end
,"Prod_Credito" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Prod_Credito" end
where "Cliente" = @pkc1 and "Codigo" = @pkc2 and "Familia1" = @pkc3 and "Familia2" = @pkc4 and "Familia3" = @pkc5 and "Familia4" = @pkc6 and "Laboratorio" = @pkc7 and "Tipo" = @pkc8
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ConGastos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_ConGastos    fecha de la secuencia de comandos: 11/03/2005 12:11:21 a.m. ******/



create procedure [dbo].[sp_MSupd_ConGastos] 
 @c1 tinyint,@c2 varchar(40),@c3 char(1),@c4 char(16),@c5 binary(8),@pkc1 tinyint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ConGastos" set
"CodCon" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodCon" end
,"Concepto" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Concepto" end
,"Afecta" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Afecta" end
,"CtaCont" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CtaCont" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "msrepl_synctran_ts" end
where "CodCon" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ConGastos" set
"Concepto" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Concepto" end
,"Afecta" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Afecta" end
,"CtaCont" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CtaCont" end
,"msrepl_synctran_ts" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "msrepl_synctran_ts" end
where "CodCon" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ConfiguraBO]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ConfiguraBO] 
 @c1 smallint,@c2 smallmoney,@c3 char(80),@c4 char(1),@c5 char(5),@c6 smallmoney,@c7 char(30),@c8 char(30),@c9 char(30),@c10 char(1),@c11 smallint,@c12 char(60),@c13 char(60),@c14 char(60),@c15 smallint,@c16 smallint,@c17 smallint,@c18 smallint,@c19 smallint,@c20 smallint,@c21 char(1),@c22 tinyint,@c23 tinyint,@c24 tinyint,@c25 tinyint,@c26 tinyint,@c27 tinyint,@c28 bit,@c29 char(10),@pkc1 smallint
,@bitmap binary(4)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ConfiguraBO" set
"Clave" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Clave" end
,"PtjUtiMin" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "PtjUtiMin" end
,"RutaImagen" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "RutaImagen" end
,"Surt_Prior" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Surt_Prior" end
,"TiempoPassword" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "TiempoPassword" end
,"PtjSelDescto" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "PtjSelDescto" end
,"ValesDev1" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "ValesDev1" end
,"ValesDev2" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ValesDev2" end
,"ValesDev3" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "ValesDev3" end
,"VentasNetas" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "VentasNetas" end
,"DiasPassword" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "DiasPassword" end
,"Promocion1" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Promocion1" end
,"Promocion2" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Promocion2" end
,"Promocion3" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Promocion3" end
,"P1_Inicial" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "P1_Inicial" end
,"P1_Final" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "P1_Final" end
,"P2_Inicial" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "P2_Inicial" end
,"P2_Final" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "P2_Final" end
,"P3_Inicial" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "P3_Inicial" end
,"P3_Final" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "P3_Final" end
,"Prefijo" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "Prefijo" end
,"CodProdIni" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "CodProdIni" end
,"CodProdFin" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CodProdFin" end
,"GramosIni" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "GramosIni" end
,"GramosFin" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "GramosFin" end
,"CantProv" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CantProv" end
,"VecesSurtido" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "VecesSurtido" end
,"CompraDirecta" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "CompraDirecta" end
,"ruta_fondo" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "ruta_fondo" end
where "Clave" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ConfiguraBO" set
"PtjUtiMin" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "PtjUtiMin" end
,"RutaImagen" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "RutaImagen" end
,"Surt_Prior" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Surt_Prior" end
,"TiempoPassword" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "TiempoPassword" end
,"PtjSelDescto" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "PtjSelDescto" end
,"ValesDev1" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "ValesDev1" end
,"ValesDev2" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ValesDev2" end
,"ValesDev3" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "ValesDev3" end
,"VentasNetas" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "VentasNetas" end
,"DiasPassword" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "DiasPassword" end
,"Promocion1" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "Promocion1" end
,"Promocion2" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "Promocion2" end
,"Promocion3" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Promocion3" end
,"P1_Inicial" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "P1_Inicial" end
,"P1_Final" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "P1_Final" end
,"P2_Inicial" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "P2_Inicial" end
,"P2_Final" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "P2_Final" end
,"P3_Inicial" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "P3_Inicial" end
,"P3_Final" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "P3_Final" end
,"Prefijo" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "Prefijo" end
,"CodProdIni" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "CodProdIni" end
,"CodProdFin" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CodProdFin" end
,"GramosIni" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "GramosIni" end
,"GramosFin" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "GramosFin" end
,"CantProv" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CantProv" end
,"VecesSurtido" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "VecesSurtido" end
,"CompraDirecta" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "CompraDirecta" end
,"ruta_fondo" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "ruta_fondo" end
where "Clave" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ConfigEtiqCenefas_2]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ConfigEtiqCenefas_2] 
 @c1 char(1),@c2 smallint,@pkc1 char(1)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ConfigEtiqCenefas_2" set
"Tipo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Tipo" end
,"Linea" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Linea" end
where "Tipo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ConfigEtiqCenefas_2" set
"Linea" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Linea" end
where "Tipo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ConfigEtiqCenefas]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ConfigEtiqCenefas] 
 @c1 char(1),@c2 smallint,@c3 smallint,@c4 smallint,@c5 smallint,@c6 char(50),@c7 smallint,@c8 smallint,@c9 smallint,@c10 smallint,@c11 char(50),@c12 smallint,@c13 smallint,@c14 smallint,@c15 smallint,@c16 char(50),@c17 smallint,@c18 smallint,@c19 smallint,@c20 smallint,@c21 char(50),@c22 smallint,@c23 smallint,@c24 smallint,@c25 char(50),@c26 smallint,@c27 smallint,@c28 smallint,@c29 char(50),@c30 smallint,@c31 smallint,@c32 smallint,@c33 char(50),@c34 smallint,@c35 smallint,@c36 smallint,@c37 char(50),@c38 smallint,@c39 smallmoney,@c40 smallint,@pkc1 char(1)
,@bitmap binary(6)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ConfigEtiqCenefas" set
"Tipo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Tipo" end
,"Altura" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Altura" end
,"CodigoEANX" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CodigoEANX" end
,"CodigoEANY" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodigoEANY" end
,"CodigoEANC" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodigoEANC" end
,"CodigoEANTL" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodigoEANTL" end
,"CodigoEANT" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CodigoEANT" end
,"CodigoIntX" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CodigoIntX" end
,"CodigoIntY" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CodigoIntY" end
,"CodigoIntC" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "CodigoIntC" end
,"CodigoIntTL" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "CodigoIntTL" end
,"CodigoIntT" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CodigoIntT" end
,"DescripcionX" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "DescripcionX" end
,"DescripcionY" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "DescripcionY" end
,"DescripcionC" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "DescripcionC" end
,"DescripcionTL" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "DescripcionTL" end
,"DescripcionT" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "DescripcionT" end
,"FamiliaX" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "FamiliaX" end
,"FamiliaY" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "FamiliaY" end
,"FamiliaC" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "FamiliaC" end
,"FamiliaTL" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "FamiliaTL" end
,"FamiliaT" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "FamiliaT" end
,"PPX" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "PPX" end
,"PPY" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "PPY" end
,"PPTL" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "PPTL" end
,"PPT" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "PPT" end
,"PVX" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "PVX" end
,"PVY" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "PVY" end
,"PVTL" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "PVTL" end
,"PVT" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "PVT" end
,"DesctoX" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "DesctoX" end
,"DesctoY" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "DesctoY" end
,"DesctoTL" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "DesctoTL" end
,"DesctoT" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "DesctoT" end
,"PNX" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "PNX" end
,"PNY" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "PNY" end
,"PNTL" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "PNTL" end
,"PNT" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "PNT" end
,"Separacion" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "Separacion" end
,"AlPaso" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "AlPaso" end
where "Tipo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ConfigEtiqCenefas" set
"Altura" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Altura" end
,"CodigoEANX" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CodigoEANX" end
,"CodigoEANY" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodigoEANY" end
,"CodigoEANC" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodigoEANC" end
,"CodigoEANTL" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodigoEANTL" end
,"CodigoEANT" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CodigoEANT" end
,"CodigoIntX" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "CodigoIntX" end
,"CodigoIntY" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CodigoIntY" end
,"CodigoIntC" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "CodigoIntC" end
,"CodigoIntTL" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "CodigoIntTL" end
,"CodigoIntT" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CodigoIntT" end
,"DescripcionX" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "DescripcionX" end
,"DescripcionY" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "DescripcionY" end
,"DescripcionC" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "DescripcionC" end
,"DescripcionTL" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "DescripcionTL" end
,"DescripcionT" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "DescripcionT" end
,"FamiliaX" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "FamiliaX" end
,"FamiliaY" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "FamiliaY" end
,"FamiliaC" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "FamiliaC" end
,"FamiliaTL" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "FamiliaTL" end
,"FamiliaT" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "FamiliaT" end
,"PPX" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "PPX" end
,"PPY" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "PPY" end
,"PPTL" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "PPTL" end
,"PPT" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "PPT" end
,"PVX" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "PVX" end
,"PVY" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "PVY" end
,"PVTL" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "PVTL" end
,"PVT" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "PVT" end
,"DesctoX" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "DesctoX" end
,"DesctoY" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "DesctoY" end
,"DesctoTL" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "DesctoTL" end
,"DesctoT" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "DesctoT" end
,"PNX" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "PNX" end
,"PNY" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "PNY" end
,"PNTL" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "PNTL" end
,"PNT" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "PNT" end
,"Separacion" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "Separacion" end
,"AlPaso" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "AlPaso" end
where "Tipo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CodigosRel]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CodigosRel] 
 @c1 int,@c2 char(13),@c3 smallint,@c4 tinyint,@pkc1 int,@pkc2 char(13),@pkc3 tinyint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 8 = 8
begin
update "CodigosRelrep" set
"CodigoInt" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodigoInt" end
,"CodRelacionado" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "CodRelacionado" end
,"Unidad" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Unidad" end
,"Renglon" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Renglon" end
where "CodigoInt" = @pkc1 and "CodRelacionado" = @pkc2 and "Renglon" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CodigosRelrep" set
"Unidad" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Unidad" end
where "CodigoInt" = @pkc1 and "CodRelacionado" = @pkc2 and "Renglon" = @pkc3
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_ciudad]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_ciudad] 
 @c1 numeric(18,0),@c2 char(50),@c3 numeric(18,0),@c4 uniqueidentifier,@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "ciudad" set
"idciudad" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "idciudad" end
,"ciudad" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "ciudad" end
,"idestado" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "idestado" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idciudad" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "ciudad" set
"ciudad" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "ciudad" end
,"idestado" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "idestado" end
,"rowguid" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "rowguid" end
where "idciudad" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_Circular]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_Circular] 
 @c1 smalldatetime,@c2 int,@pkc1 int
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 2 = 2
begin
update "Circular" set
"FechaPrecio" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "FechaPrecio" end
,"CodigoInterno" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "CodigoInterno" end
where "CodigoInterno" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "Circular" set
"FechaPrecio" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "FechaPrecio" end
where "CodigoInterno" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatUsuarios]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatUsuarios] 
 @c1 int,@c2 varchar(20),@c3 varchar(300),@c4 bit,@c5 int,@c6 bit,@c7 smalldatetime,@c8 char(1),@c9 char(1),@pkc1 int
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatUsuarios" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Nombre" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Nombre" end
,"Clave" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Clave" end
,"Grupo" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Grupo" end
,"CodGrupo" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodGrupo" end
,"Confirmado" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Confirmado" end
,"FechaExp" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "FechaExp" end
,"Tipo" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Tipo" end
,"Estatus" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Estatus" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatUsuarios" set
"Nombre" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Nombre" end
,"Clave" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Clave" end
,"Grupo" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Grupo" end
,"CodGrupo" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodGrupo" end
,"Confirmado" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Confirmado" end
,"FechaExp" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "FechaExp" end
,"Tipo" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Tipo" end
,"Estatus" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Estatus" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatSucursalesListasDesctos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatSucursalesListasDesctos] 
 @c1 int,@c2 smallint,@pkc1 int,@pkc2 smallint
,@bitmap binary(1)
as
begin
update "CatSucursalesListasDesctos" set
"CodFarmacia" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodFarmacia" end
,"CodListaDesctos" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "CodListaDesctos" end
where "CodFarmacia" = @pkc1 and "CodListaDesctos" = @pkc2
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatSales]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatSales] 
 @c1 numeric(18,0),@c2 char(100),@pkc1 numeric(18,0)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatSales" set
"CodigoInt" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodigoInt" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "CodigoInt" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatSales" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "CodigoInt" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatRecibidosCta]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatRecibidosCta] 
 @c1 int,@c2 varchar(40),@c3 char(40),@c4 char(40),@c5 char(40),@c6 char(40),@c7 char(40),@c8 money,@c9 char(4),@c10 char(4),@c11 char(4),@c12 char(4),@pkc1 int
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatRecibidosCta" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"Mensaje1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Mensaje1" end
,"Mensaje2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Mensaje2" end
,"Mensaje3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Mensaje3" end
,"Mensaje4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Mensaje4" end
,"Mensaje5" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Mensaje5" end
,"ImpteComision" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ImpteComision" end
,"CtaMay" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CtaMay" end
,"SubCta" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "SubCta" end
,"SSbCta" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "SSbCta" end
,"SSsCta" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "SSsCta" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatRecibidosCta" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"Mensaje1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Mensaje1" end
,"Mensaje2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Mensaje2" end
,"Mensaje3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Mensaje3" end
,"Mensaje4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Mensaje4" end
,"Mensaje5" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Mensaje5" end
,"ImpteComision" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "ImpteComision" end
,"CtaMay" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "CtaMay" end
,"SubCta" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "SubCta" end
,"SSbCta" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "SSbCta" end
,"SSsCta" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "SSsCta" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatProductosRep]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatProductosRep] 
 @c1 int,@c2 varchar(100),@c3 char(4),@c4 char(4),@c5 char(4),@c6 char(4),@c7 int,@c8 smallint,@c9 smallint,@c10 smallmoney,@c11 smallmoney,@c12 char(3),@c13 char(3),@c14 bit,@c15 tinyint,@c16 bit,@c17 bit,@c18 tinyint,@c19 money,@c20 money,@c21 money,@c22 money,@c23 money,@c24 datetime,@c25 datetime,@c26 char(1),@c27 char(1),@c28 char(1),@c29 int,@c30 smallint,@c31 char(1),@c32 bit,@c33 money,@c34 money,@pkc1 int
,@bitmap binary(5)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatProductosRep" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"CodFam1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CodFam1" end
,"CodFam2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodFam2" end
,"CodFam3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodFam3" end
,"CodFam4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodFam4" end
,"Laboratorio" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Laboratorio" end
,"DeptoCompra" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "DeptoCompra" end
,"DeptoVenta" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "DeptoVenta" end
,"PtjComiVta" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "PtjComiVta" end
,"ImpteComiVta" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "ImpteComiVta" end
,"CodClas1" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CodClas1" end
,"CodClas2" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "CodClas2" end
,"Granel" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Granel" end
,"TipoEtiqueta" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "TipoEtiqueta" end
,"Descuento" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Descuento" end
,"Seguimiento" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Seguimiento" end
,"TipoMedic" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "TipoMedic" end
,"PrecioPublico" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "PrecioPublico" end
,"PrecioVenta" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "PrecioVenta" end
,"PrecioFarmacia" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "PrecioFarmacia" end
,"UltimoCosto" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "UltimoCosto" end
,"CostoProm" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CostoProm" end
,"FecUltCompra" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "FecUltCompra" end
,"FecUltiVenta" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "FecUltiVenta" end
,"CambioPrec" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CambioPrec" end
,"TipoProducto" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "TipoProducto" end
,"TipoCompra" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "TipoCompra" end
,"Proveedor" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "Proveedor" end
,"DiasMaxInv" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "DiasMaxInv" end
,"Estatus" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Estatus" end
,"Formulado" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Formulado" end
,"PrecioVentaMixto" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "PrecioVentaMixto" end
,"PrecioCostoMixto" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "PrecioCostoMixto" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatProductosRep" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"CodFam1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CodFam1" end
,"CodFam2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodFam2" end
,"CodFam3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodFam3" end
,"CodFam4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodFam4" end
,"Laboratorio" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Laboratorio" end
,"DeptoCompra" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "DeptoCompra" end
,"DeptoVenta" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "DeptoVenta" end
,"PtjComiVta" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "PtjComiVta" end
,"ImpteComiVta" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "ImpteComiVta" end
,"CodClas1" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CodClas1" end
,"CodClas2" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "CodClas2" end
,"Granel" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Granel" end
,"TipoEtiqueta" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "TipoEtiqueta" end
,"Descuento" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Descuento" end
,"Seguimiento" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Seguimiento" end
,"TipoMedic" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "TipoMedic" end
,"PrecioPublico" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "PrecioPublico" end
,"PrecioVenta" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "PrecioVenta" end
,"PrecioFarmacia" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "PrecioFarmacia" end
,"UltimoCosto" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "UltimoCosto" end
,"CostoProm" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CostoProm" end
,"FecUltCompra" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "FecUltCompra" end
,"FecUltiVenta" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "FecUltiVenta" end
,"CambioPrec" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CambioPrec" end
,"TipoProducto" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "TipoProducto" end
,"TipoCompra" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "TipoCompra" end
,"Proveedor" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "Proveedor" end
,"DiasMaxInv" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "DiasMaxInv" end
,"Estatus" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Estatus" end
,"Formulado" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Formulado" end
,"PrecioVentaMixto" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "PrecioVentaMixto" end
,"PrecioCostoMixto" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "PrecioCostoMixto" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatProductos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatProductos] 
 @c1 int,@c2 varchar(100),@c3 char(4),@c4 char(4),@c5 char(4),@c6 char(4),@c7 int,@c8 smallint,@c9 smallint,@c10 smallmoney,@c11 smallmoney,@c12 char(3),@c13 char(3),@c14 bit,@c15 tinyint,@c16 bit,@c17 bit,@c18 tinyint,@c19 money,@c20 money,@c21 money,@c22 money,@c23 money,@c24 datetime,@c25 datetime,@c26 char(1),@c27 char(1),@c28 char(1),@c29 int,@c30 smallint,@c31 char(1),@c32 bit,@c33 money,@c34 money,@c35 char(30),@c36 char(30),@c37 numeric(18,0),@pkc1 int
,@bitmap binary(5)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatProductosRep" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"CodFam1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CodFam1" end
,"CodFam2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodFam2" end
,"CodFam3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodFam3" end
,"CodFam4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodFam4" end
,"Laboratorio" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Laboratorio" end
,"DeptoCompra" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "DeptoCompra" end
,"DeptoVenta" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "DeptoVenta" end
,"PtjComiVta" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "PtjComiVta" end
,"ImpteComiVta" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "ImpteComiVta" end
,"CodClas1" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CodClas1" end
,"CodClas2" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "CodClas2" end
,"Granel" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Granel" end
,"TipoEtiqueta" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "TipoEtiqueta" end
,"Descuento" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Descuento" end
,"Seguimiento" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Seguimiento" end
,"TipoMedic" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "TipoMedic" end
,"PrecioPublico" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "PrecioPublico" end
,"PrecioVenta" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "PrecioVenta" end
,"PrecioFarmacia" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "PrecioFarmacia" end
,"UltimoCosto" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "UltimoCosto" end
,"CostoProm" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CostoProm" end
,"FecUltCompra" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "FecUltCompra" end
,"FecUltiVenta" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "FecUltiVenta" end
,"CambioPrec" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CambioPrec" end
,"TipoProducto" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "TipoProducto" end
,"TipoCompra" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "TipoCompra" end
,"Proveedor" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "Proveedor" end
,"DiasMaxInv" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "DiasMaxInv" end
,"Estatus" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Estatus" end
,"Formulado" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Formulado" end
,"PrecioVentaMixto" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "PrecioVentaMixto" end
,"PrecioCostoMixto" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "PrecioCostoMixto" end
,"FechaUltCompraSuc" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "FechaUltCompraSuc" end
,"FechaUltVentaSuc" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "FechaUltVentaSuc" end
,"CodSales" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "CodSales" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatProductosRep" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"CodFam1" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "CodFam1" end
,"CodFam2" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "CodFam2" end
,"CodFam3" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "CodFam3" end
,"CodFam4" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "CodFam4" end
,"Laboratorio" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "Laboratorio" end
,"DeptoCompra" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "DeptoCompra" end
,"DeptoVenta" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "DeptoVenta" end
,"PtjComiVta" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "PtjComiVta" end
,"ImpteComiVta" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "ImpteComiVta" end
,"CodClas1" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "CodClas1" end
,"CodClas2" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "CodClas2" end
,"Granel" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "Granel" end
,"TipoEtiqueta" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "TipoEtiqueta" end
,"Descuento" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "Descuento" end
,"Seguimiento" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "Seguimiento" end
,"TipoMedic" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "TipoMedic" end
,"PrecioPublico" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "PrecioPublico" end
,"PrecioVenta" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "PrecioVenta" end
,"PrecioFarmacia" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "PrecioFarmacia" end
,"UltimoCosto" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "UltimoCosto" end
,"CostoProm" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "CostoProm" end
,"FecUltCompra" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "FecUltCompra" end
,"FecUltiVenta" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "FecUltiVenta" end
,"CambioPrec" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "CambioPrec" end
,"TipoProducto" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "TipoProducto" end
,"TipoCompra" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "TipoCompra" end
,"Proveedor" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "Proveedor" end
,"DiasMaxInv" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "DiasMaxInv" end
,"Estatus" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "Estatus" end
,"Formulado" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "Formulado" end
,"PrecioVentaMixto" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "PrecioVentaMixto" end
,"PrecioCostoMixto" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "PrecioCostoMixto" end
,"FechaUltCompraSuc" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "FechaUltCompraSuc" end
,"FechaUltVentaSuc" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "FechaUltVentaSuc" end
,"CodSales" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "CodSales" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatEmpresas]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatEmpresas] 
 @c1 char(4),@c2 varchar(80),@c3 char(15),@c4 char(20),@c5 char(80),@c6 char(40),@c7 char(8),@c8 char(40),@c9 char(40),@c10 varchar(60),@c11 varchar(60),@pkc1 char(4)
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatEmpresas" set
"CodEmpresa" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "CodEmpresa" end
,"NomEmpresa" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "NomEmpresa" end
,"RFC" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "RFC" end
,"RegSSA" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "RegSSA" end
,"DireccionFiscal" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "DireccionFiscal" end
,"Colonia" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Colonia" end
,"CP" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CP" end
,"Ciudad" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Ciudad" end
,"Estado" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Estado" end
,"Servidor" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Servidor" end
,"BaseDatos" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "BaseDatos" end
where "CodEmpresa" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatEmpresas" set
"NomEmpresa" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "NomEmpresa" end
,"RFC" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "RFC" end
,"RegSSA" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "RegSSA" end
,"DireccionFiscal" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "DireccionFiscal" end
,"Colonia" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Colonia" end
,"CP" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "CP" end
,"Ciudad" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "Ciudad" end
,"Estado" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "Estado" end
,"Servidor" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "Servidor" end
,"BaseDatos" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "BaseDatos" end
where "CodEmpresa" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatEmpleados]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSupd_CatEmpleados    fecha de la secuencia de comandos: 11/03/2005 12:11:21 a.m. ******/





create procedure [dbo].[sp_MSupd_CatEmpleados] 
 @c1 char(8),@c2 char(60),@c3 char(40),@pkc1 char(8)
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
update "CatEmpleados" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Apellido" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Apellido" end
,"Nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Nombre" end
where "Codigo" = @pkc1
else
update "CatEmpleados" set
"Apellido" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Apellido" end
,"Nombre" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Nombre" end
where "Codigo" = @pkc1
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatDepartamentos]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatDepartamentos] 
 @c1 smallint,@c2 varchar(40),@c3 money,@c4 char(4),@c5 char(4),@c6 char(4),@c7 char(4),@c8 char(4),@c9 char(4),@c10 char(4),@c11 char(4),@c12 char(4),@c13 char(4),@c14 char(4),@c15 char(4),@c16 char(4),@c17 char(4),@c18 char(4),@c19 char(4),@c20 char(4),@c21 char(4),@c22 char(4),@c23 char(4),@c24 char(4),@c25 char(4),@c26 char(4),@c27 char(4),@c28 char(4),@c29 char(4),@c30 char(4),@c31 char(4),@c32 char(4),@c33 char(4),@c34 char(4),@c35 char(4),@c36 char(4),@c37 char(4),@c38 char(4),@c39 char(4),@c40 char(4),@c41 char(4),@c42 char(4),@c43 char(4),@c44 char(4),@c45 char(4),@c46 char(4),@c47 char(4),@c48 char(4),@c49 char(4),@c50 char(4),@c51 char(4),@c52 char(4),@c53 char(4),@c54 char(4),@c55 char(4),@c56 char(4),@c57 char(4),@c58 char(4),@c59 char(4),@c60 char(4),@c61 char(4),@c62 char(4),@c63 char(4),@c64 char(4),@c65 char(4),@c66 char(4),@c67 char(4),@c68 char(4),@c69 char(4),@c70 char(4),@c71 char(4),@c72 char(4),@c73 char(4),@c74 char(4),@c75 char(4),@pkc1 smallint
,@bitmap binary(10)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatDepartamentos" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"TasaIVA" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "TasaIVA" end
,"MayCompras" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "MayCompras" end
,"SubCompras" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "SubCompras" end
,"SsbCompras" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "SsbCompras" end
,"SssCompras" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "SssCompras" end
,"MayDesctosCompras" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "MayDesctosCompras" end
,"SubDesctosCompras" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "SubDesctosCompras" end
,"SsbDesctosCompras" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "SsbDesctosCompras" end
,"SssDesctosCompras" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "SssDesctosCompras" end
,"MayDevolsCompras" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "MayDevolsCompras" end
,"SubDevolsCompras" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "SubDevolsCompras" end
,"SsbDevolsCompras" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "SsbDevolsCompras" end
,"SssDevolsCompras" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "SssDevolsCompras" end
,"MayAlmVentas" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "MayAlmVentas" end
,"SubAlmVentas" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "SubAlmVentas" end
,"SsbAlmVentas" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "SsbAlmVentas" end
,"SssAlmVentas" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "SssAlmVentas" end
,"MayAlmDevolsVentas" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "MayAlmDevolsVentas" end
,"SubAlmDevolsVentas" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "SubAlmDevolsVentas" end
,"SsbAlmDevolsVentas" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "SsbAlmDevolsVentas" end
,"SssAlmDevolsVentas" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "SssAlmDevolsVentas" end
,"MayMovtosAjuste" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "MayMovtosAjuste" end
,"SubMovtosAjuste" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "SubMovtosAjuste" end
,"SsbMovtosAjuste" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "SsbMovtosAjuste" end
,"SssMovtosAjuste" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "SssMovtosAjuste" end
,"MayFaltanSobran" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "MayFaltanSobran" end
,"SubFaltanSobran" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "SubFaltanSobran" end
,"SsbFaltanSobran" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "SsbFaltanSobran" end
,"SssFaltanSobran" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "SssFaltanSobran" end
,"MayCaducidades" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "MayCaducidades" end
,"SubCaducidades" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "SubCaducidades" end
,"SsbCaducidades" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "SsbCaducidades" end
,"SssCaducidades" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "SssCaducidades" end
,"MayMermas" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "MayMermas" end
,"SubMermas" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "SubMermas" end
,"SsbMermas" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "SsbMermas" end
,"SssMermas" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "SssMermas" end
,"MayRobo" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "MayRobo" end
,"SubRobo" = case substring(@bitmap,6,1) & 1 when 1 then @c41 else "SubRobo" end
,"SsbRobo" = case substring(@bitmap,6,1) & 2 when 2 then @c42 else "SsbRobo" end
,"SssRobo" = case substring(@bitmap,6,1) & 4 when 4 then @c43 else "SssRobo" end
,"MayOtrasEnt" = case substring(@bitmap,6,1) & 8 when 8 then @c44 else "MayOtrasEnt" end
,"SubOtrasEnt" = case substring(@bitmap,6,1) & 16 when 16 then @c45 else "SubOtrasEnt" end
,"SsbOtrasEnt" = case substring(@bitmap,6,1) & 32 when 32 then @c46 else "SsbOtrasEnt" end
,"SssOtrasEnt" = case substring(@bitmap,6,1) & 64 when 64 then @c47 else "SssOtrasEnt" end
,"MayOtrasSal" = case substring(@bitmap,6,1) & 128 when 128 then @c48 else "MayOtrasSal" end
,"SubOtrasSal" = case substring(@bitmap,7,1) & 1 when 1 then @c49 else "SubOtrasSal" end
,"SsbOtrasSal" = case substring(@bitmap,7,1) & 2 when 2 then @c50 else "SsbOtrasSal" end
,"SssOtrasSal" = case substring(@bitmap,7,1) & 4 when 4 then @c51 else "SssOtrasSal" end
,"MayResVentas" = case substring(@bitmap,7,1) & 8 when 8 then @c52 else "MayResVentas" end
,"SubResVentas" = case substring(@bitmap,7,1) & 16 when 16 then @c53 else "SubResVentas" end
,"SsbResVentas" = case substring(@bitmap,7,1) & 32 when 32 then @c54 else "SsbResVentas" end
,"SssResVentas" = case substring(@bitmap,7,1) & 64 when 64 then @c55 else "SssResVentas" end
,"MayDesctosVentas" = case substring(@bitmap,7,1) & 128 when 128 then @c56 else "MayDesctosVentas" end
,"SubDesctosVentas" = case substring(@bitmap,8,1) & 1 when 1 then @c57 else "SubDesctosVentas" end
,"SsbDesctosVentas" = case substring(@bitmap,8,1) & 2 when 2 then @c58 else "SsbDesctosVentas" end
,"SssDesctosVentas" = case substring(@bitmap,8,1) & 4 when 4 then @c59 else "SssDesctosVentas" end
,"MayDevolsVentas" = case substring(@bitmap,8,1) & 8 when 8 then @c60 else "MayDevolsVentas" end
,"SubDevolsVentas" = case substring(@bitmap,8,1) & 16 when 16 then @c61 else "SubDevolsVentas" end
,"SsbDevolsVentas" = case substring(@bitmap,8,1) & 32 when 32 then @c62 else "SsbDevolsVentas" end
,"SssDevolsVentas" = case substring(@bitmap,8,1) & 64 when 64 then @c63 else "SssDevolsVentas" end
,"MayCostosVentas" = case substring(@bitmap,8,1) & 128 when 128 then @c64 else "MayCostosVentas" end
,"SubCostosVentas" = case substring(@bitmap,9,1) & 1 when 1 then @c65 else "SubCostosVentas" end
,"SsbCostosVentas" = case substring(@bitmap,9,1) & 2 when 2 then @c66 else "SsbCostosVentas" end
,"SssCostosVentas" = case substring(@bitmap,9,1) & 4 when 4 then @c67 else "SssCostosVentas" end
,"MayIVACob" = case substring(@bitmap,9,1) & 8 when 8 then @c68 else "MayIVACob" end
,"SubIVACob" = case substring(@bitmap,9,1) & 16 when 16 then @c69 else "SubIVACob" end
,"SsbIVACob" = case substring(@bitmap,9,1) & 32 when 32 then @c70 else "SsbIVACob" end
,"SssIVACob" = case substring(@bitmap,9,1) & 64 when 64 then @c71 else "SssIVACob" end
,"MayIVAPag" = case substring(@bitmap,9,1) & 128 when 128 then @c72 else "MayIVAPag" end
,"SubIVAPag" = case substring(@bitmap,10,1) & 1 when 1 then @c73 else "SubIVAPag" end
,"SsbIVAPag" = case substring(@bitmap,10,1) & 2 when 2 then @c74 else "SsbIVAPag" end
,"SssbIVAPag" = case substring(@bitmap,10,1) & 4 when 4 then @c75 else "SssbIVAPag" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatDepartamentos" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"TasaIVA" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "TasaIVA" end
,"MayCompras" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "MayCompras" end
,"SubCompras" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "SubCompras" end
,"SsbCompras" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "SsbCompras" end
,"SssCompras" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "SssCompras" end
,"MayDesctosCompras" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "MayDesctosCompras" end
,"SubDesctosCompras" = case substring(@bitmap,2,1) & 1 when 1 then @c9 else "SubDesctosCompras" end
,"SsbDesctosCompras" = case substring(@bitmap,2,1) & 2 when 2 then @c10 else "SsbDesctosCompras" end
,"SssDesctosCompras" = case substring(@bitmap,2,1) & 4 when 4 then @c11 else "SssDesctosCompras" end
,"MayDevolsCompras" = case substring(@bitmap,2,1) & 8 when 8 then @c12 else "MayDevolsCompras" end
,"SubDevolsCompras" = case substring(@bitmap,2,1) & 16 when 16 then @c13 else "SubDevolsCompras" end
,"SsbDevolsCompras" = case substring(@bitmap,2,1) & 32 when 32 then @c14 else "SsbDevolsCompras" end
,"SssDevolsCompras" = case substring(@bitmap,2,1) & 64 when 64 then @c15 else "SssDevolsCompras" end
,"MayAlmVentas" = case substring(@bitmap,2,1) & 128 when 128 then @c16 else "MayAlmVentas" end
,"SubAlmVentas" = case substring(@bitmap,3,1) & 1 when 1 then @c17 else "SubAlmVentas" end
,"SsbAlmVentas" = case substring(@bitmap,3,1) & 2 when 2 then @c18 else "SsbAlmVentas" end
,"SssAlmVentas" = case substring(@bitmap,3,1) & 4 when 4 then @c19 else "SssAlmVentas" end
,"MayAlmDevolsVentas" = case substring(@bitmap,3,1) & 8 when 8 then @c20 else "MayAlmDevolsVentas" end
,"SubAlmDevolsVentas" = case substring(@bitmap,3,1) & 16 when 16 then @c21 else "SubAlmDevolsVentas" end
,"SsbAlmDevolsVentas" = case substring(@bitmap,3,1) & 32 when 32 then @c22 else "SsbAlmDevolsVentas" end
,"SssAlmDevolsVentas" = case substring(@bitmap,3,1) & 64 when 64 then @c23 else "SssAlmDevolsVentas" end
,"MayMovtosAjuste" = case substring(@bitmap,3,1) & 128 when 128 then @c24 else "MayMovtosAjuste" end
,"SubMovtosAjuste" = case substring(@bitmap,4,1) & 1 when 1 then @c25 else "SubMovtosAjuste" end
,"SsbMovtosAjuste" = case substring(@bitmap,4,1) & 2 when 2 then @c26 else "SsbMovtosAjuste" end
,"SssMovtosAjuste" = case substring(@bitmap,4,1) & 4 when 4 then @c27 else "SssMovtosAjuste" end
,"MayFaltanSobran" = case substring(@bitmap,4,1) & 8 when 8 then @c28 else "MayFaltanSobran" end
,"SubFaltanSobran" = case substring(@bitmap,4,1) & 16 when 16 then @c29 else "SubFaltanSobran" end
,"SsbFaltanSobran" = case substring(@bitmap,4,1) & 32 when 32 then @c30 else "SsbFaltanSobran" end
,"SssFaltanSobran" = case substring(@bitmap,4,1) & 64 when 64 then @c31 else "SssFaltanSobran" end
,"MayCaducidades" = case substring(@bitmap,4,1) & 128 when 128 then @c32 else "MayCaducidades" end
,"SubCaducidades" = case substring(@bitmap,5,1) & 1 when 1 then @c33 else "SubCaducidades" end
,"SsbCaducidades" = case substring(@bitmap,5,1) & 2 when 2 then @c34 else "SsbCaducidades" end
,"SssCaducidades" = case substring(@bitmap,5,1) & 4 when 4 then @c35 else "SssCaducidades" end
,"MayMermas" = case substring(@bitmap,5,1) & 8 when 8 then @c36 else "MayMermas" end
,"SubMermas" = case substring(@bitmap,5,1) & 16 when 16 then @c37 else "SubMermas" end
,"SsbMermas" = case substring(@bitmap,5,1) & 32 when 32 then @c38 else "SsbMermas" end
,"SssMermas" = case substring(@bitmap,5,1) & 64 when 64 then @c39 else "SssMermas" end
,"MayRobo" = case substring(@bitmap,5,1) & 128 when 128 then @c40 else "MayRobo" end
,"SubRobo" = case substring(@bitmap,6,1) & 1 when 1 then @c41 else "SubRobo" end
,"SsbRobo" = case substring(@bitmap,6,1) & 2 when 2 then @c42 else "SsbRobo" end
,"SssRobo" = case substring(@bitmap,6,1) & 4 when 4 then @c43 else "SssRobo" end
,"MayOtrasEnt" = case substring(@bitmap,6,1) & 8 when 8 then @c44 else "MayOtrasEnt" end
,"SubOtrasEnt" = case substring(@bitmap,6,1) & 16 when 16 then @c45 else "SubOtrasEnt" end
,"SsbOtrasEnt" = case substring(@bitmap,6,1) & 32 when 32 then @c46 else "SsbOtrasEnt" end
,"SssOtrasEnt" = case substring(@bitmap,6,1) & 64 when 64 then @c47 else "SssOtrasEnt" end
,"MayOtrasSal" = case substring(@bitmap,6,1) & 128 when 128 then @c48 else "MayOtrasSal" end
,"SubOtrasSal" = case substring(@bitmap,7,1) & 1 when 1 then @c49 else "SubOtrasSal" end
,"SsbOtrasSal" = case substring(@bitmap,7,1) & 2 when 2 then @c50 else "SsbOtrasSal" end
,"SssOtrasSal" = case substring(@bitmap,7,1) & 4 when 4 then @c51 else "SssOtrasSal" end
,"MayResVentas" = case substring(@bitmap,7,1) & 8 when 8 then @c52 else "MayResVentas" end
,"SubResVentas" = case substring(@bitmap,7,1) & 16 when 16 then @c53 else "SubResVentas" end
,"SsbResVentas" = case substring(@bitmap,7,1) & 32 when 32 then @c54 else "SsbResVentas" end
,"SssResVentas" = case substring(@bitmap,7,1) & 64 when 64 then @c55 else "SssResVentas" end
,"MayDesctosVentas" = case substring(@bitmap,7,1) & 128 when 128 then @c56 else "MayDesctosVentas" end
,"SubDesctosVentas" = case substring(@bitmap,8,1) & 1 when 1 then @c57 else "SubDesctosVentas" end
,"SsbDesctosVentas" = case substring(@bitmap,8,1) & 2 when 2 then @c58 else "SsbDesctosVentas" end
,"SssDesctosVentas" = case substring(@bitmap,8,1) & 4 when 4 then @c59 else "SssDesctosVentas" end
,"MayDevolsVentas" = case substring(@bitmap,8,1) & 8 when 8 then @c60 else "MayDevolsVentas" end
,"SubDevolsVentas" = case substring(@bitmap,8,1) & 16 when 16 then @c61 else "SubDevolsVentas" end
,"SsbDevolsVentas" = case substring(@bitmap,8,1) & 32 when 32 then @c62 else "SsbDevolsVentas" end
,"SssDevolsVentas" = case substring(@bitmap,8,1) & 64 when 64 then @c63 else "SssDevolsVentas" end
,"MayCostosVentas" = case substring(@bitmap,8,1) & 128 when 128 then @c64 else "MayCostosVentas" end
,"SubCostosVentas" = case substring(@bitmap,9,1) & 1 when 1 then @c65 else "SubCostosVentas" end
,"SsbCostosVentas" = case substring(@bitmap,9,1) & 2 when 2 then @c66 else "SsbCostosVentas" end
,"SssCostosVentas" = case substring(@bitmap,9,1) & 4 when 4 then @c67 else "SssCostosVentas" end
,"MayIVACob" = case substring(@bitmap,9,1) & 8 when 8 then @c68 else "MayIVACob" end
,"SubIVACob" = case substring(@bitmap,9,1) & 16 when 16 then @c69 else "SubIVACob" end
,"SsbIVACob" = case substring(@bitmap,9,1) & 32 when 32 then @c70 else "SsbIVACob" end
,"SssIVACob" = case substring(@bitmap,9,1) & 64 when 64 then @c71 else "SssIVACob" end
,"MayIVAPag" = case substring(@bitmap,9,1) & 128 when 128 then @c72 else "MayIVAPag" end
,"SubIVAPag" = case substring(@bitmap,10,1) & 1 when 1 then @c73 else "SubIVAPag" end
,"SsbIVAPag" = case substring(@bitmap,10,1) & 2 when 2 then @c74 else "SsbIVAPag" end
,"SssbIVAPag" = case substring(@bitmap,10,1) & 4 when 4 then @c75 else "SssbIVAPag" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatDenominaciones]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatDenominaciones] 
 @c1 smallint,@c2 money,@c3 int,@pkc1 smallint
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatDenominaciones" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"ForPag" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "ForPag" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatDenominaciones" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
,"ForPag" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "ForPag" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatFamilias]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatFamilias] @c1 nvarchar(4),@c2 nvarchar(4),@c3 nvarchar(4),@c4 nvarchar(4),@c5 nvarchar(30),@c6 tinyint,@c7 nvarchar(10),@c8 nvarchar(40)

AS
BEGIN


insert into "CatFamilias"( 
"Codigo1", "Codigo2", "Codigo3", "Codigo4", "Descripcion", "Hijos", "NomCorto", "NomCConcatenado"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatLaboratorios]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatLaboratorios] @pkc1 int
as
delete "CatLaboratorios"
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CodigosRel]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CodigosRel] @c1 int,@c2 char(13),@c3 smallint,@c4 tinyint

AS
BEGIN


insert into "CodigosRelrep"( 
"CodigoInt", "CodRelacionado", "Unidad", "Renglon"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_ciudad]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_ciudad] @c1 numeric(18,0),@c2 char(50),@c3 numeric(18,0),@c4 uniqueidentifier

AS
BEGIN


insert into "ciudad"( 
"idciudad", "ciudad", "idestado", "rowguid"
 )

values ( 
@c1, @c2, @c3, @c4
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_Circular]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_Circular] @c1 smalldatetime,@c2 int

AS
BEGIN


insert into "Circular"( 
"FechaPrecio", "CodigoInterno"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatUsuarios]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatUsuarios] @c1 int,@c2 varchar(20),@c3 varchar(300),@c4 bit,@c5 int,@c6 bit,@c7 smalldatetime,@c8 char(1),@c9 char(1)

AS
BEGIN


insert into "CatUsuarios"( 
"Codigo", "Nombre", "Clave", "Grupo", "CodGrupo", "Confirmado", "FechaExp", "Tipo", "Estatus"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatSucursalesListasDesctos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatSucursalesListasDesctos] @c1 int,@c2 smallint

AS
BEGIN


insert into "CatSucursalesListasDesctos"( 
"CodFarmacia", "CodListaDesctos"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatSales]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatSales] @c1 numeric(18,0),@c2 char(100)

AS
BEGIN


insert into "CatSales"( 
"CodigoInt", "Descripcion"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatRecibidosCta]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatRecibidosCta] @c1 int,@c2 varchar(40),@c3 char(40),@c4 char(40),@c5 char(40),@c6 char(40),@c7 char(40),@c8 money,@c9 char(4),@c10 char(4),@c11 char(4),@c12 char(4)

AS
BEGIN


insert into "CatRecibidosCta"( 
"Codigo", "Descripcion", "Mensaje1", "Mensaje2", "Mensaje3", "Mensaje4", "Mensaje5", "ImpteComision", "CtaMay", "SubCta", "SSbCta", "SSsCta"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatProductosRep]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatProductosRep] @c1 int,@c2 varchar(100),@c3 char(4),@c4 char(4),@c5 char(4),@c6 char(4),@c7 int,@c8 smallint,@c9 smallint,@c10 smallmoney,@c11 smallmoney,@c12 char(3),@c13 char(3),@c14 bit,@c15 tinyint,@c16 bit,@c17 bit,@c18 tinyint,@c19 money,@c20 money,@c21 money,@c22 money,@c23 money,@c24 datetime,@c25 datetime,@c26 char(1),@c27 char(1),@c28 char(1),@c29 int,@c30 smallint,@c31 char(1),@c32 bit,@c33 money,@c34 money

AS
BEGIN


insert into "CatProductosRep"( 
"Codigo", "Descripcion", "CodFam1", "CodFam2", "CodFam3", "CodFam4", "Laboratorio", "DeptoCompra", "DeptoVenta", "PtjComiVta", "ImpteComiVta", "CodClas1", "CodClas2", "Granel", "TipoEtiqueta", "Descuento", "Seguimiento", "TipoMedic", "PrecioPublico", "PrecioVenta", "PrecioFarmacia", "UltimoCosto", "CostoProm", "FecUltCompra", "FecUltiVenta", "CambioPrec", "TipoProducto", "TipoCompra", "Proveedor", "DiasMaxInv", "Estatus", "Formulado", "PrecioVentaMixto", "PrecioCostoMixto"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatProductos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatProductos] @c1 int,@c2 varchar(100),@c3 char(4),@c4 char(4),@c5 char(4),@c6 char(4),@c7 int,@c8 smallint,@c9 smallint,@c10 smallmoney,@c11 smallmoney,@c12 char(3),@c13 char(3),@c14 bit,@c15 tinyint,@c16 bit,@c17 bit,@c18 tinyint,@c19 money,@c20 money,@c21 money,@c22 money,@c23 money,@c24 datetime,@c25 datetime,@c26 char(1),@c27 char(1),@c28 char(1),@c29 int,@c30 smallint,@c31 char(1),@c32 bit,@c33 money,@c34 money,@c35 char(30),@c36 char(30),@c37 numeric(18,0)

AS
BEGIN


insert into "CatProductosRep"( 
"Codigo", "Descripcion", "CodFam1", "CodFam2", "CodFam3", "CodFam4", "Laboratorio", "DeptoCompra", "DeptoVenta", "PtjComiVta", "ImpteComiVta", "CodClas1", "CodClas2", "Granel", "TipoEtiqueta", "Descuento", "Seguimiento", "TipoMedic", "PrecioPublico", "PrecioVenta", "PrecioFarmacia", "UltimoCosto", "CostoProm", "FecUltCompra", "FecUltiVenta", "CambioPrec", "TipoProducto", "TipoCompra", "Proveedor", "DiasMaxInv", "Estatus", "Formulado", "PrecioVentaMixto", "PrecioCostoMixto", "FechaUltCompraSuc", "FechaUltVentaSuc", "CodSales"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34, @c35, @c36, @c37
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatEmpresas]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatEmpresas] @c1 char(4),@c2 varchar(80),@c3 char(15),@c4 char(20),@c5 char(80),@c6 char(40),@c7 char(8),@c8 char(40),@c9 char(40),@c10 varchar(60),@c11 varchar(60)

AS
BEGIN


insert into "CatEmpresas"( 
"CodEmpresa", "NomEmpresa", "RFC", "RegSSA", "DireccionFiscal", "Colonia", "CP", "Ciudad", "Estado", "Servidor", "BaseDatos"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatEmpleados]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.sp_MSins_CatEmpleados    fecha de la secuencia de comandos: 11/03/2005 12:11:21 a.m. ******/





create procedure [dbo].[sp_MSins_CatEmpleados] @c1 char(8),@c2 char(60),@c3 char(40)
as
insert into "CatEmpleados" values ( @c1,@c2,@c3 )
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatDepartamentos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatDepartamentos] @c1 smallint,@c2 varchar(40),@c3 money,@c4 char(4),@c5 char(4),@c6 char(4),@c7 char(4),@c8 char(4),@c9 char(4),@c10 char(4),@c11 char(4),@c12 char(4),@c13 char(4),@c14 char(4),@c15 char(4),@c16 char(4),@c17 char(4),@c18 char(4),@c19 char(4),@c20 char(4),@c21 char(4),@c22 char(4),@c23 char(4),@c24 char(4),@c25 char(4),@c26 char(4),@c27 char(4),@c28 char(4),@c29 char(4),@c30 char(4),@c31 char(4),@c32 char(4),@c33 char(4),@c34 char(4),@c35 char(4),@c36 char(4),@c37 char(4),@c38 char(4),@c39 char(4),@c40 char(4),@c41 char(4),@c42 char(4),@c43 char(4),@c44 char(4),@c45 char(4),@c46 char(4),@c47 char(4),@c48 char(4),@c49 char(4),@c50 char(4),@c51 char(4),@c52 char(4),@c53 char(4),@c54 char(4),@c55 char(4),@c56 char(4),@c57 char(4),@c58 char(4),@c59 char(4),@c60 char(4),@c61 char(4),@c62 char(4),@c63 char(4),@c64 char(4),@c65 char(4),@c66 char(4),@c67 char(4),@c68 char(4),@c69 char(4),@c70 char(4),@c71 char(4),@c72 char(4),@c73 char(4),@c74 char(4),@c75 char(4)

AS
BEGIN


insert into "CatDepartamentos"( 
"Codigo", "Descripcion", "TasaIVA", "MayCompras", "SubCompras", "SsbCompras", "SssCompras", "MayDesctosCompras", "SubDesctosCompras", "SsbDesctosCompras", "SssDesctosCompras", "MayDevolsCompras", "SubDevolsCompras", "SsbDevolsCompras", "SssDevolsCompras", "MayAlmVentas", "SubAlmVentas", "SsbAlmVentas", "SssAlmVentas", "MayAlmDevolsVentas", "SubAlmDevolsVentas", "SsbAlmDevolsVentas", "SssAlmDevolsVentas", "MayMovtosAjuste", "SubMovtosAjuste", "SsbMovtosAjuste", "SssMovtosAjuste", "MayFaltanSobran", "SubFaltanSobran", "SsbFaltanSobran", "SssFaltanSobran", "MayCaducidades", "SubCaducidades", "SsbCaducidades", "SssCaducidades", "MayMermas", "SubMermas", "SsbMermas", "SssMermas", "MayRobo", "SubRobo", "SsbRobo", "SssRobo", "MayOtrasEnt", "SubOtrasEnt", "SsbOtrasEnt", "SssOtrasEnt", "MayOtrasSal", "SubOtrasSal", "SsbOtrasSal", "SssOtrasSal", "MayResVentas", "SubResVentas", "SsbResVentas", "SssResVentas", "MayDesctosVentas", "SubDesctosVentas", "SsbDesctosVentas", "SssDesctosVentas", "MayDevolsVentas", "SubDevolsVentas", "SsbDevolsVentas", "SssDevolsVentas", "MayCostosVentas", "SubCostosVentas", "SsbCostosVentas", "SssCostosVentas", "MayIVACob", "SubIVACob", "SsbIVACob", "SssIVACob", "MayIVAPag", "SubIVAPag", "SsbIVAPag", "SssbIVAPag"
 )

values ( 
@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10, @c11, @c12, @c13, @c14, @c15, @c16, @c17, @c18, @c19, @c20, @c21, @c22, @c23, @c24, @c25, @c26, @c27, @c28, @c29, @c30, @c31, @c32, @c33, @c34, @c35, @c36, @c37, @c38, @c39, @c40, @c41, @c42, @c43, @c44, @c45, @c46, @c47, @c48, @c49, @c50, @c51, @c52, @c53, @c54, @c55, @c56, @c57, @c58, @c59, @c60, @c61, @c62, @c63, @c64, @c65, @c66, @c67, @c68, @c69, @c70, @c71, @c72, @c73, @c74, @c75
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatDenominaciones]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatDenominaciones] @c1 smallint,@c2 money,@c3 int

AS
BEGIN


insert into "CatDenominaciones"( 
"Codigo", "Descripcion", "ForPag"
 )

values ( 
@c1, @c2, @c3
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSdel_CatFamilias]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSdel_CatFamilias] @pkc1 nvarchar(4),@pkc2 nvarchar(4),@pkc3 nvarchar(4),@pkc4 nvarchar(4)
as
delete "CatFamilias"
where "Codigo1" = @pkc1 and "Codigo2" = @pkc2 and "Codigo3" = @pkc3 and "Codigo4" = @pkc4
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
GO
/****** Object:  StoredProcedure [dbo].[Sp_Mensaje]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.Sp_Mensaje    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/

CREATE PROCEDURE [dbo].[Sp_Mensaje] AS
IF (SELECT COUNT(*) FROM CodigosRel) = 0 
	print 'Tabla vacia'
GO
/****** Object:  StoredProcedure [dbo].[SP_AltaProductos]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.SP_AltaProductos    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/




--- Elaboro: Erica Díaz 
--- Fecha Creación: 08/Dic/2002
--- Procedimiento para dar de alta productos que no se encuentren registrados en el ProductoFarma de Cada una de las Farmacias
--- Este procedimiento te selecciona los productos que estan en la tabla AltaProductos y no se encuentren en ProductoFarma y los inserta en esta misma
--- Tabla ProductoFarma y en esa misma tabla AltaProductos, Los elimina una vez insertados
CREATE PROCEDURE [dbo].[SP_AltaProductos] as
Declare @Farmacia as int
Declare @Producto as int
Declare @UltimoCosto as Money
Declare @CostoProm as Money
Declare @Proveedor as int
declare @CantidadPedida as smallmoney

select @Farmacia=farmacia from config

DECLARE recDatos CURSOR For
select AP.Producto,AP.CantidadPedida, CP.UltimoCosto,CP.CostoProm, CP.Proveedor 
	from Altaproductos AP inner join CatProductos CP on CP.Codigo= AP.Producto
	where AP.Sucursal =@Farmacia and AP.Producto Not in (Select PF.Codigo from ProductoFarma as PF where PF.Farmacia = @Farmacia)
open recDatos

FETCH NEXT FROM recDatos 
into @Producto,@CantidadPedida,@UltimoCosto,@CostoProm,@Proveedor

BEGIN TRANSACTION SP_AltaProductos  --inicial la transacción

WHILE @@FETCH_STATUS = 0
BEGIN
	
	insert into ProductoFarma(Farmacia,Codigo,UltimoCosto,CostoProm,Proveedor,Cant_Pedida)
	Values (@Farmacia,@Producto,@ultimocosto,@costoprom,@proveedor,@cantidadpedida)

	FETCH NEXT FROM recDatos 
	into @Producto,@CantidadPedida,@UltimoCosto,@CostoProm,@Proveedor

end
--Delete  from altaproductos where sucursal =@Farmacia
CLOSE recDatos
DEALLOCATE recDatos

COMMIT TRANSACTION SP_AltaProductos   --Termina la transacción
GO
/****** Object:  Table [dbo].[VenDet]    Script Date: 08/09/2013 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VenDet](
	[Folio] [char](13) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[Cant_Vend] [money] NOT NULL,
	[Cant_Dev] [money] NOT NULL,
	[PrecioUnit] [money] NOT NULL,
	[ImpteIVA] [money] NOT NULL,
	[TasaIVA] [money] NOT NULL,
	[PorcDescto] [money] NOT NULL,
	[ImpteDescto] [money] NOT NULL,
	[ComisionVend] [money] NOT NULL,
	[Facturado] [char](1) NOT NULL,
	[CostoUnit] [money] NOT NULL,
	[Depto] [smallint] NOT NULL,
	[Cliente] [int] NOT NULL,
	[Empleado] [smallint] NOT NULL,
	[Dependiente] [smallint] NOT NULL,
	[Parentesco] [char](20) NOT NULL,
	[CodDoctor] [int] NOT NULL,
	[NomDoctor] [char](60) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[TipoDescto] [char](1) NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[ImpteCopago] [money] NOT NULL,
	[FolFacturaInt] [char](9) NOT NULL,
	[FolFactura] [char](9) NOT NULL,
	[Caja] [smallint] NOT NULL,
	[FechaVtaSinHora] [smalldatetime] NOT NULL,
	[FolioReceta] [char](20) NOT NULL,
	[StatusReceta] [char](20) NOT NULL,
 CONSTRAINT [PK_VenDet] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatFamilias]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatFamilias] 
 @c1 nvarchar(4),@c2 nvarchar(4),@c3 nvarchar(4),@c4 nvarchar(4),@c5 nvarchar(30),@c6 tinyint,@c7 nvarchar(10),@c8 nvarchar(40),@pkc1 nvarchar(4),@pkc2 nvarchar(4),@pkc3 nvarchar(4),@pkc4 nvarchar(4)
,@bitmap binary(2)
as
if substring(@bitmap,1,1) & 1 = 1 or substring(@bitmap,1,1) & 2 = 2 or substring(@bitmap,1,1) & 4 = 4 or substring(@bitmap,1,1) & 8 = 8
begin
update "CatFamilias" set
"Codigo1" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo1" end
,"Codigo2" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Codigo2" end
,"Codigo3" = case substring(@bitmap,1,1) & 4 when 4 then @c3 else "Codigo3" end
,"Codigo4" = case substring(@bitmap,1,1) & 8 when 8 then @c4 else "Codigo4" end
,"Descripcion" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Descripcion" end
,"Hijos" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Hijos" end
,"NomCorto" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "NomCorto" end
,"NomCConcatenado" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "NomCConcatenado" end
where "Codigo1" = @pkc1 and "Codigo2" = @pkc2 and "Codigo3" = @pkc3 and "Codigo4" = @pkc4
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatFamilias" set
"Descripcion" = case substring(@bitmap,1,1) & 16 when 16 then @c5 else "Descripcion" end
,"Hijos" = case substring(@bitmap,1,1) & 32 when 32 then @c6 else "Hijos" end
,"NomCorto" = case substring(@bitmap,1,1) & 64 when 64 then @c7 else "NomCorto" end
,"NomCConcatenado" = case substring(@bitmap,1,1) & 128 when 128 then @c8 else "NomCConcatenado" end
where "Codigo1" = @pkc1 and "Codigo2" = @pkc2 and "Codigo3" = @pkc3 and "Codigo4" = @pkc4
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MSins_CatLaboratorios]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSins_CatLaboratorios] @c1 int,@c2 nvarchar(40)

AS
BEGIN


insert into "CatLaboratorios"( 
"Codigo", "Descripcion"
 )

values ( 
@c1, @c2
 )


END
GO
/****** Object:  StoredProcedure [dbo].[sp_MSupd_CatLaboratorios]    Script Date: 08/09/2013 15:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MSupd_CatLaboratorios] 
 @c1 int,@c2 nvarchar(40),@pkc1 int
,@bitmap binary(1)
as
if substring(@bitmap,1,1) & 1 = 1
begin
update "CatLaboratorios" set
"Codigo" = case substring(@bitmap,1,1) & 1 when 1 then @c1 else "Codigo" end
,"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
else
begin
update "CatLaboratorios" set
"Descripcion" = case substring(@bitmap,1,1) & 2 when 2 then @c2 else "Descripcion" end
where "Codigo" = @pkc1
if @@rowcount = 0
	if @@microsoftversion>0x07320000
		exec sp_MSreplraiserror 20598
end
GO
/****** Object:  View [dbo].[VwDesctosCtesCont]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwDesctosCtesCont    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/












CREATE VIEW [dbo].[VwDesctosCtesCont]
AS
SELECT dbo.CatClientes.Codigo, 
    dbo.ListasDescuentosDet.CodigoInt, 
    dbo.ListasDescuentosDet.PtjDescto, 
    dbo.ListasDescuentosDet.VenderSinUtil
FROM dbo.CatClientes INNER JOIN
    dbo.ListasClientes ON 
    dbo.CatClientes.Codigo = dbo.ListasClientes.Cliente INNER JOIN
    dbo.ListasDescuentosDet ON 
    dbo.ListasClientes.Lista = dbo.ListasDescuentosDet.CodLista
GO
/****** Object:  View [dbo].[VwCotizacion]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto: vista dbo.VwCotizacion    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/

CREATE VIEW [dbo].[VwCotizacion]
AS
SELECT dbo.CotizCab.Farmacia, dbo.CotizCab.Folio, 
    dbo.CotizCab.Fecha, dbo.CotizDet.CodigoInt, 
    dbo.CotizDet.CodigoEAN, dbo.CotizDet.Cantidad, 
    dbo.CodigosRel.Unidad, dbo.CodigosRel.Renglon, 
    dbo.CatProductos.Seguimiento,dbo.CotizDet.Vendedor,
    dbo.CotizDet.Cliente,dbo.CotizDet.CodDoctor, dbo.CotizDet.NomDoctor,
    dbo.CotizDet.PorcDescto,dbo.CotizDet.ImpteDescto,dbo.CotizDet.ImpteIva
FROM dbo.CotizCab INNER JOIN
    dbo.CotizDet ON 
    dbo.CotizCab.Folio = dbo.CotizDet.Folio INNER JOIN
    dbo.CatProductos ON 
    dbo.CotizDet.CodigoInt = dbo.CatProductos.Codigo INNER JOIN
    dbo.CodigosRel ON 
    dbo.CatProductos.Codigo = dbo.CodigosRel.CodigoInt AND 
    dbo.CotizDet.CodigoEAN = dbo.CodigosRel.CodRelacionado AND
    dbo.CotizDet.CodigoInt = dbo.CodigosRel.CodigoInt AND 
    dbo.CotizDet.RengCodRel = dbo.CodigosRel.Renglon
GO
/****** Object:  View [dbo].[VwCatProductos01]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCatProductos01    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwCatProductos01]
AS
SELECT dbo.CatProductos.Codigo, dbo.CatProductos.Descripcion, 
    dbo.CodigosRel.CodRelacionado, 
    dbo.ProductoFarma.Farmacia, dbo.CodigosRel.Renglon
FROM dbo.CatProductos INNER JOIN
    dbo.CodigosRel ON 
    dbo.CatProductos.Codigo = dbo.CodigosRel.CodigoInt INNER JOIN
    dbo.ProductoFarma ON 
    dbo.CatProductos.Codigo = dbo.ProductoFarma.Codigo
GO
/****** Object:  StoredProcedure [dbo].[CantidadPedida]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.CantidadPedida    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/


CREATE PROCEDURE [dbo].[CantidadPedida] AS
-- Punto de Venta
    /** Poner en 0 las Cantidades Pedidas del ProductoFarma **/
BEGIN
	DECLARE @Suc AS Int
	SELECT @Suc = Farmacia FROM Config
	
	begin transaction
	Update ProductoFarma 
                Set    Cant_Pedida = 0 
                Where  Cant_Pedida <> 0
    
    /** Calcular la Cantidad Pedida en base a los pedidos directos vigentes  **/
    Update ProductoFarma
                Set Cant_Pedida = IsNull((Select Sum (PedidosDet.CantPedida) 
                                                From PedidosCab Inner Join PedidosDet On
                                                PedidosCab.Folio = PedidosDet.Folio 
                                                Where PedidosCab.Sucursal = @Suc And 
                                                       PedidosCab.Status = 'V' And 
                                                       PedidosDet.CodigoInt = ProductoFarma.Codigo ),0)
	IF @@Error <> 0 
		begin
		rollback transaction
		end
       commit transaction
END
GO
/****** Object:  Table [dbo].[DevolDet]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DevolDet](
	[Folio] [char](11) NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FolioVenta] [char](13) NOT NULL,
	[Cajero] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEAN] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnit] [money] NOT NULL,
	[ImpteIVA] [money] NOT NULL,
	[TasaIVA] [smallmoney] NOT NULL,
	[ImpteCoPago] [money] NOT NULL,
	[ImpteDescto] [money] NOT NULL,
	[PorcDescto] [smallmoney] NOT NULL,
	[TipoDescto] [char](1) NOT NULL,
	[ComisionVend] [money] NOT NULL,
	[Depto] [smallint] NOT NULL,
	[CostoUnit] [money] NOT NULL,
	[Cliente] [int] NOT NULL,
	[Caja] [smallint] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_DevolDet] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Farmacia] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ActualizaUltCostoProdAlmacen]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.ActualizaUltCostoProdAlmacen    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/


CREATE PROCEDURE [dbo].[ActualizaUltCostoProdAlmacen] AS
DECLARE @Suc AS INT
DECLARE @AlmacenMed As INT
DECLARE @AlmacenAb AS INT

SELECT @Suc = Farmacia,@AlmacenMed = AlmaMedica,@AlmacenAb = AlmaAbarrote FROM Config

UPDATE ProductoFarma
SET ProductoFarma.UltimoCosto = ProductoFarmaR.UltimoCosto
FROM ProductoFarmaR,CatProductos
WHERE ProductoFarma.Farmacia = @Suc AND ProductoFarmaR.Codigo = ProductoFarma.Codigo
AND (ProductoFarmaR.Farmacia = @AlmacenMed OR ProductoFarmaR.Farmacia = @AlmacenAb)
AND ProductoFarmaR.Codigo = CatProductos.Codigo AND CatProductos.TipoCompra = 'A'
AND ProductoFarmaR.FecUltCompra = CAST(CONVERT(CHAR(10), GETDATE(), 126) AS CHAR(10)) 
-- AND ProductoFarmaR.FecUltCompra <> '1900-01-01' 
-- Modificación a petición del Depto de Compras para que mande los Costos del Almacén del día Actual
-- Elaboración el 01-12-2003 por Omar Rodríguez
GO
/****** Object:  Table [dbo].[CabSAD]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CabSAD](
	[Folio] [char](9) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cod_Cliente] [int] NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
	[Colonia] [smallint] NOT NULL,
	[Cajero] [int] NOT NULL,
	[Repartidor] [int] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[Descto] [money] NOT NULL,
	[ImpteIVA] [money] NOT NULL,
	[ImpteSAD] [money] NOT NULL,
	[ImpteIVASAD] [money] NOT NULL,
	[ImpteRedondeo] [smallmoney] NOT NULL,
	[Status] [char](1) NOT NULL,
	[ImptePago] [money] NOT NULL,
	[Titular] [int] NOT NULL,
	[Empleado] [smallint] NOT NULL,
	[Dependiente] [smallint] NOT NULL,
	[Parentesco] [char](20) NOT NULL,
	[TipoVenta] [char](1) NOT NULL,
	[HoraReparto] [smalldatetime] NOT NULL,
	[HoraEnt] [smalldatetime] NOT NULL,
	[HoraPago] [smalldatetime] NOT NULL,
	[FechaCancel] [datetime] NOT NULL,
	[MotivoCancel] [char](150) NOT NULL,
	[UsuarioCancel] [char](20) NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Farmacia] [tinyint] NOT NULL,
	[CambioSugerido] [money] NOT NULL,
	[HoraCaptura] [smalldatetime] NOT NULL,
	[IncentivoRepart] [smallmoney] NOT NULL,
	[Etiqueta1] [char](30) NOT NULL,
	[Etiqueta2] [char](30) NOT NULL,
	[Etiqueta3] [char](30) NOT NULL,
	[Etiqueta4] [char](30) NOT NULL,
	[Etiqueta5] [char](30) NOT NULL,
	[Etiqueta6] [char](30) NOT NULL,
	[Etiqueta7] [char](30) NOT NULL,
	[Etiqueta8] [char](30) NOT NULL,
	[Etiqueta9] [char](30) NOT NULL,
	[Etiqueta10] [char](30) NOT NULL,
	[Etiqueta11] [char](30) NOT NULL,
	[Etiqueta12] [char](30) NOT NULL,
	[Etiqueta13] [char](30) NOT NULL,
	[Etiqueta14] [char](30) NOT NULL,
	[Etiqueta15] [char](30) NOT NULL,
	[TipoPrecio] [char](1) NOT NULL,
	[ImpteCopago] [money] NOT NULL,
	[Observaciones] [char](200) NOT NULL,
	[ComisionBan] [money] NOT NULL,
	[FolioVenta] [char](13) NOT NULL,
 CONSTRAINT [PK_CabSAD] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Optimo7de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo7de7    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



CREATE Procedure [dbo].[Optimo7de7]
as
/*
Query 7
Genera la media en 0.01 para no negar producto.
*/

Update ProductoFarma
Set InvOptimo=0.01
Where InvOptimo=0.00
and Localizacion = '' ---Para que no modifique los optimos capturados por el usuario.
GO
/****** Object:  StoredProcedure [dbo].[Optimo6de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo6de7    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



CREATE Procedure [dbo].[Optimo6de7]
as
/*
Query 6
Por medio de este query integraremos el inventarios optimo.
Se incluye el optimo de VentaOptimoCalculado dentro del campo de InvOptimo de la tabla
ProductoFarma.
*/

Update VentaOptimoCalculado
Set Media=0.0001
Where Media=0.0000

Update ProductoFarma
Set ProductoFarma.InvOptimo = B.Moda
from ProductoFarma A, VentaOptimoCalculado B
Where  (A.Codigo = B.CodigoInt) and ((B.DesvSt/B.Media)<=0.50)
and A.Localizacion = ''

Update ProductoFarma
Set ProductoFarma.InvOptimo = B.Media
from ProductoFarma A, VentaOptimoCalculado B
Where  (A.Codigo = B.CodigoInt) and ((B.DesvSt/B.Media)>0.50)
AND A.Localizacion = ''
GO
/****** Object:  StoredProcedure [dbo].[Optimo5de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo5de7    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



Create Procedure [dbo].[Optimo5de7]
as
/*
Query 5
Por medio de este query se generara la tabla donde se integrará la información estadística
correspondiente a los productos de la tabla VentaProductos
La tabla resultante será la taba VentaOptimoCalculado que previamente se deja en ceros.
Los datos los toma de la tabla productofarma correlacionada con VentaProductos
*/

Truncate table VentaOptimoCalculado

Insert into VentaOptimoCalculado (CodigoInt, Media, DesvSt, Moda)
Select Codigo, 
	IsNull((Select Avg(Unidades) 
		from VentaProductos 
		Where VentaProductos.CodigoInt=ProductoFarma.Codigo),0.00) as Media,
	IsNull((Select StDev(Unidades)
		from VentaProductos
		where VentaProductos.CodigoInt=ProductoFarma.Codigo),0.00)as DesvSt,
	IsNull((Select Top 1 Unidades as Moda
		from VentaProductos
		where VentaProductos.CodigoInt=ProductoFarma.Codigo
		Group by Unidades
		Order by Count(*) Desc),0.00) as Moda
From ProductoFarma
GO
/****** Object:  StoredProcedure [dbo].[Optimo4de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo4de7    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



CREATE Procedure [dbo].[Optimo4de7]
As
/*
Query 4
Integra los archivos de VentaOptimos con la Tabla VentaProductos para generar el archivo
general de ventas.
Sobre esta tabla se generan los calculos venerales de moda y varianza.
*/
Update VentaProductos 
Set Unidades = IsNull((Select Sum(VentaOptimos.Unidades) as Unidades
		from VentaOptimos
		Where (VentaProductos.CodigoInt=VentaOptimos.CodigoInt) and
		      (VentaProductos.FechaVta =VentaOptimos.FechaVta)),0.00)
GO
/****** Object:  StoredProcedure [dbo].[Optimo3de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo3de7    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



Create Procedure [dbo].[Optimo3de7]
As
/* 
Query 3
Este proceso crea la tabla de referencias cruzadas para integrar sobre esta tabla los
optimos
Tablas ProductoFarma y combinación con VentaFechas
*/

Truncate Table VentaProductos

Insert into VentaProductos (CodigoInt, FechaVta)
Select A.Codigo, B.FechaVta
From ProductoFarma A Cross Join VentaFechas B
GO
/****** Object:  StoredProcedure [dbo].[Optimo2de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo2de7    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



Create Procedure [dbo].[Optimo2de7]
As
/*
Query 2
Esta tabla permite la creación de la tabla general de ventas por fechas
'Esta tabla hace lectura de la configuración de la sucursal para basado en la fecha generar 
'El archivo.
*/

Truncate table VentaFechas 

Declare @@DiasVenta int
Set @@DiasVenta = (Select Top 1 DiasVenta from Config)

While @@DiasVenta > 0
	Begin
		Insert VentaFechas (FechaVta)
		Values (Convert(Char(10), (getdate()- @@DiasVenta ),101))
		Set @@DiasVenta = @@DiasVenta - 1
		
	End
GO
/****** Object:  StoredProcedure [dbo].[Optimo1de7]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.Optimo1de7    fecha de la secuencia de comandos: 11/03/2005 12:11:22 a.m. ******/



CREATE Procedure [dbo].[Optimo1de7]
As
/*
Query 1
Este query genera el archivo de venta de optimos del archivo de ventas
*/

Declare @@DiasVenta int
Set @@DiasVenta=(Select Top 1 DiasVenta from Config)

truncate Table VentaOptimos

Insert Into VentaOptimos (CodigoInt, FechaVta, Unidades)
Select CodigoInt, FechaVtaSinHora, Sum(Cant_Vend - Cant_Dev) as Unidades
from vendet VD
INNER JOIN ProductoFarma PF ON VD.CodigoInt = PF.codigo
where (FechaVtaSinHora >= (GetDate() - @@DiasVenta))
AND PF.Localizacion = ''   ----Condicion para que no calcule los productos modificados por el usuario.
Group by CodigoInt, FechaVtaSinHora
Order by CodigoInt, FechaVtaSinHora

Insert Into VentaOptimos (CodigoInt, FechaVta, Unidades)
Select CodInt, Fecha, Sum(Cantidad) as Unidades
from ArticulosNegados
where (Fecha >= (GetDate() - @@DiasVenta)) and Tipo='N'
Group by CodInt, Fecha
Order by CodInt, Fecha

---Articulos nuevos registrados en el producto farma de la sucursal y que no se encuentran ni
---en el historial de ventas ni en los articulos negados y que no tenga modificacion de su optimo.
Insert Into VentaOptimos (CodigoInt, FechaVta, Unidades)
Select Codigo,CAST(LEFT(CAST(Fecha_Inv_Ini AS CHAR(40)),12) AS smallDateTime) AS Fecha,1 AS Cantidad
FROM ProductoFarma
WHERE Fecha_inv_Ini > (GETDATE() - @@DiasVenta)
AND Codigo NOT IN (SELECT CodigoInt FROM VentaOptimos)
AND Localizacion = ''
GO
/****** Object:  Table [dbo].[DetSaD]    Script Date: 08/09/2013 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetSaD](
	[Folio] [char](9) NOT NULL,
	[Renglon] [smallint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CodCliente] [int] NOT NULL,
	[CodigoInt] [int] NOT NULL,
	[CodigoEan] [char](13) NOT NULL,
	[Cantidad] [money] NOT NULL,
	[PrecioUnit] [money] NOT NULL,
	[CostoUnit] [money] NOT NULL,
	[PorcDescto] [smallmoney] NOT NULL,
	[ImpteDescto] [money] NOT NULL,
	[PorcIva] [smallmoney] NOT NULL,
	[ImpteIva] [money] NOT NULL,
	[Status] [char](1) NOT NULL,
	[TipoDescto] [char](1) NOT NULL,
	[Unidad] [smallint] NOT NULL,
	[CodDoctor] [int] NOT NULL,
	[NomDoctor] [char](60) NOT NULL,
	[Comision] [money] NOT NULL,
	[DeptoVenta] [smallint] NOT NULL,
	[UltimoCosto] [money] NOT NULL,
	[TipoPrecio] [char](1) NOT NULL,
	[CoPago] [char](1) NOT NULL,
	[CoPago2] [money] NOT NULL,
	[PorcDesctoCte] [smallmoney] NOT NULL,
	[ImpteDesctoCte] [money] NOT NULL,
	[ImpteIVACte] [money] NOT NULL,
 CONSTRAINT [PK_DetSaD] PRIMARY KEY NONCLUSTERED 
(
	[Folio] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VwCabSAD06]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCabSAD06    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwCabSAD06]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Fecha, 
    dbo.CabSAD.HoraCaptura, 
    dbo.CatUsuarios.Nombre AS CAJERO, 
    CatUsuarios1.Nombre AS VENDEDOR, dbo.CabSAD.Telefono, 
    dbo.CtesLocales.Direccion, dbo.Colonias.Colonia, 
    dbo.CtesLocales.Entre, dbo.CtesLocales.Referencia, 
    dbo.CabSAD.Observaciones, dbo.CabSAD.Subtotal, 
    dbo.CabSAD.Descto, dbo.CabSAD.ImpteIVA, 
    dbo.CabSAD.ImpteSAD, dbo.CabSAD.ImpteIVASAD, 
    dbo.CabSAD.ImpteRedondeo, dbo.CabSAD.Status, 
    dbo.CabSAD.TipoVenta, dbo.CtesLocales.NombreCte, 
    dbo.CabSAD.CambioSugerido, dbo.CabSAD.ImpteCopago, 
    dbo.CabSAD.ComisionBan
FROM dbo.CatUsuarios INNER JOIN
    dbo.CabSAD INNER JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal INNER
     JOIN
    dbo.Colonias ON 
    dbo.CtesLocales.Colonia = dbo.Colonias.Codigo AND 
    dbo.CabSAD.Colonia = dbo.Colonias.Codigo ON 
    dbo.CatUsuarios.Codigo = dbo.CabSAD.Cajero INNER JOIN
    dbo.CatUsuarios CatUsuarios1 ON 
    dbo.CabSAD.Vendedor = CatUsuarios1.Codigo
GO
/****** Object:  View [dbo].[VwCABSAD05]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCABSAD05    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwCABSAD05]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Fecha, 
    dbo.CabSAD.Cod_Cliente, dbo.CtesLocales.NombreCte, 
    dbo.CabSAD.Repartidor, 
    dbo.CabSAD.Subtotal - dbo.CabSAD.Descto + dbo.CabSAD.ImpteIVA
     + dbo.CabSAD.ImpteSAD + dbo.CabSAD.ImpteIVASAD + dbo.CabSAD.ImpteRedondeo
     AS Importe, dbo.CabSAD.Status, dbo.CabSAD.Farmacia, 
    dbo.CabSAD.TipoVenta
FROM dbo.CabSAD INNER JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal
GO
/****** Object:  View [dbo].[VwCabSAD04]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCabSAD04    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwCabSAD04]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Fecha, 
    dbo.CabSAD.Cod_Cliente, dbo.CabSAD.Status, 
    dbo.CabSAD.Farmacia, dbo.TempEncabRep.NumReporte, 
    dbo.TempEncabRep.Sistema, dbo.TempEncabRep.Sucursal, 
    dbo.TempEncabRep.Modulo, dbo.TempEncabRep.Titulo, 
    dbo.CtesLocales.Telefono, dbo.CtesLocales.NombreCte, 
    dbo.CtesLocales.Direccion, dbo.CtesLocales.FechaUltVta
FROM dbo.CabSAD INNER JOIN
    dbo.TempEncabRep ON 
    dbo.CabSAD.Farmacia = dbo.TempEncabRep.CodSucursal INNER
     JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal
GO
/****** Object:  View [dbo].[VwCabSAD03]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCabSAD03    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwCabSAD03]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Subtotal, 
    dbo.CabSAD.Descto, dbo.CabSAD.ImpteIVA, 
    dbo.CabSAD.ImpteSAD, dbo.CabSAD.ImpteIVASAD, 
    dbo.CabSAD.ImpteRedondeo, dbo.CabSAD.Status, 
    dbo.CabSAD.TipoVenta, dbo.CtesLocales.Cve_CteLocal, 
    dbo.CtesLocales.Telefono, dbo.CtesLocales.NombreCte, 
    dbo.CtesLocales.Direccion, dbo.CtesLocales.FechaUltVta, 
    dbo.CabSAD.Fecha
FROM dbo.CabSAD INNER JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal
WHERE (dbo.CabSAD.Status = 'P')
GO
/****** Object:  View [dbo].[VwCabSAD02]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCabSAD02    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/

















CREATE VIEW [dbo].[VwCabSAD02]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Fecha, 
    dbo.CabSAD.Cod_Cliente, dbo.CabSAD.Telefono, 
    dbo.CabSAD.Colonia, dbo.CabSAD.Cajero, 
    dbo.CabSAD.Subtotal, dbo.CabSAD.Descto, 
    dbo.CabSAD.ImpteIVA, dbo.CabSAD.ImpteSAD, 
    dbo.CabSAD.ImpteIVASAD, dbo.CabSAD.ImpteRedondeo, 
    dbo.CabSAD.Status, dbo.CabSAD.ImptePago, 
    dbo.CabSAD.TipoVenta, dbo.CabSAD.HoraReparto, 
    dbo.CabSAD.HoraEnt, dbo.CabSAD.HoraPago, 
    dbo.CabSAD.IncentivoRepart, dbo.CtesLocales.NombreCte, 
    dbo.CtesLocales.Direccion, dbo.CatUsuarios.Nombre, 
    dbo.CabSAD.Repartidor
FROM dbo.CabSAD INNER JOIN
    dbo.CatUsuarios ON 
    dbo.CabSAD.Repartidor = dbo.CatUsuarios.Codigo INNER JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal
GO
/****** Object:  View [dbo].[VwCabSAD01]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwCabSAD01    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/

















CREATE VIEW [dbo].[VwCabSAD01]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Fecha, 
    dbo.CtesLocales.NombreCte, dbo.CtesLocales.Direccion, 
    dbo.CatUsuarios.Nombre, dbo.CabSAD.Subtotal, 
    dbo.CabSAD.Descto, dbo.CabSAD.ImpteIVA, 
    dbo.CabSAD.ImpteSAD, dbo.CabSAD.ImpteIVASAD, 
    dbo.CabSAD.ImpteRedondeo, dbo.CabSAD.Status, 
    dbo.CabSAD.HoraReparto, dbo.CatUsuarios.Tipo, 
    dbo.CabSAD.Repartidor, dbo.CabSAD.Farmacia, 
    dbo.CabSAD.IncentivoRepart, dbo.CabSAD.TipoVenta
FROM dbo.CabSAD INNER JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal INNER
     JOIN
    dbo.CatUsuarios ON 
    dbo.CabSAD.Repartidor = dbo.CatUsuarios.Codigo
GO
/****** Object:  View [dbo].[Ventas Del dia En BackOffice]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.Ventas Del dia En BackOffice    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/




CREATE VIEW [dbo].[Ventas Del dia En BackOffice]
AS
SELECT dbo.Farmacias.Zona, dbo.Zonas.Descripcion, 
    dbo.Farmacias.Nom_Farmacia, dbo.CatClientes.Nombre, 
    dbo.VenCab.Folio, dbo.VenCab.Cajero, dbo.VenCab.Vendedor, 
    dbo.VenCab.SubTotal, dbo.VenCab.Descuento, dbo.VenCab.IVA, 
    dbo.VenDet.TipoDescto, 
    (dbo.VenCab.SubTotal + dbo.VenCab.IVA) AS ImpTotal
FROM dbo.VenCab INNER JOIN
    dbo.VenDet ON 
    dbo.VenCab.Folio = dbo.VenDet.Folio INNER JOIN
    dbo.CatClientes ON 
    dbo.VenDet.Cliente = dbo.CatClientes.Codigo INNER JOIN
    dbo.Zonas INNER JOIN
    dbo.Farmacias ON 
    dbo.Zonas.Codigo = dbo.Farmacias.Zona ON 
    dbo.VenCab.Farmacia = dbo.Farmacias.Cod_Farma
GROUP BY dbo.Farmacias.Zona, dbo.Zonas.Descripcion, 
    dbo.Farmacias.Nom_Farmacia, dbo.CatClientes.Nombre, 
    dbo.VenCab.Folio, dbo.VenCab.Cajero, dbo.VenCab.Vendedor, 
    dbo.VenCab.SubTotal, dbo.VenCab.Descuento, dbo.VenCab.IVA, 
    dbo.VenDet.TipoDescto
GO
/****** Object:  UserDefinedFunction [dbo].[fProductosLeidos]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fProductosLeidos] ()   
RETURNS @FunTabla_ProdsLeidos table 
	(CodigoInt Int )

BEGIN 
insert @FunTabla_ProdsLeidos
select CatProductos.codigo
 from  codigosrel (nolock) inner join CatProductos (nolock)
     on codigosrel.codigoint=catproductos.codigo inner join productofarma (nolock)
     on codigosrel.codigoint=productofarma.codigo and catproductos.codigo=productofarma.codigo inner join invelectronico (nolock)
     on codigosrel.codigoint=invelectronico.codigoint and catproductos.codigo=invelectronico.codigoint
where codigosrel.renglon = 2 and productofarma.farmacia = dbo.fcodigosucursal()
return	

END
GO
/****** Object:  View [dbo].[FLV_TmpVtasProv]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto: vista dbo.FLV_TmpVtasProv    fecha de la secuencia de comandos: 08/08/2006 01:57:14 p.m. ******/


CREATE VIEW [dbo].[FLV_TmpVtasProv] AS  SELECT dbo.CatProductos.Codigo, dbo.Farmacias.Nom_Farmacia, dbo.CatFamilias.Descripcion AS Familia, dbo.CatProductos.Descripcion AS Producto,  SUM(dbo.VenDet.Cant_Vend - dbo.VenDet.Cant_Dev) AS Cantidad, (SUM(dbo.VenDet.Cant_Vend * dbo.VenDet.PrecioUnit)  - SUM(dbo.VenDet.Cant_Vend * dbo.VenDet.ImpteDescto)) AS Ventas, dbo.Proveedores.Proveedor AS Proveedor, 'DS' AS Equipo  FROM dbo.CatProductos (NOLOCK)  INNER JOIN dbo.CatFamilias (NOLOCK)  ON dbo.CatProductos.CodFam1 = dbo.CatFamilias.Codigo1 AND dbo.CatProductos.CodFam2 = dbo.CatFamilias.Codigo2  AND dbo.CatProductos.CodFam3 = dbo.CatFamilias.Codigo3 AND dbo.CatProductos.CodFam4 = dbo.CatFamilias.Codigo4  INNER JOIN dbo.VenDet (NOLOCK)  INNER JOIN dbo.Farmacias (NOLOCK) ON dbo.VenDet.Farmacia = dbo.Farmacias.Cod_Farma ON dbo.CatProductos.Codigo = dbo.VenDet.CodigoInt  INNER JOIN dbo.ProductoFarma (NOLOCK) ON dbo.CatProductos.Codigo = dbo.ProductoFarma.Codigo  AND dbo.Farmacias.Cod_Farma = dbo.ProductoFarma.Farmacia  INNER JOIN dbo.Proveedores (NOLOCK) ON dbo.CatProductos.Proveedor = dbo.Proveedores.Codigo  WHERE (dbo.Proveedores.Codigo = 20) AND(dbo.VenDet.FechaVtaSinHora >= (CONVERT(CHAR(10), GETDATE()- 3, 120))) AND (dbo.VenDet.FechaVtaSinHora <= '2005-09-14')  GROUP BY dbo.CatProductos.Codigo, dbo.Farmacias.Nom_Farmacia, dbo.CatFamilias.Descripcion, dbo.CatProductos.Descripcion, dbo.ProductoFarma.Existencia , dbo.Proveedores.Proveedor
GO
/****** Object:  View [dbo].[MensuaDia]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.MensuaDia    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/








CREATE VIEW [dbo].[MensuaDia]
AS
SELECT SUM(dbo.DevolDet.Cantidad) AS CantVend, 
    SUM(dbo.VenDet.Cant_Dev) AS CantDev
FROM dbo.VenDet, dbo.DevolDet
WHERE DATEPART(Dw, dbo.VenDet.FechaVenta) = 1 AND 
    DATEPART(Mm, dbo.VenDet.FechaVenta) = 11
GO
/****** Object:  View [dbo].[VwRepVtaDia]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwRepVtaDia    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/







CREATE VIEW [dbo].[VwRepVtaDia]
AS
SELECT VenDet.Folio, Day(VenDet.FechaVenta) AS Dia, 
    month(VenDet.FechaVenta) AS Mes, Year(VenDet.FechaVenta) 
    AS Año, TipoVenta, ReferPedido, VenDet.Farmacia, 
    SUM(Cant_Vend) AS Cantidad, CatClientes.Nombre, 
    VenCab.Cajero, VenCab.Vendedor, 
    SUM(Cant_Vend * PrecioUnit) AS SubTotal, 
    SUM(Cant_Vend * ImpteIVA) AS IVA, 
    'ImpteDescto' = CASE WHEN
        (SELECT SUM(Cant_Vend * ImpteDescto)
      FROM VenDet AS VenDet1
      WHERE VenDet1.TipoDescto = 'P' AND 
           VenDet1.Folio = VenDet.Folio) IS NULL 
    THEN 0 ELSE
        (SELECT SUM(Cant_Vend * ImpteDescto)
      FROM VenDet AS VenDet1
      WHERE VenDet1.TipoDescto = 'P' AND 
           VenDet1.Folio = VenDet.Folio) END, 
    'ImpteCaj' = CASE WHEN
        (SELECT SUM(Cant_Vend * ImpteDescto)
      FROM VenDet AS VenDet1
      WHERE VenDet1.TipoDescto = 'D' AND 
           VenDet1.Folio = VenDet.Folio) IS NULL 
    THEN 0 ELSE
        (SELECT SUM(Cant_Vend * ImpteDescto)
      FROM VenDet AS VenDet1
      WHERE VenDet1.TipoDescto = 'D' AND 
           VenDet1.Folio = VenDet.Folio) END
FROM VenCab, VenDet, CatClientes
WHERE VenCab.Folio = VenDet.Folio AND 
    VenDet.Cliente = CatClientes.Codigo
GROUP BY VenDet.Folio, Nombre, VenCab.Cajero, 
    VenCab.Vendedor, TipoVenta, ReferPedido, VenDet.Farmacia, 
    Day(VenDet.FechaVenta), month(VenDet.FechaVenta), 
    Year(VenDet.FechaVenta)
GO
/****** Object:  View [dbo].[VwPedidosTransito]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwPedidosTransito    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwPedidosTransito]
AS
SELECT dbo.CabSAD.Folio, dbo.CabSAD.Fecha, 
    dbo.CabSAD.Cod_Cliente, dbo.CtesLocales.NombreCte, 
    dbo.CabSAD.Repartidor, 
    dbo.CabSAD.Subtotal - dbo.CabSAD.Descto + dbo.CabSAD.ImpteIVA
     + dbo.CabSAD.ImpteSAD + dbo.CabSAD.ImpteIVASAD + dbo.CabSAD.ImpteRedondeo
     AS ImpteVenta, dbo.CabSAD.Status, dbo.DetSaD.Cantidad, 
    dbo.DetSaD.CodigoEan + '   ' + LTRIM(dbo.CatProductos.Descripcion)
     AS Producto, dbo.CatProductos.Descripcion, 
    dbo.CabSAD.Farmacia, dbo.CabSAD.TipoVenta
FROM dbo.CabSAD INNER JOIN
    dbo.DetSaD ON 
    dbo.CabSAD.Folio = dbo.DetSaD.Folio INNER JOIN
    dbo.CtesLocales ON 
    dbo.CabSAD.Cod_Cliente = dbo.CtesLocales.Cve_CteLocal INNER
     JOIN
    dbo.CatProductos ON 
    dbo.DetSaD.CodigoInt = dbo.CatProductos.Codigo INNER JOIN
    dbo.CodigosRel ON 
    dbo.CatProductos.Codigo = dbo.CodigosRel.CodigoInt AND 
    dbo.DetSaD.CodigoEan = dbo.CodigosRel.CodRelacionado
WHERE (dbo.CabSAD.Status = 'N') OR
    (dbo.CabSAD.Status = 'A') OR
    (dbo.CabSAD.Status = 'V')
GO
/****** Object:  View [dbo].[VwDETSAD01]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwDETSAD01    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwDETSAD01]
AS
SELECT dbo.DetSaD.Folio, dbo.DetSaD.Renglon, 
    dbo.DetSaD.Fecha, dbo.DetSaD.CodigoInt, 
    dbo.DetSaD.CodigoEan, dbo.DetSaD.Cantidad, 
    dbo.CatProductos.Descripcion
FROM dbo.DetSaD INNER JOIN
    dbo.CatProductos ON 
    dbo.DetSaD.CodigoInt = dbo.CatProductos.Codigo
GO
/****** Object:  View [dbo].[VwUltimoPedido]    Script Date: 08/09/2013 15:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto: vista dbo.VwUltimoPedido    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/


















CREATE VIEW [dbo].[VwUltimoPedido]
AS
SELECT dbo.CabSAD.Farmacia, dbo.DetSaD.Folio, 
    dbo.DetSaD.CodigoInt, dbo.DetSaD.CodigoEan, 
    dbo.DetSaD.Cantidad, dbo.CodigosRel.Unidad, 
    dbo.CodigosRel.Renglon, dbo.CatProductos.Seguimiento
FROM dbo.CabSAD INNER JOIN
    dbo.DetSaD ON 
    dbo.CabSAD.Folio = dbo.DetSaD.Folio INNER JOIN
    dbo.CatProductos ON 
    dbo.DetSaD.CodigoInt = dbo.CatProductos.Codigo INNER JOIN
    dbo.CodigosRel ON 
    dbo.CatProductos.Codigo = dbo.CodigosRel.CodigoInt AND 
    dbo.DetSaD.CodigoEan = dbo.CodigosRel.CodRelacionado AND 
    dbo.DetSaD.CodigoInt = dbo.CodigosRel.CodigoInt
GO
/****** Object:  StoredProcedure [dbo].[Sp_MovtosProdsNoLeidosSal]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Objeto:  procedimiento almacenado dbo.Sp_MovtosProdsNoLeidosSal    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/


/*Nombre      : 	Sp_MovtosProdsNoLeidosSal
Creado por :	Carla Rocha 
Fecha        :	24-Octubre-2003
	
Parámetros
	@Folio	 	As Char(9) = '',
	@FolMovAlm	As Char(12)= '',
	@CodUser	As Int = 0,
*/


CREATE PROCEDURE [dbo].[Sp_MovtosProdsNoLeidosSal](
	@Folio	 	As Char(9) = '',
	@FolMovAlm	As Char(12)= '',
	@CodUser	As Int = 0 ) As

	Declare @Cve_Movto As Int, 
		@Observaciones As Char(150), 
		@Sucursal As TinyInt,
		@Fecha As DateTime

	-- Obtiene el Código de la Sucursal
	Select 	@Sucursal = dbo.fCodigoSucursal(),
		@Cve_Movto = 8, 
		@Observaciones = 'Salida Por Sustitución de Inventarios (Productos No Leídos)',
		@Fecha  = LTrim(Str(Year(GetDate()))) + '/' + LTrim(Str(Month(GetDate())))+ '/' + LTrim(Str(Day(GetDate())))
	
	Begin Tran

		--- Insertar el Cabecero del Movimiento ( MovAlmCab )
		Insert Into MovAlmCab (Folio_Movto,Fecha_Movto,Cve_Movto,Observaciones,Status,Cve_Farmacia,Usuario)
		Select 	@Folio As Folio_Movto,
			@Fecha As Fecha_Movto,
			@Cve_Movto As Cve_Movto,
			@Observaciones As Observaciones,
			'V' As Status,
			@Sucursal As Cve_Farmacia,
			@CodUser As Usuario
	
		--- Crea la Tabla Temporarl #TempRenglon para asignar un número de renglón a cada producto que será insertado en las tablas MovAlmDet y MovGralInv
		Select PF.Codigo,IDENTITY(Int,1,1) AS Renglon
		Into #TempRenglon
		From 	ProductoFarma PF (NoLock) Inner Join CatProductos CP (NoLock)
			On 	PF.Codigo = CP.Codigo Inner Join CodigosRel CR (NoLock)
			On 	PF.Codigo = CR.CodigoInt And CP.Codigo = CR.CodigoInt
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Existencia > 0 And CR.Renglon = 2 And PF.Farmacia =  @Sucursal
			Order By PF.Codigo

		--- Insertar el Detalle del Movimiento ( MovAlmDet )
		Insert Into MovAlmDet(Folio_Movto,Renglon,Cve_Movto,Fecha_Movto,Cve_Producto,CodigoRel,Cantidad,CostoUnit,Cve_Farmacia,Status,TasaIVA)
		Select 	@Folio As Folio_Movto,
			#TempRenglon.Renglon AS Renglon,
			@Cve_Movto As Cve_Movto,
			@Fecha As Fecha_Movto,
			PF.Codigo As Cve_Producto,
			CR.CodRelacionado As CodigoRel,
			PF.Existencia As Cantidad,
			PF.CostoProm As CostoUnit,
			@Sucursal As Cve_Farmacia,
			'V' As Status,
			CP.DeptoCompra As TasaIVA
		From 	ProductoFarma PF (nolock) Inner Join CatProductos CP (nolock)
			On 	PF.Codigo = CP.Codigo Inner Join CodigosRel CR (nolock)
			On 	PF.Codigo = CR.CodigoInt And CP.Codigo = CR.CodigoInt Inner Join #TempRenglon 
			On 	PF.Codigo = #TempRenglon.Codigo And CP.Codigo = #TempRenglon.Codigo
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos() ) 
				And PF.Existencia > 0 And CR.Renglon = 2 And PF.Farmacia =  @Sucursal
			Order By PF.Codigo
	
		--- Insertar el Detalle del Movimiento ( MovGralInv )
		Insert Into MovGralInv (Cve_Farmacia,Fol_MovAlm,Cve_Movto,Fecha_Movto,Referencia,Cve_Producto,CodigoRel,Cve_Renglon,Cantidad,CostoPromedio,Fecha_Captura,Unidad,Status,CostoTotal)
		Select 	@Sucursal As Cve_Farmacia,
			@FolMovAlm As Fol_Movalm,
			@Cve_Movto As Cve_Movto,
			@Fecha As Fecha_Movto,
			@Folio As Referencia,
			PF.Codigo As Cve_Producto,
			CR.CodRelacionado As CodigoRel,
			#TempRenglon.Renglon AS Cve_Renglon,
			PF.Existencia As Cantidad,
			PF.CostoProm As CostoUnit,
			@Fecha  As Fecha_Captura,
			1 As Unidad,
			'V' As Status,
			PF.Existencia * PF.CostoProm As CostoTotal
		From 	ProductoFarma PF Inner Join CatProductos CP 
			On 	PF.Codigo = CP.Codigo Inner Join CodigosRel CR 
			On 	PF.Codigo = CR.CodigoInt And CP.Codigo = CR.CodigoInt Inner Join #TempRenglon
			On 	PF.Codigo = #TempRenglon.Codigo And CP.Codigo = #TempRenglon.Codigo
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Existencia > 0 And CR.Renglon = 2 And PF.Farmacia =  @Sucursal
			Order By PF.Codigo

		--- Eliminar la Tabla Temporal de los renglones
		Drop Table #TempRenglon

	Commit Tran
GO
/****** Object:  StoredProcedure [dbo].[Sp_MovtosProdsNoLeidosEnt]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.Sp_MovtosProdsNoLeidosEnt    fecha de la secuencia de comandos: 11/03/2005 12:11:20 a.m. ******/



/* 

Procedimiento Para Realizar el Proceso de Entrada de los Productos No Leídos en el Inventario Electrónico de Almacén

Proyecto    :       S.U.A. Almacén - Farmacias Leyva
Nombre      : 	Sp_MovtosProdsNoLeidosEnt
Creado por :	Carla Rocha 
Fecha        :	24-Octubre-2003
	
Parámetros
	@Folio	 	As Char(9) = '',
	@FolMovAlm	As Char(12)= '',
	@CodUser	As Int = 0,
*/


CREATE PROCEDURE [dbo].[Sp_MovtosProdsNoLeidosEnt](
	@Folio	 	As Char(9) = '',
	@FolMovAlm	As Char(12)= '',
	@CodUser	As Int = 0 ) As

	Declare @Cve_Movto As Int, 
		@Observaciones As Char(150), 
		@Sucursal As TinyInt,
		@Fecha As DateTime

	-- Obtiene el Código del Almacén
	Select 	@Sucursal = dbo.fCodigoSucursal(),
		@Cve_Movto = 7, 
		@Observaciones = 'Entrada Por Sustitución de Inventarios (Productos No Leídos)',
		@Fecha  = LTrim(Str(Year(GetDate()))) + '/' + LTrim(Str(Month(GetDate())))+ '/' + LTrim(Str(Day(GetDate())))
	Begin Tran

		--- Insertar el Cabecero del Movimiento ( MovAlmCab )
		Insert Into MovAlmCab (Folio_Movto,Fecha_Movto,Cve_Movto,Observaciones,Status,Cve_Farmacia,Usuario)
		Select 	@Folio As Folio_Movto,
			@Fecha  As Fecha_Movto,
			@Cve_Movto As Cve_Movto,
			@Observaciones As Observaciones,
			'V' As Status,
			@Sucursal As Cve_Farmacia,
			@CodUser As Usuario
	
		--- Crea la Tabla Temporarl #TempRenglon para asignar un número de renglón a cada producto que será insertado en las tablas MovAlmDet y MovGralInv
		Select PF.Codigo,IDENTITY(Int,1,1) AS Renglon
		Into #TempRenglon
		From 	ProductoFarma PF (NoLock) Inner Join CatProductos CP (NoLock)
			On 	PF.Codigo = CP.Codigo Inner Join CodigosRel CR (NoLock)
			On 	PF.Codigo = CR.CodigoInt And CP.Codigo = CR.CodigoInt
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Existencia < 0 And CR.Renglon = 2 And PF.Farmacia =  @Sucursal
			Order By PF.Codigo

		--- Insertar el Detalle del Movimiento ( MovAlmDet )
		Insert Into MovAlmDet(Folio_Movto,Renglon,Cve_Movto,Fecha_Movto,Cve_Producto,CodigoRel,Cantidad,CostoUnit,Cve_Farmacia,Status,TasaIVA)
		Select 	@Folio As Folio_Movto,
			#TempRenglon.Renglon AS Renglon,
			@Cve_Movto As Cve_Movto,
			@Fecha As Fecha_Movto,
			PF.Codigo As Cve_Producto,
			CR.CodRelacionado As CodigoRel,
			ABS(PF.Existencia) As Cantidad,
			PF.CostoProm As CostoUnit,
			@Sucursal As Cve_Farmacia,
			'V' As Status,
			CP.DeptoCompra As TasaIVA
		From 	ProductoFarma PF Inner Join CatProductos CP 
			On 	PF.Codigo = CP.Codigo Inner Join CodigosRel CR 
			On 	PF.Codigo = CR.CodigoInt And CP.Codigo = CR.CodigoInt Inner Join #TempRenglon
			On 	PF.Codigo = #TempRenglon.Codigo And CP.Codigo = #TempRenglon.Codigo
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Existencia < 0 And CR.Renglon = 2 And PF.Farmacia =  @Sucursal
			Order By PF.Codigo
	
		--- Insertar el Detalle del Movimiento ( MovGralInv )
		Insert Into MovGralInv (Cve_Farmacia,Fol_MovAlm,Cve_Movto,Fecha_Movto,Referencia,Cve_Producto,CodigoRel,Cve_Renglon,Cantidad,CostoPromedio,Fecha_Captura,Unidad,Status,CostoTotal)
		Select 	@Sucursal As Cve_Farmacia,
			@FolMovAlm As Fol_Movalm,
			@Cve_Movto As Cve_Movto,
			@Fecha As Fecha_Movto,
			@Folio As Referencia,
			PF.Codigo As Cve_Producto,
			CR.CodRelacionado As CodigoRel,
			#TempRenglon.Renglon AS Cve_Renglon,
			ABS(PF.Existencia) As Cantidad,
			PF.CostoProm As CostoUnit,
			@Fecha As Fecha_Captura,
			1 As Unidad,
			'V' As Status,
			PF.Existencia * PF.CostoProm As CostoTotal
		From 	ProductoFarma PF Inner Join CatProductos CP 
			On 	PF.Codigo = CP.Codigo Inner Join CodigosRel CR 
			On 	PF.Codigo = CR.CodigoInt And CP.Codigo = CR.CodigoInt Inner Join #TempRenglon
			On 	PF.Codigo = #TempRenglon.Codigo And CP.Codigo = #TempRenglon.Codigo
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Existencia < 0 And CR.Renglon = 2 And PF.Farmacia =  @Sucursal
			Order By PF.Codigo

		--- Eliminar la Tabla Temporal de los renglones
		Drop Table #TempRenglon

	Commit Tran
GO
/****** Object:  StoredProcedure [dbo].[Sp_MovtosEntSalProdsNoLeidosAcu]    Script Date: 08/09/2013 15:06:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Objeto:  procedimiento almacenado dbo.Sp_MovtosEntSalProdsNoLeidosAcu    fecha de la secuencia de comandos: 11/03/2005 12:11:19 a.m. ******/




/* 

Procedimiento Para Realizar el Proceso de Entrada / Salida de los Productos No Leídos en el Inventario Electrónico de Almacén
En la tabla de Acumulado de Movimientos y ProductoFarma

Proyecto    :   	S.U.A. Almacén - Farmacias Leyva
Nombre      : 	Sp_MovtosEntSalProdsNoLeidosAcu
Creado por :	Carla Rocha 
Fecha        :	24-Octubre-2003
	
*/


CREATE PROCEDURE [dbo].[Sp_MovtosEntSalProdsNoLeidosAcu]
	As

	Begin Tran
		-- AcuMovtos  - Para los Productos Que Existen -Entradas y Salidas - 
		Update AcuMovtos 
		Set 	Cant_Ent = Cant_Ent + Case When Existencia < 0 Then Abs(PF.Existencia) Else 0 End ,
			Impte_Ent = Impte_Ent + Case When Existencia < 0 Then Abs(PF.Existencia) * PF.CostoProm Else 0 End ,
			Cant_Sal = Cant_Sal + Case When Existencia > 0 Then Abs(PF.Existencia) Else 0 End ,
			Impte_Sal = Impte_Sal +	Case When Existencia > 0 Then Abs(PF.Existencia) * PF.CostoProm Else 0 End 
		From 	ProductoFarma PF Inner Join CodigosRel CR 
			On 	PF.Codigo = CR.CodigoInt 	
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Codigo = AcuMovtos.Cve_Producto 
				And Año = Year(GetDate())
				And Mes = Month(GetDate()) 
				And PF.Codigo In (Select Cve_Producto 
						   From 	AcuMovtos 
							Where 	Año = Year(GetDate() ) 
							And Mes = Month(GetDate()))
				And PF.Existencia <> 0 And PF.Farmacia = dbo.fCodigoSucursal() And CR.Renglon = 2

		-- AcuMovtos  - Para los Productos Que No Existen - Entradas y Salidas - 
		Insert Into AcuMovtos (Cve_Producto,Año,Mes,Cant_Ent,Impte_Ent,Cant_Sal,Impte_Sal)
		Select 	PF.Codigo As Cve_Producto,
			Year(GetDate()) As Año,
			Month(GetDate()) As Mes,
			Case When Existencia < 0 Then Abs(PF.Existencia) Else 0 End As Cant_Ent,
			Case When Existencia < 0 Then Abs(PF.Existencia) * PF.CostoProm Else 0 End As Impte_Ent,
			Case When Existencia > 0 Then Abs(PF.Existencia) Else 0 End As Cant_Sal,
			Case When Existencia > 0 Then Abs(PF.Existencia) * PF.CostoProm Else 0 End As Impte_Sal
		From 	ProductoFarma PF Inner Join CodigosRel CR 
			On 	PF.Codigo = CR.CodigoInt 
			Where 	PF.Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
				And PF.Codigo Not In (Select 	Cve_Producto 
						      From 	AcuMovtos 
						      		Where Año = Year(GetDate()) And Mes = Month(GetDate()))
				And PF.Existencia <> 0 And CR.Renglon = 2 And PF.Farmacia = dbo.fCodigoSucursal()	

		-- ProductoFarma  - Entradas y Salidas -
		Update 	ProductoFarma  
			Set Existencia = 0
			From 	CodigosRel
			Where 	CodigoInt = Codigo And Codigo Not In (Select CodigoInt From dbo.fProductosLeidos()) 
			And Existencia <> 0 And ProductoFarma.Farmacia = dbo.fCodigoSucursal()

	Commit Tran
GO
/****** Object:  Default [DF_AcuMovtos_Cve_Producto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Cve_Producto]  DEFAULT (0) FOR [Cve_Producto]
GO
/****** Object:  Default [DF_AcuMovtos_Año]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Año]  DEFAULT (0) FOR [Año]
GO
/****** Object:  Default [DF_AcuMovtos_Mes]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Mes]  DEFAULT (0) FOR [Mes]
GO
/****** Object:  Default [DF_AcuMovtos_Cant_Ent]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Cant_Ent]  DEFAULT (0) FOR [Cant_Ent]
GO
/****** Object:  Default [DF_AcuMovtos_Impte_Ent]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Impte_Ent]  DEFAULT (0) FOR [Impte_Ent]
GO
/****** Object:  Default [DF_AcuMovtos_Cant_Sal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Cant_Sal]  DEFAULT (0) FOR [Cant_Sal]
GO
/****** Object:  Default [DF_AcuMovtos_Impte_Sal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Impte_Sal]  DEFAULT (0) FOR [Impte_Sal]
GO
/****** Object:  Default [DF_AcuMovtos_Ult_Costo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtos] ADD  CONSTRAINT [DF_AcuMovtos_Ult_Costo]  DEFAULT (0) FOR [Ult_Costo]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Cve_Producto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Cve_Producto]  DEFAULT (0) FOR [Cve_Producto]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Año]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Año]  DEFAULT (0) FOR [Año]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Mes]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Mes]  DEFAULT (0) FOR [Mes]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Cant_Ent]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Cant_Ent]  DEFAULT (0) FOR [Cant_Ent]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Impte_Ent]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Impte_Ent]  DEFAULT (0) FOR [Impte_Ent]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Cant_Sal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Cant_Sal]  DEFAULT (0) FOR [Cant_Sal]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Impte_Sal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Impte_Sal]  DEFAULT (0) FOR [Impte_Sal]
GO
/****** Object:  Default [DF_AcuMovtosRespaldo_Ult_Costo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AcuMovtosRespaldo] ADD  CONSTRAINT [DF_AcuMovtosRespaldo_Ult_Costo]  DEFAULT (0) FOR [Ult_Costo]
GO
/****** Object:  Default [DF_AgrupadorFajillas_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AgrupadorFajillas] ADD  CONSTRAINT [DF_AgrupadorFajillas_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_AgrupadorFajillas_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AgrupadorFajillas] ADD  CONSTRAINT [DF_AgrupadorFajillas_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_AgrupadorFajillas_FolioFajilla]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AgrupadorFajillas] ADD  CONSTRAINT [DF_AgrupadorFajillas_FolioFajilla]  DEFAULT ('') FOR [FolioFajilla]
GO
/****** Object:  Default [DF_AgrupadorFajillas_Importe]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AgrupadorFajillas] ADD  CONSTRAINT [DF_AgrupadorFajillas_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_AgrupadorFajillas_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AgrupadorFajillas] ADD  CONSTRAINT [DF_AgrupadorFajillas_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_Table1_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AltaProductos] ADD  CONSTRAINT [DF_Table1_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_Table1_Producto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AltaProductos] ADD  CONSTRAINT [DF_Table1_Producto]  DEFAULT (0) FOR [Producto]
GO
/****** Object:  Default [DF_Table1_CantidadPedida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AltaProductos] ADD  CONSTRAINT [DF_Table1_CantidadPedida]  DEFAULT (0) FOR [CantidadPedida]
GO
/****** Object:  Default [DF__AltaProdu__rowgu__03524525]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[AltaProductos] ADD  CONSTRAINT [DF__AltaProdu__rowgu__03524525]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_ArticulosNegados_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_ArticulosNegados_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_ArticulosNegados_CodInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_CodInt]  DEFAULT (0) FOR [CodInt]
GO
/****** Object:  Default [DF_ArticulosNegados_CodRelacionado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_CodRelacionado]  DEFAULT ('') FOR [CodRelacionado]
GO
/****** Object:  Default [DF_ArticulosNegados_Descripcion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_ArticulosNegados_Tipo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_Tipo]  DEFAULT ('') FOR [Tipo]
GO
/****** Object:  Default [DF_ArticulosNegados_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ArticulosNegados] ADD  CONSTRAINT [DF_ArticulosNegados_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_UsuarioAutoriz]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_UsuarioAutoriz]  DEFAULT (0) FOR [UsuarioAutoriz]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_UsuarioSistema]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_UsuarioSistema]  DEFAULT (0) FOR [UsuarioSistema]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_Proceso]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_Proceso]  DEFAULT ('') FOR [Autorizacion]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_FechaAutoriz]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_FechaAutoriz]  DEFAULT ('1900-01-01') FOR [FechaAutoriz]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_BitacoraAutorizaciones_Maquina]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF_BitacoraAutorizaciones_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF__BitacoraA__rowgu__338B682C]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[BitacoraAutorizaciones] ADD  CONSTRAINT [DF__BitacoraA__rowgu__338B682C]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_CabSAD_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CabSAD_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CabSAD_Cod_Cliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Cod_Cliente]  DEFAULT (0) FOR [Cod_Cliente]
GO
/****** Object:  Default [DF_CabSAD_Telefono]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Telefono]  DEFAULT ('') FOR [Telefono]
GO
/****** Object:  Default [DF_CabSAD_Colonia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Colonia]  DEFAULT (0) FOR [Colonia]
GO
/****** Object:  Default [DF_CabSAD_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CabSAD_Repartidor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Repartidor]  DEFAULT (0) FOR [Repartidor]
GO
/****** Object:  Default [DF_CabSAD_Subtotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Subtotal]  DEFAULT (0) FOR [Subtotal]
GO
/****** Object:  Default [DF_CabSAD_Descto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Descto]  DEFAULT (0) FOR [Descto]
GO
/****** Object:  Default [DF_CabSAD_ImpteIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ImpteIVA]  DEFAULT (0) FOR [ImpteIVA]
GO
/****** Object:  Default [DF_CabSAD_ImpteSAD]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ImpteSAD]  DEFAULT (0) FOR [ImpteSAD]
GO
/****** Object:  Default [DF_CabSAD_ImpteIVASAD]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ImpteIVASAD]  DEFAULT (0) FOR [ImpteIVASAD]
GO
/****** Object:  Default [DF_CabSAD_ImpteRedondeo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ImpteRedondeo]  DEFAULT (0) FOR [ImpteRedondeo]
GO
/****** Object:  Default [DF_CabSAD_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CabSAD_ImptePago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ImptePago]  DEFAULT (0) FOR [ImptePago]
GO
/****** Object:  Default [DF_CabSAD_Titular]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Titular]  DEFAULT (0) FOR [Titular]
GO
/****** Object:  Default [DF_CabSAD_Empleado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Empleado]  DEFAULT (0) FOR [Empleado]
GO
/****** Object:  Default [DF_CabSAD_Dependiente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Dependiente]  DEFAULT (0) FOR [Dependiente]
GO
/****** Object:  Default [DF_CabSAD_Parentesco]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Parentesco]  DEFAULT ('') FOR [Parentesco]
GO
/****** Object:  Default [DF_CabSAD_TipoVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_TipoVenta]  DEFAULT ('') FOR [TipoVenta]
GO
/****** Object:  Default [DF_CabSAD_HoraReparto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_HoraReparto]  DEFAULT ('1900/01/01') FOR [HoraReparto]
GO
/****** Object:  Default [DF_CabSAD_HoraEnt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_HoraEnt]  DEFAULT ('1900/01/01') FOR [HoraEnt]
GO
/****** Object:  Default [DF_CabSAD_HoraPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_HoraPago]  DEFAULT ('1900/01/01') FOR [HoraPago]
GO
/****** Object:  Default [DF_CabSAD_FechaCancel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_FechaCancel]  DEFAULT ('1900/01/01') FOR [FechaCancel]
GO
/****** Object:  Default [DF_CabSAD_MotivoCancel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_MotivoCancel]  DEFAULT ('') FOR [MotivoCancel]
GO
/****** Object:  Default [DF_CabSAD_UsuarioCancel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_UsuarioCancel]  DEFAULT ('') FOR [UsuarioCancel]
GO
/****** Object:  Default [DF_CabSAD_Vendedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_CabSAD_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_CabSAD_CambioSugerido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_CambioSugerido]  DEFAULT (0) FOR [CambioSugerido]
GO
/****** Object:  Default [DF_CabSAD_HoraCaptura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_HoraCaptura]  DEFAULT ('1900/01/01') FOR [HoraCaptura]
GO
/****** Object:  Default [DF_CabSAD_IncentivoRepart]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_IncentivoRepart]  DEFAULT (0) FOR [IncentivoRepart]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta1]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta1]  DEFAULT ('') FOR [Etiqueta1]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta2]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta2]  DEFAULT ('') FOR [Etiqueta2]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta3]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta3]  DEFAULT ('') FOR [Etiqueta3]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta4]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta4]  DEFAULT ('') FOR [Etiqueta4]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta5]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta5]  DEFAULT ('') FOR [Etiqueta5]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta6]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta6]  DEFAULT ('') FOR [Etiqueta6]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta7]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta7]  DEFAULT ('') FOR [Etiqueta7]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta8]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta8]  DEFAULT ('') FOR [Etiqueta8]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta9]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta9]  DEFAULT ('') FOR [Etiqueta9]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta10]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta10]  DEFAULT ('') FOR [Etiqueta10]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta11]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta11]  DEFAULT ('') FOR [Etiqueta11]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta12]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta12]  DEFAULT ('') FOR [Etiqueta12]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta13]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta13]  DEFAULT ('') FOR [Etiqueta13]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta14]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta14]  DEFAULT ('') FOR [Etiqueta14]
GO
/****** Object:  Default [DF_CabSAD_Etiqueta15]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Etiqueta15]  DEFAULT ('') FOR [Etiqueta15]
GO
/****** Object:  Default [DF_CabSAD_TipoPrecio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_TipoPrecio]  DEFAULT ('') FOR [TipoPrecio]
GO
/****** Object:  Default [DF_CabSAD_ImpteCopago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ImpteCopago]  DEFAULT (0) FOR [ImpteCopago]
GO
/****** Object:  Default [DF_CabSAD_Observaciones]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_Observaciones]  DEFAULT ('') FOR [Observaciones]
GO
/****** Object:  Default [DF_CabSAD_ComisionBan]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_ComisionBan]  DEFAULT (0) FOR [ComisionBan]
GO
/****** Object:  Default [DF_CabSAD_FolioVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD] ADD  CONSTRAINT [DF_CabSAD_FolioVenta]  DEFAULT ('') FOR [FolioVenta]
GO
/****** Object:  Default [DF_CajPag_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CajPag_FormaPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_FormaPago]  DEFAULT (0) FOR [FormaPago]
GO
/****** Object:  Default [DF_CajPag_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_CajPag_FechaPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_FechaPago]  DEFAULT ('1900/01/01') FOR [FechaPago]
GO
/****** Object:  Default [DF_CajPag_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CajPag_Vendedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_CajPag_Documento]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_Documento]  DEFAULT ('') FOR [Documento]
GO
/****** Object:  Default [DF_CajPag_NumAutoriza]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_NumAutoriza]  DEFAULT ('') FOR [NumAutoriza]
GO
/****** Object:  Default [DF_CajPag_ImptePago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_ImptePago]  DEFAULT (0) FOR [ImptePago]
GO
/****** Object:  Default [DF_CajPag_ComisionBan]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_ComisionBan]  DEFAULT (0) FOR [ComisionBan]
GO
/****** Object:  Default [DF_CajPag_TipoCambio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_TipoCambio]  DEFAULT (0) FOR [TipoCambio]
GO
/****** Object:  Default [DF_CajPag_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CajPag] ADD  CONSTRAINT [DF_CajPag_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_CambioPassword_Codigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CambioPassword] ADD  CONSTRAINT [DF_CambioPassword_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_CambioPassword_NewPassword]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CambioPassword] ADD  CONSTRAINT [DF_CambioPassword_NewPassword]  DEFAULT ('') FOR [NewPassword]
GO
/****** Object:  Default [DF_CambioPassword_RetryPassword]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CambioPassword] ADD  CONSTRAINT [DF_CambioPassword_RetryPassword]  DEFAULT ('') FOR [RetryPassword]
GO
/****** Object:  Default [DF__CambioPas__rowgu__000C8F7D]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CambioPassword] ADD  CONSTRAINT [DF__CambioPas__rowgu__000C8F7D]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_CatCajas_Cod_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Cod_Caja]  DEFAULT (0) FOR [Cod_Caja]
GO
/****** Object:  Default [DF_CatCajas_Abre_Cajon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Abre_Cajon]  DEFAULT (0) FOR [Abre_Cajon]
GO
/****** Object:  Default [DF_CatCajas_Puerto_Cajon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Puerto_Cajon]  DEFAULT (0) FOR [Puerto_Cajon]
GO
/****** Object:  Default [DF_CatCajas_Puerto_Impresora]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Puerto_Impresora]  DEFAULT (0) FOR [Puerto_Impresora]
GO
/****** Object:  Default [DF_CatCajas_Consec_Vtas]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Consec_Vtas]  DEFAULT (0) FOR [Consec_Vtas]
GO
/****** Object:  Default [DF_CatCajas_Consec_Dev]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Consec_Dev]  DEFAULT (0) FOR [Consec_Dev]
GO
/****** Object:  Default [DF_CatCajas_Consec_ReaCta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Consec_ReaCta]  DEFAULT (0) FOR [Consec_ReaCta]
GO
/****** Object:  Default [DF_CatCajas_Total_Ventas]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Total_Ventas]  DEFAULT (0) FOR [Total_Ventas]
GO
/****** Object:  Default [DF_CatCajas_Disponible]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Disponible]  DEFAULT (0) FOR [Disponible]
GO
/****** Object:  Default [DF_CatCajas_FechaApertura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_FechaApertura]  DEFAULT ('1900/01/01') FOR [FechaApertura]
GO
/****** Object:  Default [DF_CatCajas_Consec_Retiro]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Consec_Retiro]  DEFAULT (0) FOR [Consec_Retiro]
GO
/****** Object:  Default [DF_CatCajas_Consec_Fajilla]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_Consec_Fajilla]  DEFAULT (0) FOR [Consec_Fajilla]
GO
/****** Object:  Default [DF_CatCajas_CortarPapel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_CortarPapel]  DEFAULT ('') FOR [CortarPapel]
GO
/****** Object:  Default [DF_CatCajas_AbrirCajon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_AbrirCajon]  DEFAULT ('') FOR [AbrirCajon]
GO
/****** Object:  Default [DF_CatCajas_FechaCierre]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajas] ADD  CONSTRAINT [DF_CatCajas_FechaCierre]  DEFAULT ('1900/01/01') FOR [FechaCierre]
GO
/****** Object:  Default [DF_CatCajeros_Cod_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_Cod_Caja]  DEFAULT (0) FOR [Cod_Caja]
GO
/****** Object:  Default [DF_CatCajeros_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CatCajeros_Fecha_Operacion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_Fecha_Operacion]  DEFAULT ('1900/01/01') FOR [Fecha_Operacion]
GO
/****** Object:  Default [DF_CatCajeros_Dotacion_Inicial]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_Dotacion_Inicial]  DEFAULT (0) FOR [Dotacion_Inicial]
GO
/****** Object:  Default [DF_CatCajeros_Cierre]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_Cierre]  DEFAULT (0) FOR [Cierre]
GO
/****** Object:  Default [DF_CatCajeros_FondoCaja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_FondoCaja]  DEFAULT (0) FOR [FondoCaja]
GO
/****** Object:  Default [DF_CatCajeros_Apertura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CatCajeros] ADD  CONSTRAINT [DF_CatCajeros_Apertura]  DEFAULT (0) FOR [Apertura]
GO
/****** Object:  Default [DF__Colonias__rowgui__10CDD282]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Colonias] ADD  CONSTRAINT [DF__Colonias__rowgui__10CDD282]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_CompraCab_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_CompraCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CompraCab_CodProveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_CodProveedor]  DEFAULT (0) FOR [CodProveedor]
GO
/****** Object:  Default [DF_CompraCab_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_CompraCab_Pedido_1]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Pedido_1]  DEFAULT ('') FOR [Pedido]
GO
/****** Object:  Default [DF_CompraCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CompraCab_FechaCaptura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_FechaCaptura]  DEFAULT ('1900/01/01') FOR [FechaCaptura]
GO
/****** Object:  Default [DF_CompraCab_Subtotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Subtotal]  DEFAULT (0) FOR [Subtotal]
GO
/****** Object:  Default [DF_CompraCab_Ofertas]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Ofertas]  DEFAULT (0) FOR [SubOferta]
GO
/****** Object:  Default [DF_CompraCab_SubDescFin]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_SubDescFin]  DEFAULT (0) FOR [SubDescFin]
GO
/****** Object:  Default [DF_CompraCab_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_CompraCab_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CompraCab_FechaVenc]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_FechaVenc]  DEFAULT ('1900/01/01') FOR [FechaVenc]
GO
/****** Object:  Default [DF_CompraCab_FechaPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_FechaPago]  DEFAULT ('1900/01/01') FOR [FechaPago]
GO
/****** Object:  Default [DF_CompraCab_FechaCont]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_FechaCont]  DEFAULT ('1900/01/01') FOR [FechaCont]
GO
/****** Object:  Default [DF_CompraCab_ImpteGastos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_ImpteGastos]  DEFAULT (0) FOR [ImpteGastos]
GO
/****** Object:  Default [DF_CompraCab_DifSubDescFac]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_DifSubDescFac]  DEFAULT (0) FOR [DifSubDescFac]
GO
/****** Object:  Default [DF_CompraCab_DifIvaFac]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_DifIvaFac]  DEFAULT (0) FOR [DifIvaFac]
GO
/****** Object:  Default [DF_CompraCab_Plazos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_Plazos]  DEFAULT (0) FOR [Plazos]
GO
/****** Object:  Default [DF_CompraCab_IvaGastos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_IvaGastos]  DEFAULT (0) FOR [IvaGastos]
GO
/****** Object:  Default [DF_CompraCab_TipoAbarrote]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_TipoAbarrote]  DEFAULT (0) FOR [TipoAbarrote]
GO
/****** Object:  Default [DF_CompraCab_IvaDescFin]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraCab] ADD  CONSTRAINT [DF_CompraCab_IvaDescFin]  DEFAULT (0) FOR [IvaDescFin]
GO
/****** Object:  Default [DF_CompraDet_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_CompraDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CompraDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CompraDet_CodProveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CodProveedor]  DEFAULT (0) FOR [CodProveedor]
GO
/****** Object:  Default [DF_CompraDet_CodInterno]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CodInterno]  DEFAULT (0) FOR [CodInterno]
GO
/****** Object:  Default [DF_CompraDet_CodRelacionado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CodRelacionado]  DEFAULT ('') FOR [CodRelacionado]
GO
/****** Object:  Default [DF_CompraDet_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_CompraDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_CompraDet_Departamento]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Departamento]  DEFAULT (0) FOR [Departamento]
GO
/****** Object:  Default [DF_CompraDet_CantPedida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CantPedida]  DEFAULT (0) FOR [CantPedCon]
GO
/****** Object:  Default [DF_CompraDet_CantPed]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CantPed]  DEFAULT (0) FOR [CantPedSin]
GO
/****** Object:  Default [DF_CompraDet_CantSurtida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_CompraDet_CantFacturada]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CantFacturada]  DEFAULT (0) FOR [CantFacturada]
GO
/****** Object:  Default [DF_CompraDet_CantDevuelta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_CantDevuelta]  DEFAULT (0) FOR [CantDevuelta]
GO
/****** Object:  Default [DF_CompraDet_PorcDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_PorcDescto]  DEFAULT (0) FOR [PorcDescto]
GO
/****** Object:  Default [DF_CompraDet_PorcFinan]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_PorcFinan]  DEFAULT (0) FOR [PorcFinan]
GO
/****** Object:  Default [DF_CompraDet_PorcIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_PorcIVA]  DEFAULT (0) FOR [PorcIVA]
GO
/****** Object:  Default [DF_CompraDet_PFarmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_PFarmacia]  DEFAULT (0) FOR [PFarmacia]
GO
/****** Object:  Default [DF_CompraDet_FechaContable]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_FechaContable]  DEFAULT ('1900/01/01') FOR [FechaContable]
GO
/****** Object:  Default [DF_CompraDet_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CompraDet_FechaHora]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_FechaHora]  DEFAULT ('') FOR [FechaHora]
GO
/****** Object:  Default [DF_CompraDet_GastoUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_GastoUnit]  DEFAULT (0) FOR [GastoUnit]
GO
/****** Object:  Default [DF_CompraDet_NotaCredito]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDet] ADD  CONSTRAINT [DF_CompraDet_NotaCredito]  DEFAULT (0) FOR [NotaCredito]
GO
/****** Object:  Default [DF_CompraDirCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CompraDirCab_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_CompraDirCab_CodProveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_CodProveedor]  DEFAULT (0) FOR [CodProveedor]
GO
/****** Object:  Default [DF_CompraDirCab_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_CompraDirCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CompraDirCab_Subtotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Subtotal]  DEFAULT (0) FOR [Subtotal]
GO
/****** Object:  Default [DF_CompraDirCab_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_CompraDirCab_Total]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Total]  DEFAULT (0) FOR [Total]
GO
/****** Object:  Default [DF_CompraDirCab_FechaConta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_FechaConta]  DEFAULT ('1900/01/01') FOR [FechaConta]
GO
/****** Object:  Default [DF_CompraDirCab_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CompraDirCab_StatusFac]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_StatusFac]  DEFAULT ('') FOR [StatusFac]
GO
/****** Object:  Default [DF_CompraDirCab_Fecha_Captura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Fecha_Captura]  DEFAULT ('1900/01/01') FOR [Fecha_Captura]
GO
/****** Object:  Default [DF_CompraDirCab_Usuario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_CompraDirCab_Tipo_Compra]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Tipo_Compra]  DEFAULT ('R') FOR [TipoCompra]
GO
/****** Object:  Default [DF_CompraDirCab_Plazos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_Plazos]  DEFAULT (0) FOR [Plazos]
GO
/****** Object:  Default [DF_CompraDirCab_FechaVenc]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_FechaVenc]  DEFAULT ('1900/01/01') FOR [FechaVenc]
GO
/****** Object:  Default [DF_CompraDirCab_IvaGastos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_IvaGastos]  DEFAULT (0) FOR [IvaGastos]
GO
/****** Object:  Default [DF_CompraDirCab_ImpteGastos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_ImpteGastos]  DEFAULT (0) FOR [ImpteGastos]
GO
/****** Object:  Default [DF_CompraDirCab_TipoAbarrote]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirCab] ADD  CONSTRAINT [DF_CompraDirCab_TipoAbarrote]  DEFAULT (0) FOR [TipoAbarrote]
GO
/****** Object:  Default [DF_CompraDirDet_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_CompraDirDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CompraDirDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CompraDirDet_CodProveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_CodProveedor]  DEFAULT (0) FOR [CodProveedor]
GO
/****** Object:  Default [DF_CompraDirDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_CompraDirDet_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_CompraDirDet_CodigoEAN]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_CompraDirDet_Depto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_CompraDirDet_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_CompraDirDet_PUnitario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_PUnitario]  DEFAULT (0) FOR [PUnitario]
GO
/****** Object:  Default [DF_CompraDirDet_PPublico]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_PPublico]  DEFAULT (0) FOR [PPublico]
GO
/****** Object:  Default [DF_CompraDirDet_TasaIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_TasaIVA]  DEFAULT (0) FOR [TasaIVA]
GO
/****** Object:  Default [DF_CompraDirDet_FechaConta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_FechaConta]  DEFAULT ('1900/01/01') FOR [FechaConta]
GO
/****** Object:  Default [DF_CompraDirDet_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CompraDirDet_FechaHora]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CompraDirDet] ADD  CONSTRAINT [DF_CompraDirDet_FechaHora]  DEFAULT ('') FOR [FechaHora]
GO
/****** Object:  Default [DF_Config_Tipo_Cambio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Tipo_Cambio]  DEFAULT (0) FOR [Tipo_Cambio]
GO
/****** Object:  Default [DF_Config_UtilMinima]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_UtilMinima]  DEFAULT (0) FOR [UtilMinima]
GO
/****** Object:  Default [DF_Config_CantDecimal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CantDecimal]  DEFAULT (0) FOR [CantDecimal]
GO
/****** Object:  Default [DF_Config_EfectMaxCaja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_EfectMaxCaja]  DEFAULT (0) FOR [EfectMaxCaja]
GO
/****** Object:  Default [DF_Config_VentasSinExist]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_VentasSinExist]  DEFAULT (0) FOR [VentasSinExist]
GO
/****** Object:  Default [DF_Config_Redondeo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Redondeo]  DEFAULT (0) FOR [Redondeo]
GO
/****** Object:  Default [DF_Config_SimboloPesos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_SimboloPesos]  DEFAULT ('') FOR [SimboloPesos]
GO
/****** Object:  Default [DF_Config_AumentarDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_AumentarDescto]  DEFAULT (0) FOR [AumentarDescto]
GO
/****** Object:  Default [DF_Config_DisminuirDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_DisminuirDescto]  DEFAULT (0) FOR [DisminuirDescto]
GO
/****** Object:  Default [DF_Config_ImpFajRet]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_ImpFajRet]  DEFAULT (0) FOR [ImpFajRet]
GO
/****** Object:  Default [DF_Config_MensNormal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MensNormal]  DEFAULT ('') FOR [MensNormal]
GO
/****** Object:  Default [DF_Config_MensVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MensVenta]  DEFAULT ('') FOR [MensVenta]
GO
/****** Object:  Default [DF_Config_MensDevol]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MensDevol]  DEFAULT ('') FOR [MensDevol]
GO
/****** Object:  Default [DF_Config_MensSAD]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MensSAD]  DEFAULT ('') FOR [MensSAD]
GO
/****** Object:  Default [DF_Config_AlmaMedica]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_AlmaMedica]  DEFAULT (0) FOR [AlmaMedica]
GO
/****** Object:  Default [DF_Config_AlmaAbarrote]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_AlmaAbarrote]  DEFAULT (0) FOR [AlmaAbarrote]
GO
/****** Object:  Default [DF_Config_CapturaCantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CapturaCantidad]  DEFAULT (0) FOR [CapturaCantidad]
GO
/****** Object:  Default [DF_Config_Devoluciones]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Devoluciones]  DEFAULT (0) FOR [Devoluciones]
GO
/****** Object:  Default [DF_Config_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_Config_DigitosTel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_DigitosTel]  DEFAULT (0) FOR [DigitosTel]
GO
/****** Object:  Default [DF_Config_Autoriza]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Autoriza]  DEFAULT (0) FOR [Autoriza]
GO
/****** Object:  Default [DF_Config_DiasVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_DiasVenta]  DEFAULT (0) FOR [DiasVenta]
GO
/****** Object:  Default [DF_Config_RutaImagen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_RutaImagen]  DEFAULT ('') FOR [RutaImagen]
GO
/****** Object:  Default [DF_Config_RutadeReporte]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_RutadeReporte]  DEFAULT ('') FOR [RutadeReporte]
GO
/****** Object:  Default [DF_Config_FechaApertura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_FechaApertura]  DEFAULT ('1900/01/01') FOR [FechaApertura]
GO
/****** Object:  Default [DF_Config_Variacion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Variacion]  DEFAULT (0) FOR [Variacion]
GO
/****** Object:  Default [DF_Config_RutaDescarga]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_RutaDescarga]  DEFAULT ('') FOR [RutaDescarga]
GO
/****** Object:  Default [DF_Config_NombreDescarga]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_NombreDescarga]  DEFAULT ('') FOR [NombreDescarga]
GO
/****** Object:  Default [DF_Config_CapturaXDescrip]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CapturaXDescrip]  DEFAULT (0) FOR [CapturaXDescrip]
GO
/****** Object:  Default [DF_Config_MensFiscal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MensFiscal]  DEFAULT ('') FOR [MensFiscal]
GO
/****** Object:  Default [DF_Config_CambioCodigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CambioCodigo]  DEFAULT (0) FOR [CambioCodigo]
GO
/****** Object:  Default [DF_Config_SuprimirLinea]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_SuprimirLinea]  DEFAULT (0) FOR [SuprimirLinea]
GO
/****** Object:  Default [DF_Config_AbandonarCaptura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_AbandonarCaptura]  DEFAULT (0) FOR [AbandonarCaptura]
GO
/****** Object:  Default [DF_Config_VariacionCompras]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_VariacionCompras]  DEFAULT (0) FOR [VariacionCompras]
GO
/****** Object:  Default [DF_Config_CambiarPedido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CambiarPedido]  DEFAULT (0) FOR [CambiarPedido]
GO
/****** Object:  Default [DF_Config_CapturaUnidades]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CapturaUnidades]  DEFAULT (0) FOR [CapturaUnidades]
GO
/****** Object:  Default [DF_Config_IndicaNoSoportaD]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_IndicaNoSoportaD]  DEFAULT (0) FOR [IndicaNoSoportaD]
GO
/****** Object:  Default [DF_Config_ConsultarFolios]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_ConsultarFolios]  DEFAULT (0) FOR [ConsultarFolios]
GO
/****** Object:  Default [DF_Config_MostrarExistencias]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MostrarExistencias]  DEFAULT (0) FOR [MostrarExistencias]
GO
/****** Object:  Default [DF_Config_TransImpresion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_TransImpresion]  DEFAULT (0) FOR [ImpresionTrans]
GO
/****** Object:  Default [DF_Config_CaracterSepara]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_CaracterSepara]  DEFAULT ('') FOR [CaracterSeparador]
GO
/****** Object:  Default [DF_Config_Espacios]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_Espacios]  DEFAULT (0) FOR [Espacios]
GO
/****** Object:  Default [DF_Config_ComprasMayNC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_ComprasMayNC]  DEFAULT (0) FOR [ComprasMayNC]
GO
/****** Object:  Default [DF_Config_MultipleSesiones]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_MultipleSesiones]  DEFAULT (0) FOR [MultipleSesiones]
GO
/****** Object:  Default [DF__Config__PermVale__3C25A401]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF__Config__PermVale__3C25A401]  DEFAULT (0) FOR [PermValesDev]
GO
/****** Object:  Default [DF_Config_ProveedorEspecifico]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Config] ADD  CONSTRAINT [DF_Config_ProveedorEspecifico]  DEFAULT (0) FOR [ProveedorEspecifico]
GO
/****** Object:  Default [DF_ConfigFactura_RenTotales]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenTotales]  DEFAULT (0) FOR [RenTotales]
GO
/****** Object:  Default [DF_ConfigFactura_RenEmpresa]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenEmpresa]  DEFAULT (0) FOR [RenEmpresa]
GO
/****** Object:  Default [DF_ConfigFactura_ColEmpresa]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColEmpresa]  DEFAULT (0) FOR [ColEmpresa]
GO
/****** Object:  Default [DF_ConfigFactura_RenRFC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenRFC]  DEFAULT (0) FOR [RenRFC]
GO
/****** Object:  Default [DF_ConfigFactura_ColRFC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColRFC]  DEFAULT (0) FOR [ColRFC]
GO
/****** Object:  Default [DF_ConfigFactura_RenFecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenFecha]  DEFAULT (0) FOR [RenFecha]
GO
/****** Object:  Default [DF_ConfigFactura_ColFecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColFecha]  DEFAULT (0) FOR [ColFecha]
GO
/****** Object:  Default [DF_ConfigFactura_RenFolio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenFolio]  DEFAULT (0) FOR [RenFolio]
GO
/****** Object:  Default [DF_ConfigFactura_ColFolio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColFolio]  DEFAULT (0) FOR [ColFolio]
GO
/****** Object:  Default [DF_ConfigFactura_RenCalle]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenCalle]  DEFAULT (0) FOR [RenCalle]
GO
/****** Object:  Default [DF_ConfigFactura_ColCalle]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColCalle]  DEFAULT (0) FOR [ColCalle]
GO
/****** Object:  Default [DF_ConfigFactura_RenColonia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenColonia]  DEFAULT (0) FOR [RenColonia]
GO
/****** Object:  Default [DF_ConfigFactura_ColColonia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColColonia]  DEFAULT (0) FOR [ColColonia]
GO
/****** Object:  Default [DF_ConfigFactura_RenCiudad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenCiudad]  DEFAULT (0) FOR [RenCiudad]
GO
/****** Object:  Default [DF_ConfigFactura_ColCiudad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColCiudad]  DEFAULT (0) FOR [ColCiudad]
GO
/****** Object:  Default [DF_ConfigFactura_RenEstado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenEstado]  DEFAULT (0) FOR [RenEstado]
GO
/****** Object:  Default [DF_ConfigFactura_ColEstado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColEstado]  DEFAULT (0) FOR [ColEstado]
GO
/****** Object:  Default [DF_ConfigFactura_RenCP]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenCP]  DEFAULT (0) FOR [RenCP]
GO
/****** Object:  Default [DF_ConfigFactura_ColCP]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColCP]  DEFAULT (0) FOR [ColCP]
GO
/****** Object:  Default [DF_ConfigFactura_RenTelefono]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenTelefono]  DEFAULT (0) FOR [RenTelefono]
GO
/****** Object:  Default [DF_ConfigFactura_ColTelefono]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColTelefono]  DEFAULT (0) FOR [ColTelefono]
GO
/****** Object:  Default [DF_ConfigFactura_RenSubtotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenSubtotal]  DEFAULT (0) FOR [RenSubtotal]
GO
/****** Object:  Default [DF_ConfigFactura_ColSubtotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColSubtotal]  DEFAULT (0) FOR [ColSubtotal]
GO
/****** Object:  Default [DF_ConfigFactura_RenIva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenIva]  DEFAULT (0) FOR [RenIva]
GO
/****** Object:  Default [DF_ConfigFactura_ColIva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColIva]  DEFAULT (0) FOR [ColIva]
GO
/****** Object:  Default [DF_ConfigFactura_RenTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenTotal]  DEFAULT (0) FOR [RenTotal]
GO
/****** Object:  Default [DF_ConfigFactura_ColTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColTotal]  DEFAULT (0) FOR [ColTotal]
GO
/****** Object:  Default [DF_ConfigFactura_RenDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenDescto]  DEFAULT (0) FOR [RenDescto]
GO
/****** Object:  Default [DF_ConfigFactura_ColDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColDescto]  DEFAULT (0) FOR [ColDescto]
GO
/****** Object:  Default [DF_ConfigFactura_RenImpLetra]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenImpLetra]  DEFAULT (0) FOR [RenImpLetra]
GO
/****** Object:  Default [DF_ConfigFactura_ColImpLetra]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColImpLetra]  DEFAULT (0) FOR [ColImpLetra]
GO
/****** Object:  Default [DF_ConfigFactura_RenLugarExped]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenLugarExped]  DEFAULT (0) FOR [RenLugarExped]
GO
/****** Object:  Default [DF_ConfigFactura_ColLugarExped]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColLugarExped]  DEFAULT (0) FOR [ColLugarExped]
GO
/****** Object:  Default [DF_ConfigFactura_CantRenXDet]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_CantRenXDet]  DEFAULT (0) FOR [CantRenXDet]
GO
/****** Object:  Default [DF_ConfigFactura_RenPrimerPartida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenPrimerPartida]  DEFAULT (0) FOR [RenPrimerPartida]
GO
/****** Object:  Default [DF_ConfigFactura_ColCodigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColCodigo]  DEFAULT (0) FOR [ColCodigo]
GO
/****** Object:  Default [DF_ConfigFactura_ColCantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColCantidad]  DEFAULT (0) FOR [ColCantidad]
GO
/****** Object:  Default [DF_ConfigFactura_ColDescripcion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColDescripcion]  DEFAULT (0) FOR [ColDescripcion]
GO
/****** Object:  Default [DF_ConfigFactura_ColDesctoDetalle]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColDesctoDetalle]  DEFAULT (0) FOR [ColDesctoDetalle]
GO
/****** Object:  Default [DF_ConfigFactura_ColPromocion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColPromocion]  DEFAULT (0) FOR [ColPromocion]
GO
/****** Object:  Default [DF_ConfigFactura_ColPrecioVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColPrecioVenta]  DEFAULT (0) FOR [ColPrecioVenta]
GO
/****** Object:  Default [DF_ConfigFactura_ColImporte]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColImporte]  DEFAULT (0) FOR [ColImporte]
GO
/****** Object:  Default [DF_ConfigFactura_ColIVAPartida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColIVAPartida]  DEFAULT (0) FOR [ColIVAPartida]
GO
/****** Object:  Default [DF_ConfigFactura_Ticket]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_Ticket]  DEFAULT (0) FOR [Ticket]
GO
/****** Object:  Default [DF_ConfigFactura_ColLeyenda]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_ColLeyenda]  DEFAULT (0) FOR [ColLeyenda]
GO
/****** Object:  Default [DF_ConfigFactura_RenLeyenda]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_RenLeyenda]  DEFAULT (0) FOR [RenLeyenda]
GO
/****** Object:  Default [DF_ConfigFactura_Leyenda]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_Leyenda]  DEFAULT (0) FOR [Leyenda]
GO
/****** Object:  Default [DF_ConfigFactura_TamLetra]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_TamLetra]  DEFAULT (0) FOR [TamLetra]
GO
/****** Object:  Default [DF_ConfigFactura_LongCliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongCliente]  DEFAULT (0) FOR [LongCliente]
GO
/****** Object:  Default [DF_ConfigFactura_LongDireccion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongDireccion]  DEFAULT (0) FOR [LongDireccion]
GO
/****** Object:  Default [DF_ConfigFactura_LongColonia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongColonia]  DEFAULT (0) FOR [LongColonia]
GO
/****** Object:  Default [DF_ConfigFactura_LongCiudad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongCiudad]  DEFAULT (0) FOR [LongCiudad]
GO
/****** Object:  Default [DF_ConfigFactura_LongEstado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongEstado]  DEFAULT (0) FOR [LongEstado]
GO
/****** Object:  Default [DF_ConfigFactura_LongProducto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongProducto]  DEFAULT (0) FOR [LongProducto]
GO
/****** Object:  Default [DF_ConfigFactura_LongLeyenda]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_LongLeyenda]  DEFAULT (0) FOR [LongLeyenda]
GO
/****** Object:  Default [DF_ConfigFactura_PrecioNeto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigFactura] ADD  CONSTRAINT [DF_ConfigFactura_PrecioNeto]  DEFAULT (0) FOR [PrecioNeto]
GO
/****** Object:  Default [DF_ConfigSAD_Serv_24Hrs]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Serv_24Hrs]  DEFAULT (0) FOR [Serv_24Hrs]
GO
/****** Object:  Default [DF_ConfigSAD_Password_Repart]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Password_Repart]  DEFAULT (0) FOR [Password_Repart]
GO
/****** Object:  Default [DF_ConfigSAD_Incentivo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Incentivo]  DEFAULT (0) FOR [Incentivo]
GO
/****** Object:  Default [DF_ConfigSAD_Monto_Min_NoSAD]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Monto_Min_NoSAD]  DEFAULT (0) FOR [Monto_Min_NoSAD]
GO
/****** Object:  Default [DF_ConfigSAD_EditarClientes]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_EditarClientes]  DEFAULT (0) FOR [EditarClientes]
GO
/****** Object:  Default [DF_ConfigSAD_CancelarVentas]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_CancelarVentas]  DEFAULT (0) FOR [CancelarVentas]
GO
/****** Object:  Default [DF_ConfigSAD_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_ConfigSAD_Tiempo_X_Surtir]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Tiempo_X_Surtir]  DEFAULT (0) FOR [Tiempo_X_Surtir]
GO
/****** Object:  Default [DF_ConfigSAD_Tiempo_X_Regresar]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Tiempo_X_Regresar]  DEFAULT (0) FOR [Tiempo_X_Regresar]
GO
/****** Object:  Default [DF_ConfigSAD_Pregunta_Hora_Entrega]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigSAD] ADD  CONSTRAINT [DF_ConfigSAD_Pregunta_Hora_Entrega]  DEFAULT (0) FOR [Pregunta_Hora_Entrega]
GO
/****** Object:  Default [DF_ConfigTicketSAD_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketSAD] ADD  CONSTRAINT [DF_ConfigTicketSAD_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ConfigTicketSAD_Etiqueta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketSAD] ADD  CONSTRAINT [DF_ConfigTicketSAD_Etiqueta]  DEFAULT ('') FOR [Etiqueta]
GO
/****** Object:  Default [DF_ConfigTicketSAD_Formula]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketSAD] ADD  CONSTRAINT [DF_ConfigTicketSAD_Formula]  DEFAULT ('') FOR [Formula]
GO
/****** Object:  Default [DF_ConfigTicketSAD_Columna]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketSAD] ADD  CONSTRAINT [DF_ConfigTicketSAD_Columna]  DEFAULT (0) FOR [Columna]
GO
/****** Object:  Default [DF_ConfigTicketSAD_Saltos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketSAD] ADD  CONSTRAINT [DF_ConfigTicketSAD_Saltos]  DEFAULT (0) FOR [Saltos]
GO
/****** Object:  Default [DF_ConfigTicketVenta_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVenta] ADD  CONSTRAINT [DF_ConfigTicketVenta_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ConfigTicketVenta_Etiqueta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVenta] ADD  CONSTRAINT [DF_ConfigTicketVenta_Etiqueta]  DEFAULT ('') FOR [Etiqueta]
GO
/****** Object:  Default [DF_ConfigTicketVenta_Formula]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVenta] ADD  CONSTRAINT [DF_ConfigTicketVenta_Formula]  DEFAULT ('') FOR [Formula]
GO
/****** Object:  Default [DF_ConfigTicketVenta_Columna]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVenta] ADD  CONSTRAINT [DF_ConfigTicketVenta_Columna]  DEFAULT (0) FOR [Columna]
GO
/****** Object:  Default [DF_ConfigTicketVenta_Saltos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVenta] ADD  CONSTRAINT [DF_ConfigTicketVenta_Saltos]  DEFAULT (0) FOR [Saltos]
GO
/****** Object:  Default [DF_ConfigTicketVentaCre_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVentaCre] ADD  CONSTRAINT [DF_ConfigTicketVentaCre_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ConfigTicketVentaCre_Etiqueta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVentaCre] ADD  CONSTRAINT [DF_ConfigTicketVentaCre_Etiqueta]  DEFAULT ('') FOR [Etiqueta]
GO
/****** Object:  Default [DF_ConfigTicketVentaCre_Formula]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVentaCre] ADD  CONSTRAINT [DF_ConfigTicketVentaCre_Formula]  DEFAULT ('') FOR [Formula]
GO
/****** Object:  Default [DF_ConfigTicketVentaCre_Columna]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVentaCre] ADD  CONSTRAINT [DF_ConfigTicketVentaCre_Columna]  DEFAULT (0) FOR [Columna]
GO
/****** Object:  Default [DF_ConfigTicketVentaCre_Saltos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ConfigTicketVentaCre] ADD  CONSTRAINT [DF_ConfigTicketVentaCre_Saltos]  DEFAULT (0) FOR [Saltos]
GO
/****** Object:  Default [DF_CorteX_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CorteX_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CorteX_FormaPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_FormaPago]  DEFAULT (0) FOR [FormaPago]
GO
/****** Object:  Default [DF_CorteX_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_CorteX_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CorteX_Hora]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Hora]  DEFAULT ('1900/01/01') FOR [Hora]
GO
/****** Object:  Default [DF_CorteX_UltFolioVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_UltFolioVenta]  DEFAULT ('') FOR [UltFolioVenta]
GO
/****** Object:  Default [DF_CorteX_UltFolioDevol]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_UltFolioDevol]  DEFAULT ('') FOR [UltFolioDevol]
GO
/****** Object:  Default [DF_CorteX_ImpteFisico]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_ImpteFisico]  DEFAULT (0) FOR [ImpteFisico]
GO
/****** Object:  Default [DF_CorteX_ImpteTeorico]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_ImpteTeorico]  DEFAULT (0) FOR [ImpteTeorico]
GO
/****** Object:  Default [DF_CorteX_ImpteRetiro]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_ImpteRetiro]  DEFAULT (0) FOR [ImpteRetiro]
GO
/****** Object:  Default [DF_CorteX_CambioEfect]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_CambioEfect]  DEFAULT (0) FOR [CambioEfect]
GO
/****** Object:  Default [DF_CorteX_DevolsEfect]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_DevolsEfect]  DEFAULT (0) FOR [DevolsEfect]
GO
/****** Object:  Default [DF_CorteX_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_CorteX_Auditoria]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteX] ADD  CONSTRAINT [DF_CorteX_Auditoria]  DEFAULT (1) FOR [Auditoria]
GO
/****** Object:  Default [DF_CorteZ_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteZ] ADD  CONSTRAINT [DF_CorteZ_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CorteZ_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteZ] ADD  CONSTRAINT [DF_CorteZ_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CorteZ_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteZ] ADD  CONSTRAINT [DF_CorteZ_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CorteZ_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CorteZ] ADD  CONSTRAINT [DF_CorteZ_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_CotizCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CotizCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CotizCab_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CotizCab_RFCCliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_RFCCliente]  DEFAULT (0) FOR [Cliente]
GO
/****** Object:  Default [DF_CotizCab_SubTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_CotizCab_Descuento]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Descuento]  DEFAULT (0) FOR [Descuento]
GO
/****** Object:  Default [DF_CotizCab_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_CotizCab_Redondeo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Redondeo]  DEFAULT (0) FOR [Redondeo]
GO
/****** Object:  Default [DF_CotizCab_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CotizCab_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF_CotizCab_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF__CotizCab__Vended__1C614937]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizCab] ADD  CONSTRAINT [DF__CotizCab__Vended__1C614937]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_CotizDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_CotizDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_CotizDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_CotizDet_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_CotizDet_RFCCliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_RFCCliente]  DEFAULT (0) FOR [Cliente]
GO
/****** Object:  Default [DF_CotizDet_CodigoEAN]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_CotizDet_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_CotizDet_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_CotizDet_PrecioUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_PrecioUnit]  DEFAULT (0) FOR [PrecioUnit]
GO
/****** Object:  Default [DF_CotizDet_ImpteIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_ImpteIVA]  DEFAULT (0) FOR [ImpteIVA]
GO
/****** Object:  Default [DF_CotizDet_TasaIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_TasaIVA]  DEFAULT (0) FOR [TasaIVA]
GO
/****** Object:  Default [DF_CotizDet_PorcDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_PorcDescto]  DEFAULT (0) FOR [PorcDescto]
GO
/****** Object:  Default [DF_CotizDet_ImpteDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_ImpteDescto]  DEFAULT (0) FOR [ImpteDescto]
GO
/****** Object:  Default [DF_CotizDet_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_CotizDet_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_CotizDet_TipoDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_TipoDescto]  DEFAULT ('') FOR [TipoDescto]
GO
/****** Object:  Default [DF_CotizDet_RengCodRel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF_CotizDet_RengCodRel]  DEFAULT (0) FOR [RengCodRel]
GO
/****** Object:  Default [DF__CotizDet__Vended__1D556D70]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF__CotizDet__Vended__1D556D70]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF__CotizDet__Unidad__1E4991A9]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF__CotizDet__Unidad__1E4991A9]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF__CotizDet__CodDoc__1F3DB5E2]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF__CotizDet__CodDoc__1F3DB5E2]  DEFAULT (0) FOR [CodDoctor]
GO
/****** Object:  Default [DF__CotizDet__NomDoc__2031DA1B]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CotizDet] ADD  CONSTRAINT [DF__CotizDet__NomDoc__2031DA1B]  DEFAULT ('') FOR [NomDoctor]
GO
/****** Object:  Default [DF_CtesLocales_Telefono]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Telefono]  DEFAULT ('') FOR [Telefono]
GO
/****** Object:  Default [DF_CtesLocales_NombreCte]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_NombreCte]  DEFAULT ('') FOR [NombreCte]
GO
/****** Object:  Default [DF_CtesLocales_Direccion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Direccion]  DEFAULT ('') FOR [Direccion]
GO
/****** Object:  Default [DF_CtesLocales_Colonia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Colonia]  DEFAULT (0) FOR [Colonia]
GO
/****** Object:  Default [DF_CtesLocales_RFC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_RFC]  DEFAULT ('') FOR [RFC]
GO
/****** Object:  Default [DF_CtesLocales_Entre]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Entre]  DEFAULT ('') FOR [Entre]
GO
/****** Object:  Default [DF_CtesLocales_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_CtesLocales_CiudEdo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_CiudEdo]  DEFAULT ('') FOR [CiudEdo]
GO
/****** Object:  Default [DF_CtesLocales_FechaAlta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_FechaAlta]  DEFAULT ('1900/01/01') FOR [FechaAlta]
GO
/****** Object:  Default [DF_CtesLocales_FolioUltVta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_FolioUltVta]  DEFAULT ('') FOR [FolioUltVta]
GO
/****** Object:  Default [DF_CtesLocales_FechaUltVta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_FechaUltVta]  DEFAULT ('1900/01/01') FOR [FechaUltVta]
GO
/****** Object:  Default [DF_CtesLocales_Comentarios]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Comentarios]  DEFAULT ('') FOR [Comentarios]
GO
/****** Object:  Default [DF_CtesLocales_Depurarlo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Depurarlo]  DEFAULT (0) FOR [Depurarlo]
GO
/****** Object:  Default [DF_CtesLocales_Titular]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Titular]  DEFAULT (0) FOR [Titular]
GO
/****** Object:  Default [DF_CtesLocales_Empleado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Empleado]  DEFAULT (0) FOR [Empleado]
GO
/****** Object:  Default [DF_CtesLocales_Dependiente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Dependiente]  DEFAULT (0) FOR [Dependiente]
GO
/****** Object:  Default [DF_CtesLocales_Parentesco]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CtesLocales] ADD  CONSTRAINT [DF_CtesLocales_Parentesco]  DEFAULT ('') FOR [Parentesco]
GO
/****** Object:  Default [DF_DetSaD_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_DetSaD_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_DetSaD_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_DetSaD_CodCliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CodCliente]  DEFAULT (0) FOR [CodCliente]
GO
/****** Object:  Default [DF_DetSaD_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_DetSaD_CodigoEan]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CodigoEan]  DEFAULT ('') FOR [CodigoEan]
GO
/****** Object:  Default [DF_DetSaD_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_DetSaD_PrecioUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_PrecioUnit]  DEFAULT (0) FOR [PrecioUnit]
GO
/****** Object:  Default [DF_DetSaD_CostoUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_DetSaD_PorcDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_PorcDescto]  DEFAULT (0) FOR [PorcDescto]
GO
/****** Object:  Default [DF_DetSaD_ImpteDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_ImpteDescto]  DEFAULT (0) FOR [ImpteDescto]
GO
/****** Object:  Default [DF_DetSaD_PorcIva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_PorcIva]  DEFAULT (0) FOR [PorcIva]
GO
/****** Object:  Default [DF_DetSaD_ImpteIva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_ImpteIva]  DEFAULT (0) FOR [ImpteIva]
GO
/****** Object:  Default [DF_DetSaD_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_DetSaD_TipoDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_TipoDescto]  DEFAULT ('') FOR [TipoDescto]
GO
/****** Object:  Default [DF_DetSaD_Unidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Unidad]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF_DetSaD_CodDoctor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CodDoctor]  DEFAULT (0) FOR [CodDoctor]
GO
/****** Object:  Default [DF_DetSaD_NomDoctor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_NomDoctor]  DEFAULT ('') FOR [NomDoctor]
GO
/****** Object:  Default [DF_DetSaD_Comision]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_Comision]  DEFAULT (0) FOR [Comision]
GO
/****** Object:  Default [DF_DetSaD_DeptoVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_DeptoVenta]  DEFAULT (0) FOR [DeptoVenta]
GO
/****** Object:  Default [DF_DetSaD_UltimoCosto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_UltimoCosto]  DEFAULT (0) FOR [UltimoCosto]
GO
/****** Object:  Default [DF_DetSaD_TipoPrecio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_TipoPrecio]  DEFAULT ('') FOR [TipoPrecio]
GO
/****** Object:  Default [DF_DetSaD_CoPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CoPago]  DEFAULT ('') FOR [CoPago]
GO
/****** Object:  Default [DF_DetSaD_CoPago2]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_CoPago2]  DEFAULT (0) FOR [CoPago2]
GO
/****** Object:  Default [DF_DetSaD_PorcDesctoCte]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_PorcDesctoCte]  DEFAULT (0) FOR [PorcDesctoCte]
GO
/****** Object:  Default [DF_DetSaD_PtjDesctoCte]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_PtjDesctoCte]  DEFAULT (0) FOR [ImpteDesctoCte]
GO
/****** Object:  Default [DF_DetSaD_ImpteIVACte]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD] ADD  CONSTRAINT [DF_DetSaD_ImpteIVACte]  DEFAULT (0) FOR [ImpteIVACte]
GO
/****** Object:  Default [DF_DevolCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_DevolCab_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_DevolCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_DevolCab_FolioVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_FolioVenta]  DEFAULT ('') FOR [FolioVenta]
GO
/****** Object:  Default [DF_DevolCab_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_DevolCab_Vendedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_DevolCab_Cliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Cliente]  DEFAULT (0) FOR [Cliente]
GO
/****** Object:  Default [DF_DevolCab_SubTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_DevolCab_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_DevolCab_Descto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Descto]  DEFAULT (0) FOR [Descto]
GO
/****** Object:  Default [DF_DevolCab_Abono]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Abono]  DEFAULT (0) FOR [Abono]
GO
/****** Object:  Default [DF_DevolCab_CoPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_CoPago]  DEFAULT (0) FOR [CoPago]
GO
/****** Object:  Default [DF_DevolCab_Tipo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Tipo]  DEFAULT ('') FOR [Tipo]
GO
/****** Object:  Default [DF_DevolCab_Origen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Origen]  DEFAULT ('') FOR [Origen]
GO
/****** Object:  Default [DF_DevolCab_Estatus]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_DevolCab_FormaDev]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_FormaDev]  DEFAULT (0) FOR [FormaDev]
GO
/****** Object:  Default [DF_DevolCab_ComisionBan]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_ComisionBan]  DEFAULT (0) FOR [ComisionBan]
GO
/****** Object:  Default [DF_DevolCab_Dato1]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Dato1]  DEFAULT ('') FOR [Dato1]
GO
/****** Object:  Default [DF_DevolCab_Dato2]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Dato2]  DEFAULT ('') FOR [Dato2]
GO
/****** Object:  Default [DF_DevolCab_Dato3]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Dato3]  DEFAULT ('') FOR [Dato3]
GO
/****** Object:  Default [DF_DevolCab_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_DevolCab_FechaHora]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_FechaHora]  DEFAULT ('1900/01/01') FOR [FechaHora]
GO
/****** Object:  Default [DF_DevolCab_ImpteDevol]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolCab] ADD  CONSTRAINT [DF_DevolCab_ImpteDevol]  DEFAULT (0) FOR [ImpteDevol]
GO
/****** Object:  Default [DF_DevolDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_DevolDet_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_DevolDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_DevolDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_DevolDet_FolioVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_FolioVenta]  DEFAULT ('') FOR [FolioVenta]
GO
/****** Object:  Default [DF_DevolDet_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_DevolDet_Vendedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_DevolDet_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_DevolDet_CodigoEAN]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_DevolDet_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_DevolDet_PrecioUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_PrecioUnit]  DEFAULT (0) FOR [PrecioUnit]
GO
/****** Object:  Default [DF_DevolDet_ImpteIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_ImpteIVA]  DEFAULT (0) FOR [ImpteIVA]
GO
/****** Object:  Default [DF_DevolDet_TasaIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_TasaIVA]  DEFAULT (0) FOR [TasaIVA]
GO
/****** Object:  Default [DF_DevolDet_ImpteCoPago]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_ImpteCoPago]  DEFAULT (0) FOR [ImpteCoPago]
GO
/****** Object:  Default [DF_DevolDet_ImpteDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_ImpteDescto]  DEFAULT (0) FOR [ImpteDescto]
GO
/****** Object:  Default [DF_DevolDet_PorcDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_PorcDescto]  DEFAULT (0) FOR [PorcDescto]
GO
/****** Object:  Default [DF_DevolDet_TipoDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_TipoDescto]  DEFAULT ('') FOR [TipoDescto]
GO
/****** Object:  Default [DF_DevolDet_ComisionVend]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_ComisionVend]  DEFAULT (0) FOR [ComisionVend]
GO
/****** Object:  Default [DF_DevolDet_Depto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_DevolDet_CostoUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_DevolDet_Cliente]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Cliente]  DEFAULT (0) FOR [Cliente]
GO
/****** Object:  Default [DF_DevolDet_Caja]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_DevolDet_FechaHora]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet] ADD  CONSTRAINT [DF_DevolDet_FechaHora]  DEFAULT ('1900/01/01') FOR [FechaHora]
GO
/****** Object:  Default [DF_DoctorNotFound_APaterno]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_APaterno]  DEFAULT ('') FOR [APaterno]
GO
/****** Object:  Default [DF_DoctorNotFound_AMaterno]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_AMaterno]  DEFAULT ('') FOR [AMaterno]
GO
/****** Object:  Default [DF_DoctorNotFound_Nombre]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Nombre]  DEFAULT ('') FOR [Nombre]
GO
/****** Object:  Default [DF_DoctorNotFound_FechaAlta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_FechaAlta]  DEFAULT ('') FOR [FechaAlta]
GO
/****** Object:  Default [DF_DoctorNotFound_Direccion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Direccion]  DEFAULT ('') FOR [Direccion]
GO
/****** Object:  Default [DF_DoctorNotFound_Colonia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Colonia]  DEFAULT ('') FOR [Colonia]
GO
/****** Object:  Default [DF_DoctorNotFound_CP]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_CP]  DEFAULT ('') FOR [CP]
GO
/****** Object:  Default [DF_DoctorNotFound_Telefono]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Telefono]  DEFAULT ('') FOR [Telefono]
GO
/****** Object:  Default [DF_DoctorNotFound_Especialidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Especialidad]  DEFAULT ('') FOR [Especialidad]
GO
/****** Object:  Default [DF_DoctorNotFound_CorreoElec]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_CorreoElec]  DEFAULT ('') FOR [CorreoElec]
GO
/****** Object:  Default [DF_DoctorNotFound_Movil]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Movil]  DEFAULT ('') FOR [Movil]
GO
/****** Object:  Default [DF_DoctorNotFound_Cedula]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Cedula]  DEFAULT ('') FOR [Cedula]
GO
/****** Object:  Default [DF_DoctorNotFound_Ciudad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DoctorNotFound] ADD  CONSTRAINT [DF_DoctorNotFound_Ciudad]  DEFAULT ('') FOR [Ciudad]
GO
/****** Object:  Default [DF_ErrorNotaCredito_FolioCompra]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_FolioCompra]  DEFAULT ('') FOR [FolioCompra]
GO
/****** Object:  Default [DF_ErrorNotaCredito_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CodProveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CodProveedor]  DEFAULT (0) FOR [CodProveedor]
GO
/****** Object:  Default [DF_ErrorNotaCredito_RenglonNC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_RenglonNC]  DEFAULT (0) FOR [RenglonNC]
GO
/****** Object:  Default [DF_ErrorNotaCredito_RenglonIncidencias]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_RenglonIncidencias]  DEFAULT (0) FOR [RenglonIncidencias]
GO
/****** Object:  Default [DF_ErrorNotaCredito_Factura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_Factura]  DEFAULT ('') FOR [Factura]
GO
/****** Object:  Default [DF_ErrorNotaCredito_FolioNota]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_FolioNota]  DEFAULT ('') FOR [FolioNota]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CodInterno]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CodInterno]  DEFAULT (0) FOR [CodInterno]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CodRelacionado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CodRelacionado]  DEFAULT ('') FOR [CodRelacionado]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CantSurtida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CantFacturada]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CantFacturada]  DEFAULT (0) FOR [CantFacturada]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CantDevuelta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CantDevuelta]  DEFAULT (0) FOR [CantDevuelta]
GO
/****** Object:  Default [DF_ErrorNotaCredito_CantNC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_CantNC]  DEFAULT (0) FOR [CantNC]
GO
/****** Object:  Default [DF_ErrorNotaCredito_PFarmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_PFarmacia]  DEFAULT (0) FOR [PFarmacia]
GO
/****** Object:  Default [DF_ErrorNotaCredito_PorcOferta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_PorcOferta]  DEFAULT (0) FOR [PorcOferta]
GO
/****** Object:  Default [DF_ErrorNotaCredito_PorcFinanciero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_PorcFinanciero]  DEFAULT (0) FOR [PorcFinanciero]
GO
/****** Object:  Default [DF_ErrorNotaCredito_PorcIva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_PorcIva]  DEFAULT (0) FOR [PorcIva]
GO
/****** Object:  Default [DF_ErrorNotaCredito_Incidencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_Incidencia]  DEFAULT (0) FOR [Incidencia]
GO
/****** Object:  Default [DF_ErrorNotaCredito_NoPedido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_NoPedido]  DEFAULT (0) FOR [NoPedido]
GO
/****** Object:  Default [DF_ErrorNotaCredito_MasFacturado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_MasFacturado]  DEFAULT (0) FOR [MasFacturado]
GO
/****** Object:  Default [DF_ErrorNotaCredito_MasCaro]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_MasCaro]  DEFAULT (0) FOR [MasCaro]
GO
/****** Object:  Default [DF_ErrorNotaCredito_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ErrorNotaCredito] ADD  CONSTRAINT [DF_ErrorNotaCredito_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_Fajillas_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_Fajillas_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_Fajillas_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_Fajillas_Importe]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_Fajillas_FolioAgrupador]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_FolioAgrupador]  DEFAULT ('') FOR [FolioAgrupador]
GO
/****** Object:  Default [DF_Fajillas_Estatus]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_Fajillas_FolioRetiro]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Fajillas] ADD  CONSTRAINT [DF_Fajillas_FolioRetiro]  DEFAULT ('') FOR [FolioRetiro]
GO
/****** Object:  Default [DF_Tabla1_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[FLT_TmpVtasProv] ADD  CONSTRAINT [DF_Tabla1_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_Tabla1_ventas]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[FLT_TmpVtasProv] ADD  CONSTRAINT [DF_Tabla1_ventas]  DEFAULT (0) FOR [ventas]
GO
/****** Object:  Default [DF_Folios_Codigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Folios] ADD  CONSTRAINT [DF_Folios_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_Folios_Descripcion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Folios] ADD  CONSTRAINT [DF_Folios_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_Folios_Prefijo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Folios] ADD  CONSTRAINT [DF_Folios_Prefijo]  DEFAULT ('') FOR [Prefijo]
GO
/****** Object:  Default [DF_Folios_Consecutiv]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Folios] ADD  CONSTRAINT [DF_Folios_Consecutiv]  DEFAULT (0) FOR [Consecutiv]
GO
/****** Object:  Default [DF_IncidenciasInv_Etiqueta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[IncidenciasInv] ADD  CONSTRAINT [DF_IncidenciasInv_Etiqueta]  DEFAULT ('') FOR [Etiqueta]
GO
/****** Object:  Default [DF_IncidenciasInv_Codigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[IncidenciasInv] ADD  CONSTRAINT [DF_IncidenciasInv_Codigo]  DEFAULT ('') FOR [Codigo]
GO
/****** Object:  Default [DF_IncidenciasInv_Descripcion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[IncidenciasInv] ADD  CONSTRAINT [DF_IncidenciasInv_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_IncidenciasInv_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[IncidenciasInv] ADD  CONSTRAINT [DF_IncidenciasInv_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_IncidenciasInv_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[IncidenciasInv] ADD  CONSTRAINT [DF_IncidenciasInv_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_IncidenciasInv_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[IncidenciasInv] ADD  CONSTRAINT [DF_IncidenciasInv_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_InvElectrónico_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvElectronico] ADD  CONSTRAINT [DF_InvElectrónico_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_InvElectrónico_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvElectronico] ADD  CONSTRAINT [DF_InvElectrónico_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_InvElectrónico_Congelado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvElectronico] ADD  CONSTRAINT [DF_InvElectrónico_Congelado]  DEFAULT (0) FOR [Congelado]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Nivel1]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Nivel1]  DEFAULT ('') FOR [Nivel1]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Nivel2]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Nivel2]  DEFAULT ('') FOR [Nivel2]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Nivel3]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Nivel3]  DEFAULT ('') FOR [Nivel3]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Nivel4]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Nivel4]  DEFAULT ('') FOR [Nivel4]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Familia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Familia]  DEFAULT ('') FOR [Familia]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Existencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Existencia]  DEFAULT (0) FOR [Existencia]
GO
/****** Object:  Default [DF_InvValorizadoReporte_CostoProm]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_CostoProm]  DEFAULT (0) FOR [CostoProm]
GO
/****** Object:  Default [DF_InvValorizadoReporte_ImpTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_ImpTotal]  DEFAULT (0) FOR [ImpTotal]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Usuario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_InvValorizadoReporte_Maquina]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[InvValorizadoReporte] ADD  CONSTRAINT [DF_InvValorizadoReporte_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_Lectura_Codigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Codigo]  DEFAULT ('') FOR [Codigo]
GO
/****** Object:  Default [DF_Lectura_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_Lectura_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_Lectura_ExistFisica]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_ExistFisica]  DEFAULT (0) FOR [ExistFisica]
GO
/****** Object:  Default [DF_Lectura_Capturado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Capturado]  DEFAULT ('N') FOR [Capturado]
GO
/****** Object:  Default [DF_Lectura_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_Lectura_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Status]  DEFAULT ('N') FOR [Arreglado]
GO
/****** Object:  Default [DF_Lectura_Congelado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Congelado]  DEFAULT (0) FOR [Congelado]
GO
/****** Object:  Default [DF_Lectura_CapturaAbortada]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_CapturaAbortada]  DEFAULT (0) FOR [CapturaAbortada]
GO
/****** Object:  Default [DF_Lectura_Unidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[Lectura] ADD  CONSTRAINT [DF_Lectura_Unidad]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF_LecturaMarbete_CodigoRel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaMarbete] ADD  CONSTRAINT [DF_LecturaMarbete_CodigoRel]  DEFAULT ('') FOR [CodigoRel]
GO
/****** Object:  Default [DF_LecturaMarbete_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaMarbete] ADD  CONSTRAINT [DF_LecturaMarbete_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_LecturaMarbete_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaMarbete] ADD  CONSTRAINT [DF_LecturaMarbete_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF__LecturaPu__Codig__2AAC0968]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Codig__2AAC0968]  DEFAULT ('') FOR [Codigo]
GO
/****** Object:  Default [DF__LecturaPu__Codig__2BA02DA1]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Codig__2BA02DA1]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF__LecturaPu__Canti__2C9451DA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Canti__2C9451DA]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF__LecturaPu__Exist__2D887613]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Exist__2D887613]  DEFAULT (0) FOR [ExistFisica]
GO
/****** Object:  Default [DF__LecturaPu__Captu__2E7C9A4C]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Captu__2E7C9A4C]  DEFAULT ('N') FOR [Capturado]
GO
/****** Object:  Default [DF__LecturaPu__Arreg__2F70BE85]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Arreg__2F70BE85]  DEFAULT ('N') FOR [Arreglado]
GO
/****** Object:  Default [DF__LecturaPu__Conge__3064E2BE]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Conge__3064E2BE]  DEFAULT (0) FOR [Congelado]
GO
/****** Object:  Default [DF__LecturaPu__Captu__315906F7]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Captu__315906F7]  DEFAULT (0) FOR [CapturaAbortada]
GO
/****** Object:  Default [DF__LecturaPu__Unida__324D2B30]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[LecturaPuente] ADD  CONSTRAINT [DF__LecturaPu__Unida__324D2B30]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF_MovAlmCab_Cve_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Cve_Farmacia]  DEFAULT (0) FOR [Cve_Farmacia]
GO
/****** Object:  Default [DF_MovAlmCab_Folio_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Folio_Movto]  DEFAULT ('') FOR [Folio_Movto]
GO
/****** Object:  Default [DF_MovAlmCab_Fecha_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Fecha_Movto]  DEFAULT ('1900/01/01') FOR [Fecha_Movto]
GO
/****** Object:  Default [DF_MovAlmCab_Cve_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Cve_Movto]  DEFAULT (0) FOR [Cve_Movto]
GO
/****** Object:  Default [DF_MovAlmCab_Cve_Almacen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Cve_Almacen]  DEFAULT (0) FOR [Cve_Almacen]
GO
/****** Object:  Default [DF_MovAlmCab_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_MovAlmCab_Nom_entrega]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Nom_entrega]  DEFAULT ('') FOR [Nom_entrega]
GO
/****** Object:  Default [DF_MovAlmCab_Nom_Receptor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Nom_Receptor]  DEFAULT ('') FOR [Nom_Receptor]
GO
/****** Object:  Default [DF_MovAlmCab_Observaciones]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Observaciones]  DEFAULT ('') FOR [Observaciones]
GO
/****** Object:  Default [DF_MovAlmCab_Usuario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_MovAlmCab_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_MovAlmCab_FolioControl]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmCab] ADD  CONSTRAINT [DF_MovAlmCab_FolioControl]  DEFAULT (0) FOR [FolioControl]
GO
/****** Object:  Default [DF_MovAlmDet_Cve_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Cve_Farmacia]  DEFAULT (0) FOR [Cve_Farmacia]
GO
/****** Object:  Default [DF_MovAlmDet_Folio_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Folio_Movto]  DEFAULT ('') FOR [Folio_Movto]
GO
/****** Object:  Default [DF_MovAlmDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_MovAlmDet_Cve_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Cve_Movto]  DEFAULT (0) FOR [Cve_Movto]
GO
/****** Object:  Default [DF_MovAlmDet_Fecha_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Fecha_Movto]  DEFAULT ('1900/01/01') FOR [Fecha_Movto]
GO
/****** Object:  Default [DF_MovAlmDet_Cve_Producto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Cve_Producto]  DEFAULT (0) FOR [Cve_Producto]
GO
/****** Object:  Default [DF_MovAlmDet_CodigoRel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_CodigoRel]  DEFAULT ('') FOR [CodigoRel]
GO
/****** Object:  Default [DF_MovAlmDet_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_MovAlmDet_CostoUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_MovAlmDet_DesctoUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_DesctoUnit]  DEFAULT (0) FOR [DesctoUnit]
GO
/****** Object:  Default [DF_MovAlmDet_IvaUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_IvaUnit]  DEFAULT (0) FOR [IvaUnit]
GO
/****** Object:  Default [DF_MovAlmDet_Cve_Almacen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Cve_Almacen]  DEFAULT (0) FOR [Cve_Almacen]
GO
/****** Object:  Default [DF_MovAlmDet_TasaIva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_TasaIva]  DEFAULT (0) FOR [TasaIva]
GO
/****** Object:  Default [DF_MovAlmDet_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet] ADD  CONSTRAINT [DF_MovAlmDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_MovGralInv_Cve_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Cve_Farmacia]  DEFAULT (0) FOR [Cve_Farmacia]
GO
/****** Object:  Default [DF_MovGralInv_Fol_MovAlm]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Fol_MovAlm]  DEFAULT ('') FOR [Fol_MovAlm]
GO
/****** Object:  Default [DF_MovGralInv_Cve_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Cve_Movto]  DEFAULT (0) FOR [Cve_Movto]
GO
/****** Object:  Default [DF_MovGralInv_Fecha_Movto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Fecha_Movto]  DEFAULT ('1900/01/01') FOR [Fecha_Movto]
GO
/****** Object:  Default [DF_MovGralInv_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_MovGralInv_Cve_Producto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Cve_Producto]  DEFAULT (0) FOR [Cve_Producto]
GO
/****** Object:  Default [DF_MovGralInv_CodigoRel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_CodigoRel]  DEFAULT ('') FOR [CodigoRel]
GO
/****** Object:  Default [DF_MovGralInv_Cve_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Cve_Renglon]  DEFAULT (0) FOR [Cve_Renglon]
GO
/****** Object:  Default [DF_MovGralInv_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_MovGralInv_Unidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Unidad]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF_MovGralInv_CostoPromedio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_CostoPromedio]  DEFAULT (0) FOR [CostoPromedio]
GO
/****** Object:  Default [DF_MovGralInv_Impte_Descto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Impte_Descto]  DEFAULT (0) FOR [Impte_Descto]
GO
/****** Object:  Default [DF_MovGralInv_Porc_Descto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Porc_Descto]  DEFAULT (0) FOR [Porc_Descto]
GO
/****** Object:  Default [DF_MovGralInv_Impte_Iva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Impte_Iva]  DEFAULT (0) FOR [Impte_Iva]
GO
/****** Object:  Default [DF_MovGralInv_Porc_Iva]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Porc_Iva]  DEFAULT (0) FOR [Porc_Iva]
GO
/****** Object:  Default [DF_MovGralInv_Porc_DesctoFin]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Porc_DesctoFin]  DEFAULT (0) FOR [Porc_DesctoFin]
GO
/****** Object:  Default [DF_MovGralInv_Fecha_Conta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Fecha_Conta]  DEFAULT ('1900/01/01') FOR [Fecha_Conta]
GO
/****** Object:  Default [DF_MovGralInv_NumPoliza]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_NumPoliza]  DEFAULT (0) FOR [NumPoliza]
GO
/****** Object:  Default [DF_MovGralInv_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Status]  DEFAULT ('V') FOR [Status]
GO
/****** Object:  Default [DF_MovGralInv_CostoTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_CostoTotal]  DEFAULT (0) FOR [CostoTotal]
GO
/****** Object:  Default [DF_MovGralInv_PrecioUnitario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_PrecioUnitario]  DEFAULT (0) FOR [PrecioUnitario]
GO
/****** Object:  Default [DF_MovGralInv_Fecha_Captura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Fecha_Captura]  DEFAULT ('1900/01/01') FOR [Fecha_Captura]
GO
/****** Object:  Default [DF_MovGralInv_Sucursal_Ref]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Sucursal_Ref]  DEFAULT (0) FOR [Sucursal_Ref]
GO
/****** Object:  Default [DF_MovGralInv_Ultimo_Costo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_Ultimo_Costo]  DEFAULT (0) FOR [Ultimo_Costo]
GO
/****** Object:  Default [DF_MovGralInv_FolTransf_Refer]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovGralInv] ADD  CONSTRAINT [DF_MovGralInv_FolTransf_Refer]  DEFAULT ('') FOR [FolTransf_Refer]
GO
/****** Object:  Default [DF_NotaCreditoCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_NotaCreditoCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_NotaCreditoCab_FechaCont]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_FechaCont]  DEFAULT ('1900/01/01') FOR [FechaCont]
GO
/****** Object:  Default [DF_NotaCreditoCab_CodProv]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_CodProv]  DEFAULT (0) FOR [CodProv]
GO
/****** Object:  Default [DF_NotaCreditoCab_FolioFactura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_FolioFactura]  DEFAULT ('') FOR [FolioFactura]
GO
/****** Object:  Default [DF_NotaCreditoCab_CodFarmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_CodFarmacia]  DEFAULT (0) FOR [CodFarmacia]
GO
/****** Object:  Default [DF_NotaCreditoCab_SubTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_NotaCreditoCab_Ofertas]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_Ofertas]  DEFAULT (0) FOR [Ofertas]
GO
/****** Object:  Default [DF_NotaCreditoCab_SubDesctFinanc]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_SubDesctFinanc]  DEFAULT (0) FOR [SubDesctFinanc]
GO
/****** Object:  Default [DF_NotaCreditoCab_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_NotaCreditoCab_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_Status]  DEFAULT ('V') FOR [Status]
GO
/****** Object:  Default [DF_NotaCreditoCab_Tipo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_Tipo]  DEFAULT ('') FOR [Tipo]
GO
/****** Object:  Default [DF_NotaCreditoCab_FechaCaptura]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_FechaCaptura]  DEFAULT ('1900/01/01') FOR [FechaCaptura]
GO
/****** Object:  Default [DF_NotaCreditoCab_Origen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoCab] ADD  CONSTRAINT [DF_NotaCreditoCab_Origen]  DEFAULT ('') FOR [Origen]
GO
/****** Object:  Default [DF_NotaCreditoDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_NotaCreditoDet_CodFarmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_CodFarmacia]  DEFAULT (0) FOR [CodFarmacia]
GO
/****** Object:  Default [DF_NotaCreditoDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_NotaCreditoDet_CodProveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_CodProveedor]  DEFAULT (0) FOR [CodProveedor]
GO
/****** Object:  Default [DF_NotaCreditoDet_Referencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_NotaCreditoDet_FechaConta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_FechaConta]  DEFAULT ('1900/01/01') FOR [FechaConta]
GO
/****** Object:  Default [DF_NotaCreditoDet_CodInterno]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_CodInterno]  DEFAULT (0) FOR [CodInterno]
GO
/****** Object:  Default [DF_NotaCreditoDet_CodRelacionado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_CodRelacionado]  DEFAULT ('') FOR [CodRelacionado]
GO
/****** Object:  Default [DF_NotaCreditoDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_NotaCreditoDet_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_NotaCreditoDet_PorOfert]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_PorOfert]  DEFAULT (0) FOR [PorOfert]
GO
/****** Object:  Default [DF_NotaCreditoDet_PorDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_PorDescto]  DEFAULT (0) FOR [PorDescto]
GO
/****** Object:  Default [DF_NotaCreditoDet_PorIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_PorIVA]  DEFAULT (0) FOR [PorIVA]
GO
/****** Object:  Default [DF_NotaCreditoDet_PrecioFarmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_PrecioFarmacia]  DEFAULT (0) FOR [PrecioFarmacia]
GO
/****** Object:  Default [DF_NotaCreditoDet_Depto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_NotaCreditoDet_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Status]  DEFAULT ('V') FOR [Status]
GO
/****** Object:  Default [DF_NotaCreditoDet_Tipo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[NotaCreditoDet] ADD  CONSTRAINT [DF_NotaCreditoDet_Tipo]  DEFAULT ('B') FOR [Tipo]
GO
/****** Object:  Default [DF_PedidosCab_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_PedidosCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_PedidosCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_PedidosCab_Proveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_PedidosCab_Fecha_Surtido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Fecha_Surtido]  DEFAULT ('1900/01/01') FOR [Fecha_Surtido]
GO
/****** Object:  Default [DF_PedidosCab_Almacen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Almacen]  DEFAULT (0) FOR [Almacen]
GO
/****** Object:  Default [DF_PedidosCab_SubTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_PedidosCab_IVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_PedidosCab_Total]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Total]  DEFAULT (0) FOR [Total]
GO
/****** Object:  Default [DF_PedidosCab_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_PedidosCab_Usuario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_PedidosCab_TipoPedido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_TipoPedido]  DEFAULT ('') FOR [TipoPedido]
GO
/****** Object:  Default [DF_PedidosCab_Desctos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Desctos]  DEFAULT (0) FOR [Desctos]
GO
/****** Object:  Default [DF_PedidosCab_FolioSurtido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_FolioSurtido]  DEFAULT ('') FOR [FolioSurtido]
GO
/****** Object:  Default [DF_PedidosCab_FolioControl]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_FolioControl]  DEFAULT (0) FOR [FolioControl]
GO
/****** Object:  Default [DF_PedidosCab_Canti_Bultos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_Canti_Bultos]  DEFAULT (0) FOR [Canti_Bultos]
GO
/****** Object:  Default [DF_PedidosCab_UsuarioSurtido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF_PedidosCab_UsuarioSurtido]  DEFAULT (0) FOR [UsuarioSurtido]
GO
/****** Object:  Default [DF__PedidosCa__rowgu__407C1A4D]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosCab] ADD  CONSTRAINT [DF__PedidosCa__rowgu__407C1A4D]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_PedidosDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_PedidosDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_PedidosDet_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_PedidosDet_CodigoRel]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_CodigoRel]  DEFAULT ('') FOR [CodigoRel]
GO
/****** Object:  Default [DF_PedidosDet_CantPedida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_CantPedida]  DEFAULT (0) FOR [CantPedida]
GO
/****** Object:  Default [DF_PedidosDet_CantSurtida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_PedidosDet_PrecioUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_PrecioUnit]  DEFAULT (0) FOR [PrecioUnit]
GO
/****** Object:  Default [DF_PedidosDet_ImpIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_ImpIVA]  DEFAULT (0) FOR [ImpIVA]
GO
/****** Object:  Default [DF_PedidosDet_TasaIVA]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_TasaIVA]  DEFAULT (0) FOR [TasaIVA]
GO
/****** Object:  Default [DF_PedidosDet_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_PedidosDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_PedidosDet_Departamento]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_Departamento]  DEFAULT (0) FOR [Departamento]
GO
/****** Object:  Default [DF_PedidosDet_TipoPedido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_TipoPedido]  DEFAULT ('') FOR [TipoPedido]
GO
/****** Object:  Default [DF_PedidosDet_Sucursal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_PedidosDet_CantConCargo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_CantConCargo]  DEFAULT (0) FOR [CantConCargo]
GO
/****** Object:  Default [DF_PedidosDet_CantSinCargo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_CantSinCargo]  DEFAULT (0) FOR [CantSinCargo]
GO
/****** Object:  Default [DF_PedidosDet_DesctoOfer]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_DesctoOfer]  DEFAULT (0) FOR [DesctoOfer]
GO
/****** Object:  Default [DF_PedidosDet_DesctoFin]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_DesctoFin]  DEFAULT (0) FOR [DesctoFin]
GO
/****** Object:  Default [DF_PedidosDet_FolioSurtido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_FolioSurtido]  DEFAULT ('') FOR [FolioSurtido]
GO
/****** Object:  Default [DF_PedidosDet_FechaSurtido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_FechaSurtido]  DEFAULT ('1900/01/01') FOR [FechaSurtido]
GO
/****** Object:  Default [DF_PedidosDet_NumBulto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF_PedidosDet_NumBulto]  DEFAULT (0) FOR [NumBulto]
GO
/****** Object:  Default [DF__PedidosDe__rowgu__3AC340F7]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PedidosDet] ADD  CONSTRAINT [DF__PedidosDe__rowgu__3AC340F7]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_PrePedidos_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_PrePedidos_TipoPedido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_TipoPedido]  DEFAULT ('') FOR [TipoPedido]
GO
/****** Object:  Default [DF_PrePedidos_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_PrePedidos_CodigoEAN]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_PrePedidos_CantPedida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CantPedida]  DEFAULT (0) FOR [CantPedida]
GO
/****** Object:  Default [DF_PrePedidos_CantPedidaEscala]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CantPedidaEscala]  DEFAULT (0) FOR [CantPedidaEscala]
GO
/****** Object:  Default [DF_PrePedidos_CantPedidaEscalaSC]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CantPedidaEscalaSC]  DEFAULT (0) FOR [CantPedidaEscalaSC]
GO
/****** Object:  Default [DF_PrePedidos_CantConCargo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CantConCargo]  DEFAULT (0) FOR [CantConCargo]
GO
/****** Object:  Default [DF_PrePedidos_CantSinCargo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CantSinCargo]  DEFAULT (0) FOR [CantSinCargo]
GO
/****** Object:  Default [DF_PrePedidos_ProvUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_ProvUnit]  DEFAULT (0) FOR [ProvUnit]
GO
/****** Object:  Default [DF_PrePedidos_PrecFarmaUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_PrecFarmaUnit]  DEFAULT (0) FOR [PrecFarmaUnit]
GO
/****** Object:  Default [DF_PrePedidos_DesctoOferUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_DesctoOferUnit]  DEFAULT (0) FOR [DesctoOferUnit]
GO
/****** Object:  Default [DF_PrePedidos_DesctoFinUnit]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_DesctoFinUnit]  DEFAULT (0) FOR [DesctoFinUnit]
GO
/****** Object:  Default [DF_PrePedidos_ProvEscala]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_ProvEscala]  DEFAULT (0) FOR [ProvEscala]
GO
/****** Object:  Default [DF_PrePedidos_PrecFarmaEscala]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_PrecFarmaEscala]  DEFAULT (0) FOR [PrecFarmaEscala]
GO
/****** Object:  Default [DF_PrePedidos_DesctoOferEscala]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_DesctoOferEscala]  DEFAULT (0) FOR [DesctoOferEscala]
GO
/****** Object:  Default [DF_PrePedidos_DesctoFinEscala]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_DesctoFinEscala]  DEFAULT (0) FOR [DesctoFinEscala]
GO
/****** Object:  Default [DF_PrePedidos_TipoOfertaElegido]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_TipoOfertaElegido]  DEFAULT ('') FOR [TipoOfertaElegido]
GO
/****** Object:  Default [DF_PrePedidos_Status]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_PrePedidos_PedidoAprov]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_PedidoAprov]  DEFAULT (0) FOR [PedidoAprov]
GO
/****** Object:  Default [DF_PrePedidos_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_PrePedidos_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_PrePedidos_CantNecesaria]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[PrePedidos] ADD  CONSTRAINT [DF_PrePedidos_CantNecesaria]  DEFAULT (0) FOR [CantNecesaria]
GO
/****** Object:  Default [DF_ProductoFarma_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_ProductoFarma_Codigo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_ProductoFarma_UltimoCosto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_UltimoCosto]  DEFAULT (0) FOR [UltimoCosto]
GO
/****** Object:  Default [DF_ProductoFarma_CostoProm]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_CostoProm]  DEFAULT (0) FOR [CostoProm]
GO
/****** Object:  Default [DF_ProductoFarma_FecUltCompra]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_FecUltCompra]  DEFAULT ('1900/01/01') FOR [FecUltCompra]
GO
/****** Object:  Default [DF_ProductoFarma_FecUltiVenta]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_FecUltiVenta]  DEFAULT ('1900/01/01') FOR [FecUltiVenta]
GO
/****** Object:  Default [DF_ProductoFarma_Existencia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Existencia]  DEFAULT (0) FOR [Existencia]
GO
/****** Object:  Default [DF_ProductoFarma_OrdenInvSelectivo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_OrdenInvSelectivo]  DEFAULT (0) FOR [OrdenInvSelectivo]
GO
/****** Object:  Default [DF_ProductoFarma_OrdenInvTotal]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_OrdenInvTotal]  DEFAULT (0) FOR [OrdenInvTotal]
GO
/****** Object:  Default [DF_ProductoFarma_ExistFisicaSelect]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_ExistFisicaSelect]  DEFAULT (0) FOR [ExistFisicaSelect]
GO
/****** Object:  Default [DF_ProductoFarma_ExistFisicaTot]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_ExistFisicaTot]  DEFAULT (0) FOR [ExistFisicaTot]
GO
/****** Object:  Default [DF_ProductoFarma_CostoInventarioIni]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_CostoInventarioIni]  DEFAULT (0) FOR [CostoInventarioIni]
GO
/****** Object:  Default [DF_ProductoFarma_Existencia_Ini]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Existencia_Ini]  DEFAULT (0) FOR [Existencia_Ini]
GO
/****** Object:  Default [DF_ProductoFarma_Fecha_Inv_Ini]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Fecha_Inv_Ini]  DEFAULT (getdate()) FOR [Fecha_Inv_Ini]
GO
/****** Object:  Default [DF_ProductoFarma_Localizacion]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Localizacion]  DEFAULT ('') FOR [Localizacion]
GO
/****** Object:  Default [DF_ProductoFarma_Proveedor]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_ProductoFarma_Maximo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Maximo]  DEFAULT (0) FOR [Maximo]
GO
/****** Object:  Default [DF_ProductoFarma_Minimo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Minimo]  DEFAULT (0) FOR [Minimo]
GO
/****** Object:  Default [DF_ProductoFarma_PtoReorden]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_PtoReorden]  DEFAULT (0) FOR [PtoReorden]
GO
/****** Object:  Default [DF_ProductoFarma_InvOptimo]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_InvOptimo]  DEFAULT (0) FOR [InvOptimo]
GO
/****** Object:  Default [DF_ProductoFarma_Cant_Pedida]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Cant_Pedida]  DEFAULT (0) FOR [Cant_Pedida]
GO
/****** Object:  Default [DF_ProductoFarma_Congelado]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Congelado]  DEFAULT (0) FOR [Congelado]
GO
/****** Object:  Default [DF_ProductoFarma_CapturaAbortada]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_CapturaAbortada]  DEFAULT (0) FOR [CapturaAbortada]
GO
/****** Object:  Default [DF_ProductoFarma_Intentos]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_Intentos]  DEFAULT (0) FOR [Intentos]
GO
/****** Object:  Default [DF_ProductoFarma_No_Pedir]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarma] ADD  CONSTRAINT [DF_ProductoFarma_No_Pedir]  DEFAULT (0) FOR [No_Pedir]
GO
/****** Object:  Default [DF__ProductoF__Codig__59BB32B5]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarmaPedido] ADD  CONSTRAINT [DF__ProductoF__Codig__59BB32B5]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF__ProductoF__Codre__5AAF56EE]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarmaPedido] ADD  CONSTRAINT [DF__ProductoF__Codre__5AAF56EE]  DEFAULT ('') FOR [Codrelacionado]
GO
/****** Object:  Default [DF__ProductoF__Unida__5BA37B27]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarmaPedido] ADD  CONSTRAINT [DF__ProductoF__Unida__5BA37B27]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF__ProductoF__Pedir__5C979F60]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[ProductoFarmaPedido] ADD  CONSTRAINT [DF__ProductoF__Pedir__5C979F60]  DEFAULT (0) FOR [Pedir]
GO
/****** Object:  Default [DF_RecepValesCab_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_RecepValesCab_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_RecepValesCab_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_RecepValesCab_FolioOrigen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_FolioOrigen]  DEFAULT ('') FOR [FolioOrigen]
GO
/****** Object:  Default [DF_RecepValesCab_FarmaciaOrigen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_FarmaciaOrigen]  DEFAULT (0) FOR [FarmaciaOrigen]
GO
/****** Object:  Default [DF_RecepValesCab_Cajero]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_RecepValesCab_Estatus]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesCab] ADD  CONSTRAINT [DF_RecepValesCab_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_RecepValesDet_Farmacia]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_RecepValesDet_Folio]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_RecepValesDet_Renglon]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_RecepValesDet_Fecha]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_RecepValesDet_FarmaciaOrigen]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_FarmaciaOrigen]  DEFAULT (0) FOR [FarmaciaOrigen]
GO
/****** Object:  Default [DF_RecepValesDet_CodigoInt]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_RecepValesDet_CodigoEAN]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_RecepValesDet_Cantidad]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_RecepValesDet_PrecioUnitario]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_PrecioUnitario]  DEFAULT (0) FOR [PrecioUnitario]
GO
/****** Object:  Default [DF_RecepValesDet_PtjDescto]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_PtjDescto]  DEFAULT (0) FOR [PtjDescto]
GO
/****** Object:  Default [DF_RecepValesDet_Estatus]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[RecepValesDet] ADD  CONSTRAINT [DF_RecepValesDet_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_RecetasCab_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_RecetasCab_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Folio]  DEFAULT (0) FOR [Folio]
GO
/****** Object:  Default [DF_RecetasCab_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_RecetasCab_Cve_Doctor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Cve_Doctor]  DEFAULT (0) FOR [Cve_Doctor]
GO
/****** Object:  Default [DF_RecetasCab_Nombre_Doctor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Nombre_Doctor]  DEFAULT ('') FOR [Nombre_Doctor]
GO
/****** Object:  Default [DF_RecetasCab_Nombre_Paciente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Nombre_Paciente]  DEFAULT ('') FOR [Nombre_Paciente]
GO
/****** Object:  Default [DF_RecetasCab_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF_RecetasCab_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF__RecetasCa__rowgu__619C4B9F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasCab] ADD  CONSTRAINT [DF__RecetasCa__rowgu__619C4B9F]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_RecetasDet_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_RecetasDet_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Folio]  DEFAULT (0) FOR [Folio]
GO
/****** Object:  Default [DF_RecetasDet_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_RecetasDet_Cod_Prod]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Cod_Prod]  DEFAULT ('') FOR [Cod_Prod]
GO
/****** Object:  Default [DF_RecetasDet_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_RecetasDet_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_RecetasDet_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF_RecetasDet_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF__RecetasDe__rowgu__5BE37249]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecetasDet] ADD  CONSTRAINT [DF__RecetasDe__rowgu__5BE37249]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_RecibeSur_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSur] ADD  CONSTRAINT [DF_RecibeSur_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_RecibeSur_CantSurtida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSur] ADD  CONSTRAINT [DF_RecibeSur_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_RecibeSur_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSur] ADD  CONSTRAINT [DF_RecibeSur_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_RecibeSur_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSur] ADD  CONSTRAINT [DF_RecibeSur_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_RecibeSur_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSur] ADD  CONSTRAINT [DF_RecibeSur_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_RecibeSurDir_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSurDir] ADD  CONSTRAINT [DF_RecibeSurDir_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_RecibeSurDir_CantSurtida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSurDir] ADD  CONSTRAINT [DF_RecibeSurDir_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_RecibeSurDir_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSurDir] ADD  CONSTRAINT [DF_RecibeSurDir_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_RecibeSurDir_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSurDir] ADD  CONSTRAINT [DF_RecibeSurDir_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_RecibeSurDir_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibeSurDir] ADD  CONSTRAINT [DF_RecibeSurDir_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_Surcursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_Surcursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_Almacen]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_Almacen]  DEFAULT (0) FOR [Almacen]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_FolioPedido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_FolioPedido]  DEFAULT ('') FOR [FolioPedido]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_FolioSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_FolioSurtido]  DEFAULT ('') FOR [FolioSurtido]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_CantRecibida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_CantRecibida]  DEFAULT (0) FOR [CantRecibida]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_RecibidoPedidosDet_CostoUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidoPedidosDet] ADD  CONSTRAINT [DF_RecibidoPedidosDet_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Empresa]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Empresa]  DEFAULT (0) FOR [Empresa]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Comision]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Comision]  DEFAULT (0) FOR [Comision]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Dato1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Dato1]  DEFAULT ('') FOR [Dato1]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Dato2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Dato2]  DEFAULT ('') FOR [Dato2]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Dato3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Dato3]  DEFAULT ('') FOR [Dato3]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Dato4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Dato4]  DEFAULT ('') FOR [Dato4]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Dato5]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Dato5]  DEFAULT ('') FOR [Dato5]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Caja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_RecibidosCtaDet_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RecibidosCtaDet] ADD  CONSTRAINT [DF_RecibidosCtaDet_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_RegAsistencias_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_RegAsistencias_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias_Codigo]  DEFAULT ('') FOR [Codigo]
GO
/****** Object:  Default [DF_RegAsistencias_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias_Fecha]  DEFAULT ('1900-01-01') FOR [Fecha]
GO
/****** Object:  Default [DF_RegAsistencias_Entrada1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias_Entrada1]  DEFAULT ('') FOR [Entrada1]
GO
/****** Object:  Default [DF_RegAsistencias_Salida1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias_Salida1]  DEFAULT ('00:00') FOR [Salida1]
GO
/****** Object:  Default [DF_RegAsistencias_Entrada2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias_Entrada2]  DEFAULT ('00:00') FOR [Entrada2]
GO
/****** Object:  Default [DF_RegAsistencias]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegAsistencias] ADD  CONSTRAINT [DF_RegAsistencias]  DEFAULT ('00:00') FOR [Salida2]
GO
/****** Object:  Default [DF__RegFedCau__rowgu__44B5F42E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RegFedCau] ADD  CONSTRAINT [DF__RegFedCau__rowgu__44B5F42E]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_ReportesSelec 12_codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ReportesSelec 12] ADD  CONSTRAINT [DF_ReportesSelec 12_codigo]  DEFAULT (0) FOR [codigo]
GO
/****** Object:  Default [DF_ReportesSelec 12_descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ReportesSelec 12] ADD  CONSTRAINT [DF_ReportesSelec 12_descripcion]  DEFAULT ('') FOR [descripcion]
GO
/****** Object:  Default [DF_Retiros_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_Retiros_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_Retiros_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_Retiros_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_Retiros_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_Retiros_Estatus]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Estatus]  DEFAULT ('V') FOR [Estatus]
GO
/****** Object:  Default [DF_Retiros_TipoPago]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_TipoPago]  DEFAULT (0) FOR [TipoPago]
GO
/****** Object:  Default [DF_Retiros_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_Retiros_FolioFajilla]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_FolioFajilla]  DEFAULT ('') FOR [FolioFajilla]
GO
/****** Object:  Default [DF_Retiros_Caja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_Retiros_Total]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Total]  DEFAULT (0) FOR [Total]
GO
/****** Object:  Default [DF_Retiros_TipoCambio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_TipoCambio]  DEFAULT (0) FOR [TipoCambio]
GO
/****** Object:  Default [DF_Retiros_Concepto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_Concepto]  DEFAULT ('') FOR [Concepto]
GO
/****** Object:  Default [DF_Retiros_FondoCaja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Retiros] ADD  CONSTRAINT [DF_Retiros_FondoCaja]  DEFAULT (0) FOR [FondoCaja]
GO
/****** Object:  Default [DF_RevisionPedMed_Proveedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_RevisionPedMed_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_RevisionPedMed_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_RevisionPedMed_Cant]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Cant]  DEFAULT (0) FOR [Cant]
GO
/****** Object:  Default [DF_RevisionPedMed_CantConCargo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_CantConCargo]  DEFAULT (0) FOR [CantConCargo]
GO
/****** Object:  Default [DF_RevisionPedMed_CantSinCargo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_CantSinCargo]  DEFAULT (0) FOR [CantSinCargo]
GO
/****** Object:  Default [DF_RevisionPedMed_Precio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Precio]  DEFAULT (0) FOR [Precio]
GO
/****** Object:  Default [DF_RevisionPedMed_DesctoOfer]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_DesctoOfer]  DEFAULT (0) FOR [DesctoOfer]
GO
/****** Object:  Default [DF_RevisionPedMed_DesctoFin]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_DesctoFin]  DEFAULT (0) FOR [DesctoFin]
GO
/****** Object:  Default [DF_RevisionPedMed_TasaIVA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_TasaIVA]  DEFAULT (0) FOR [TasaIVA]
GO
/****** Object:  Default [DF_RevisionPedMed_Depto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_RevisionPedMed_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_RevisionPedMed_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_RevisionPedMed_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[RevisionPedMed] ADD  CONSTRAINT [DF_RevisionPedMed_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_Rol_Pedido_Producto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Rol_Pedido] ADD  CONSTRAINT [DF_Rol_Pedido_Producto]  DEFAULT (0) FOR [Producto]
GO
/****** Object:  Default [DF_Rol_Pedido_Proveedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Rol_Pedido] ADD  CONSTRAINT [DF_Rol_Pedido_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_Rol_Pedido_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[Rol_Pedido] ADD  CONSTRAINT [DF_Rol_Pedido_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_ScanPedido_Proveedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_ScanPedido_Folio_Referencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Folio_Referencia]  DEFAULT ('') FOR [Folio_Referencia]
GO
/****** Object:  Default [DF_ScanPedido_Pedido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Pedido]  DEFAULT ('') FOR [Pedido]
GO
/****** Object:  Default [DF_ScanPedido_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_ScanPedido_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ScanPedido_Cod_Interno]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Cod_Interno]  DEFAULT (0) FOR [Cod_Interno]
GO
/****** Object:  Default [DF_ScanPedido_Cod_Relacionado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Cod_Relacionado]  DEFAULT ('') FOR [Cod_Relacionado]
GO
/****** Object:  Default [DF_ScanPedido_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_ScanPedido_Status]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ScanPedido] ADD  CONSTRAINT [DF_ScanPedido_Status]  DEFAULT ('V') FOR [Status]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_Almacen]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_Almacen]  DEFAULT (0) FOR [Almacen]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_FolioPedido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_FolioPedido]  DEFAULT ('') FOR [FolioPedido]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_FolioSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_FolioSurtido]  DEFAULT ('') FOR [FolioSurtido]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_NumBulto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_NumBulto]  DEFAULT (0) FOR [NumBulto]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_CantSurtida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_CantRecibida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_CantRecibida]  DEFAULT (0) FOR [CantRecibida]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_EstatusSurt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_EstatusSurt]  DEFAULT ('') FOR [EstatusSurt]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_SurtidoPedidosDet_CostoUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF_SurtidoPedidosDet_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF__SurtidoPe__rowgu__7CBA562F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidoPedidosDet] ADD  CONSTRAINT [DF__SurtidoPe__rowgu__7CBA562F]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_SurtidosDirCab_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_SurtidosDirCab_FolioSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_FolioSurtido]  DEFAULT ('') FOR [FolioSurtido]
GO
/****** Object:  Default [DF_SurtidosDirCab_FechaSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_FechaSurtido]  DEFAULT ('1900/01/01') FOR [FechaSurtido]
GO
/****** Object:  Default [DF_SurtidosDirCab_Almacen]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_Almacen]  DEFAULT (0) FOR [Almacen]
GO
/****** Object:  Default [DF_SurtidosDirCab_FolioControl]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_FolioControl]  DEFAULT (0) FOR [FolioControl]
GO
/****** Object:  Default [DF_SurtidosDirCab_CantidadBultos]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_CantidadBultos]  DEFAULT (0) FOR [CantidadBultos]
GO
/****** Object:  Default [DF_SurtidosDirCab_Total]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_Total]  DEFAULT (0) FOR [Total]
GO
/****** Object:  Default [DF_SurtidosDirCab_UsuarioSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_UsuarioSurtido]  DEFAULT (0) FOR [UsuarioSurtido]
GO
/****** Object:  Default [DF_SurtidosDirCab_Status]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_SurtidosDirCab_FolioMovimiento]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_FolioMovimiento]  DEFAULT ('') FOR [FolioMovimiento]
GO
/****** Object:  Default [DF_SurtidosDirCab_UsuarioRecibe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_UsuarioRecibe]  DEFAULT (0) FOR [UsuarioRecibe]
GO
/****** Object:  Default [DF_SurtidosDirCab_FechaRecibe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF_SurtidosDirCab_FechaRecibe]  DEFAULT ('1900/01/01') FOR [FechaRecibe]
GO
/****** Object:  Default [DF__SurtidosD__rowgu__350A67A1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirCab] ADD  CONSTRAINT [DF__SurtidosD__rowgu__350A67A1]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_SurtidosDirDet_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_SurtidosDirDet_FolioSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_FolioSurtido]  DEFAULT ('') FOR [FolioSurtido]
GO
/****** Object:  Default [DF_SurtidosDirDet_FechaSurtido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_FechaSurtido]  DEFAULT ('1900/01/01') FOR [FechaSurtido]
GO
/****** Object:  Default [DF_SurtidosDirDet_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_SurtidosDirDet_Almacen]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_Almacen]  DEFAULT (0) FOR [Almacen]
GO
/****** Object:  Default [DF_SurtidosDirDet_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_SurtidosDirDet_CodigoRel]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_CodigoRel]  DEFAULT ('') FOR [CodigoRel]
GO
/****** Object:  Default [DF_SurtidosDirDet_CantSurtida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_SurtidosDirDet_CantidadRecibida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_CantidadRecibida]  DEFAULT (0) FOR [CantidadRecibida]
GO
/****** Object:  Default [DF_SurtidosDirDet_CostoUnitario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_CostoUnitario]  DEFAULT (0) FOR [CostoUnitario]
GO
/****** Object:  Default [DF_SurtidosDirDet_Status]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_SurtidosDirDet_NodeBulto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF_SurtidosDirDet_NodeBulto]  DEFAULT (0) FOR [NodeBulto]
GO
/****** Object:  Default [DF__SurtidosD__rowgu__2F518E4B]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[SurtidosDirDet] ADD  CONSTRAINT [DF__SurtidosD__rowgu__2F518E4B]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF__tarjetach__rowgu__11FFBDA2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[tarjetachecadora] ADD  CONSTRAINT [DF__tarjetach__rowgu__11FFBDA2]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_TempArticulosNegados_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempArticulosNegados] ADD  CONSTRAINT [DF_TempArticulosNegados_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_TempArticulosNegados_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempArticulosNegados] ADD  CONSTRAINT [DF_TempArticulosNegados_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_TempArticulosNegados_FolioFajilla]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempArticulosNegados] ADD  CONSTRAINT [DF_TempArticulosNegados_FolioFajilla]  DEFAULT ('') FOR [FolioFajilla]
GO
/****** Object:  Default [DF_TempArticulosNegados_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempArticulosNegados] ADD  CONSTRAINT [DF_TempArticulosNegados_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_TempComisionVtas_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempComisionVtas_Hora]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Hora]  DEFAULT ('00:00:00') FOR [Hora]
GO
/****** Object:  Default [DF_TempComisionVtas_Vendedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_TempComisionVtas_Tipo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Tipo]  DEFAULT ('') FOR [Tipo]
GO
/****** Object:  Default [DF_TempComisionVtas_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_TempComisionVtas_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Fecha]  DEFAULT ('1900-01-01') FOR [Fecha]
GO
/****** Object:  Default [DF_TempComisionVtas_Producto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Producto]  DEFAULT (0) FOR [Producto]
GO
/****** Object:  Default [DF_TempComisionVtas_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TempComisionVtas_Comision]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_Comision]  DEFAULT (0) FOR [Comision]
GO
/****** Object:  Default [DF_TempComisionVtas_TotalComision]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempComisionVtas] ADD  CONSTRAINT [DF_TempComisionVtas_TotalComision]  DEFAULT (0) FOR [TotalComision]
GO
/****** Object:  Default [DF_TempConsultaKardex_EAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_EAN]  DEFAULT ('') FOR [EAN]
GO
/****** Object:  Default [DF_TempConsultaKardex_Producto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Producto]  DEFAULT ('') FOR [Producto]
GO
/****** Object:  Default [DF_TempConsultaKardex_Fecha_Inicial]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Fecha_Inicial]  DEFAULT ('') FOR [Fecha_Inicial]
GO
/****** Object:  Default [DF_TempConsultaKardex_Fecha_Final]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Fecha_Final]  DEFAULT ('1900/01/01') FOR [Fecha_Final]
GO
/****** Object:  Default [DF_TempConsultaKardex_ExistenciaAnt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_ExistenciaAnt]  DEFAULT ('') FOR [ExistenciaAnt]
GO
/****** Object:  Default [DF_TempConsultaKardex_Fecha_Movto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Fecha_Movto]  DEFAULT ('1900/01/01') FOR [Fecha_Movto]
GO
/****** Object:  Default [DF_TempConsultaKardex_Referencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_TempConsultaKardex_Entrada]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Entrada]  DEFAULT (0) FOR [Entrada]
GO
/****** Object:  Default [DF_TempConsultaKardex_Salida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Salida]  DEFAULT (0) FOR [Salida]
GO
/****** Object:  Default [DF_TempConsultaKardex_Existencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Existencia]  DEFAULT (0) FOR [Existencia]
GO
/****** Object:  Default [DF_TempConsultaKardex_CostoProm]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_CostoProm]  DEFAULT (0) FOR [CostoProm]
GO
/****** Object:  Default [DF_TempConsultaKardex_Fecha_Captura]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Fecha_Captura]  DEFAULT ('1900/01/01') FOR [Fecha_Captura]
GO
/****** Object:  Default [DF_TempConsultaKardex_Orden]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Orden]  DEFAULT (0) FOR [Orden]
GO
/****** Object:  Default [DF_TempConsultaKardex_UCosto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_UCosto]  DEFAULT (0) FOR [UCosto]
GO
/****** Object:  Default [DF_TempConsultaKardex_Rango1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Rango1]  DEFAULT ('') FOR [Rango1]
GO
/****** Object:  Default [DF_TempConsultaKardex_Rango2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Rango2]  DEFAULT ('') FOR [Rango2]
GO
/****** Object:  Default [DF_TempConsultaKardex_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempConsultaKardex_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempConsultaKardex_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempConsultaKardex_FolioMovto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempConsultaKardex] ADD  CONSTRAINT [DF_TempConsultaKardex_FolioMovto]  DEFAULT ('') FOR [FolioMovto]
GO
/****** Object:  Default [DF_TempDescarga_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDescarga] ADD  CONSTRAINT [DF_TempDescarga_Codigo]  DEFAULT ('') FOR [Codigo]
GO
/****** Object:  Default [DF_TempDescarga_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDescarga] ADD  CONSTRAINT [DF_TempDescarga_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TempDescarga_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDescarga] ADD  CONSTRAINT [DF_TempDescarga_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_TempDescarga_Unidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDescarga] ADD  CONSTRAINT [DF_TempDescarga_Unidad]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF_TempDiarioVtas_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempDiarioVtas_Depto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_TempDiarioVtas_SubTotal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_TempDiarioVtas_Descuentos]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_Descuentos]  DEFAULT (0) FOR [Descuentos]
GO
/****** Object:  Default [DF_TempDiarioVtas_DevolucionesDesc]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_DevolucionesDesc]  DEFAULT (0) FOR [DevolucionesDesc]
GO
/****** Object:  Default [DF_TempDiarioVtas_IvaVentas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_IvaVentas]  DEFAULT (0) FOR [IvaVentas]
GO
/****** Object:  Default [DF_TempDiarioVtas_IvaDevoluciones]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_IvaDevoluciones]  DEFAULT (0) FOR [IvaDevoluciones]
GO
/****** Object:  Default [DF_TempDiarioVtas_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDiarioVtas] ADD  CONSTRAINT [DF_TempDiarioVtas_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempDoctores_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDoctores] ADD  CONSTRAINT [DF_TempDoctores_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_TempDoctores_Nombre]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempDoctores] ADD  CONSTRAINT [DF_TempDoctores_Nombre]  DEFAULT ('') FOR [Nombre]
GO
/****** Object:  Default [DF_TempEC_EAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_EAN]  DEFAULT ('') FOR [EAN]
GO
/****** Object:  Default [DF_TempEC_Producto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Producto]  DEFAULT (0) FOR [Producto]
GO
/****** Object:  Default [DF_TempEC_Grupo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Grupo]  DEFAULT ('') FOR [Grupo]
GO
/****** Object:  Default [DF_TempEC_Existencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Existencia]  DEFAULT (0) FOR [Existencia]
GO
/****** Object:  Default [DF_TempEC_Ultimocosto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Ultimocosto]  DEFAULT (0) FOR [Ultimocosto]
GO
/****** Object:  Default [DF_TempEC_CostoPromedio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_CostoPromedio]  DEFAULT (0) FOR [CostoPromedio]
GO
/****** Object:  Default [DF_TempEC_Rango1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Rango1]  DEFAULT ('') FOR [Rango1]
GO
/****** Object:  Default [DF_TempEC_Rango2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Rango2]  DEFAULT ('') FOR [Rango2]
GO
/****** Object:  Default [DF_TempEC_FechaCorte]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_FechaCorte]  DEFAULT ('1900/01/01') FOR [FechaCorte]
GO
/****** Object:  Default [DF_TempEC_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempEC_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_TempEC_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempEC_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEC] ADD  CONSTRAINT [DF_TempEC_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempEncabRep_NumReporte]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_NumReporte]  DEFAULT (0) FOR [NumReporte]
GO
/****** Object:  Default [DF_TempEncabRep_Sistema]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_Sistema]  DEFAULT ('') FOR [Sistema]
GO
/****** Object:  Default [DF_TempEncabRep_CodSucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_CodSucursal]  DEFAULT (0) FOR [CodSucursal]
GO
/****** Object:  Default [DF_TempEncabRep_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_Sucursal]  DEFAULT ('') FOR [Sucursal]
GO
/****** Object:  Default [DF_TempEncabRep_Modulo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_Modulo]  DEFAULT ('') FOR [Modulo]
GO
/****** Object:  Default [DF_TempEncabRep_Titulo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_Titulo]  DEFAULT ('') FOR [Titulo]
GO
/****** Object:  Default [DF_TempEncabRep_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_TempEncabRep_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempEncabRep] ADD  CONSTRAINT [DF_TempEncabRep_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TempFrecCtes_Sistema]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Sistema]  DEFAULT ('') FOR [Sistema]
GO
/****** Object:  Default [DF_TempFrecCtes_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Sucursal]  DEFAULT ('') FOR [Sucursal]
GO
/****** Object:  Default [DF_TempFrecCtes_Modulo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Modulo]  DEFAULT ('') FOR [Modulo]
GO
/****** Object:  Default [DF_TempFrecCtes_Titulo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Titulo]  DEFAULT ('') FOR [Titulo]
GO
/****** Object:  Default [DF_TempFrecCtes_TipoVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_TipoVenta]  DEFAULT ('') FOR [TipoVenta]
GO
/****** Object:  Default [DF_TempFrecCtes_Cliente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Cliente]  DEFAULT ('') FOR [Cliente]
GO
/****** Object:  Default [DF_TempFrecCtes_Telefono]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Telefono]  DEFAULT ('') FOR [Telefono]
GO
/****** Object:  Default [DF_TempFrecCtes_Direccion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Direccion]  DEFAULT ('') FOR [Direccion]
GO
/****** Object:  Default [DF_TempFrecCtes_FecUltPed]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_FecUltPed]  DEFAULT ('1900/01/01') FOR [FecUltPed]
GO
/****** Object:  Default [DF_TempFrecCtes_Treinta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Treinta]  DEFAULT (0) FOR [Treinta]
GO
/****** Object:  Default [DF_TempFrecCtes_Sesenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Sesenta]  DEFAULT (0) FOR [Sesenta]
GO
/****** Object:  Default [DF_TempFrecCtes_Noventa]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Noventa]  DEFAULT (0) FOR [Noventa]
GO
/****** Object:  Default [DF_TempFrecCtes_Total]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Total]  DEFAULT (0) FOR [Total]
GO
/****** Object:  Default [DF_TempFrecCtes_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_TempFrecCtes_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempFrecCtes] ADD  CONSTRAINT [DF_TempFrecCtes_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempHistoPedidos_Hora]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Hora]  DEFAULT ('') FOR [Hora]
GO
/****** Object:  Default [DF_TempHistoPedidos_Lunes]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Lunes]  DEFAULT (0) FOR [Lunes]
GO
/****** Object:  Default [DF_TempHistoPedidos_Martes]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Martes]  DEFAULT (0) FOR [Martes]
GO
/****** Object:  Default [DF_TempHistoPedidos_Miercoles]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Miercoles]  DEFAULT (0) FOR [Miercoles]
GO
/****** Object:  Default [DF_TempHistoPedidos_Jueves]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Jueves]  DEFAULT (0) FOR [Jueves]
GO
/****** Object:  Default [DF_TempHistoPedidos_Viernes]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Viernes]  DEFAULT (0) FOR [Viernes]
GO
/****** Object:  Default [DF_TempHistoPedidos_Sabado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Sabado]  DEFAULT (0) FOR [Sabado]
GO
/****** Object:  Default [DF_TempHistoPedidos_Domingo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Domingo]  DEFAULT (0) FOR [Domingo]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjLun]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjLun]  DEFAULT (0) FOR [PtjLun]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjMar]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjMar]  DEFAULT (0) FOR [PtjMar]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjMier]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjMier]  DEFAULT (0) FOR [PtjMier]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjJue]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjJue]  DEFAULT (0) FOR [PtjJue]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjVie]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjVie]  DEFAULT (0) FOR [PtjVie]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjSab]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjSab]  DEFAULT (0) FOR [PtjSab]
GO
/****** Object:  Default [DF_TempHistoPedidos_PtjDom]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_PtjDom]  DEFAULT (0) FOR [PtjDom]
GO
/****** Object:  Default [DF_TempHistoPedidos_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempHistoPedidos] ADD  CONSTRAINT [DF_TempHistoPedidos_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempIncidencias_Nom_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_Nom_Farmacia]  DEFAULT ('') FOR [Nom_Farmacia]
GO
/****** Object:  Default [DF_TempIncidencias_NomEmpresa]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_NomEmpresa]  DEFAULT ('') FOR [NomEmpresa]
GO
/****** Object:  Default [DF_TempIncidencias_CodRelacionado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_CodRelacionado]  DEFAULT ('') FOR [CodRelacionado]
GO
/****** Object:  Default [DF_TempIncidencias_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_TempIncidencias_UltimoCosto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_UltimoCosto]  DEFAULT (0) FOR [UltimoCosto]
GO
/****** Object:  Default [DF_TempIncidencias_PrecioPublico]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_PrecioPublico]  DEFAULT (0) FOR [PrecioPublico]
GO
/****** Object:  Default [DF_TempIncidencias_FecUltiVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_FecUltiVenta]  DEFAULT ('1900-01-01') FOR [FecUltiVenta]
GO
/****** Object:  Default [DF_TempIncidencias_Existencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_Existencia]  DEFAULT (0) FOR [Existencia]
GO
/****** Object:  Default [DF_TempIncidencias_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempIncidencias_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempIncidencias_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempIncidencias] ADD  CONSTRAINT [DF_TempIncidencias_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempInvValFam_Nivel1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Nivel1]  DEFAULT ('') FOR [Nivel1]
GO
/****** Object:  Default [DF_TempInvValFam_Nivel2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Nivel2]  DEFAULT ('') FOR [Nivel2]
GO
/****** Object:  Default [DF_TempInvValFam_Nivel3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Nivel3]  DEFAULT ('') FOR [Nivel3]
GO
/****** Object:  Default [DF_TempInvValFam_Nivel4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Nivel4]  DEFAULT ('') FOR [Nivel4]
GO
/****** Object:  Default [DF_TempInvValFam_Familia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Familia]  DEFAULT ('') FOR [Familia]
GO
/****** Object:  Default [DF_TempInvValFam_SubFamilia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_SubFamilia]  DEFAULT ('') FOR [SubFamilia]
GO
/****** Object:  Default [DF_TempInvValFam_SSubFamilia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_SSubFamilia]  DEFAULT ('') FOR [SSubFamilia]
GO
/****** Object:  Default [DF_TempInvValFam_SSSubFamilia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_SSSubFamilia]  DEFAULT ('') FOR [SSSubFamilia]
GO
/****** Object:  Default [DF_TempInvValFam_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempInvValFam_Existencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Existencia]  DEFAULT (0) FOR [Cant_Entradas]
GO
/****** Object:  Default [DF_TempInvValFam_CostoProm]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_CostoProm]  DEFAULT (0) FOR [Cant_Salidas]
GO
/****** Object:  Default [DF_TempInvValFam_ImpTotal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_ImpTotal]  DEFAULT (0) FOR [Imp_Entradas]
GO
/****** Object:  Default [DF_TempInvValFam_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Usuario]  DEFAULT (0) FOR [Imp_Salidas]
GO
/****** Object:  Default [DF_TempInvValFam_Usuario_1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Usuario_1]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempInvValFam_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValFam] ADD  CONSTRAINT [DF_TempInvValFam_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempInvValorizado_Codigoint]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Codigoint]  DEFAULT (0) FOR [Codigoint]
GO
/****** Object:  Default [DF_TempInvValorizado_CodRelacionado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_CodRelacionado]  DEFAULT ('') FOR [CodRelacionado]
GO
/****** Object:  Default [DF_TempInvValorizado_Cant_Entradas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Cant_Entradas]  DEFAULT (0) FOR [Cant_Entradas]
GO
/****** Object:  Default [DF_TempInvValorizado_Imp_Entradas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Imp_Entradas]  DEFAULT (0) FOR [Imp_Entradas]
GO
/****** Object:  Default [DF_TempInvValorizado_Cant_Salidas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Cant_Salidas]  DEFAULT (0) FOR [Cant_Salidas]
GO
/****** Object:  Default [DF_TempInvValorizado_Imp_Salidas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Imp_Salidas]  DEFAULT (0) FOR [Imp_Salidas]
GO
/****** Object:  Default [DF_TempInvValorizado_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempInvValorizado_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempInvValorizado_Nivel1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Nivel1]  DEFAULT ('') FOR [Nivel1]
GO
/****** Object:  Default [DF_TempInvValorizado_Nivel2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Nivel2]  DEFAULT ('') FOR [Nivel2]
GO
/****** Object:  Default [DF_TempInvValorizado_Nivel3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Nivel3]  DEFAULT ('') FOR [Nivel3]
GO
/****** Object:  Default [DF_TempInvValorizado_Nivel4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Nivel4]  DEFAULT ('') FOR [Nivel4]
GO
/****** Object:  Default [DF_TempInvValorizado_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempInvValorizado_CostoProm]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValorizado] ADD  CONSTRAINT [DF_TempInvValorizado_CostoProm]  DEFAULT (0) FOR [CostoProm]
GO
/****** Object:  Default [DF_TempInvValReporte_Nivel1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Nivel1]  DEFAULT ('') FOR [Nivel1]
GO
/****** Object:  Default [DF_TempInvValReporte_Nivel2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Nivel2]  DEFAULT ('') FOR [Nivel2]
GO
/****** Object:  Default [DF_TempInvValReporte_Nivel3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Nivel3]  DEFAULT ('') FOR [Nivel3]
GO
/****** Object:  Default [DF_TempInvValReporte_Nivel4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Nivel4]  DEFAULT ('') FOR [Nivel4]
GO
/****** Object:  Default [DF_TempInvValReporte_Familia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Familia]  DEFAULT ('') FOR [Familia]
GO
/****** Object:  Default [DF_TempInvValReporte_Existencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Existencia]  DEFAULT (0) FOR [Existencia]
GO
/****** Object:  Default [DF_TempInvValReporte_CostoProm]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_CostoProm]  DEFAULT (0) FOR [CostoProm]
GO
/****** Object:  Default [DF_TempInvValReporte_ImpTotal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_ImpTotal]  DEFAULT (0) FOR [ImpTotal]
GO
/****** Object:  Default [DF_TempInvValReporte_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempInvValReporte_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempInvValReporte_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempInvValReporte] ADD  CONSTRAINT [DF_TempInvValReporte_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempListado4_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Usuario]  DEFAULT ('') FOR [Usuario]
GO
/****** Object:  Default [DF_TempListado4_Empleado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Empleado]  DEFAULT ('') FOR [Empleado]
GO
/****** Object:  Default [DF_TempListado4_Dependiente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Dependiente]  DEFAULT ('') FOR [Dependiente]
GO
/****** Object:  Default [DF_TempListado4_Parentesco]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Parentesco]  DEFAULT ('') FOR [Parentesco]
GO
/****** Object:  Default [DF_TempListado4_Nomina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Nomina]  DEFAULT ('') FOR [Nomina]
GO
/****** Object:  Default [DF_TempListado4_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_TempListado4_Descto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Descto]  DEFAULT (0) FOR [Descto]
GO
/****** Object:  Default [DF_TempListado4_Iva]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_Iva]  DEFAULT (0) FOR [Iva]
GO
/****** Object:  Default [DF_TempListado4_CoPago]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempListado4] ADD  CONSTRAINT [DF_TempListado4_CoPago]  DEFAULT (0) FOR [CoPago]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_UsuarioMaquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_UsuarioMaquina]  DEFAULT ('') FOR [UsuarioMaquina]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_FolioNota]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_FolioNota]  DEFAULT ('') FOR [FolioNota]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_CodigoRelacionado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_CodigoRelacionado]  DEFAULT ('') FOR [CodigoRelacionado]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_CantNC]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_CantNC]  DEFAULT (0) FOR [CantNC]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_PFarmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_PFarmacia]  DEFAULT (0) FOR [PFarmacia]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_PorOferta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_PorOferta]  DEFAULT (0) FOR [PorOferta]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_PorFinanciero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_PorFinanciero]  DEFAULT (0) FOR [PorFinanciero]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_PorIva]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_PorIva]  DEFAULT (0) FOR [PorIva]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_NoPedido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_NoPedido]  DEFAULT (0) FOR [NoPedido]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_MasFacturado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_MasFacturado]  DEFAULT (0) FOR [MasFacturado]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_MasCaro]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_MasCaro]  DEFAULT (0) FOR [MasCaro]
GO
/****** Object:  Default [DF_TempNotaCreditoMayoristas_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempNotaCreditoMayoristas] ADD  CONSTRAINT [DF_TempNotaCreditoMayoristas_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF__TempProvE__Codig__615C547D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Codig__615C547D]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF__TempProvE__Preci__625078B6]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__625078B6]  DEFAULT (0) FOR [PrecioNeto]
GO
/****** Object:  Default [DF__TempProvE__Prov1__63449CEF]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__63449CEF]  DEFAULT (0) FOR [Prov1]
GO
/****** Object:  Default [DF__TempProvE__Preci__6438C128]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__6438C128]  DEFAULT (0) FOR [Precio1]
GO
/****** Object:  Default [DF__TempProvE__Ofert__652CE561]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__652CE561]  DEFAULT (0) FOR [Oferta1]
GO
/****** Object:  Default [DF__TempProvEm__Fin1__6621099A]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin1__6621099A]  DEFAULT (0) FOR [Fin1]
GO
/****** Object:  Default [DF__TempProvEmp__CC1__67152DD3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC1__67152DD3]  DEFAULT (0) FOR [CC1]
GO
/****** Object:  Default [DF__TempProvEmp__SC1__6809520C]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC1__6809520C]  DEFAULT (0) FOR [SC1]
GO
/****** Object:  Default [DF__TempProvE__Prov2__68FD7645]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov2__68FD7645]  DEFAULT (0) FOR [Prov2]
GO
/****** Object:  Default [DF__TempProvE__Preci__69F19A7E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__69F19A7E]  DEFAULT (0) FOR [Precio2]
GO
/****** Object:  Default [DF__TempProvE__Ofert__6AE5BEB7]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__6AE5BEB7]  DEFAULT (0) FOR [Oferta2]
GO
/****** Object:  Default [DF__TempProvEm__Fin2__6BD9E2F0]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin2__6BD9E2F0]  DEFAULT (0) FOR [Fin2]
GO
/****** Object:  Default [DF__TempProvEmp__CC2__6CCE0729]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC2__6CCE0729]  DEFAULT (0) FOR [CC2]
GO
/****** Object:  Default [DF__TempProvEmp__SC2__6DC22B62]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC2__6DC22B62]  DEFAULT (0) FOR [SC2]
GO
/****** Object:  Default [DF__TempProvE__Prov3__6EB64F9B]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov3__6EB64F9B]  DEFAULT (0) FOR [Prov3]
GO
/****** Object:  Default [DF__TempProvE__Preci__6FAA73D4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__6FAA73D4]  DEFAULT (0) FOR [Precio3]
GO
/****** Object:  Default [DF__TempProvE__Ofert__709E980D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__709E980D]  DEFAULT (0) FOR [Oferta3]
GO
/****** Object:  Default [DF__TempProvEm__Fin3__7192BC46]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin3__7192BC46]  DEFAULT (0) FOR [Fin3]
GO
/****** Object:  Default [DF__TempProvEmp__CC3__7286E07F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC3__7286E07F]  DEFAULT (0) FOR [CC3]
GO
/****** Object:  Default [DF__TempProvEmp__SC3__737B04B8]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC3__737B04B8]  DEFAULT (0) FOR [SC3]
GO
/****** Object:  Default [DF__TempProvE__Prov4__746F28F1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov4__746F28F1]  DEFAULT (0) FOR [Prov4]
GO
/****** Object:  Default [DF__TempProvE__Preci__75634D2A]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__75634D2A]  DEFAULT (0) FOR [Precio4]
GO
/****** Object:  Default [DF__TempProvE__Ofert__76577163]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__76577163]  DEFAULT (0) FOR [Oferta4]
GO
/****** Object:  Default [DF__TempProvEm__Fin4__774B959C]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin4__774B959C]  DEFAULT (0) FOR [Fin4]
GO
/****** Object:  Default [DF__TempProvEmp__CC4__783FB9D5]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC4__783FB9D5]  DEFAULT (0) FOR [CC4]
GO
/****** Object:  Default [DF__TempProvEmp__SC4__7933DE0E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC4__7933DE0E]  DEFAULT (0) FOR [SC4]
GO
/****** Object:  Default [DF__TempProvE__Prov5__7A280247]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov5__7A280247]  DEFAULT (0) FOR [Prov5]
GO
/****** Object:  Default [DF__TempProvE__Preci__7B1C2680]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__7B1C2680]  DEFAULT (0) FOR [Precio5]
GO
/****** Object:  Default [DF__TempProvE__Ofert__7C104AB9]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__7C104AB9]  DEFAULT (0) FOR [Oferta5]
GO
/****** Object:  Default [DF__TempProvEm__Fin5__7D046EF2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin5__7D046EF2]  DEFAULT (0) FOR [Fin5]
GO
/****** Object:  Default [DF__TempProvEmp__CC5__7DF8932B]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC5__7DF8932B]  DEFAULT (0) FOR [CC5]
GO
/****** Object:  Default [DF__TempProvEmp__SC5__7EECB764]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC5__7EECB764]  DEFAULT (0) FOR [SC5]
GO
/****** Object:  Default [DF__TempProvE__Prov6__7FE0DB9D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov6__7FE0DB9D]  DEFAULT (0) FOR [Prov6]
GO
/****** Object:  Default [DF__TempProvE__Preci__00D4FFD6]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__00D4FFD6]  DEFAULT (0) FOR [Precio6]
GO
/****** Object:  Default [DF__TempProvE__Ofert__01C9240F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__01C9240F]  DEFAULT (0) FOR [Oferta6]
GO
/****** Object:  Default [DF__TempProvEm__Fin6__02BD4848]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin6__02BD4848]  DEFAULT (0) FOR [Fin6]
GO
/****** Object:  Default [DF__TempProvEmp__CC6__03B16C81]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC6__03B16C81]  DEFAULT (0) FOR [CC6]
GO
/****** Object:  Default [DF__TempProvEmp__SC6__04A590BA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC6__04A590BA]  DEFAULT (0) FOR [SC6]
GO
/****** Object:  Default [DF__TempProvE__Prov7__0599B4F3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov7__0599B4F3]  DEFAULT (0) FOR [Prov7]
GO
/****** Object:  Default [DF__TempProvE__Preci__068DD92C]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__068DD92C]  DEFAULT (0) FOR [Precio7]
GO
/****** Object:  Default [DF__TempProvE__Ofert__0781FD65]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__0781FD65]  DEFAULT (0) FOR [Oferta7]
GO
/****** Object:  Default [DF__TempProvEm__Fin7__0876219E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin7__0876219E]  DEFAULT (0) FOR [Fin7]
GO
/****** Object:  Default [DF__TempProvEmp__CC7__096A45D7]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC7__096A45D7]  DEFAULT (0) FOR [CC7]
GO
/****** Object:  Default [DF__TempProvEmp__SC7__0A5E6A10]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC7__0A5E6A10]  DEFAULT (0) FOR [SC7]
GO
/****** Object:  Default [DF__TempProvE__Prov8__0B528E49]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov8__0B528E49]  DEFAULT (0) FOR [Prov8]
GO
/****** Object:  Default [DF__TempProvE__Preci__0C46B282]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__0C46B282]  DEFAULT (0) FOR [Precio8]
GO
/****** Object:  Default [DF__TempProvE__Ofert__0D3AD6BB]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__0D3AD6BB]  DEFAULT (0) FOR [Oferta8]
GO
/****** Object:  Default [DF__TempProvEm__Fin8__0E2EFAF4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin8__0E2EFAF4]  DEFAULT (0) FOR [Fin8]
GO
/****** Object:  Default [DF__TempProvEmp__CC8__0F231F2D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC8__0F231F2D]  DEFAULT (0) FOR [CC8]
GO
/****** Object:  Default [DF__TempProvEmp__SC8__10174366]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC8__10174366]  DEFAULT (0) FOR [SC8]
GO
/****** Object:  Default [DF__TempProvE__Prov9__110B679F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov9__110B679F]  DEFAULT (0) FOR [Prov9]
GO
/****** Object:  Default [DF__TempProvE__Preci__11FF8BD8]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__11FF8BD8]  DEFAULT (0) FOR [Precio9]
GO
/****** Object:  Default [DF__TempProvE__Ofert__12F3B011]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__12F3B011]  DEFAULT (0) FOR [Oferta9]
GO
/****** Object:  Default [DF__TempProvEm__Fin9__13E7D44A]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__Fin9__13E7D44A]  DEFAULT (0) FOR [Fin9]
GO
/****** Object:  Default [DF__TempProvEmp__CC9__14DBF883]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__CC9__14DBF883]  DEFAULT (0) FOR [CC9]
GO
/****** Object:  Default [DF__TempProvEmp__SC9__15D01CBC]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEmp__SC9__15D01CBC]  DEFAULT (0) FOR [SC9]
GO
/****** Object:  Default [DF__TempProvE__Prov1__16C440F5]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__16C440F5]  DEFAULT (0) FOR [Prov10]
GO
/****** Object:  Default [DF__TempProvE__Preci__17B8652E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__17B8652E]  DEFAULT (0) FOR [Precio10]
GO
/****** Object:  Default [DF__TempProvE__Ofert__18AC8967]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__18AC8967]  DEFAULT (0) FOR [Oferta10]
GO
/****** Object:  Default [DF__TempProvE__Fin10__19A0ADA0]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin10__19A0ADA0]  DEFAULT (0) FOR [Fin10]
GO
/****** Object:  Default [DF__TempProvEm__CC10__1A94D1D9]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC10__1A94D1D9]  DEFAULT (0) FOR [CC10]
GO
/****** Object:  Default [DF__TempProvEm__SC10__1B88F612]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC10__1B88F612]  DEFAULT (0) FOR [SC10]
GO
/****** Object:  Default [DF__TempProvE__Prov1__1C7D1A4B]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__1C7D1A4B]  DEFAULT (0) FOR [Prov11]
GO
/****** Object:  Default [DF__TempProvE__Preci__1D713E84]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__1D713E84]  DEFAULT (0) FOR [Precio11]
GO
/****** Object:  Default [DF__TempProvE__Ofert__1E6562BD]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__1E6562BD]  DEFAULT (0) FOR [Oferta11]
GO
/****** Object:  Default [DF__TempProvE__Fin11__1F5986F6]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin11__1F5986F6]  DEFAULT (0) FOR [Fin11]
GO
/****** Object:  Default [DF__TempProvEm__CC11__204DAB2F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC11__204DAB2F]  DEFAULT (0) FOR [CC11]
GO
/****** Object:  Default [DF__TempProvEm__SC11__2141CF68]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC11__2141CF68]  DEFAULT (0) FOR [SC11]
GO
/****** Object:  Default [DF__TempProvE__Prov1__2235F3A1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__2235F3A1]  DEFAULT (0) FOR [Prov12]
GO
/****** Object:  Default [DF__TempProvE__Preci__232A17DA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__232A17DA]  DEFAULT (0) FOR [Precio12]
GO
/****** Object:  Default [DF__TempProvE__Ofert__241E3C13]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__241E3C13]  DEFAULT (0) FOR [Oferta12]
GO
/****** Object:  Default [DF__TempProvE__Fin12__2512604C]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin12__2512604C]  DEFAULT (0) FOR [Fin12]
GO
/****** Object:  Default [DF__TempProvEm__CC12__26068485]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC12__26068485]  DEFAULT (0) FOR [CC12]
GO
/****** Object:  Default [DF__TempProvEm__SC12__26FAA8BE]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC12__26FAA8BE]  DEFAULT (0) FOR [SC12]
GO
/****** Object:  Default [DF__TempProvE__Prov1__27EECCF7]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__27EECCF7]  DEFAULT (0) FOR [Prov13]
GO
/****** Object:  Default [DF__TempProvE__Preci__28E2F130]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__28E2F130]  DEFAULT (0) FOR [Precio13]
GO
/****** Object:  Default [DF__TempProvE__Ofert__29D71569]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__29D71569]  DEFAULT (0) FOR [Oferta13]
GO
/****** Object:  Default [DF__TempProvE__Fin13__2ACB39A2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin13__2ACB39A2]  DEFAULT (0) FOR [Fin13]
GO
/****** Object:  Default [DF__TempProvEm__CC13__2BBF5DDB]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC13__2BBF5DDB]  DEFAULT (0) FOR [CC13]
GO
/****** Object:  Default [DF__TempProvEm__SC13__2CB38214]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC13__2CB38214]  DEFAULT (0) FOR [SC13]
GO
/****** Object:  Default [DF__TempProvE__Prov1__2DA7A64D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__2DA7A64D]  DEFAULT (0) FOR [Prov14]
GO
/****** Object:  Default [DF__TempProvE__Preci__2E9BCA86]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__2E9BCA86]  DEFAULT (0) FOR [Precio14]
GO
/****** Object:  Default [DF__TempProvE__Ofert__2F8FEEBF]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__2F8FEEBF]  DEFAULT (0) FOR [Oferta14]
GO
/****** Object:  Default [DF__TempProvE__Fin14__308412F8]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin14__308412F8]  DEFAULT (0) FOR [Fin14]
GO
/****** Object:  Default [DF__TempProvEm__CC14__31783731]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC14__31783731]  DEFAULT (0) FOR [CC14]
GO
/****** Object:  Default [DF__TempProvEm__SC14__326C5B6A]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC14__326C5B6A]  DEFAULT (0) FOR [SC14]
GO
/****** Object:  Default [DF__TempProvE__Prov1__33607FA3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__33607FA3]  DEFAULT (0) FOR [Prov15]
GO
/****** Object:  Default [DF__TempProvE__Preci__3454A3DC]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__3454A3DC]  DEFAULT (0) FOR [Precio15]
GO
/****** Object:  Default [DF__TempProvE__Ofert__3548C815]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__3548C815]  DEFAULT (0) FOR [Oferta15]
GO
/****** Object:  Default [DF__TempProvE__Fin15__363CEC4E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin15__363CEC4E]  DEFAULT (0) FOR [Fin15]
GO
/****** Object:  Default [DF__TempProvEm__CC15__37311087]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC15__37311087]  DEFAULT (0) FOR [CC15]
GO
/****** Object:  Default [DF__TempProvEm__SC15__382534C0]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC15__382534C0]  DEFAULT (0) FOR [SC15]
GO
/****** Object:  Default [DF__TempProvE__Prov1__391958F9]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__391958F9]  DEFAULT (0) FOR [Prov16]
GO
/****** Object:  Default [DF__TempProvE__Preci__3A0D7D32]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__3A0D7D32]  DEFAULT (0) FOR [Precio16]
GO
/****** Object:  Default [DF__TempProvE__Ofert__3B01A16B]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__3B01A16B]  DEFAULT (0) FOR [Oferta16]
GO
/****** Object:  Default [DF__TempProvE__Fin16__3BF5C5A4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin16__3BF5C5A4]  DEFAULT (0) FOR [Fin16]
GO
/****** Object:  Default [DF__TempProvEm__CC16__3CE9E9DD]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC16__3CE9E9DD]  DEFAULT (0) FOR [CC16]
GO
/****** Object:  Default [DF__TempProvEm__SC16__3DDE0E16]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC16__3DDE0E16]  DEFAULT (0) FOR [SC16]
GO
/****** Object:  Default [DF__TempProvE__Prov1__3ED2324F]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__3ED2324F]  DEFAULT (0) FOR [Prov17]
GO
/****** Object:  Default [DF__TempProvE__Preci__3FC65688]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__3FC65688]  DEFAULT (0) FOR [Precio17]
GO
/****** Object:  Default [DF__TempProvE__Ofert__40BA7AC1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__40BA7AC1]  DEFAULT (0) FOR [Oferta17]
GO
/****** Object:  Default [DF__TempProvE__Fin17__41AE9EFA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin17__41AE9EFA]  DEFAULT (0) FOR [Fin17]
GO
/****** Object:  Default [DF__TempProvEm__CC17__42A2C333]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC17__42A2C333]  DEFAULT (0) FOR [CC17]
GO
/****** Object:  Default [DF__TempProvEm__SC17__4396E76C]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC17__4396E76C]  DEFAULT (0) FOR [SC17]
GO
/****** Object:  Default [DF__TempProvE__Prov1__448B0BA5]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__448B0BA5]  DEFAULT (0) FOR [Prov18]
GO
/****** Object:  Default [DF__TempProvE__Preci__457F2FDE]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__457F2FDE]  DEFAULT (0) FOR [Precio18]
GO
/****** Object:  Default [DF__TempProvE__Ofert__46735417]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__46735417]  DEFAULT (0) FOR [Oferta18]
GO
/****** Object:  Default [DF__TempProvE__Fin18__47677850]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin18__47677850]  DEFAULT (0) FOR [Fin18]
GO
/****** Object:  Default [DF__TempProvEm__CC18__485B9C89]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC18__485B9C89]  DEFAULT (0) FOR [CC18]
GO
/****** Object:  Default [DF__TempProvEm__SC18__494FC0C2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC18__494FC0C2]  DEFAULT (0) FOR [SC18]
GO
/****** Object:  Default [DF__TempProvE__Prov1__4A43E4FB]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov1__4A43E4FB]  DEFAULT (0) FOR [Prov19]
GO
/****** Object:  Default [DF__TempProvE__Preci__4B380934]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__4B380934]  DEFAULT (0) FOR [Precio19]
GO
/****** Object:  Default [DF__TempProvE__Ofert__4C2C2D6D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__4C2C2D6D]  DEFAULT (0) FOR [Oferta19]
GO
/****** Object:  Default [DF__TempProvE__Fin19__4D2051A6]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin19__4D2051A6]  DEFAULT (0) FOR [Fin19]
GO
/****** Object:  Default [DF__TempProvEm__CC19__4E1475DF]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC19__4E1475DF]  DEFAULT (0) FOR [CC19]
GO
/****** Object:  Default [DF__TempProvEm__SC19__4F089A18]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC19__4F089A18]  DEFAULT (0) FOR [SC19]
GO
/****** Object:  Default [DF__TempProvE__Prov2__4FFCBE51]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Prov2__4FFCBE51]  DEFAULT (0) FOR [Prov20]
GO
/****** Object:  Default [DF__TempProvE__Preci__50F0E28A]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Preci__50F0E28A]  DEFAULT (0) FOR [Precio20]
GO
/****** Object:  Default [DF__TempProvE__Ofert__51E506C3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Ofert__51E506C3]  DEFAULT (0) FOR [Oferta20]
GO
/****** Object:  Default [DF__TempProvE__Fin20__52D92AFC]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Fin20__52D92AFC]  DEFAULT (0) FOR [Fin20]
GO
/****** Object:  Default [DF__TempProvEm__CC20__53CD4F35]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__CC20__53CD4F35]  DEFAULT (0) FOR [CC20]
GO
/****** Object:  Default [DF__TempProvEm__SC20__54C1736E]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvEm__SC20__54C1736E]  DEFAULT (0) FOR [SC20]
GO
/****** Object:  Default [DF__TempProvE__Pedid__55B597A7]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpatados] ADD  CONSTRAINT [DF__TempProvE__Pedid__55B597A7]  DEFAULT (0) FOR [PedidoA]
GO
/****** Object:  Default [DF_TempProvEmpate_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_TempProvEmpate_Proveedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_TempProvEmpate_TipoOferta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_TipoOferta]  DEFAULT ('') FOR [TipoOferta]
GO
/****** Object:  Default [DF_TempProvEmpate_PrecioNeto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_PrecioNeto]  DEFAULT (0) FOR [PrecioNeto]
GO
/****** Object:  Default [DF_TempProvEmpate_Precio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_Precio]  DEFAULT (0) FOR [Precio]
GO
/****** Object:  Default [DF_TempProvEmpate_PtjOferta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_PtjOferta]  DEFAULT (0) FOR [PtjOferta]
GO
/****** Object:  Default [DF_TempProvEmpate_PtjFinan]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_PtjFinan]  DEFAULT (0) FOR [PtjFinan]
GO
/****** Object:  Default [DF_TempProvEmpate_ConCargo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_ConCargo]  DEFAULT (0) FOR [ConCargo]
GO
/****** Object:  Default [DF_TempProvEmpate_SinCargo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_SinCargo]  DEFAULT (0) FOR [SinCargo]
GO
/****** Object:  Default [DF_TempProvEmpate_Pedir]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_Pedir]  DEFAULT (0) FOR [CantAPedir]
GO
/****** Object:  Default [DF_TempProvEmpate_CantPedida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_CantPedida]  DEFAULT (0) FOR [CantPedida]
GO
/****** Object:  Default [DF_TempProvEmpate_CantPedidaAProv]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_CantPedidaAProv]  DEFAULT (0) FOR [PedidaAProv]
GO
/****** Object:  Default [DF_TempProvEmpate_Surtimient]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_Surtimient]  DEFAULT (0) FOR [Surtimiento]
GO
/****** Object:  Default [DF_TempProvEmpate_Piezas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvEmpate] ADD  CONSTRAINT [DF_TempProvEmpate_Piezas]  DEFAULT (0) FOR [Piezas]
GO
/****** Object:  Default [DF__TempProvS__Prove__0D05CC91]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvSurtimiento] ADD  CONSTRAINT [DF__TempProvS__Prove__0D05CC91]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF__TempProvS__Surti__0DF9F0CA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempProvSurtimiento] ADD  CONSTRAINT [DF__TempProvS__Surti__0DF9F0CA]  DEFAULT (0) FOR [Surtimiento]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CodigoUsuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CodigoUsuario]  DEFAULT ('') FOR [CodigoUsuario]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CodigoInterno]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CodigoInterno]  DEFAULT (0) FOR [CodigoInterno]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CodigoRelacionado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CodigoRelacionado]  DEFAULT ('') FOR [CodigoRelacionado]
GO
/****** Object:  Default [DF_TempReporteIncidencias_DescripcionProducto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_DescripcionProducto]  DEFAULT ('') FOR [DescripcionProducto]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CantidadFacturada]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CantidadFacturada]  DEFAULT (0) FOR [CantidadFacturada]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CantidadSurtida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CantidadSurtida]  DEFAULT (0) FOR [CantidadSurtida]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CantidadDevolverFisicamente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CantidadDevolverFisicamente]  DEFAULT (0) FOR [CantidadDevolverFisicamente]
GO
/****** Object:  Default [DF_TempReporteIncidencias_CantidadNotaCredito]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReporteIncidencias] ADD  CONSTRAINT [DF_TempReporteIncidencias_CantidadNotaCredito]  DEFAULT (0) FOR [CantidadNotaCredito]
GO
/****** Object:  Default [DF_TempReportes_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_TempReportes_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_TempReportes_EAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_EAN]  DEFAULT ('') FOR [EAN]
GO
/****** Object:  Default [DF_TempReportes_Familia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Familia]  DEFAULT ('') FOR [Familia]
GO
/****** Object:  Default [DF_TempReportes_Laboratorio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Laboratorio]  DEFAULT ('') FOR [Laboratorio]
GO
/****** Object:  Default [DF_TempReportes_Precio1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Precio1]  DEFAULT (0) FOR [Precio1]
GO
/****** Object:  Default [DF_TempReportes_Precio2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Precio2]  DEFAULT (0) FOR [Precio2]
GO
/****** Object:  Default [DF_TempReportes_Lab1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Lab1]  DEFAULT ('') FOR [Lab1]
GO
/****** Object:  Default [DF_TempReportes_Lab2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Lab2]  DEFAULT ('') FOR [Lab2]
GO
/****** Object:  Default [DF_TempReportes_Fam1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Fam1]  DEFAULT ('') FOR [Fam1]
GO
/****** Object:  Default [DF_TempReportes_Fam2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Fam2]  DEFAULT ('') FOR [Fam2]
GO
/****** Object:  Default [DF_TempReportes_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Farmacia]  DEFAULT ('') FOR [Farmacia]
GO
/****** Object:  Default [DF_TempReportes_Empresa]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Empresa]  DEFAULT ('') FOR [Empresa]
GO
/****** Object:  Default [DF_TempReportes_Orden]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Orden]  DEFAULT (0) FOR [Orden]
GO
/****** Object:  Default [DF_TempReportes_CodFarma]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_CodFarma]  DEFAULT (0) FOR [CodFarma]
GO
/****** Object:  Default [DF_TempReportes_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempReportes_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempReportes] ADD  CONSTRAINT [DF_TempReportes_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_FolioPedido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_FolioPedido]  DEFAULT ('') FOR [FolioPedido]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_CantSurtida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_CantSurtida]  DEFAULT (0) FOR [CantSurtida]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_CantRecibida]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_CantRecibida]  DEFAULT (0) FOR [CantRecibida]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_Diferencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_Diferencia]  DEFAULT (0) FOR [Diferencia]
GO
/****** Object:  Default [DF_TempSurtidoPedidosDet_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempSurtidoPedidosDet] ADD  CONSTRAINT [DF_TempSurtidoPedidosDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_TempVtasMesDia_No_1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_No_1]  DEFAULT (0) FOR [No]
GO
/****** Object:  Default [DF_TempVtasMesDia_UnidBrutas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_UnidBrutas]  DEFAULT (0) FOR [UnidBrutas]
GO
/****** Object:  Default [DF_TempVtasMesDia_UnidDevueltas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_UnidDevueltas]  DEFAULT (0) FOR [UnidDevueltas]
GO
/****** Object:  Default [DF_TempVtasMesDia_ImpteBruto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_ImpteBruto]  DEFAULT (0) FOR [ImpteBruto]
GO
/****** Object:  Default [DF_TempVtasMesDia_ImpteDesctos]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_ImpteDesctos]  DEFAULT (0) FOR [ImpteDesctos]
GO
/****** Object:  Default [DF_TempVtasMesDia_ImptedelIVA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_ImptedelIVA]  DEFAULT (0) FOR [ImptedelIVA]
GO
/****** Object:  Default [DF_TempVtasMesDia_ImpteDevoluciones]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_ImpteDevoluciones]  DEFAULT (0) FOR [ImpteDevoluciones]
GO
/****** Object:  Default [DF_TempVtasMesDia_ImpteVtasConIVA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_ImpteVtasConIVA]  DEFAULT (0) FOR [ImpteVtasConIVA]
GO
/****** Object:  Default [DF_TempVtasMesDia_Dia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_Dia]  DEFAULT (0) FOR [Dia]
GO
/****** Object:  Default [DF_TempVtasMesDia_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_Usuario]  DEFAULT ('') FOR [Usuario]
GO
/****** Object:  Default [DF_TempVtasMesDia_NoVentas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_NoVentas]  DEFAULT (0) FOR [NoVentas]
GO
/****** Object:  Default [DF_TempVtasMesDia_Mes]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_Mes]  DEFAULT ('') FOR [Mes]
GO
/****** Object:  Default [DF_TempVtasMesDia_Año]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_Año]  DEFAULT ('') FOR [Año]
GO
/****** Object:  Default [DF_TempVtasMesDia_FechaEsp]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasMesDia] ADD  CONSTRAINT [DF_TempVtasMesDia_FechaEsp]  DEFAULT ('') FOR [FechaEsp]
GO
/****** Object:  Default [DF_TempVtasSinExist_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_TempVtasSinExist_Unidades]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_Unidades]  DEFAULT (0) FOR [Unidades]
GO
/****** Object:  Default [DF_TempVtasSinExist_Tickets]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_Tickets]  DEFAULT (0) FOR [Tickets]
GO
/****** Object:  Default [DF_TempVtasSinExist_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempVtasSinExist_Ult_Vta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_Ult_Vta]  DEFAULT ('1900/01/01') FOR [Ult_Vta]
GO
/****** Object:  Default [DF_TempVtasSinExist_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempVtasSinExist_Maquina]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasSinExist] ADD  CONSTRAINT [DF_TempVtasSinExist_Maquina]  DEFAULT ('') FOR [Maquina]
GO
/****** Object:  Default [DF_TempVtasXDia_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempVtasXDia_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_TempVtasXDia_FolioVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_FolioVenta]  DEFAULT ('') FOR [FolioVenta]
GO
/****** Object:  Default [DF_TempVtasXDia_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_TempVtasXDia_Nom_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Nom_Farmacia]  DEFAULT ('') FOR [Nom_Farmacia]
GO
/****** Object:  Default [DF_TempVtasXDia_Descripcion]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
/****** Object:  Default [DF_TempVtasXDia_Codigo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Codigo]  DEFAULT (0) FOR [Codigo]
GO
/****** Object:  Default [DF_TempVtasXDia_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TempVtasXDia_Nombre]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Nombre]  DEFAULT ('') FOR [Nombre]
GO
/****** Object:  Default [DF_TempVtasXDia_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_TempVtasXDia_Vendedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_TempVtasXDia_SubTotal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_TempVtasXDia_Iva]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_Iva]  DEFAULT (0) FOR [Iva]
GO
/****** Object:  Default [DF_TempVtasXDia_ImpteDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_ImpteDescto]  DEFAULT (0) FOR [ImpteDescto]
GO
/****** Object:  Default [DF_TempVtasXDia_ImpteCaj]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_ImpteCaj]  DEFAULT (0) FOR [ImpteCaj]
GO
/****** Object:  Default [DF_TempVtasXDia_VtaORDevo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_VtaORDevo]  DEFAULT (1) FOR [VtaORDevo]
GO
/****** Object:  Default [DF_TempVtasXDia_DevSinVtas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_DevSinVtas]  DEFAULT ('0') FOR [DevSinVtas]
GO
/****** Object:  Default [DF_TempVtasXDia_TipoVenta_1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_TipoVenta_1]  DEFAULT ('') FOR [TipoVenta]
GO
/****** Object:  Default [DF_TempVtasXDia_TipoDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_TipoDescto]  DEFAULT ('') FOR [TipoDescto]
GO
/****** Object:  Default [DF_TempVtasXDia_ImpteSAD]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXDia] ADD  CONSTRAINT [DF_TempVtasXDia_ImpteSAD]  DEFAULT (0) FOR [ImpteSAD]
GO
/****** Object:  Default [DF_TempVtasXHoras_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempVtasXHoras_CodZona]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_CodZona]  DEFAULT (0) FOR [CodZona]
GO
/****** Object:  Default [DF_TempVtasXHoras_NomZona]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_NomZona]  DEFAULT ('') FOR [NomZona]
GO
/****** Object:  Default [DF_TempVtasXHoras_CodFarma]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_CodFarma]  DEFAULT (0) FOR [CodFarma]
GO
/****** Object:  Default [DF_TempVtasXHoras_NomFarma]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_NomFarma]  DEFAULT ('') FOR [NomFarma]
GO
/****** Object:  Default [DF_TempVtasXHoras_Hora]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_Hora]  DEFAULT (0) FOR [Hora]
GO
/****** Object:  Default [DF_TempVtasXHoras_NoVentas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_NoVentas]  DEFAULT (0) FOR [NoVentas]
GO
/****** Object:  Default [DF_TempVtasXHoras_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TempVtasXHoras_ImpteVtas]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_ImpteVtas]  DEFAULT (0) FOR [ImpteVtas]
GO
/****** Object:  Default [DF_TempVtasXHoras_Devoluciones]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXHoras] ADD  CONSTRAINT [DF_TempVtasXHoras_Devoluciones]  DEFAULT (0) FOR [Devoluciones]
GO
/****** Object:  Default [DF_TempVtasXPto_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TempVtasXPto_Zona]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_Zona]  DEFAULT ('1900/01/01') FOR [FechaVtas]
GO
/****** Object:  Default [DF_TempVtasXPto_NomZona]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_NomZona]  DEFAULT ('') FOR [FolVtaVtas]
GO
/****** Object:  Default [DF_TempVtasXPto_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_Farmacia]  DEFAULT (0) FOR [CantVtas]
GO
/****** Object:  Default [DF_TempVtasXPto_NomFarma]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_NomFarma]  DEFAULT (0) FOR [PrecUnitVtas]
GO
/****** Object:  Default [DF_TempVtasXPto_Vtastotales]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_Vtastotales]  DEFAULT (0) FOR [DesctoVtas]
GO
/****** Object:  Default [DF_TempVtasXPto_Devoluciones]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_Devoluciones]  DEFAULT (0) FOR [ImpteVtas]
GO
/****** Object:  Default [DF_TempVtasXPto_CodProducto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_CodProducto]  DEFAULT ('1900/01/01') FOR [FechaDev]
GO
/****** Object:  Default [DF_TempVtasXPto_NomProducto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_NomProducto]  DEFAULT ('') FOR [FolDev]
GO
/****** Object:  Default [DF_TempVtasXPto_ImpteDevosl]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_ImpteDevosl]  DEFAULT (0) FOR [CantDev]
GO
/****** Object:  Default [DF_TempVtasXPto_CantDevols]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_CantDevols]  DEFAULT (0) FOR [Precunitdev]
GO
/****** Object:  Default [DF_TempVtasXPto_DesctoDev]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_DesctoDev]  DEFAULT (0) FOR [DesctoDev]
GO
/****** Object:  Default [DF_TempVtasXPto_ImpteDev]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TempVtasXPto] ADD  CONSTRAINT [DF_TempVtasXPto_ImpteDev]  DEFAULT (0) FOR [ImpteDev]
GO
/****** Object:  Default [DF_TmpReporteCompras_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TmpReporteCompras_Proveedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Proveedor]  DEFAULT (0) FOR [Proveedor]
GO
/****** Object:  Default [DF_TmpReporteCompras_TipoCompra]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_TipoCompra]  DEFAULT ('') FOR [TipoCompra]
GO
/****** Object:  Default [DF_TmpReporteCompras_FolioCompra]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_FolioCompra]  DEFAULT ('') FOR [FolioCompra]
GO
/****** Object:  Default [DF_TmpReporteCompras_Referencia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Referencia]  DEFAULT ('') FOR [Referencia]
GO
/****** Object:  Default [DF_TmpReporteCompras_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Fecha]  DEFAULT (1900 / 1 / 1) FOR [Fecha]
GO
/****** Object:  Default [DF_TmpReporteCompras_SubTotal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_TmpReporteCompras_Oferta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Oferta]  DEFAULT (0) FOR [Oferta]
GO
/****** Object:  Default [DF_TmpReporteCompras_Financiero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Financiero]  DEFAULT (0) FOR [Financiero]
GO
/****** Object:  Default [DF_TmpReporteCompras_Iva]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Iva]  DEFAULT (0) FOR [Iva]
GO
/****** Object:  Default [DF_TmpReporteCompras_Total]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_Total]  DEFAULT (0) FOR [Total]
GO
/****** Object:  Default [DF_TmpReporteCompras_NotaCredito]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpReporteCompras] ADD  CONSTRAINT [DF_TmpReporteCompras_NotaCredito]  DEFAULT (0) FOR [NotaCredito]
GO
/****** Object:  Default [DF_TmpRepTransImp_Cve_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_Cve_Farmacia]  DEFAULT (0) FOR [Cve_Farmacia]
GO
/****** Object:  Default [DF_TmpRepTransImp_Cve_Movto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_Cve_Movto]  DEFAULT (0) FOR [Cve_Movto]
GO
/****** Object:  Default [DF_TmpRepTransImp_Sucursal_Ref]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_Sucursal_Ref]  DEFAULT (0) FOR [Sucursal_Ref]
GO
/****** Object:  Default [DF_TmpRepTransImp_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TmpRepTransImp_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_TmpRepTransImp_FechaInic]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_FechaInic]  DEFAULT ('1900/01/01') FOR [FechaInic]
GO
/****** Object:  Default [DF_TmpRepTransImp_FechaFin]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_FechaFin]  DEFAULT ('1900/01/01') FOR [FechaFin]
GO
/****** Object:  Default [DF_TmpRepTransImp_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpRepTransImp] ADD  CONSTRAINT [DF_TmpRepTransImp_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TmpTransDetalle_Cve_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Cve_Farmacia]  DEFAULT (0) FOR [Cve_Farmacia]
GO
/****** Object:  Default [DF_TmpTransDetalle_Sucursal_Ref]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Sucursal_Ref]  DEFAULT (0) FOR [Sucursal_Ref]
GO
/****** Object:  Default [DF_TmpTransDetalle_Cve_Movto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Cve_Movto]  DEFAULT (0) FOR [Cve_Movto]
GO
/****** Object:  Default [DF_TmpTransDetalle_Fecha_Movto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Fecha_Movto]  DEFAULT ('1900/01/01') FOR [Fecha_Movto]
GO
/****** Object:  Default [DF_TmpTransDetalle_Cve_Producto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Cve_Producto]  DEFAULT (0) FOR [Cve_Producto]
GO
/****** Object:  Default [DF_TmpTransDetalle_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_TmpTransDetalle_CostoPromedio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_CostoPromedio]  DEFAULT (0) FOR [CostoPromedio]
GO
/****** Object:  Default [DF_TmpTransDetalle_Importe]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Importe]  DEFAULT (0) FOR [Importe]
GO
/****** Object:  Default [DF_TmpTransDetalle_Usuario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_Usuario]  DEFAULT (0) FOR [Usuario]
GO
/****** Object:  Default [DF_TmpTransDetalle_FechaInic]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_FechaInic]  DEFAULT ('1900/01/01') FOR [FechaInic]
GO
/****** Object:  Default [DF_TmpTransDetalle_FechaFin]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[TmpTransDetalle] ADD  CONSTRAINT [DF_TmpTransDetalle_FechaFin]  DEFAULT ('1900/01/01') FOR [FechaFin]
GO
/****** Object:  Default [DF_ValesCab_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_ValesCab_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_ValesCab_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_ValesCab_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_ValesCab_Titular]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Titular]  DEFAULT (0) FOR [Titular]
GO
/****** Object:  Default [DF_ValesCab_Empleado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Empleado]  DEFAULT (0) FOR [Empleado]
GO
/****** Object:  Default [DF_ValesCab_Dependiente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Dependiente]  DEFAULT (0) FOR [Dependiente]
GO
/****** Object:  Default [DF_ValesCab_Estatus]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesCab] ADD  CONSTRAINT [DF_ValesCab_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_ValesDet_Sucursal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Sucursal]  DEFAULT (0) FOR [Sucursal]
GO
/****** Object:  Default [DF_ValesDet_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_ValesDet_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Fecha]  DEFAULT ('1900/01/01') FOR [Fecha]
GO
/****** Object:  Default [DF_ValesDet_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ValesDet_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_ValesDet_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_ValesDet_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_ValesDet_PrecioUnitario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_PrecioUnitario]  DEFAULT (0) FOR [PrecioUnitario]
GO
/****** Object:  Default [DF_ValesDet_PtjDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_PtjDescto]  DEFAULT (0) FOR [PtjDescto]
GO
/****** Object:  Default [DF_ValesDet_Estatus]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_ValesDet_CostoUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_ValesDet_FolioVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_FolioVenta]  DEFAULT ('') FOR [FolioVenta]
GO
/****** Object:  Default [DF_ValesDet_Depto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesDet] ADD  CONSTRAINT [DF_ValesDet_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_ValesEmitidos_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_ValesEmitidos_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_ValesEmitidos_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ValesEmitidos_Fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Fecha]  DEFAULT ('1900-01-01') FOR [Fecha]
GO
/****** Object:  Default [DF_ValesEmitidos_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_ValesEmitidos_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_ValesEmitidos_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_ValesEmitidos_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_ValesEmitidos_PrecioUnitario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_PrecioUnitario]  DEFAULT (0) FOR [PrecioUnitario]
GO
/****** Object:  Default [DF_ValesEmitidos_PtjDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_PtjDescto]  DEFAULT (0) FOR [PtjDescto]
GO
/****** Object:  Default [DF_ValesEmitidos_Titular]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Titular]  DEFAULT (0) FOR [Titular]
GO
/****** Object:  Default [DF_ValesEmitidos_Empleado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Empleado]  DEFAULT (0) FOR [Empleado]
GO
/****** Object:  Default [DF_ValesEmitidos_Dependiente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Dependiente]  DEFAULT (0) FOR [Dependiente]
GO
/****** Object:  Default [DF_ValesEmitidos_Estatus]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_ValesEmitidos_Caja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_ValesEmitidos_CostoUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_ValesEmitidos_Depto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF_ValesEmitidos_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF__ValesEmit__rowgu__562A98F3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesEmitidos] ADD  CONSTRAINT [DF__ValesEmit__rowgu__562A98F3]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_ValesRecibidos_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_ValesRecibidos_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_ValesRecibidos_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_ValesRecibidos_fecha]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_fecha]  DEFAULT ('1900-01-01') FOR [Fecha]
GO
/****** Object:  Default [DF_ValesRecibidos_FolioOrigen]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_FolioOrigen]  DEFAULT ('') FOR [FolioOrigen]
GO
/****** Object:  Default [DF_ValesRecibidos_FarmaciaOrigen]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_FarmaciaOrigen]  DEFAULT (0) FOR [FarmaciaOrigen]
GO
/****** Object:  Default [DF_ValesRecibidos_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_ValesRecibidos_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_ValesRecibidos_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_ValesRecibidos_Cantidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Cantidad]  DEFAULT (0) FOR [Cantidad]
GO
/****** Object:  Default [DF_ValesRecibidos_PrecioUnitario]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_PrecioUnitario]  DEFAULT (0) FOR [PrecioUnitario]
GO
/****** Object:  Default [DF_ValesRecibidos_PtjDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_PtjDescto]  DEFAULT (0) FOR [PtjDescto]
GO
/****** Object:  Default [DF_ValesRecibidos_Estatus]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Estatus]  DEFAULT ('') FOR [Estatus]
GO
/****** Object:  Default [DF_ValesRecibidos_Caja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_ValesRecibidos_CostoUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_ValesRecibidos_Depto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF_ValesRecibidos_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF__ValesReci__rowgu__5071BF9D]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[ValesRecibidos] ADD  CONSTRAINT [DF__ValesReci__rowgu__5071BF9D]  DEFAULT (newid()) FOR [rowguid]
GO
/****** Object:  Default [DF_VenCab_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_VenCab_FechaVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_FechaVenta]  DEFAULT ('1900/01/01') FOR [FechaVenta]
GO
/****** Object:  Default [DF_VenCab_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_VenCab_Vendedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_VenCab_Cliente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Cliente]  DEFAULT (0) FOR [Cliente]
GO
/****** Object:  Default [DF_VenCab_Empleado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Empleado]  DEFAULT (0) FOR [Empleado]
GO
/****** Object:  Default [DF_VenCab_Dependiente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Dependiente]  DEFAULT (0) FOR [Dependiente]
GO
/****** Object:  Default [DF_VenCab_Parentesco]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Parentesco]  DEFAULT ('') FOR [Parentesco]
GO
/****** Object:  Default [DF_VenCab_SubTotal]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_SubTotal]  DEFAULT (0) FOR [SubTotal]
GO
/****** Object:  Default [DF_VenCab_Descuento]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Descuento]  DEFAULT (0) FOR [Descuento]
GO
/****** Object:  Default [DF_VenCab_IVA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_IVA]  DEFAULT (0) FOR [IVA]
GO
/****** Object:  Default [DF_VenCab_CoPago]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_CoPago]  DEFAULT (0) FOR [CoPago]
GO
/****** Object:  Default [DF_VenCab_CambioEfect]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_CambioEfect]  DEFAULT (0) FOR [CambioEfect]
GO
/****** Object:  Default [DF_VenCab_ComisionBan]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_ComisionBan]  DEFAULT (0) FOR [ComisionBan]
GO
/****** Object:  Default [DF_VenCab_ComBanFarma]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_ComBanFarma]  DEFAULT (0) FOR [ComBanFarma]
GO
/****** Object:  Default [DF_VenCab_Redondeo]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Redondeo]  DEFAULT (0) FOR [Redondeo]
GO
/****** Object:  Default [DF_VenCab_PagoComision]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_PagoComision]  DEFAULT (0) FOR [PagoComision]
GO
/****** Object:  Default [DF_VenCab_Status]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_VenCab_ReferPedido]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_ReferPedido]  DEFAULT ('') FOR [ReferPedido]
GO
/****** Object:  Default [DF_VenCab_TipoPrecio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_TipoPrecio]  DEFAULT ('') FOR [TipoPrecio]
GO
/****** Object:  Default [DF_VenCab_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_VenCab_TipoVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_TipoVenta]  DEFAULT ('') FOR [TipoVenta]
GO
/****** Object:  Default [DF_VenCab_FolFacturaInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_FolFacturaInt]  DEFAULT ('') FOR [FolFacturaInt]
GO
/****** Object:  Default [DF_VenCab_FolFacturaIni]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_FolFacturaIni]  DEFAULT ('') FOR [FolFacturaIni]
GO
/****** Object:  Default [DF_VenCab_FolFacturaFin]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_FolFacturaFin]  DEFAULT ('') FOR [FolFacturaFin]
GO
/****** Object:  Default [DF_VenCab_CajeroFactura]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_CajeroFactura]  DEFAULT (0) FOR [CajeroFactura]
GO
/****** Object:  Default [DF_VenCab_RFCClienteFact]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_RFCClienteFact]  DEFAULT ('') FOR [RFCClienteFact]
GO
/****** Object:  Default [DF_VenCab_FechaFactura]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_FechaFactura]  DEFAULT ('1900/01/01') FOR [FechaFactura]
GO
/****** Object:  Default [DF_VenCab_ImpteSAD]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_ImpteSAD]  DEFAULT (0) FOR [ImpteSAD]
GO
/****** Object:  Default [DF_VenCab_ImpteIVASAD]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_ImpteIVASAD]  DEFAULT (0) FOR [ImpteIVASAD]
GO
/****** Object:  Default [DF_VenCab_Caja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_VenCab_Label1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label1]  DEFAULT ('') FOR [Label1]
GO
/****** Object:  Default [DF_VenCab_Label2]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label2]  DEFAULT ('') FOR [Label2]
GO
/****** Object:  Default [DF_VenCab_Label3]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label3]  DEFAULT ('') FOR [Label3]
GO
/****** Object:  Default [DF_VenCab_Label4]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label4]  DEFAULT ('') FOR [Label4]
GO
/****** Object:  Default [DF_VenCab_Label5]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label5]  DEFAULT ('') FOR [Label5]
GO
/****** Object:  Default [DF_VenCab_Label6]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label6]  DEFAULT ('') FOR [Label6]
GO
/****** Object:  Default [DF_VenCab_Label7]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label7]  DEFAULT ('') FOR [Label7]
GO
/****** Object:  Default [DF_VenCab_Label8]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label8]  DEFAULT ('') FOR [Label8]
GO
/****** Object:  Default [DF_VenCab_Label9]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label9]  DEFAULT ('') FOR [Label9]
GO
/****** Object:  Default [DF_VenCab_Label10]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label10]  DEFAULT ('') FOR [Label10]
GO
/****** Object:  Default [DF_VenCab_Label11]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label11]  DEFAULT ('') FOR [Label11]
GO
/****** Object:  Default [DF_VenCab_Label12]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label12]  DEFAULT ('') FOR [Label12]
GO
/****** Object:  Default [DF_VenCab_Label13]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label13]  DEFAULT ('') FOR [Label13]
GO
/****** Object:  Default [DF_VenCab_Label14]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label14]  DEFAULT ('') FOR [Label14]
GO
/****** Object:  Default [DF_VenCab_Label15]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_Label15]  DEFAULT ('') FOR [Label15]
GO
/****** Object:  Default [DF_VenCab_FechaVtaSinHora]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenCab] ADD  CONSTRAINT [DF_VenCab_FechaVtaSinHora]  DEFAULT ('1900/01/01') FOR [FechaVtaSinHora]
GO
/****** Object:  Default [DF_VenDet_Folio]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Folio]  DEFAULT ('') FOR [Folio]
GO
/****** Object:  Default [DF_VenDet_Renglon]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Renglon]  DEFAULT (0) FOR [Renglon]
GO
/****** Object:  Default [DF_VenDet_FechaVenta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_FechaVenta]  DEFAULT ('') FOR [FechaVenta]
GO
/****** Object:  Default [DF_VenDet_Cajero]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Cajero]  DEFAULT (0) FOR [Cajero]
GO
/****** Object:  Default [DF_VenDet_Vendedor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Vendedor]  DEFAULT (0) FOR [Vendedor]
GO
/****** Object:  Default [DF_VenDet_CodigoEAN]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_CodigoEAN]  DEFAULT ('') FOR [CodigoEAN]
GO
/****** Object:  Default [DF_VenDet_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_VenDet_Cant_Vend]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Cant_Vend]  DEFAULT (0) FOR [Cant_Vend]
GO
/****** Object:  Default [DF_VenDet_Cant_Dev]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Cant_Dev]  DEFAULT (0) FOR [Cant_Dev]
GO
/****** Object:  Default [DF_VenDet_PrecioUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_PrecioUnit]  DEFAULT (0) FOR [PrecioUnit]
GO
/****** Object:  Default [DF_VenDet_ImpteIVA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_ImpteIVA]  DEFAULT (0) FOR [ImpteIVA]
GO
/****** Object:  Default [DF_VenDet_TasaIVA]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_TasaIVA]  DEFAULT (0) FOR [TasaIVA]
GO
/****** Object:  Default [DF_VenDet_PorcDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_PorcDescto]  DEFAULT (0) FOR [PorcDescto]
GO
/****** Object:  Default [DF_VenDet_ImpteDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_ImpteDescto]  DEFAULT (0) FOR [ImpteDescto]
GO
/****** Object:  Default [DF_VenDet_ComisionVend]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_ComisionVend]  DEFAULT (0) FOR [ComisionVend]
GO
/****** Object:  Default [DF_VenDet_Facturado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Facturado]  DEFAULT ('') FOR [Facturado]
GO
/****** Object:  Default [DF_VenDet_CostoUnit]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_CostoUnit]  DEFAULT (0) FOR [CostoUnit]
GO
/****** Object:  Default [DF_VenDet_Depto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Depto]  DEFAULT (0) FOR [Depto]
GO
/****** Object:  Default [DF_VenDet_Cliente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Cliente]  DEFAULT (0) FOR [Cliente]
GO
/****** Object:  Default [DF_VenDet_Empleado]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Empleado]  DEFAULT (0) FOR [Empleado]
GO
/****** Object:  Default [DF_VenDet_Dependiente]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Dependiente]  DEFAULT (0) FOR [Dependiente]
GO
/****** Object:  Default [DF_VenDet_Parentesco_1]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Parentesco_1]  DEFAULT ('') FOR [Parentesco]
GO
/****** Object:  Default [DF_VenDet_CodDoctor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_CodDoctor]  DEFAULT (0) FOR [CodDoctor]
GO
/****** Object:  Default [DF_VenDet_NomDoctor]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_NomDoctor]  DEFAULT ('') FOR [NomDoctor]
GO
/****** Object:  Default [DF_VenDet_Status]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Status]  DEFAULT ('') FOR [Status]
GO
/****** Object:  Default [DF_VenDet_Farmacia]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Farmacia]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  Default [DF_VenDet_TipoDescto]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_TipoDescto]  DEFAULT ('') FOR [TipoDescto]
GO
/****** Object:  Default [DF_VenDet_Unidad]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Unidad]  DEFAULT (0) FOR [Unidad]
GO
/****** Object:  Default [DF_VenDet_ImpteCopago]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_ImpteCopago]  DEFAULT (0) FOR [ImpteCopago]
GO
/****** Object:  Default [DF_VenDet_FolFacturaInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_FolFacturaInt]  DEFAULT ('') FOR [FolFacturaInt]
GO
/****** Object:  Default [DF_VenDet_FolFactura]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_FolFactura]  DEFAULT ('') FOR [FolFactura]
GO
/****** Object:  Default [DF_VenDet_Caja]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_Caja]  DEFAULT (0) FOR [Caja]
GO
/****** Object:  Default [DF_VenDet_FechaVtaSinHora]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_FechaVtaSinHora]  DEFAULT ('1900/01/01') FOR [FechaVtaSinHora]
GO
/****** Object:  Default [DF_VenDet_FolioReceta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_FolioReceta]  DEFAULT ('') FOR [FolioReceta]
GO
/****** Object:  Default [DF_VenDet_StatusReceta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet] ADD  CONSTRAINT [DF_VenDet_StatusReceta]  DEFAULT ('') FOR [StatusReceta]
GO
/****** Object:  Default [DF_VentaFechas_FechaVta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaFechas] ADD  CONSTRAINT [DF_VentaFechas_FechaVta]  DEFAULT ('1900-01-01') FOR [FechaVta]
GO
/****** Object:  Default [DF_VentaOptimoCalculado_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimoCalculado] ADD  CONSTRAINT [DF_VentaOptimoCalculado_CodigoInt]  DEFAULT ('') FOR [CodigoInt]
GO
/****** Object:  Default [DF_VentaOptimoCalculado_Media]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimoCalculado] ADD  CONSTRAINT [DF_VentaOptimoCalculado_Media]  DEFAULT (0.00) FOR [Media]
GO
/****** Object:  Default [DF_VentaOptimoCalculado_DesvSt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimoCalculado] ADD  CONSTRAINT [DF_VentaOptimoCalculado_DesvSt]  DEFAULT (0.00) FOR [DesvSt]
GO
/****** Object:  Default [DF_VentaOptimoCalculado_Moda]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimoCalculado] ADD  CONSTRAINT [DF_VentaOptimoCalculado_Moda]  DEFAULT (0.00) FOR [Moda]
GO
/****** Object:  Default [DF_VentaOptimos_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimos] ADD  CONSTRAINT [DF_VentaOptimos_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_VentaOptimos_FechaVta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimos] ADD  CONSTRAINT [DF_VentaOptimos_FechaVta]  DEFAULT ('1900-01-01') FOR [FechaVta]
GO
/****** Object:  Default [DF_VentaOptimos_Unidades]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaOptimos] ADD  CONSTRAINT [DF_VentaOptimos_Unidades]  DEFAULT (0.00) FOR [Unidades]
GO
/****** Object:  Default [DF_VentaProductos_CodigoInt]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaProductos] ADD  CONSTRAINT [DF_VentaProductos_CodigoInt]  DEFAULT (0) FOR [CodigoInt]
GO
/****** Object:  Default [DF_VentaProductos_FechaVta]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaProductos] ADD  CONSTRAINT [DF_VentaProductos_FechaVta]  DEFAULT ('1900-01-01') FOR [FechaVta]
GO
/****** Object:  Default [DF_VentaProductos_Unidades]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VentaProductos] ADD  CONSTRAINT [DF_VentaProductos_Unidades]  DEFAULT (0.00) FOR [Unidades]
GO
/****** Object:  Default [DF__VerificaP__Folio__4FDD8E17]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VerificaPedidos] ADD  CONSTRAINT [DF__VerificaP__Folio__4FDD8E17]  DEFAULT ('') FOR [FolioPedido]
GO
/****** Object:  Default [DF__VerificaP__Farma__50D1B250]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VerificaPedidos] ADD  CONSTRAINT [DF__VerificaP__Farma__50D1B250]  DEFAULT (0) FOR [Farmacia]
GO
/****** Object:  ForeignKey [FK_CabSAD_CtesLocales]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[CabSAD]  WITH NOCHECK ADD  CONSTRAINT [FK_CabSAD_CtesLocales] FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[CtesLocales] ([Cve_CteLocal])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CabSAD] NOCHECK CONSTRAINT [FK_CabSAD_CtesLocales]
GO
/****** Object:  ForeignKey [FK_DetSaD_CabSAD]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DetSaD]  WITH CHECK ADD  CONSTRAINT [FK_DetSaD_CabSAD] FOREIGN KEY([Folio])
REFERENCES [dbo].[CabSAD] ([Folio])
GO
ALTER TABLE [dbo].[DetSaD] CHECK CONSTRAINT [FK_DetSaD_CabSAD]
GO
/****** Object:  ForeignKey [FK_DevolDet_DevolCab]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[DevolDet]  WITH CHECK ADD  CONSTRAINT [FK_DevolDet_DevolCab] FOREIGN KEY([Folio], [Farmacia])
REFERENCES [dbo].[DevolCab] ([Folio], [Farmacia])
GO
ALTER TABLE [dbo].[DevolDet] CHECK CONSTRAINT [FK_DevolDet_DevolCab]
GO
/****** Object:  ForeignKey [FK_MovAlmDet_MovAlmCab]    Script Date: 08/09/2013 15:06:24 ******/
ALTER TABLE [dbo].[MovAlmDet]  WITH CHECK ADD  CONSTRAINT [FK_MovAlmDet_MovAlmCab] FOREIGN KEY([Cve_Farmacia], [Folio_Movto], [Fecha_Movto], [Cve_Movto])
REFERENCES [dbo].[MovAlmCab] ([Cve_Farmacia], [Folio_Movto], [Fecha_Movto], [Cve_Movto])
GO
ALTER TABLE [dbo].[MovAlmDet] CHECK CONSTRAINT [FK_MovAlmDet_MovAlmCab]
GO
/****** Object:  ForeignKey [FK_VenDet_VenCab]    Script Date: 08/09/2013 15:06:25 ******/
ALTER TABLE [dbo].[VenDet]  WITH CHECK ADD  CONSTRAINT [FK_VenDet_VenCab] FOREIGN KEY([Folio])
REFERENCES [dbo].[VenCab] ([Folio])
GO
ALTER TABLE [dbo].[VenDet] CHECK CONSTRAINT [FK_VenDet_VenCab]
GO
