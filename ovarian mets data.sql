Select *
from Ovarian_Mets.dbo.emergency_cases

--data cleaning: remove unnecasary columns

alter table Ovarian_Mets.dbo.emergency_cases
drop column nhi_number, dva_number, medicare_number, consultant_name;

-- identify max, min and avg of patient age.

Select avg(patient_age_at_diagnosis)
from Ovarian_Mets.dbo.emergency_cases

Select max(patient_age_at_diagnosis)
from Ovarian_Mets.dbo.emergency_cases

Select min(patient_age_at_diagnosis)
from Ovarian_Mets.dbo.emergency_cases


-- identify max, min and avg of patient height.

Select avg(height)
from Ovarian_Mets.dbo.emergency_cases

Select max(height)
from Ovarian_Mets.dbo.emergency_cases

Select min(height)
from Ovarian_Mets.dbo.emergency_cases


-- identify max, min and avg of patient weight.

Select avg([weight])
from Ovarian_Mets.dbo.emergency_cases

Select max([weight])
from Ovarian_Mets.dbo.emergency_cases

Select min([weight])
from Ovarian_Mets.dbo.emergency_cases

--calculate % sex
select sex, count(sex) as frequency 
from infectious_disease.dbo.patientdata
group by sex
order by
count(sex) desc


select sex,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from Ovarian_Mets.dbo.emergency_cases
group by sex;



-- calculate % in public hospital

select public_private,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from Ovarian_Mets.dbo.emergency_cases
group by public_private;


-- Calculate % at monash hospital

select hospital_name,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from Ovarian_Mets.dbo.emergency_cases
group by hospital_name;

-- Calculate % death rate

select [status ],
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from Ovarian_Mets.dbo.emergency_cases
group by [status ];

-- % with hisotery of smoking 

select history_of_smoking,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from Ovarian_Mets.dbo.emergency_cases
group by history_of_smoking;


-- % with diabetes

select diabetes,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from Ovarian_Mets.dbo.emergency_cases
group by diabetes;




