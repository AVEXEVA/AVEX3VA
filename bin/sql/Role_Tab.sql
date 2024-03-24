USE [Interface]
GO

/****** Object:  Table [dbo].[Role_Tab]    Script Date: 1/5/2022 1:09:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Role_Tab](
	[Role] [int] NOT NULL,
	[Tab] [int] NOT NULL,
	[Default] [bit] NOT NULL,
	[Locked] [bit] NOT NULL
) ON [PRIMARY]
GO


