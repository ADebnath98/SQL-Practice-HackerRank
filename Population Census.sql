select sum(CT.POPULATION) AS Population  
from CITY CT
left join COUNTRY CR
on CT.COUNTRYCODE = CR.CODE
where CONTINENT = 'Asia'