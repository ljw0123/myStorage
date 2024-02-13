SELECT * FROM EMPLOYEES e ;
SELECT * FROM DEPARTMENTS d ;

-- 한 줄 주석
/*
 * 여러줄 주석
 */

SELECT 	EMPLOYEE_ID , 
		FIRST_NAME , 
		LAST_NAME , 
		EMAIL 
FROM 	EMPLOYEES e 
;

-- 조건 where
-- 문자열은 '(홑따옴표)로 감싼다
SELECT 	EMPLOYEE_ID ,
		FIRST_NAME 
FROM 	EMPLOYEES e 
WHERE 	FIRST_NAME = 'John'
;

SELECT 	EMPLOYEE_ID ,
		FIRST_NAME 
FROM 	EMPLOYEES e 
WHERE 	EMPLOYEE_ID = 157
;

-- 문1. employees 테이블에서 Last_name이 'Smith'인
-- 사람의 사번, 급여, first_name을 조회해라
SELECT 	EMPLOYEE_ID , SALARY , FIRST_NAME ,LAST_NAME 
FROM 	EMPLOYEES e
WHERE 	LAST_NAME = 'Smith'
;

~2시

