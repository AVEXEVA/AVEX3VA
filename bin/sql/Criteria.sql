USE [Interface]
GO

/****** Object:  Table [dbo].[Criteria]    Script Date: 1/5/2022 1:07:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Criteria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Object] [varchar](255) NOT NULL,
	[Column] [varchar](255) NOT NULL,
	[Operator] [varchar](255) NOT NULL,
	[Value] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


