SELECT * FROM EMPLOYEES e ;

/*
 * 1. LAST_NAME 첫 글자가 A 인 사원들의 LAST_NAME 을 조회한다.
 */
SELECT 	LAST_NAME 
FROM 	EMPLOYEES e
WHERE 	LAST_NAME LIKE 'A%'
;

/*
 * 2. 매니저가 없는 사람들의 LAST_NAME 및 JOB_ID 를 조회한다.
 */
SELECT 	LAST_NAME , JOB_ID 
FROM 	EMPLOYEES e 
WHERE 	MANAGER_ID IS NULL 
;
/*
 * 3. 커미션을 버는 모든 사원들의 LAST_ANME, 연봉 및 커미션을 조회한다.
 * 	연봉 역순 정렬한다.
 */
SELECT 	LAST_NAME , SALARY , COMMISSION_PCT 
FROM 	EMPLOYEES e 
WHERE 	COMMISSION_PCT IS NOT NULL 
ORDER BY SALARY DESC 
;


-- concat(char1, char2), || : 문자열 연결
SELECT 	CONCAT('Hello','bye'), 
		CONCAT('good','bad') ,
		'good' || 'bad' || 'Hello'
FROM 	dual
;

-- initcap : 첫 글자를 대문자로
SELECT 	INITCAP('good morning') 
FROM 	dual
;

-- 대/소문자 
-- lower(char), upper(char)
SELECT 	LOWER('GooD'), UPPER('good')
FROM 	dual
;

-- lpad('값',총 문자길이,'채움문자')
SELECT 	LPAD('good', 6) ,
		LPAD('gooood', 6) ,
		LPAD('good',6,'#') ,
		LPAD('good',6,'L') 
FROM 	dual
;

-- rpad('값',총 문자길이,'채움문자')
SELECT 	RPAD('good', 6) ,
		RPAD('gooood', 6) ,
		RPAD('good',6,'#') ,
		RPAD('good',6,'L') 
FROM 	dual
;

-- ltrim('문자열','옵션') : 문자열을 옵션만큼 왼쪽에서 제거
SELECT 	LTRIM('goodbye','g'),
		LTRIM('ooooodbye','o'),	
		LTRIM('goodbye','go'),
		LTRIM('goooooodbye','god'),
		LTRIM('goooooodbye','gdo'),
		LTRIM('goooooodbye','do')		
FROM 	dual
;

-- rtrim('문자열','옵션')
SELECT 	RTRIM('goodbye','e'),
		RTRIM('goodbye','i') 
FROM 	dual
;

-- substr('문자열','시작위치','길이')
SELECT 	SUBSTR('good morning john',1,4) 
FROM 	DUAL 
;
-- rnin
SELECT 	SUBSTR('good morning john',8,4) 
FROM 	DUAL 
;
SELECT 	SUBSTR('good morning john',8) 
FROM 	DUAL 
;
SELECT 	SUBSTR('good morning john',-4) 
FROM 	DUAL 
;

-- replace
SELECT 	REPLACE ('good morning tom','morning','evenning')
FROM dual
;

-- translate : 1대1일 대응
SELECT 	REPLACE ('You are not alnoe','You','We'),
		TRANSLATE ('You are not alnoe uuu','You','Wei')
FROM 	dual
;

-- sysdate : 현재 시간
SELECT 	SYSDATE
FROM 	dual
;

-- 7개월을 더한다
SELECT 	ADD_MONTHS(SYSDATE, 7) 
FROM 	dual
;
-- last_day : 현재달의 마지막 날짜
SELECT 	LAST_DAY(SYSDATE)
FROM	dual
;

-- 날짜조작
SELECT 	SYSDATE + (INTERVAL '1' YEAR),
		SYSDATE + (INTERVAL '1' MONTH),
		SYSDATE + (INTERVAL '1' DAY),
		SYSDATE + (INTERVAL '1' HOUR),
		SYSDATE + (INTERVAL '1' MINUTE),
		SYSDATE + (INTERVAL '1' SECOND)
FROM 	dual
;
	

-- to_char() : 문자열 변환
SELECT 	TO_CHAR(sysdate, 'yyyy-mm-dd')
FROM 	dual
;
SELECT 	TO_CHAR(sysdate, 'yyyy/mm/dd'),
		TO_CHAR(sysdate, 'yyyymmdd'),
		TO_CHAR(sysdate, 'yyyy/mm/dd HH24:MI:SS')
FROM 	dual
;

-- to_date() : 날짜형으로 변환
SELECT 	TO_DATE('2024-01-15','yyyy-mm-dd')
FROM 	dual
;
-- nvl() : 널값을 다른 데이터로 변경하는 함수
SELECT 	FIRST_NAME , LAST_NAME ,NVL(COMMISSION_PCT, 0)   
FROM 	EMPLOYEES e 
;
-- decode() : switch 교환
SELECT 	* FROM DEPARTMENTS d;
SELECT 	DEPARTMENT_ID ,
		DECODE(DEPARTMENT_ID, 
				20, 'MA', 60,'IT', 80,'SA','ETC') 
FROM 	DEPARTMENTS d 
;

-- case() : elseif문과 같은 역할을 하는 함수
SELECT 	FIRST_NAME , DEPARTMENT_ID ,
	CASE WHEN DEPARTMENT_ID = 20 THEN 'MA'
		 WHEN DEPARTMENT_ID = 60 THEN 'IT'
		 WHEN DEPARTMENT_ID = 80 THEN 'SA'
		 ELSE 'ETC'
		 END  "department"
FROM 	EMPLOYEES e  
;
/*
 * 문제1) EMPLOYEES 테이블에서 King의 정보를 소문자로 검색하고
	사원번호,성명, 담당업무(소문자로),부서번호를 출력하라.
 */
SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME,
		LOWER(JOB_ID), DEPARTMENT_ID  
FROM 	EMPLOYEES e 
WHERE 	LOWER(LAST_NAME) =  'king'
;

/*
문제2) EMPLOYEES 테이블에서 King의 정보를 대문자로 검색하고 사원번호,
성명, 담당업무(대문자로),부서번호를 출력하라.
*/
SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME,
		UPPER(JOB_ID), DEPARTMENT_ID  
FROM 	EMPLOYEES e 
WHERE 	UPPER(LAST_NAME) =  'KING'
;

/*
문제3) DEPARTMENTS 테이블에서 부서번호와 부서이름, 
	위치번호를 합하여 출력하도록 하라.(||사용)
*/
SELECT 	DEPARTMENT_ID || DEPARTMENT_NAME || LOCATION_ID 
FROM 	DEPARTMENTS d 
;

/*
문제4) EMPLOYEES 테이블에서 30번 부서 중 사원번호 이름과 
	담당 아이디를 연결하여 출력하여라. (concat 사용)
*/
SELECT 	CONCAT(CONCAT(EMPLOYEE_ID, LAST_NAME), MANAGER_ID) 
FROM 	EMPLOYEES e
WHERE 	DEPARTMENT_ID = 30
;

/*
 * 문제 5. SALARY+SALARY*nvl(COMMISSION_PCT ,0) 이 
 * 10000이상이면, 'good' 
 * 5000 이상이면, 	'average', 
 * 1이상 5000미만이면 'bad'
   0이면 no good 로 평가하고  
	EMPLOYEE_ID ,FIRST_NAME , SALARY ,COMMISSION_PCT, 
	 SALARY+SALARY*nvl(COMMISSION_PCT ,0) 평가를 출력해라.
 */
SELECT 	EMPLOYEE_ID , FIRST_NAME , 
		SALARY , COMMISSION_PCT ,
		SALARY+SALARY*nvl(COMMISSION_PCT ,0) "sal",
		CASE
		WHEN SALARY+SALARY*nvl(COMMISSION_PCT ,0) >= 10000 	THEN 'good'
		WHEN SALARY+SALARY*nvl(COMMISSION_PCT ,0) >= 5000 	THEN 'average'
		WHEN SALARY+SALARY*nvl(COMMISSION_PCT ,0) >= 1 		THEN 'bad'
		WHEN SALARY+SALARY*nvl(COMMISSION_PCT ,0) = 0 		THEN 'no good'			
		END AS grade
FROM 	EMPLOYEES e 
;

-- group by 
-- 12
/*
 * distinct :
 *  - 중복을 제거한 데이터를 조회하는 경우 사용 
 * group by :
 *  - 데이터를 그룹핑해서 그 결과를 가져오는 경우 사용
 *    집계함수와 짝을 이루어 사용할 수 있다. 
 */
SELECT 	DISTINCT DEPARTMENT_ID 
FROM 	EMPLOYEES e 
;
SELECT 	DEPARTMENT_ID 
FROM 	EMPLOYEES e 
GROUP BY DEPARTMENT_ID 
;
SELECT 	* 
FROM 	EMPLOYEES e
ORDER BY DEPARTMENT_ID 
;

-- 부서별 급여의 합계
-- SQL Error [937] [42000]: ORA-00937: not a single-group group function
SELECT 	DISTINCT DEPARTMENT_ID , SUM(SALARY) 
FROM 	EMPLOYEES e 
;

SELECT 	DEPARTMENT_ID , SUM(SALARY) 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID 
;
-- 부서별 사원수와, 급여 합계와, 급여 평균을 구하여라
SELECT 	DEPARTMENT_ID 	, SUM(SALARY), 
		AVG(SALARY)  	, COUNT(*),
		COUNT(EMPLOYEE_ID), COUNT(SALARY) ,
		COUNT(DEPARTMENT_ID) 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID 
;
SELECT 	DEPARTMENT_ID , JOB_ID 
FROM 	EMPLOYEES e 
ORDER BY DEPARTMENT_ID , JOB_ID 
;
-- 부서별, 직급별 사원수와 평균 급여, 급여 합계
SELECT 	DEPARTMENT_ID 	, JOB_ID , 
		SUM(SALARY)		, AVG(SALARY),
		COUNT(*) 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID , JOB_ID 
ORDER BY DEPARTMENT_ID , JOB_ID 
;
SELECT 	DEPARTMENT_ID , EMPLOYEE_ID 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID 
;
SELECT DEPARTMENT_ID, JOB_ID  
FROM EMPLOYEES e 
ORDER BY DEPARTMENT_ID 
;
-- 부서별, 직급별 사원수와 평균 급여, 급여 합계를 출력
-- 단, 80번 부서만 조회
-- 단, 부서별, 직급별 오름차순 정렬
SELECT 	DEPARTMENT_ID , JOB_ID ,
		SUM(SALARY)	, AVG(SALARY),
		COUNT(*) 
FROM 	EMPLOYEES e
WHERE 	DEPARTMENT_ID = 80
GROUP BY DEPARTMENT_ID , JOB_ID
ORDER BY DEPARTMENT_ID , JOB_ID 
;




































