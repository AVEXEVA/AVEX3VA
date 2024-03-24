USE [Interface]
GO

/****** Object:  Table [dbo].[Criteria_Junction]    Script Date: 1/5/2022 1:08:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Criteria_Junction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Filter] [int] NOT NULL,
	[Parent] [int] NULL,
	[Left] [int] NOT NULL,
	[Left_Leaf] [bit] NOT NULL,
	[Right] [int] NULL,
	[Right_Leaf] [bit] NOT NULL,
	[Operator] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Criteria_Junction] ADD  DEFAULT (NULL) FOR [Parent]
GO

ALTER TABLE [dbo].[Criteria_Junction] ADD  DEFAULT ((1)) FOR [Left_Leaf]
GO

ALTER TABLE [dbo].[Criteria_Junction] ADD  DEFAULT (NULL) FOR [Right]
GO

ALTER TABLE [dbo].[Criteria_Junction] ADD  DEFAULT ((1)) FOR [Right_Leaf]
GO

ALTER TABLE [dbo].[Criteria_Junction] ADD  DEFAULT (NULL) FOR [Operator]
GO


