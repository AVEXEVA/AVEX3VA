USE [Interface]
GO

/****** Object:  Table [dbo].[Layout]    Script Date: 1/5/2022 1:08:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Layout](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tab] [int] NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [text] NULL,
	[Default] [bit] NOT NULL,
	[Locked] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


