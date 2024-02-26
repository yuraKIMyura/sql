--�������Լ�
    SELECT COUNT(empno) AS persons, SUM(sal)AS totalAmount FROM emp;

--�������Լ��� �� ������ ����� ������ ������ ���� ������ ������ ������ �Բ� ��� �Ұ���
    SELECT ename, count(*) FROM emp;

--SUM, COUNT�� NULL�� �ڵ�ó�����ش�.
    SELECT SUM(comm), SUM(NVL(comm,0)) FROM emp;
    SELECT COUNT(comm) FROM emp;
--������ COUNT�δ� NULL�� �� �� ����.
    SELECT comm FROM emp WHERE comm IS NULL;
    SELECT COUNT(comm) FROM emp WHERE comm IS NULL;
    SELECT COUNT(comm) FROM emp WHERE comm IS NOT NULL;

--COUNT�� DISTINCT �Բ� ����� ���� DISTINCT�� ������ ��!
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
