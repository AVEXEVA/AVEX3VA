USE [Interface]
GO

/****** Object:  Table [dbo].[Grid]    Script Date: 1/5/2022 1:08:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grid](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Layout] [int] NOT NULL,
	[Column] [int] NOT NULL,
	[Row] [int] NOT NULL,
	[Web_Object] [int] NOT NULL,
	[Height] [varchar](255) NULL,
	[Width] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


