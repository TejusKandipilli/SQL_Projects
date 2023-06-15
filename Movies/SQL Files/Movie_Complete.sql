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

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


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

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*Inserting Data Into Tables */

INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (1, N'Action')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (2, N'Drama')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (3, N'Animation')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (4, N'Biography')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (5, N'Crime')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (6, N'Adventure')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (7, N'Comedy')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (8, N'Documentary')
INSERT [dbo].[Genre] ([Genre_id], [Genre_name]) VALUES (9, N'Horror')
GO
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (100, N'Inception', CAST(N'2010-07-16' AS Date), 1, N'Christopher Nolan', 88)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (101, N'Whiplash', CAST(N'2014-10-15' AS Date), 2, N'Damien Chazelle', 85)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (102, N'Django Unchained', CAST(N'2012-12-25' AS Date), 2, N'Quentin Tarantino', 84)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (103, N'Avengers Infinity War', CAST(N'2018-04-27' AS Date), 1, N'Russo Brothers', 84)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (104, N'The Dark Knight Rises', CAST(N'2012-07-20' AS Date), 1, N'Christopher Nolan', 84)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (105, N'The Hunt', CAST(N'2013-01-10' AS Date), 2, N'Thomas Vinterberg', 83)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (106, N'Incendies', CAST(N'2011-01-12' AS Date), 2, N'Denis Villeneuve', 83)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (107, N'Toy Story 3 ', CAST(N'2010-06-18' AS Date), 3, N'Lee Unkrich', 83)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (108, N'The Wolf of Wall Street', CAST(N'2013-12-25' AS Date), 4, N'Martin Scorsese', 82)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (109, N'Green Book', CAST(N'2018-11-16' AS Date), 4, N'Peter Farrelly', 82)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (110, N'Prisoners', CAST(N'2013-09-20' AS Date), 5, N'Denis Villeneuve', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (111, N'Mad Max Fury Road', CAST(N'2015-05-15' AS Date), 1, N'George Miller', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (112, N'The Grand Budapest Hotel', CAST(N'2014-03-28' AS Date), 6, N'Wes Anderson', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (113, N'Gone Girl', CAST(N'2014-10-03' AS Date), 2, N'David Fincher', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (114, N'Hacksaw Ridge', CAST(N'2016-11-04' AS Date), 4, N'Mel Gibson', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (115, N'Logan', CAST(N'2017-03-03' AS Date), 1, N'James Mangold', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (116, N'12 Years a Slave', CAST(N'2013-11-08' AS Date), 4, N'Steve McQueen', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (117, N'Spotlight', CAST(N'2015-11-20' AS Date), 4, N'Tom McCarthy', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (118, N'Three Billboards Outside Ebbing Missouri', CAST(N'2017-12-01' AS Date), 7, N'Martin McDonagh', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (119, N'Room', CAST(N'2016-01-22' AS Date), 2, N'Lenny Abrahamson', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (120, N'Wild Tales', CAST(N'2014-08-21' AS Date), 7, N'Damian Szifron', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (121, N'Free Solo ', CAST(N'2018-12-13' AS Date), 8, N'Jimmy Chin', 81)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (122, N'Guardians of the Galaxy', CAST(N'2014-08-01' AS Date), 1, N'James Gunn', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (123, N'Blade Runner 2049', CAST(N'2017-10-06' AS Date), 1, N'Denis Villeneuve', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (124, N'Black Swan', CAST(N'2010-12-17' AS Date), 2, N'Darren Aronofsky', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (125, N'Deadpool', CAST(N'2016-02-12' AS Date), 1, N'Tim Miller', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (126, N'Her', CAST(N'2014-01-10' AS Date), 2, N'Spike Jonze', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (127, N'La La Land', CAST(N'2010-12-25' AS Date), 7, N'Damien Chazelle', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (128, N'The Avengers', CAST(N'2012-05-04' AS Date), 1, N'Joss Whedon', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (129, N'Zootopia', CAST(N'2016-03-04' AS Date), 3, N'Byrod Moore Bush', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (130, N'The Imitation Game', CAST(N'2014-12-25' AS Date), 4, N'Morten Tyldum', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (131, N'The Revenant', CAST(N'2016-01-08' AS Date), 1, N'Alejandro Inarritu', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (132, N'Minding the Gap', CAST(N'2018-08-17' AS Date), 8, N'Bing Liu ', 80)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (133, N'Arrival', CAST(N'2016-11-11' AS Date), 2, N'Denis Villeneuve', 79)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (134, N'Bohemian Rhapsody', CAST(N'2018-11-02' AS Date), 4, N'Bryan Singer', 79)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (135, N'Thor Ragnarok', CAST(N'2017-11-03' AS Date), 1, N'Taika Waititi', 79)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (136, N'Dallas Buyers Club', CAST(N'2013-11-22' AS Date), 4, N'Jean Marc Vallee', 79)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (137, N'Life of Pi', CAST(N'2012-11-21' AS Date), 6, N'Ang Lee', 79)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (138, N'Boyhood', CAST(N'2014-08-15' AS Date), 2, N'Richard Linklater', 79)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (139, N'Drive ', CAST(N'2011-09-16' AS Date), 1, N'Nicolas Winding Refn', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (140, N'Get Out', CAST(N'2017-02-24' AS Date), 9, N'Jordan Peele ', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (141, N'Dunkirk', CAST(N'2017-07-21' AS Date), 1, N'Christopher Nolan', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (142, N'Moonrise Kingdom', CAST(N'2012-07-29' AS Date), 7, N'Wes Anderson', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (143, N'Captain America Civil War', CAST(N'2016-05-06' AS Date), 1, N'Russo Brothers', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (144, N'Nightcrawler', CAST(N'2014-10-31' AS Date), 5, N'Dan Gilroy', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (145, N'The Social Network', CAST(N'2010-10-01' AS Date), 4, N'David Fincher', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (146, N'Skyfall ', CAST(N'2012-11-09' AS Date), 1, N'Sam Mendes', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (147, N'Captain America The Winter Soldier', CAST(N'2014-04-04' AS Date), 1, N'Russo Brothers', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (148, N'Manchester by the Sea', CAST(N'2016-12-16' AS Date), 2, N'Kenneth Lonergan', 78)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (149, N'Argo', CAST(N'2012-10-12' AS Date), 4, N'Ben Affleck', 77)
INSERT [dbo].[Movies] ([Movie_id], [Name], [Release_date], [Genre_id], [Director], [Rating]) VALUES (150, N'Sicario ', CAST(N'2015-10-02' AS Date), 1, N'Denis Villeneuve', 76)
GO
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (100, 160000000, 870110523, 710110523)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (101, 3300000, 49433389, 46133389)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (102, 100000000, 426074373, 326074373)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (103, 321000000, 2052415039, 1731415039)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (104, 250000000, 1081169825, 831169825)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (105, 2916000, 15886373, 12970373)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (106, 6800000, 6788659, -11341)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (107, 200000000, 1067316101, 867316101)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (108, 100000000, 406878233, 306878233)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (109, 23000000, 321752656, 298752656)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (110, 46000000, 122126687, 76126687)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (111, 150000000, 415261382, 265261382)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (112, 25000000, 173082189, 148082189)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (113, 61000000, 369330363, 308330363)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (114, 40000000, 180563636, 140563636)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (115, 97000000, 619179950, 522179950)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (116, 20000000, 187733202, 167733202)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (117, 20000000, 98690254, 78690254)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (118, 15000000, 162861289, 147861289)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (119, 13000000, 35401758, 22401758)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (120, 3300000, 31478893, 28178893)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (121, 17541090, 29390279, 11849189)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (122, 170000000, 773350147, 603350147)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (123, 150000000, 267770708, 117770708)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (124, 13000000, 329398046, 316398046)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (125, 58000000, 782836791, 724836791)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (126, 23000000, 48517427, 25517427)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (127, 30000000, 471985260, 441985260)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (128, 220000000, 1520538536, 1300538536)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (129, 150000000, 1025521689, 875521689)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (130, 14000000, 233555708, 219555708)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (131, 135000000, 532950503, 397950503)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (132, 11998, 90328, 78330)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (133, 47000000, 203388186, 156388186)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (134, 52000000, 910809311, 858809311)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (135, 180000000, 855301806, 675301806)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (136, 5000000, 55198285, 50198285)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (137, 120000000, 609016565, 489016565)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (138, 4000000, 48137666, 44137666)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (139, 15000000, 78714970, 63714970)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (140, 4500000, 155745157, 151245157)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (141, 100000000, 527016307, 427016307)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (142, 16000000, 68264022, 52264022)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (143, 250000000, 1155046416, 905046416)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (144, 8500000, 47398992, 38898992)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (145, 40000000, 224920375, 184920375)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (146, 200000000, 1142471295, 942471295)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (147, 170000000, 256766572, 86766572)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (148, 9000000, 78988148, 69988148)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (149, 44500000, 232325503, 187825503)
INSERT [dbo].[Collections] ([Movie_id], [Budget], [Gross_Worldwide], [net_profit]) VALUES (150, 30000000, 84997446, 54997446)
GO


-------------------------------------------------------------------------------------------------------------------------------------------------


/*Stored Procedure */


/*Creating a Procedure to find Movies of a particular director by taking Director's Name as Input*/

go

create proc FindByDirector (@Director varchar(50))
as
begin
select * from dbo.Movies where Director = @Director
end

/*Executing the FindByDirector Procedure*/
execute FindByDirector 'Christopher Nolan'

go
--------------------------------------------------------------------------------------------------------------------------------

/*Creating procedure to find movies of a particular year by taking year of release as input*/

go

create proc FindMoviesByYear (@year int)
as 
begin
select * from movies where Year(Release_date) = @year
end

go

/*Executing the FindMoviesByYear Procedure*/

Exec FindMoviesByYear 2012


------------------------------------------------------------------------------------------------------------------------------------

/*Creating a procedure to find movies of a particular genre by taking genre name as input*/

go

create proc FindMoviesByGenre (@Genre varchar(50))
as
begin
select gen.Genre_name,mov.* from  dbo.Movies mov inner join 
dbo.Genre gen on mov.Genre_id = gen.Genre_id 
where gen.Genre_name = @genre
end

go


/*executing FindMoviesByGenre procedure*/

exec FindMoviesByGenre 'Drama'

----------------------------------------------------------------------------------------------------------------

