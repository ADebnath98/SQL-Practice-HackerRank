with recursive numbers(n) as ( 
    select 1 as n
    union all
    select n + 1 from numbers where n < 1000
)

select group_concat(a.n separator '&') from (
    select a.n from numbers as a
    inner join numbers as b on a.n > b.n
    where a.n % b.n = 0
    group by a.n
    having count(a.n) = 1
    order by a.n
) as a