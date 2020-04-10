SELECT Ranking, 
    COUNT(Ranking) AS Total,
    COUNT(Ranking)*100.0/SUM(COUNT(*)) OVER() AS PctOfTotal
FROM Deals
GROUP BY Ranking
ORDER BY Total DESC
