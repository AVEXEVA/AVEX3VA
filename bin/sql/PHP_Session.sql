USE [ts-to-sf]
GO

/****** Object:  Table [dbo].[PHP_Session]    Script Date: 1/5/2022 2:04:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PHP_Session](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IP] [varchar](255) NULL,
	[Agent] [varchar](255) NULL,
	[Timestamp] [datetime] NULL,
	[User] [int] NULL
) ON [PRIMARY]
GO