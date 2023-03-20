SELECT h.hacker_id, h.name, SUM(t.max_score) AS total
FROM hackers h 
INNER JOIN (SELECT hacker_id, challenge_id, MAX(score) max_score
            FROM submissions
            GROUP BY hacker_id, challenge_id) t
ON h.hacker_id = t.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total != 0
ORDER BY total DESC, h.hacker_id