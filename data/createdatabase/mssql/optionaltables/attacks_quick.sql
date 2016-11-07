USE [pogym]
GO

/****** Object:  Table [dbo].[attacks_quick]    Script Date: 06/11/2016 16:20:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[attacks_quick](
	[attack_id] [int] NOT NULL,
	[energyps] [decimal](18, 2) NOT NULL,
	[energypu] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_attacks_quick] PRIMARY KEY CLUSTERED 
(
	[attack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[attacks_quick]  WITH CHECK ADD  CONSTRAINT [FK_attacks_quick_attacks] FOREIGN KEY([attack_id])
REFERENCES [dbo].[attacks] ([attack_id])
GO

ALTER TABLE [dbo].[attacks_quick] CHECK CONSTRAINT [FK_attacks_quick_attacks]
GO


