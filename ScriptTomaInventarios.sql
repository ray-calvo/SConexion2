if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec1]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec2]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec3]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec3]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec4]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec4]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec5]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec5]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec6]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec6]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec7]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec7]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec8]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec8]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec9]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec9]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TomaInveLec10]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TomaInveLec10]
GO

CREATE TABLE [dbo].[TomaInveLec1] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TomaInveLec2] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TomaInveLec3] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TomaInveLec4] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TomaInveLec5] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TomaInveLec6] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TomaInveLec7] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TomaInveLec8] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TomaInveLec9] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TomaInveLec10] (
	[Id] [int] identity (1,1) primary key,
	[CodigoInt] [int],
	[CodigoEan] [char] (15)  ,
	[Descripcion] [char] (100)  ,
	[Cantidad] [int] 
) ON [PRIMARY]
GO

