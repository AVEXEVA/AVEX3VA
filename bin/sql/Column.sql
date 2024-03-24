USE [ts-to-sf]
GO

/****** Object:  Table [dbo].[Column]    Script Date: 1/5/2022 2:03:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Column](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Table] [varchar](255) NOT NULL,
	[Name] [varchar](255) NULL,
	[Datatype] [varchar](255) NULL,
	[Default] [varchar](255) NULL,
	[Position] [int] NULL,
	[Nullable] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO