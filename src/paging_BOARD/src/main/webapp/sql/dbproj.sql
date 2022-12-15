--- (1) cross join
select * from emp, dept; --- deptno 기준으로 정렬됨.

--- (2) equi join
select * from emp, dept
where emp.deptno = dept.deptno -- dept는 프라이머리 키로 정리, emp는 외래키로 정리




