Select concat(name,"(",Left(occupation,1),")") 
from occupations 
order by name asc,occupation asc;

Select concat("There are a total of ",count(name)," ",lower(occupation),"s.") 
from occupations 
group by occupation 
order by count(name),occupation asc;