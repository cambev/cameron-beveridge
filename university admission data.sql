select * 
from university_admission.dbo.admission_Data

-- make all null values 0

update dbo.admission_data set [religious] = 0 where [religious] is null;


--frequency of GPA for all universities

select GPA, count(GPA) as frequency 
from university_admission.dbo.admission_Data 
group by GPA
order by
count(GPA) desc


--Frequency of GPA scores as a %

select GPA,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from university_admission.dbo.admission_Data
group by GPA;


--Total sum of all values for GPA, Essay and Interview

select sum(Interview), sum(GPA), sum(Essay) 
from university_admission.dbo.admission_Data 
where 0 not in (interview], GPA, essay)

-- total score for individual univeristy ascending 

select ( GPA + Essay + Interview) as total
			from university_admission.dbo.admission_Data
			order by "total" asc



