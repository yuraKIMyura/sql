--다중행함수
    SELECT COUNT(empno) AS persons, SUM(sal)AS totalAmount FROM emp;

--다중행함수는 한 행으로 결과가 나오기 때문에 행이 여러개 나오는 열과는 함께 사용 불가능
    SELECT ename, count(*) FROM emp;

--SUM, COUNT은 NULL을 자동처리해준다.
    SELECT SUM(comm), SUM(NVL(comm,0)) FROM emp;
    SELECT COUNT(comm) FROM emp;
--하지만 COUNT로는 NULL을 셀 수 없다.
    SELECT comm FROM emp WHERE comm IS NULL;
    SELECT COUNT(comm) FROM emp WHERE comm IS NULL;
    SELECT COUNT(comm) FROM emp WHERE comm IS NOT NULL;

--COUNT와 DISTINCT 함께 사용할 때는 DISTINCT가 안으로 들어감!
    SELECT COUNT(DISTINCT job) AS dist, COUNT(job) AS al FROM emp;
    
    SELECT AVG(sal) FROM emp WHERE deptno = 10
    UNION ALL
    SELECT AVG(sal) FROM emp WHERE deptno = 20
    UNION ALL
    SELECT AVG(sal) FROM emp WHERE deptno = 30;

--GROUP BY
    SELECT job, deptno, AVG(sal) 
    FROM emp
    WHERE deptno IN(10, 30) AND job IN('MANAGER', 'CLERK')
    GROUP BY job, deptno
    ORDER BY job, deptno;

--HAVING    
    SELECT deptno, job, avg(sal)
    FROM emp
    GROUP BY deptno, job
    HAVING AVG(sal) >= 2000 AND deptno IN (10,30) AND job = 'MANAGER' 
    ORDER BY deptno, job;
    
SET PAGESIZE 100;    
--ROLL UP
SELECT deptno, job, COUNT(*), MAX(sal), SUM(sal), AVG(sal)
FROM emp
GROUP BY ROLLUP( deptno, job )
ORDER BY deptno;
--CUBE
SELECT deptno, job, COUNT(*), MAX(sal), SUM(sal), AVG(sal)
FROM emp
GROUP BY CUBE( deptno, job )
ORDER BY deptno;
