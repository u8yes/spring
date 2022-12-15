-- 조인

--- (1) cross join
select * from emp, dept; --- deptno 기준으로 정렬됨.

--- (2) equi join
select * from emp, dept
where emp.deptno = dept.deptno -- dept는 프라이머리 키로 정리, emp는 외래키로 정리

-- sol)
select ename, dname, loc, emp.deptno -- emp.를 스키마라고 부름
from emp, dept
where emp.deptno = dept.deptno
and ename = 'SCOTT'; -- emp에 있는지 dept에 있는지를 모름. 그래서 emp.을 select에 넣어줘야 함.


