SELECT id,age, coins_needed, w.power
FROM Wands w
JOIN Wands_Property wp
ON w.code = wp.code
WHERE is_evil = 0
AND coins_needed = ( SELECT MIN(coins_needed) FROM Wands
                     WHERE code = w.code
                     AND power = w.power) 
ORDER BY w.power DESC, age DESC;