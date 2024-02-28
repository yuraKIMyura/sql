--SUBQUERY

--JONES�� ���޺��� �� ���� �޴� ������� ��� ������ �ñ��� ��
SELECT * FROM emp WHERE sal > ( SELECT sal FROM emp WHERE ename = 'JONES');

--FORD���� �Ի����� �� ���� ���
SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE ename = 'FORD');


--JOIN + SUBQUERY
SELECT * FROM emp e, dept d
WHERE e.deptno = d.deptno;

--emp table�� dept table�� join�ؼ� emp ���sal ���� ū ������ ���
SELECT * FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.sal > ( SELECT AVG(sal) FROM emp);


--������ ��������
--�����࿬���� IN, ANY/SOME, ALL, EXISTS
SELECT * FROM emp WHERE deptno IN (20,30);
SELECT * FROM emp WHERE sal IN (SELECT MAX(sal) FROM emp GROUP BY deptno) ORDER BY deptno;
SELECT * FROM emp WHERE sal = ANY (SELECT MAX(sal) FROM emp GROUP BY deptno) ORDER BY deptno;

--���� query�� ���� �ǹ̰� '30�� �μ� ������� �ִ� �޿����� ���� �޿��� �޴� ��� ���� ���'
SELECT sal FROM emp WHERE deptno=30;
SELECT * FROM emp WHERE sal < ANY(SELECT sal FROM emp WHERE deptno=30);

--���߿� ��������
SELECT * FROM emp WHERE (deptno, sal) IN (SELECT deptno, MAX(sal) FROM emp GROUP BY deptno) ORDER BY deptno;


--FROM�� ��������
SELECT * FROM (SELECT * FROM emp WHERE deptno=10) e10;
SELECT * FROM (SELECT * FROM dept) d;
--���� �� ���̺� join (cartesian product)
SELECT * FROM (SELECT * FROM emp 
WHERE deptno=10) e10, (SELECT * FROM dept) d;

--inner join�̶� ���� ���� �ǵ�, ���� �ɷ��ִ� ���Ӥ�����
SELECT * FROM (SELECT * FROM emp WHERE deptno=10) e10, (SELECT * FROM dept) d
WHERE e10.deptno = d.deptno;
--���� QUERY ���� ����ϱ� WITH�� ��������
WITH
e10 AS (SELECT * FROM emp WHERE deptno=10),
d AS(SELECT * FROM dept)
SELECT * FROM e10, d WHERE e10.deptno = d.deptno;


--��ȣ������������(???)
SELECT * FROM emp;
--14rows(3 rows for 10, 5 rows for 20, 6 rows for 30)
SELECT * FROM emp e1, emp e2 WHERE e1.deptno = e2.deptno; 
SELECT * FROM emp e1 WHERE sal > ( SELECT MIN(sal) FROM emp e2 WHERE e2.deptno = e1.deptno );

