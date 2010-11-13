--Sctipt de Criação das tabelas do banco de dados do AppCodeInspector


--Drop da tabela Usuario caso já exista.  

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
	DROP TABLE [dbo].[Usuario]
	GO

	USE [CodeInspector]
	GO

	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

	SET ANSI_PADDING ON
	GO

--Criação da tabela Usuario. 

	CREATE TABLE [dbo].[Usuario](
		[U_ID] [int] IDENTITY(1,1) NOT NULL,
		[U_NOME] [varchar](50) NULL,
		[U_EMAIL] [varchar](50) NULL,
		[U_SENHA] [varchar](15) NULL,
		[U_LOGIN] [varchar](50) NULL,
	 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
	(
		[U_ID] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	GO

	SET ANSI_PADDING OFF
	GO

--Drop da tabela Questão caso já exista. 

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Questao]') AND type in (N'U'))
	DROP TABLE [dbo].[Questao]
	GO

	USE [CodeInspector]
	GO

--Criação da tabela Questao. 

	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

	CREATE TABLE [dbo].[Questao](
		[Q_ID] [int] IDENTITY(1,1) NOT NULL,
		[Q_NIVEL_DIFICULDADE] [int] NULL,
		[Q_XML] [ntext] NULL,
		[Q_TEMPO] [int] NULL,
	 CONSTRAINT [PK_Questao] PRIMARY KEY CLUSTERED 
	(
		[Q_ID] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	GO
	
	
--Drop da tabela Partida e sua chavez estrangeiras caso já existam.
	
	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partida_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partida]'))
	ALTER TABLE [dbo].[Partida] DROP CONSTRAINT [FK_Partida_Usuario]
	GO

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partida]') AND type in (N'U'))
	DROP TABLE [dbo].[Partida]
	GO

	USE [CodeInspector]
	GO

	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

--Criação da tabela Partida.

	CREATE TABLE [dbo].[Partida](
		[P_ID] [int] IDENTITY(1,1) NOT NULL,
		[U_ID] [int] NULL,
		[P_DATA] [datetime] NULL,
		[P_NIVEL_DIFICULDADE] [int] NULL,
	 CONSTRAINT [PK_Partida] PRIMARY KEY CLUSTERED 
	(
		[P_ID] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	GO

	ALTER TABLE [dbo].[Partida]  WITH CHECK ADD  CONSTRAINT [FK_Partida_Usuario] FOREIGN KEY([U_ID])
	REFERENCES [dbo].[Usuario] ([U_ID])
	GO

	ALTER TABLE [dbo].[Partida] CHECK CONSTRAINT [FK_Partida_Usuario]
	GO

	
	
--Drop da tabela Historico_Questao e suas chavez estrangeiras caso já existam.

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Historico_Questao_Historico_Questao]') AND parent_object_id = OBJECT_ID(N'[dbo].[Historico_Questao]'))
	ALTER TABLE [dbo].[Historico_Questao] DROP CONSTRAINT [FK_Historico_Questao_Historico_Questao]
	GO

	IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Historico_Questao_Questao]') AND parent_object_id = OBJECT_ID(N'[dbo].[Historico_Questao]'))
	ALTER TABLE [dbo].[Historico_Questao] DROP CONSTRAINT [FK_Historico_Questao_Questao]
	GO

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Historico_Questao]') AND type in (N'U'))
	DROP TABLE [dbo].[Historico_Questao]
	GO

	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

--Criação da tabela Historico_Questao.

	CREATE TABLE [dbo].[Historico_Questao](
		[H_ID] [int] IDENTITY(1,1) NOT NULL,
		[P_ID] [int] NULL,
		[Q_ID] [int] NULL,
		[H_QTD_ACERTO] [int] NULL,
		[H_QTD_ERRO] [int] NULL,
	 CONSTRAINT [PK_Historico_Questao] PRIMARY KEY CLUSTERED 
	(
		[H_ID] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	GO

	ALTER TABLE [dbo].[Historico_Questao]  WITH CHECK ADD  CONSTRAINT [FK_Historico_Questao_Historico_Questao] FOREIGN KEY([H_ID])
	REFERENCES [dbo].[Historico_Questao] ([H_ID])
	GO

	ALTER TABLE [dbo].[Historico_Questao] CHECK CONSTRAINT [FK_Historico_Questao_Historico_Questao]
	GO

	ALTER TABLE [dbo].[Historico_Questao]  WITH CHECK ADD  CONSTRAINT [FK_Historico_Questao_Questao] FOREIGN KEY([Q_ID])
	REFERENCES [dbo].[Questao] ([Q_ID])
	GO

	ALTER TABLE [dbo].[Historico_Questao] CHECK CONSTRAINT [FK_Historico_Questao_Questao]
	GO




