--Cartesian Product (Join 조건 미포함)
SELECT * FROM dept, emp;
SELECT * FROM dept, emp WHERE empno = 7839;

--EQUI JOIN (Join 기준이 등식인 것)
SELECT * 
FROM emp, dept 
WHERE emp.deptno = dept.deptno;

--JOIN 시에 테이블 이름 그대로 사용
SELECT emp.empno, emp.ename, dept.loc, dept.dname
FROM emp, dept
WHERE emp.deptno = dept.deptno;

--JOIN 시에 테이블 별칭
SELECT e.empno, e.ename, d.loc, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno;

--
SELECT *
FROM emp e, salgrade s;

--NON-EQUI JOIN (JOIN 기준이 등식이 아닌 것)
SELECT *
FROM emp e, salgrade s
WHERE e.sal BETWEEN s.losal AND s.hisal;

--기존 테이블 복사해서 새 테이블 생성
CREATE TABLE copy_emp AS SELECT * FROM emp;

--SELF JOIN
SELECT *
FROM emp e, copy_emp c
WHERE e.mgr = c.empno;

SELECT e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
FROM emp e1, emp e2
WHERE e1.mgr = e2.empno;

--OUTER JOIN (Right Outer Join)
SELECT e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
FROM emp e1, emp e2
WHERE e1.mgr = e2.empno(+);