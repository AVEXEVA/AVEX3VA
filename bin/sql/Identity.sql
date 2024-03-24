USE [ts-to-sf]
GO

/****** Object:  Table [dbo].[Identity]    Script Date: 1/5/2022 2:03:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Identity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Out_Service] [int] NOT NULL,
	[Out_Table] [int] NOT NULL,
	[Out_Column] [int] NULL,
	[Out_Value] [varchar](max) NULL,
	[In_Service] [int] NOT NULL,
	[In_Table] [int] NOT NULL,
	[In_Column] [int] NULL,
	[In_Value] [varchar](max) NULL,
	[Priority] [int] NULL,
	[Type] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO