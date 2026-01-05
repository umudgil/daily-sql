SELECT query_name, ROUND(AVG(rating/position),2) AS quality, ROUND(100*sum(case when rating < 3 then 1 else 0 end)/count(*),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
