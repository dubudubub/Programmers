-- 코드를 입력하세요
SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS, ROUND(AVG(R.REVIEW_SCORE),2) AS SCORE
FROM REST_INFO I RIGHT JOIN REST_REVIEW R 
ON I.REST_ID = R.REST_ID
WHERE SUBSTR(I.ADDRESS,1,2)='서울'
GROUP BY I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS
ORDER BY SCORE DESC, FAVORITES DESC


--SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
--FROM EMP E RIGHT OUTER JOIN DEPT D
--ON E.DEPTNO = D.DEPTNO
--ORDER BY E.DEPTNO ASC;