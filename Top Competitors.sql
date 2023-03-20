select h.hacker_id, h.name
from Hackers h 
join Submissions s
  on h.hacker_id = s.hacker_id
join Challenges c
  on s.challenge_id = c.challenge_id
join Difficulty d
  on c.difficulty_level = d.difficulty_level
where d.score = s.score
group by h.hacker_id, h.name
having count(c.challenge_id) > 1
order by count(c.challenge_id) desc, h.hacker_id asc
;