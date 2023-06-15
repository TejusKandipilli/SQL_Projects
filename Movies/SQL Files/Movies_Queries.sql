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

