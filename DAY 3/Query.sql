select ename, job, d.dname
from employee_data e
join department_data d 
  on e.deptno = d.deptno
where e.deptno = (select d.deptno
				          from department_data d join employee_data e 
                   where e.ename='SCOTT');
