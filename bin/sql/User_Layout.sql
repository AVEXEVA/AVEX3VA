USE [Interface]
GO

/****** Object:  Table [dbo].[User_Layout]    Script Date: 1/5/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User_Layout](
	[User] [int] NOT NULL,
	[Layout] [int] NOT NULL,
	[Default] [bit] NOT NULL
) ON [PRIMARY]
GO


