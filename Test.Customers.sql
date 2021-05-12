USE [MKTEST]
GO
/****** Object:  Table [Test].[Customers]    Script Date: 5/12/2021 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Test].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_TestCustomers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Test].[Customers] ADD  CONSTRAINT [DF_Customers_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [Test].[Customers] ADD  CONSTRAINT [DF_Customers_Created]  DEFAULT (getdate()) FOR [Created]
GO
