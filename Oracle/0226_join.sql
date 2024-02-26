--JOIN ����
--JOIN ����: �ʿ��� ������ �ٸ� ���̺� �־
SELECT e.deptno, e.ename, d.loc 
  FROM emp e, dept d
 WHERE e.deptno = d.deptno;
 
--�̰͵� JOIN ���� ������ ������ JOIN�̶�� ��!
--rule of thumb: FROM�� table�� �� �� �̻� ������ join�̶�� �����ϸ� �ȴ�
SELECT * 
  FROM emp e, salgrade s
 WHERE e.sal BETWEEN s.losal AND s.hisal;

--SELF JOIN ��ü����
--table �ϳ��ε� �ΰ�ó�� ���ڴ�
SELECT e1.empno, e1.ename, e1.mgr, e2.empno �Ŵ�����ȣ, e2.ename �Ŵ���
  FROM emp e1, emp e2
 WHERE e1.mgr = e2.empno;
 
 --NULL�� field���� ������ �غ���
 SELECT e1.empno, e1.ename, e1.mgr, e2.empno �Ŵ�����ȣ, e2.ename �Ŵ���
  FROM emp e1, emp e2
 WHERE e1.mgr = e2.empno(+);
 
 --NATURAL JOIN
 --���ǻ���: natural join�� ���� column�� qualifier�� ���� �� ����
 SELECT ename, sal, dname, loc, deptno
   FROM emp e NATURAL JOIN dept d;   
