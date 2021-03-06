USE [BeautyWay]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[idComment] [int] IDENTITY(1,1) NOT NULL,
	[idUser] [int] NOT NULL,
	[idPost] [int] NOT NULL,
	[dateComment] [date] NOT NULL,
	[imageComment] [varbinary](max) NULL,
	[statusComment] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUsers](
	[idUser] [int] NOT NULL,
	[phoneUser] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[idFavorite] [int] IDENTITY(1,1) NOT NULL,
	[idUserCustomer] [int] NOT NULL,
	[idUserProfessional] [int] NOT NULL,
	[statusFavorite] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[idLike] [int] IDENTITY(1,1) NOT NULL,
	[idUser] [int] NOT NULL,
	[idPost] [int] NOT NULL,
	[date] [date] NOT NULL,
	[typeOfLike] [int] NOT NULL,
	[statusLike] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Posts](
	[idPost] [int] NOT NULL,
	[idTypeOfPost] [int] NOT NULL,
	[idProfessional] [int] NOT NULL,
	[datePost] [date] NOT NULL,
	[textPost] [nvarchar](max) NOT NULL,
	[imagePost] [image] NULL,
	[videoPost] [varbinary](max) NULL,
	[audioPost] [varbinary](max) NULL,
	[statusPost] [int] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[idPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusComment](
	[idStatusComment] [int] IDENTITY(1,1) NOT NULL,
	[nameStatusComment] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_StatusComment] PRIMARY KEY CLUSTERED 
(
	[idStatusComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusFavorite](
	[idStatusFavorite] [int] IDENTITY(1,1) NOT NULL,
	[nameStatusFavorite] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_StatusFavorite] PRIMARY KEY CLUSTERED 
(
	[idStatusFavorite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusLike](
	[idStatusLike] [int] IDENTITY(1,1) NOT NULL,
	[nameStatusLike] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_StatusLike] PRIMARY KEY CLUSTERED 
(
	[idStatusLike] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusPost](
	[idStatusPost] [int] IDENTITY(1,1) NOT NULL,
	[nameStatusPost] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_StatusPost] PRIMARY KEY CLUSTERED 
(
	[idStatusPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusUsers](
	[idStatusUser] [int] IDENTITY(1,1) NOT NULL,
	[nameStatus] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_StatusUsers] PRIMARY KEY CLUSTERED 
(
	[idStatusUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfLike](
	[idTypeOfLike] [int] IDENTITY(1,1) NOT NULL,
	[nameTypeOfLike] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TypeOfLike] PRIMARY KEY CLUSTERED 
(
	[idTypeOfLike] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfPost](
	[idTypeOfPost] [int] IDENTITY(1,1) NOT NULL,
	[nameTypeOfPost] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfPost] PRIMARY KEY CLUSTERED 
(
	[idTypeOfPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeUsers](
	[idTypeOfUser] [int] IDENTITY(1,1) NOT NULL,
	[nameType] [nchar](10) NULL,
 CONSTRAINT [PK_TypeUsers] PRIMARY KEY CLUSTERED 
(
	[idTypeOfUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicationUsers](
	[idUser] [int] NOT NULL,
	[street] [nvarchar](50) NOT NULL,
	[numeration] [nvarchar](50) NULL,
	[flat] [nvarchar](50) NULL,
	[apartment] [nvarchar](50) NOT NULL,
	[neighborhood] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[emailUser] [varchar](100) NOT NULL,
	[passwordUser] [nvarchar](8) NOT NULL,
	[typeOfUser] [int] NOT NULL,
	[statusUser] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersCustomers](
	[idCustomer] [int] IDENTITY(1,1) NOT NULL,
	[idTypeOfUser] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[nameCustomer] [nvarchar](50) NOT NULL,
	[lastnameCustomer] [nvarchar](50) NOT NULL,
	[nroIdentification] [nvarchar](10) NOT NULL,
	[genereCustomer] [nvarchar](15) NOT NULL,
	[photoCustomer] [image] NOT NULL,
 CONSTRAINT [PK_UsersCustomers] PRIMARY KEY CLUSTERED 
(
	[idCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersProfessionals](
	[idProfessional] [int] IDENTITY(1,1) NOT NULL,
	[idTypeOfUser] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[nameCompany] [nvarchar](50) NOT NULL,
	[nameProfessional] [nvarchar](30) NOT NULL,
	[lastnameProfessional] [nvarchar](30) NOT NULL,
	[genereProfessional] [nvarchar](20) NOT NULL,
	[modality] [nvarchar](20) NOT NULL,
	[workingDay] [nvarchar](30) NOT NULL,
	[workingHours] [nvarchar](30) NOT NULL,
	[photoProfessional] [image] NOT NULL,
 CONSTRAINT [PK_UsersProfessionals] PRIMARY KEY CLUSTERED 
(
	[idProfessional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Posts] FOREIGN KEY([idPost])
REFERENCES [dbo].[Posts] ([idPost])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Posts]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_StatusComment] FOREIGN KEY([statusComment])
REFERENCES [dbo].[StatusComment] ([idStatusComment])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_StatusComment]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Users]
GO
ALTER TABLE [dbo].[ContactUsers]  WITH CHECK ADD  CONSTRAINT [FK_ContactUsers_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[ContactUsers] CHECK CONSTRAINT [FK_ContactUsers_Users]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_StatusFavorite] FOREIGN KEY([statusFavorite])
REFERENCES [dbo].[StatusFavorite] ([idStatusFavorite])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_StatusFavorite]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_UsersCustomers] FOREIGN KEY([idUserCustomer])
REFERENCES [dbo].[UsersCustomers] ([idCustomer])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_UsersCustomers]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_UsersProfessionals] FOREIGN KEY([idUserProfessional])
REFERENCES [dbo].[UsersProfessionals] ([idProfessional])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_UsersProfessionals]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Posts] FOREIGN KEY([idPost])
REFERENCES [dbo].[Posts] ([idPost])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Posts]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_StatusLike] FOREIGN KEY([statusLike])
REFERENCES [dbo].[StatusLike] ([idStatusLike])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_StatusLike]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_TypeOfLike] FOREIGN KEY([typeOfLike])
REFERENCES [dbo].[TypeOfLike] ([idTypeOfLike])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_TypeOfLike]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Users]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_StatusPost] FOREIGN KEY([statusPost])
REFERENCES [dbo].[StatusPost] ([idStatusPost])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_StatusPost]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_TypeOfPost] FOREIGN KEY([idTypeOfPost])
REFERENCES [dbo].[TypeOfPost] ([idTypeOfPost])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_TypeOfPost]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_UsersProfessionals] FOREIGN KEY([idProfessional])
REFERENCES [dbo].[UsersProfessionals] ([idProfessional])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_UsersProfessionals]
GO
ALTER TABLE [dbo].[UbicationUsers]  WITH CHECK ADD  CONSTRAINT [FK_UbicationUsers_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[UbicationUsers] CHECK CONSTRAINT [FK_UbicationUsers_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_StatusUsers] FOREIGN KEY([statusUser])
REFERENCES [dbo].[StatusUsers] ([idStatusUser])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_StatusUsers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_TypeUsers] FOREIGN KEY([typeOfUser])
REFERENCES [dbo].[TypeUsers] ([idTypeOfUser])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_TypeUsers]
GO
ALTER TABLE [dbo].[UsersCustomers]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomers_TypeUsers] FOREIGN KEY([idTypeOfUser])
REFERENCES [dbo].[TypeUsers] ([idTypeOfUser])
GO
ALTER TABLE [dbo].[UsersCustomers] CHECK CONSTRAINT [FK_UsersCustomers_TypeUsers]
GO
ALTER TABLE [dbo].[UsersCustomers]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomers_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[UsersCustomers] CHECK CONSTRAINT [FK_UsersCustomers_Users]
GO
ALTER TABLE [dbo].[UsersProfessionals]  WITH CHECK ADD  CONSTRAINT [FK_UsersProfessionals_TypeUsers] FOREIGN KEY([idTypeOfUser])
REFERENCES [dbo].[TypeUsers] ([idTypeOfUser])
GO
ALTER TABLE [dbo].[UsersProfessionals] CHECK CONSTRAINT [FK_UsersProfessionals_TypeUsers]
GO
ALTER TABLE [dbo].[UsersProfessionals]  WITH CHECK ADD  CONSTRAINT [FK_UsersProfessionals_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[UsersProfessionals] CHECK CONSTRAINT [FK_UsersProfessionals_Users]
GO
