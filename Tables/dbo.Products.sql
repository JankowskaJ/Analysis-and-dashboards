CREATE TABLE [dbo].[Products]
(
[ProductId] [tinyint] NOT NULL,
[Name] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Size] [tinyint] NOT NULL,
[Price] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId]) ON [PRIMARY]
GO
