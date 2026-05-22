select Gender,count(*) from [dbo].[Depression+Student+Dataset]
group by Gender

update [dbo].[Depression+Student+Dataset]
set Gender = 'F' where Gender = 'Female'

update [dbo].[Depression+Student+Dataset]
set Gender = 'M' where Gender = 'Male'
------------------------------------------------------------------------------------------------------------------

select age, count(*) [Count] from [dbo].[Depression+Student+Dataset]
group by age
order by age desc

--Adding new row
Alter table [dbo].[Depression+Student+Dataset]
add Age_group varchar(max)

update [dbo].[Depression+Student+Dataset]
set Age_group =
case when Age between 18 and 24 then 'A1'
Else case when Age between 25 and 30 then 'A2'
Else 'A3' end end

------------------------------------------------------------------------------------------------------------------

--Want to view distent column name available in this table
Select * from INFORMATION_SCHEMA.columns where table_name like
'Depression+Student+Dataset'

Select Academic_Pressure, count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure

Select Study_Satisfaction, count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Satisfaction

Select Sleep_Duration, count(*) from [dbo].[Depression+Student+Dataset]
group by Sleep_Duration

Select Dietary_Habits, count(*) from [dbo].[Depression+Student+Dataset]
group by Dietary_Habits

Select Have_you_ever_had_suicidal_thoughts, count(*) from [dbo].[Depression+Student+Dataset]
group by Have_you_ever_had_suicidal_thoughts

Select Study_Hours, count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Hours

Select Financial_Stress, count(*) from [dbo].[Depression+Student+Dataset]
group by Financial_Stress

Select Family_History_of_Mental_Illness, count(*) from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

Select Depression, count(*) from [dbo].[Depression+Student+Dataset]
group by Depression

Select Academic_Pressure, count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure


------------------------------------------------------------------------------------------------------------------
--Adding new column index column

Alter table [dbo].[Depression+Student+Dataset]
add Index_Column int identity(1,1)


------------------------------------------------------------------------------------------------------------------
--Changing the data type of deperassion column 
Alter table [dbo].[Depression+Student+Dataset]
Alter column Depression Varchar(Max)

--Now changing the values from depression column where in place of 0 'No' will bw written and in place of 1 'Yes'
update [dbo].[Depression+Student+Dataset]
set Depression= 'NO' where Depression = '0'

update [dbo].[Depression+Student+Dataset]
set Depression= 'YES' where Depression = '1'

Select * from [dbo].[Depression+Student+Dataset]