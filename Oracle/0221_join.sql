--Cartesian Product (Join ���� ������)
SELECT * FROM dept, emp;
SELECT * FROM dept, emp WHERE empno = 7839;

--EQUI JOIN (Join ������ ����� ��)
SELECT * 
FROM emp, dept 
WHERE emp.deptno = dept.deptno;

--JOIN �ÿ� ���̺� �̸� �״�� ���
SELECT emp.empno, emp.ename, dept.loc, dept.dname
FROM emp, dept
WHERE emp.deptno = dept.deptno;

--JOIN �ÿ� ���̺� ��Ī
SELECT e.empno, e.ename, d.loc, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno;

--
SELECT *
FROM emp e, salgrade s;

--NON-EQUI JOIN (JOIN ������ ����� �ƴ� ��)
SELECT *
FROM emp e, salgrade s
WHERE e.sal BETWEEN s.losal AND s.hisal;

--���� ���̺� �����ؼ� �� ���̺� ����
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