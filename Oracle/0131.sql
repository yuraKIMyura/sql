SELECT * FROM dept, emp;
SELECT count(*) FROM dept, emp;

SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno;

SELECT ename, sal, dname FROM emp, dept
WHERE emp.deptno = dept.deptno;

SELECT deptno FROM emp;
SELECT DISTINCT deptno FROM emp;
SELECT COUNT(DISTINCT deptno) as °á°ú FROM emp;

SELECT DISTINCT job, deptno FROM emp ORDER BY job;
SELECT job, deptno FROM emp ORDER BY job;

SELECT 1+100 FROM dual;
SELECT (sal*12 + nvl(comm,0)) as ¿¬ºÀ  FROM emp;

