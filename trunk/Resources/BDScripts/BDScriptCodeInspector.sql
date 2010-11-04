--Sctipt de Criação das tabelas do banco de dados do AppCodeInspector


--Drop da tabela HistoricoUsuario caso já exista.  

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HistoricoUsuario_HistoricoUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[HistoricoUsuario]'))
	ALTER TABLE [dbo].[HistoricoUsuario] DROP CONSTRAINT [FK_HistoricoUsuario_HistoricoUsuario]
	GO

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoUsuario]') AND type in (N'U'))
	DROP TABLE [dbo].[HistoricoUsuario]
	GO

	USE [CodeInspector]
	GO


	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

--Criação da tabela HistoricoUsuario. 

	CREATE TABLE [dbo].[HistoricoUsuario](
		[IdHistorico] [int] NOT NULL,
		[IdUsuario] [int] NOT NULL,
		[IdQuestao] [int] NOT NULL,
		[QtdAcertos] [int] NULL,
		[QtdErros] [int] NULL,
	 CONSTRAINT [PK_HistoricoUsuario] PRIMARY KEY CLUSTERED 
	(
		[IdHistorico] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	GO

	ALTER TABLE [dbo].[HistoricoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_HistoricoUsuario_HistoricoUsuario] FOREIGN KEY([IdHistorico])
	REFERENCES [dbo].[HistoricoUsuario] ([IdHistorico])
	GO

	ALTER TABLE [dbo].[HistoricoUsuario] CHECK CONSTRAINT [FK_HistoricoUsuario_HistoricoUsuario]
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

	CREATE TABLE [dbo].[Questao](
		[IdQuestao] [int] NOT NULL,
		[NivelDificuldade] [int] NOT NULL,
		[XmlQuestao] [text] NULL,
		[Tempo] [int] NULL
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	GO
	
	
--Drop da tabela StatusUsuario caso já exista.
	
	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusUsuario]') AND type in (N'U'))
	DROP TABLE [dbo].[StatusUsuario]
	GO

	USE [CodeInspector]
	GO

--Criação da tabela StatusUsuario.

	CREATE TABLE [dbo].[StatusUsuario](
		[IdStatus] [int] NOT NULL,
		[IdUsuario] [int] NOT NULL,
		[Pontuacao] [int] NOT NULL,
		[DataInsercao] [datetime] NOT NULL,
		[NivilDificuldade] [int] NOT NULL
	) ON [PRIMARY]

	GO
	
	
--Drop da tabela Usuario caso já exista.

	USE [CodeInspector]
	GO

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
	DROP TABLE [dbo].[Usuario]
	GO

	USE [CodeInspector]
	GO

--Criação da tabela Usuario.

	CREATE TABLE [dbo].[Usuario](
		[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
		[Nome] [nvarchar](30) NULL,
		[Email] [nvarchar](25) NOT NULL,
		[Senha] [nvarchar](10) NOT NULL,
		[Login] [nvarchar](15) NULL,
	 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
	(
		[IdUsuario] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	GO



