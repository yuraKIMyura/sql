--JOIN 연습
--JOIN 이유: 필요한 정보가 다른 테이블에 있어서
SELECT e.deptno, e.ename, d.loc 
  FROM emp e, dept d
 WHERE e.deptno = d.deptno;
 
--이것도 JOIN 같아 보이지 않지만 JOIN이라는 거!
--rule of thumb: FROM에 table이 두 개 이상 있으면 join이라고 생각하면 된다
SELECT * 
  FROM emp e, salgrade s
 WHERE e.sal BETWEEN s.losal AND s.hisal;

--SELF JOIN 자체조인
--table 하나인데 두개처럼 쓰겠다
SELECT e1.empno, e1.ename, e1.mgr, e2.empno 매니저번호, e2.ename 매니저
  FROM emp e1, emp e2
 WHERE e1.mgr = e2.empno;
 
 --NULL인 field까지 나오게 해보자
 SELECT e1.empno, e1.ename, e1.mgr, e2.empno 매니저번호, e2.ename 매니저
  FROM emp e1, emp e2
 WHERE e1.mgr = e2.empno(+);
 
 --NATURAL JOIN
 --주의사항: natural join에 쓰인 column은 qualifier를 가질 수 없다
 SELECT ename, sal, dname, loc, deptno
   FROM emp e NATURAL JOIN dept d;   
