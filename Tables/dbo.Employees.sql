CREATE TABLE [dbo].[Employees]
(
[EmployeeId] [tinyint] NOT NULL,
[FirstName] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Surname] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Employment_date] [date] NOT NULL,
[Login] [nvarchar] (50) COLLATE Polish_CI_AS NOT NULL,
[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeId]) ON [PRIMARY]
GO
