USE [pogym]
GO

/****** Object:  Table [dbo].[attacks_charge]    Script Date: 06/11/2016 16:20:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[attacks_charge](
	[attack_id] [int] NOT NULL,
	[charge] [int] NOT NULL,
 CONSTRAINT [PK_attacks_charge] PRIMARY KEY CLUSTERED 
(
	[attack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[attacks_charge]  WITH CHECK ADD  CONSTRAINT [FK_attacks_charge_attacks] FOREIGN KEY([attack_id])
REFERENCES [dbo].[attacks] ([attack_id])
GO

ALTER TABLE [dbo].[attacks_charge] CHECK CONSTRAINT [FK_attacks_charge_attacks]
GO


