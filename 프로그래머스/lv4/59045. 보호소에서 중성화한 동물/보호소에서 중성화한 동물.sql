-- 코드를 입력하세요
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME FROM ANIMAL_OUTS
WHERE UPPER(SEX_UPON_OUTCOME) LIKE 'SPAYED%'
OR UPPER(SEX_UPON_OUTCOME) LIKE 'NEUTERED%'
INTERSECT
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME FROM ANIMAL_INS
WHERE UPPER(SEX_UPON_INTAKE) LIKE 'INTACT%'
ORDER BY ANIMAL_ID