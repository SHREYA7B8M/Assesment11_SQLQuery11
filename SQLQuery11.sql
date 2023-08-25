drop database ArticleDb

create database ArticleDb

use ArticleDb

create table Articles
(ArticleId int primary key,
Title nvarchar(50),
Content nvarchar(50),
PublishDate datetime
)

insert into Articles values(101,'Books','To read and gain','12/12/2022 11:00:00')
insert into Articles values(102,'Notepads','To write and memorize','02/02/2021 13:00:00')
insert into Articles values(103,'Fruits','To eat healthy','09/09/2022 15:30:00')
insert into Articles values(104,'Grocery','To cook and eat well','04/04/2023 17:45:00')
insert into Articles values(105,'Scrubs','To exfoliate','07/07/2023 19:55:00')

select * from Articles

