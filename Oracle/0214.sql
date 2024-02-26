--review: DECODE()
SELECT empno, ename, job, sal,
DECODE( job,
        'MANAGER', sal*1,
        'SALESMAN', sal*1.05,
        'ANALYST', sal,
        sal * 1.03) AS upsal
FROM emp;

--review: CASE()
SELECT empno, ename, job, sal,
    CASE job
        WHEN 'MANAGER' THEN sal*1.1
        WHEN 'SALESMAN' THEN sal*1.03
        WHEN 'ANALYST' THEN sal
        ELSE sal*1.03
    END AS upsal
FROM emp;

SELECT empno, ename, job, sal,
    CASE
        WHEN comm IS NULL THEN '해당 없음'
        WHEN comm>=0 THEN '수당: ' || comm
    END AS comm_txt
FROM emp;

--