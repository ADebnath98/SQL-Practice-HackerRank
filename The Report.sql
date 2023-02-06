select 
case when 
g.grade>=8 then s.name
else 'NULL'
end,
g.grade,s.marks
from students s,grades g
where s.marks>=min_mark and s.marks<=max_mark
order by g.grade desc,s.name,s.marks