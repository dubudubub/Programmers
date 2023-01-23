-- 코드를 입력하세요
SELECT B.CATEGORY, SUM(S.SALES) AS TOTAL_SALES
FROM BOOK B, BOOK_SALES S 
WHERE TO_CHAR(SALES_DATE,'YYYY-MM')='2022-01'
AND B.BOOK_ID = S.BOOK_ID
GROUP BY B.CATEGORY--, TO_CHAR(SALES_DATE,'YYYY-MM')
ORDER BY B.CATEGORY
