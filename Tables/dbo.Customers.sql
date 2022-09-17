CREATE TABLE [dbo].[Customers]
(
[CustomerId] [smallint] NOT NULL,
[FirstName] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Surname] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Email_Address] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[City] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Mailbox] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerId]) ON [PRIMARY]
GO
