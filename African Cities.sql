select CT.name AS City  
from CITY CT
left join COUNTRY CR
on CT.COUNTRYCODE = CR.CODE
where CONTINENT = 'Africa'