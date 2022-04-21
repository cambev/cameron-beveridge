select *
from infectious_disease.dbo.patientdata

--max, min and average age of hospital admission

select max([Age at hospital admission])
from infectious_disease.dbo.patientdata

select min([Age at hospital admission])
from infectious_disease.dbo.patientdata

select avg([Age at hospital admission])
from infectious_disease.dbo.patientdata


--remove HIV status

alter table dbo.patientdata
drop column HIV_status;


--count male patients and female patients

select sex, count(sex) as frequency 
from infectious_disease.dbo.patientdata
group by sex
order by
count(sex) desc


--convert hep B and Hep C, positive to yes and negative to no

select hepb
, case when hepb = 'negative' then 'No'
	   when hepb = 'positive' then 'Yes'
	   end
from infectious_disease.dbo.patientdata

select hepc
, case when hepc = 'negative' then 'No'
	   when hepc = 'positive' then 'Yes'
	   end
from infectious_disease.dbo.patientdata


-- min max and average of hospital visits


-- select all patients who said yes to preferred drug as opioid




