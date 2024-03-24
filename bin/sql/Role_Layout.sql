USE [Interface]
GO

/****** Object:  Table [dbo].[Role_Layout]    Script Date: 1/5/2022 1:09:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Role_Layout](
	[Role] [int] NOT NULL,
	[Layout] [int] NOT NULL,
	[Default] [bit] NOT NULL,
	[Locked] [bit] NOT NULL
) ON [PRIMARY]
GO


