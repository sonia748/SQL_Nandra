     /* Task 1 Part 1 */

create database sqlproject;
use sqlproject;

Create table statics (
State varchar (50),
Capital varchar (50),
Population int,
Area int ,
FamousPeople varchar (20),
NickName varchar (20),
Union_year smallint,
StateBird varchar (20),
)

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Alaska', 'Juneau', 479000, 586412, 'Joe Juneau', 'Last Frontier', 1959, 'Ptarmigan');

 insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
 values ('Arizona','Phoenix', 2963000, 113909, 'Geronimo', 'GrandCanyonState', 1912, 'CactusWren');

 insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('California', 'Sacramento', 25174000, 158693, 'Jack London', 'Golden State', 1850, 'Quail');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Florida', 'Tallahassee', 10680000, 58560, 'Joseph Stilwell', 'Sunshine State', 1845, 'Mockingbird');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Hawaii', 'Honolulu', 1023000, 6450, 'Don Ho', 'Aloha State', 1959, 'Goose');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Idaho', 'Idaho', 989000, 83557, 'Sacajawea', 'Gem State', 1890, 'Bluebird');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Kansas', 'Topeka', 2425000, 82264, 'Amelia Earhart', 'Sunflower State', 1861, 'Meadowlark');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Maine','Augusta', 1146000, 33215, 'Henry Longfellow', 'Pine Tree State', 1820, 'Chickadee');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Nebraska', 'Lincoln', 1597000, 77227, 'Fred Astaire', 'Cornhusker State', 1867, 'Meadowlark');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('New Jersey', 'Trenton', 7468000, 7836, ',Stephen Crane', 'Garden State', 1787, 'Goldfinch');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('New York', 'Albany', 17667000, 49576, 'Walt Whitman', 'Empire State', 1788, 'Bluebird');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Ohio', 'Columbus', 10746000, 41222, 'Bob Hope', 'Buckeye State', 1803, 'Cardinal');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Washington', 'Olympia', 4300000, 68192, 'Bing Crosby', 'Evergreen State', 1889, 'Goldfinch');

insert into statics (State, Capital, Population, Area, FamousPeople, NickName, Union_year, StateBird)
values ('Wisconsin', 'Madison', 4751000, 56154, 'Spencer Tracy', 'Badger State', 1848, 'Robin');




select * from statics;


/*2. List the states that entered the union between 1850-1920, inclusive ( hint: type in 1850...1920).*/

select State from statics where Union_year >= 1850 and Union_year <= 1920;

/*3. List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people. */

select State from statics where Area <= 60000 and Population >= 10000000;


  /*4. Now arrange the entire data base by population from smallest to largest – capture
your results into a temporary table and copy the contents to a new table called
Famous_sort. */

select Population from statics order by Population ASC;


create view Famous_srt As
	 select * from statics;
	
select * from Famous_srt
	order by Population;




