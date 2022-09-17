CREATE TABLE [dbo].[Orders]
(
[OrderId] [smallint] NOT NULL,
[ProductId] [tinyint] NOT NULL,
[Quantity] [tinyint] NOT NULL,
[Date] [date] NOT NULL,
[CustomerId] [smallint] NOT NULL,
[EmployeeId] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId])
GO
