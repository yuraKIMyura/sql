--SUBQUERY

--JONES의 월급보다 더 많이 받는 사람들의 모든 정보가 궁금할 때
SELECT * FROM emp WHERE sal > ( SELECT sal FROM emp WHERE ename = 'JONES');

--FORD보다 입사일이 더 빠른 사람
SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE ename = 'FORD');


--JOIN + SUBQUERY
SELECT * FROM emp e, dept d
WHERE e.deptno = d.deptno;

--emp table과 dept table을 join해서 emp 평균sal 보다 큰 정보를 출력
SELECT * FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.sal > ( SELECT AVG(sal) FROM emp);


--다중행 서브쿼리
--다중행연산자 IN, ANY/SOME, ALL, EXISTS
SELECT * FROM emp WHERE deptno IN (20,30);
SELECT * FROM emp WHERE sal IN (SELECT MAX(sal) FROM emp GROUP BY deptno) ORDER BY deptno;
SELECT * FROM emp WHERE sal = ANY (SELECT MAX(sal) FROM emp GROUP BY deptno) ORDER BY deptno;

--위의 query와 같은 의미가 '30번 부서 사원들의 최대 급여보다 적은 급여를 받는 사원 정보 출력'
SELECT sal FROM emp WHERE deptno=30;
SELECT * FROM emp WHERE sal < ANY(SELECT sal FROM emp WHERE deptno=30);

--다중열 서브쿼리
SELECT * FROM emp WHERE (deptno, sal) IN (SELECT deptno, MAX(sal) FROM emp GROUP BY deptno) ORDER BY deptno;


--FROM절 서브쿼리
SELECT * FROM (SELECT * FROM emp WHERE deptno=10) e10;
SELECT * FROM (SELECT * FROM dept) d;
--위의 두 테이블 join (cartesian product)
SELECT * FROM (SELECT * FROM emp 
WHERE deptno=10) e10, (SELECT * FROM dept) d;

--inner join이랑 거의 같은 건데, 먼저 걸러주는 거임ㅋㅋㅋ
SELECT * FROM (SELECT * FROM emp WHERE deptno=10) e10, (SELECT * FROM dept) d
WHERE e10.deptno = d.deptno;
--위의 QUERY 보기 힘드니까 WITH로 정리해줌
WITH
e10 AS (SELECT * FROM emp WHERE deptno=10),
d AS(SELECT * FROM dept)
SELECT * FROM e10, d WHERE e10.deptno = d.deptno;


--상호연관서브쿼리(???)
SELECT * FROM emp;
--14rows(3 rows for 10, 5 rows for 20, 6 rows for 30)
SELECT * FROM emp e1, emp e2 WHERE e1.deptno = e2.deptno; 
SELECT * FROM emp e1 WHERE sal > ( SELECT MIN(sal) FROM emp e2 WHERE e2.deptno = e1.deptno );

