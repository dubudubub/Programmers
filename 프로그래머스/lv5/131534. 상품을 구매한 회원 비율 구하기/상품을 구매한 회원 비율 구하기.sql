

SELECT TO_CHAR(SALES_DATE,'YYYY') AS YEAR,
TO_CHAR(SALES_DATE,'MM') AS MONTH,
COUNT(DISTINCT USER_ID) AS PUCHASED_USERS,
ROUND((COUNT(DISTINCT USER_ID)/(SELECT COUNT(*) FROM USER_INFO WHERE TO_CHAR(JOINED,'YYYY')='2021')),1) AS PUCHASED_RATIO 
FROM USER_INFO U NATURAL JOIN ONLINE_SALE O
--ON U.USER_ID = O.USER_ID
WHERE (TO_CHAR(JOINED,'YYYY'))='2021'
GROUP BY (TO_CHAR(SALES_DATE,'YYYY')), (TO_CHAR(SALES_DATE,'MM'))
ORDER BY YEAR, MONTH