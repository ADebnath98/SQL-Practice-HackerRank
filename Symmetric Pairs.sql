SELECT X, Y FROM (
SELECT X, Y FROM Functions WHERE X=Y GROUP BY X, Y HAVING COUNT(*)=2
UNION
SELECT f1.X, f1.Y FROM Functions f1, Functions f2 
WHERE f1.X < f1.Y 
AND f1.X=f2.Y 
AND f2.X=f1.Y
)t
ORDER BY X, Y;