/****** Creating Genre Table   Script Date: 14-06-2023 23:00:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Genre](
	[Genre_id] [int] NOT NULL,
	[Genre_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genre_id] PRIMARY KEY CLUSTERED 
(
	[Genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Creating Movies Table    Script Date: 14-06-2023 23:01:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movies](
	[Movie_id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Release_date] [date] NOT NULL,
	[Genre_id] [int] NOT NULL,
	[Director] [varchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Movie_id] PRIMARY KEY CLUSTERED 
(
	[Movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Genre_id] FOREIGN KEY([Genre_id])
REFERENCES [dbo].[Genre] ([Genre_id])
GO

ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Genre_id]
GO


/****** Creating Collections Table    Script Date: 14-06-2023 23:02:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Collections](
	[Movie_id] [int] NOT NULL,
	[Budget] [int] NOT NULL,
	[Gross_Worldwide] [int] NOT NULL,
	[net_profit] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Collections]  WITH CHECK ADD  CONSTRAINT [FK_Movie_id] FOREIGN KEY([Movie_id])
REFERENCES [dbo].[Movies] ([Movie_id])
GO

ALTER TABLE [dbo].[Collections] CHECK CONSTRAINT [FK_Movie_id]
GO
