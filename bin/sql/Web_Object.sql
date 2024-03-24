USE [Interface]
GO

/****** Object:  Table [dbo].[Web_Object]    Script Date: 1/5/2022 1:10:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Web_Object](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Object] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [text] NULL,
	[File] [varchar](255) NULL,
	[Directory] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


